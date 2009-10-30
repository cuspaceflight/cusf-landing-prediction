
LDFLAGS=-lm

PRED_OBJECTS = \
	pred_src/pred.o \
	pred_src/gopt.o \
	pred_src/run_model.o \
	pred_src/altitude.o \
	pred_src/wind_data.o

PRED_EXECUTABLE=pred

all: $(PRED_EXECUTABLE)

$(PRED_EXECUTABLE): $(PRED_OBJECTS)
	$(CC) $(LDFLAGS) $(PRED_OBJECTS) -o $@

clean_pred:
	rm -rf $(PRED_OBJECTS) $(PRED_EXECUTABLE)

clean: clean_pred
# dataprefetch_microbench
Set of micro benchmarks used for data prefetching. Distinguish regular &amp; irregular etc.

====== COMPILE =======

====== BENCHMARK EXPLANATION ======

The source files are in src/ The compiled files are in bin/ The ChampSim Traces
are in traces/


All benchmarks manipulate an array of uint32_t (4byte) of size 4000000, more
than enough to overtake L3 cache size (typically 2MB).
001.sequential A sequential program which traces an array. Should work well for
regular prefetchers, but poor for irregular prefetchers.
002.temporal Repeated access of a temporal sequence which is good for temporal
prefetchers (e.g. GHB, ISB), but bad for spatial prefetchers (BO, SMS, etc)

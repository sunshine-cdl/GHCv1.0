#
# Options for compiling in different `ways'.
#
# To configure up your own way, have a look at some of the standard ways
# such as profiling, and create your own set of WAY_*_OPTS defs below.
# After having done that, add your way string to WAYS, and after having
# run the configure script, the different projects will add the new way
# to the list of ways they support.
#

#
# Definitions of the different ways:
#
#   * their name:
#          - tag, e.g., p
#          - description, e.g., profiling
#   * what they mean to the driver:
#          - WAY_p_HC_OPTS gives the list of command-line options
#            to the driver.
#
# For consistency, the way name should be formed from the tags in the following
# order (the same ordering defined in DynFlags.Way),
#
#    - thr:   threaded
#    - debug: debugging
#    - p:     profiled
#    - dyn:   dynamically-linked

#
# The ways currently defined.
#
ALL_WAYS=v debug dyn thr p_dyn p debug_dyn thr_dyn thr_p_dyn thr_debug_dyn thr_debug debug_p thr_debug_p thr_p

#
# The following ways currently are treated specially,
# as the driver script treats these guys specially and needs to carefully be told
# about the options for these. Hence, we hide the required command line options
# for these in the driver, as this is the only place they are needed.
#
# If you want to add to these default options, fill in the variables below:

# Way 'v':
WAY_v_NAME=vanilla
WAY_v_HC_OPTS= -static

# Way 'p':
WAY_p_NAME=profiling
WAY_p_HC_OPTS= -static -prof

#
# These ways apply to the RTS only:
#

# Way 'thr':
WAY_thr_NAME=threaded
WAY_thr_HC_OPTS= -static -optc-DTHREADED_RTS

# Way 'thr_p':
WAY_thr_p_NAME=threaded profiling
WAY_thr_p_HC_OPTS= -static -prof -optc-DTHREADED_RTS

# Way 'debug':
WAY_debug_NAME=debug
WAY_debug_HC_OPTS= -static -optc-DDEBUG -ticky -DTICKY_TICKY -optc-DTICKY_TICKY

# Way 'debug_p':
WAY_debug_p_NAME=debug profiled
WAY_debug_p_HC_OPTS= -static -optc-DDEBUG -prof

# Way 'p':
WAY_p_NAME=profiling
WAY_p_HC_OPTS= -static -prof

# Way 'thr_debug':
WAY_thr_debug_NAME=threaded debug
WAY_thr_debug_HC_OPTS= -static -optc-DTHREADED_RTS -optc-DDEBUG

# Way 'thr_debug_p':
WAY_thr_debug_p_NAME=threaded debug profiling
WAY_thr_debug_p_HC_OPTS= -static -optc-DTHREADED_RTS -optc-DDEBUG -prof

# Way 'dyn': build dynamic shared libraries
WAY_dyn_NAME=dyn
WAY_dyn_HC_OPTS=-fPIC -dynamic

# Way 'p_dyn':
WAY_p_dyn_NAME=p_dyn
WAY_p_dyn_HC_OPTS=-fPIC -dynamic -prof

# Way 'thr_p_dyn':
WAY_thr_p_dyn_NAME=thr_p_dyn
WAY_thr_p_dyn_HC_OPTS=-fPIC -dynamic -prof -optc-DTHREADED_RTS

# Way 'thr_dyn':
WAY_thr_dyn_NAME=thr_dyn
WAY_thr_dyn_HC_OPTS=-fPIC -dynamic -optc-DTHREADED_RTS

# Way 'thr_debug_dyn':
WAY_thr_debug_dyn_NAME=thr_debug_dyn
WAY_thr_debug_dyn_HC_OPTS=-fPIC -dynamic -optc-DTHREADED_RTS -optc-DDEBUG

# Way 'debug_dyn':
WAY_debug_dyn_NAME=debug_dyn
WAY_debug_dyn_HC_OPTS=-fPIC -dynamic -optc-DDEBUG -ticky -DTICKY_TICKY -optc-DTICKY_TICKY


debug_arg=""
if [ $# -gt 1 ]; then
        if [ "$1" == "--debug" ]; then
                debug_arg="-d $2"
        fi
fi
CUDA_VISIBLE_DEVICES=0,1 python train_real_fixed.py -n Real_fixed -bs 4 -res 512 $debug_arg
CUDA_VISIBLE_DEVICES=0,1 python train_real_fixed.py -n Real_fixed -bs 4 -res 512 --trace 1 $debug_arg.trace

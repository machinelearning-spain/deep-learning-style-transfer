echo "Convirtiendo: $1"
python evaluate.py --checkpoint checkpoints/rain-princess.ckpt --in-path  $1 --out-path rain-princess-$1
echo "rain-princess-$1 ok"
python evaluate.py --checkpoint checkpoints/la-muse.ckpt --in-path  $1 --out-path la-muse-$1
echo "la-muse-$1 ok"
python evaluate.py --checkpoint checkpoints/scream.ckpt --in-path  $1 --out-path scream-$1
echo "scream-$1 ok"
python evaluate.py --checkpoint checkpoints/udnie.ckpt --in-path  $1 --out-path udnie-$1
echo "udnie-$1 ok"
python evaluate.py --checkpoint checkpoints/wave.ckpt --in-path  $1 --out-path wave-$1
echo "wave-$1 ok"
python evaluate.py --checkpoint checkpoints/wreck.ckpt --in-path  $1 --out-path wreck-$1
echo "wreck-$1 ok"
set -e
set -e
echo "=== postCreate: preparing environment ==="
echo "=== postCreate: preparing environment ==="
if [ ! -d ".venv" ]; then
 python3 -m venv .venv
fi

source .venv/bin/activate
pip install --upgrade pip setuptools wheel

if [ -f backend/requirements.txt ]; then
 pip install -r backend/requirements.txt
fi
echo "=== postCreate: done ==="

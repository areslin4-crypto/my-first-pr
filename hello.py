"""A tiny greeting module used to practise the GitHub pull-request flow."""


def greet(name: str) -> str:
    """Return a friendly greeting for *name*."""
    cleaned = name.strip()
    if not cleaned:
        return "Hello, stranger!"
    return f"Hello, {cleaned}!"


if __name__ == "__main__":
    print(greet("GitHub"))

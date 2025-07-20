# README.md
# World Wide Web DNS Info Script

This Bash script retrieves DNS record information for specified subdomains of a given domain using the `dig` command.

## Usage

```sh
./0-world_wide_web <domain> [subdomain]
```

- `<domain>`: The main domain to query (required).
- `[subdomain]`: Optional. If provided, queries only this subdomain. If omitted, queries the default subdomains: `www`, `lb-01`, `web-01`, and `web-02`.

## Example

Query all default subdomains for `example.com`:

```sh
./0-world_wide_web example.com
```

Query a specific subdomain (`api`) for `example.com`:

```sh
./0-world_wide_web example.com api
```

## Output

For each subdomain, the script prints the DNS record type and its destination:

```
The subdomain www is a A record and points to 93.184.216.34
```

## Requirements

- Bash
- `dig` command (usually available via `dnsutils` package)

## Notes

- The script parses the DNS response using `awk` and `grep`.
- Make sure to give execute permission to the script:

```sh
chmod +x 0-world_wide_web
```
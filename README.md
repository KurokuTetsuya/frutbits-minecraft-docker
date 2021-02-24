<a href="https://minecraft-mp.com/server-s274015" target="_blank">
    <img src="https://minecraft-mp.com/leaderboard-274015-6.png" border="0">
</a>

# Frutbits PaperMC Docker
> This Dockerfile is used for `mc.frutbits.xyz` server. This Dockerfile using PaperMC and supports MySQL.

<a href="https://discord.gg/fD5MHy9">
    <img src="https://discordapp.com/api/guilds/715165490246582313/embed.png" alt="Join Discord">
</a>

## Usage
1. Clone this repository
2. Rename `.mc.env_example` to `.mv.env`
3. Rename `.mysql.env_example` to `.mysql.env`
4. Fill those env files
5. Start it with `docker-compose up --build -d`

## Console Access
Follow this to access minecraft console (make yourself op or run console command) or mysql console. Replace `<instance_number>` with the instance number & replace `<folder name>` with the folder name.
Use `docker ps` to see the container name (number & folder). Just see the middle, it's should be `server` and `db`
- `docker container attach <folder name>_server_<instance_number>` for minecraft console
- `docker container attach <folder name>_db_<instance_number>` for mysql console

## Database Access
Currently, MySQL can be accessed from external and internal (localhost). If you're configuring MySQL for minecraft plugins, use `db` as the host. For example:
- ![](https://cdn.discordapp.com/attachments/737680131727949864/814148519353909248/ex.png)

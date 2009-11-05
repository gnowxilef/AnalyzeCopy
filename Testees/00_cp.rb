PATH = "/bin/cp"

def is_installed
  File.exists?(PATH)
end

def version
  "versionless"
end

def print_full_version
  puts "versionless"
end

def copy_data(source_dir, dest_dir)
  ENV["DEST_DIR"] = dest_dir
  ENV["SOURCE_DIR"] = source_dir
  s = <<CMD
sudo #{PATH} -Rp "$SOURCE_DIR" "$DEST_DIR"
CMD
  puts s
  puts "------------"
  system s
end
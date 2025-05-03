String? validateArtist(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Artist name is required';
  }
  if (value.length > 25) {
    return 'Artist name must be at most 25 characters';
  }
  return null;
}

String? validateSong(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Song name is required';
  }
  if (value.length > 25) {
    return 'Song name must be at most 25 characters';
  }
  return null;
}

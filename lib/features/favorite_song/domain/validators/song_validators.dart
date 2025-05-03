String? validateArtist(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Artist name is required';
  }
  if (value.length > 25) {
    return 'Artist name must be at most 25 characters';
  }
  if (!RegExp(r'[a-zA-Z0-9]').hasMatch(value)) {
    return 'Artist name must contain letters or numbers';
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
  if (!RegExp(r'[a-zA-Z0-9]').hasMatch(value)) {
    return 'Song name must contain letters or numbers';
  }
  return null;
}

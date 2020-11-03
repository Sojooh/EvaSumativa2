class PokeImagesDetails {
  List<Forms> forms;
  int height;
  int id;
  bool isDefault;
  String name;
  int order;
  Forms species;
  Sprites sprites;
  int weight;

  PokeImagesDetails(
      {this.forms,
      this.height,
      this.id,
      this.isDefault,
      this.name,
      this.order,
      this.species,
      this.sprites,
      this.weight});

  PokeImagesDetails.fromJson(Map<String, dynamic> json) {
    if (json['forms'] != null) {
      forms = new List<Forms>();
      json['forms'].forEach((v) {
        forms.add(new Forms.fromJson(v));
      });
    }
    height = json['height'];
    id = json['id'];
    isDefault = json['is_default'];
    name = json['name'];
    order = json['order'];
    species =
        json['species'] != null ? new Forms.fromJson(json['species']) : null;
    sprites =
        json['sprites'] != null ? new Sprites.fromJson(json['sprites']) : null;
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.forms != null) {
      data['forms'] = this.forms.map((v) => v.toJson()).toList();
    }
    data['height'] = this.height;
    data['id'] = this.id;
    data['is_default'] = this.isDefault;
    data['name'] = this.name;
    data['order'] = this.order;
    if (this.species != null) {
      data['species'] = this.species.toJson();
    }
    if (this.sprites != null) {
      data['sprites'] = this.sprites.toJson();
    }
    data['weight'] = this.weight;
    return data;
  }
}

class Forms {
  String name;
  String url;

  Forms({this.name, this.url});

  Forms.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class Sprites {
  String frontDefault;
  String frontShiny;
  Null frontShinyFemale;
  Other other;
  Versions versions;

  Sprites(
      {this.frontDefault,
      this.frontShiny,
      this.frontShinyFemale,
      this.other,
      this.versions});

  Sprites.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
    other = json['other'] != null ? new Other.fromJson(json['other']) : null;
    versions = json['versions'] != null
        ? new Versions.fromJson(json['versions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    data['front_shiny'] = this.frontShiny;
    data['front_shiny_female'] = this.frontShinyFemale;
    if (this.other != null) {
      data['other'] = this.other.toJson();
    }
    if (this.versions != null) {
      data['versions'] = this.versions.toJson();
    }
    return data;
  }
}

class Other {
  DreamWorld dreamWorld;
  OfficialArtwork officialArtwork;

  Other({this.dreamWorld, this.officialArtwork});

  Other.fromJson(Map<String, dynamic> json) {
    dreamWorld = json['dream_world'] != null
        ? new DreamWorld.fromJson(json['dream_world'])
        : null;
    officialArtwork = json['official-artwork'] != null
        ? new OfficialArtwork.fromJson(json['official-artwork'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dreamWorld != null) {
      data['dream_world'] = this.dreamWorld.toJson();
    }
    if (this.officialArtwork != null) {
      data['official-artwork'] = this.officialArtwork.toJson();
    }
    return data;
  }
}

class DreamWorld {
  String frontDefault;
  Null frontFemale;

  DreamWorld({this.frontDefault, this.frontFemale});

  DreamWorld.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    data['front_female'] = this.frontFemale;
    return data;
  }
}

class OfficialArtwork {
  String frontDefault;

  OfficialArtwork({this.frontDefault});

  OfficialArtwork.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    return data;
  }
}

class Versions {
  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  GenerationVi generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;

  Versions(
      {this.generationI,
      this.generationIi,
      this.generationIii,
      this.generationIv,
      this.generationV,
      this.generationVi,
      this.generationVii,
      this.generationViii});

  Versions.fromJson(Map<String, dynamic> json) {
    generationI = json['generation-i'] != null
        ? new GenerationI.fromJson(json['generation-i'])
        : null;
    generationIi = json['generation-ii'] != null
        ? new GenerationIi.fromJson(json['generation-ii'])
        : null;
    generationIii = json['generation-iii'] != null
        ? new GenerationIii.fromJson(json['generation-iii'])
        : null;
    generationIv = json['generation-iv'] != null
        ? new GenerationIv.fromJson(json['generation-iv'])
        : null;
    generationV = json['generation-v'] != null
        ? new GenerationV.fromJson(json['generation-v'])
        : null;
    generationVi = json['generation-vi'] != null
        ? new GenerationVi.fromJson(json['generation-vi'])
        : null;
    generationVii = json['generation-vii'] != null
        ? new GenerationVii.fromJson(json['generation-vii'])
        : null;
    generationViii = json['generation-viii'] != null
        ? new GenerationViii.fromJson(json['generation-viii'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.generationI != null) {
      data['generation-i'] = this.generationI.toJson();
    }
    if (this.generationIi != null) {
      data['generation-ii'] = this.generationIi.toJson();
    }
    if (this.generationIii != null) {
      data['generation-iii'] = this.generationIii.toJson();
    }
    if (this.generationIv != null) {
      data['generation-iv'] = this.generationIv.toJson();
    }
    if (this.generationV != null) {
      data['generation-v'] = this.generationV.toJson();
    }
    if (this.generationVi != null) {
      data['generation-vi'] = this.generationVi.toJson();
    }
    if (this.generationVii != null) {
      data['generation-vii'] = this.generationVii.toJson();
    }
    if (this.generationViii != null) {
      data['generation-viii'] = this.generationViii.toJson();
    }
    return data;
  }
}

class GenerationI {
  RedBlue redBlue;
  RedBlue yellow;

  GenerationI({this.redBlue, this.yellow});

  GenerationI.fromJson(Map<String, dynamic> json) {
    redBlue = json['red-blue'] != null
        ? new RedBlue.fromJson(json['red-blue'])
        : null;
    yellow =
        json['yellow'] != null ? new RedBlue.fromJson(json['yellow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.redBlue != null) {
      data['red-blue'] = this.redBlue.toJson();
    }
    if (this.yellow != null) {
      data['yellow'] = this.yellow.toJson();
    }
    return data;
  }
}

class RedBlue {
  String frontDefault;
  String frontGray;

  RedBlue({this.frontDefault, this.frontGray});

  RedBlue.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontGray = json['front_gray'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    data['front_gray'] = this.frontGray;
    return data;
  }
}

class GenerationIi {
  Crystal crystal;
  Crystal gold;
  Crystal silver;

  GenerationIi({this.crystal, this.gold, this.silver});

  GenerationIi.fromJson(Map<String, dynamic> json) {
    crystal =
        json['crystal'] != null ? new Crystal.fromJson(json['crystal']) : null;
    gold = json['gold'] != null ? new Crystal.fromJson(json['gold']) : null;
    silver =
        json['silver'] != null ? new Crystal.fromJson(json['silver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.crystal != null) {
      data['crystal'] = this.crystal.toJson();
    }
    if (this.gold != null) {
      data['gold'] = this.gold.toJson();
    }
    if (this.silver != null) {
      data['silver'] = this.silver.toJson();
    }
    return data;
  }
}

class Crystal {
  String frontDefault;
  String frontShiny;

  Crystal({this.frontDefault, this.frontShiny});

  Crystal.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    data['front_shiny'] = this.frontShiny;
    return data;
  }
}

class GenerationIii {
  Crystal emerald;
  Crystal fireredLeafgreen;
  Crystal rubySapphire;

  GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

  GenerationIii.fromJson(Map<String, dynamic> json) {
    emerald =
        json['emerald'] != null ? new Crystal.fromJson(json['emerald']) : null;
    fireredLeafgreen = json['firered-leafgreen'] != null
        ? new Crystal.fromJson(json['firered-leafgreen'])
        : null;
    rubySapphire = json['ruby-sapphire'] != null
        ? new Crystal.fromJson(json['ruby-sapphire'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.emerald != null) {
      data['emerald'] = this.emerald.toJson();
    }
    if (this.fireredLeafgreen != null) {
      data['firered-leafgreen'] = this.fireredLeafgreen.toJson();
    }
    if (this.rubySapphire != null) {
      data['ruby-sapphire'] = this.rubySapphire.toJson();
    }
    return data;
  }
}

class GenerationIv {
  DiamondPearl diamondPearl;
  Crystal heartgoldSoulsilver;
  Platinum platinum;

  GenerationIv({this.diamondPearl, this.heartgoldSoulsilver, this.platinum});

  GenerationIv.fromJson(Map<String, dynamic> json) {
    diamondPearl = json['diamond-pearl'] != null
        ? new DiamondPearl.fromJson(json['diamond-pearl'])
        : null;
    heartgoldSoulsilver = json['heartgold-soulsilver'] != null
        ? new Crystal.fromJson(json['heartgold-soulsilver'])
        : null;
    platinum = json['platinum'] != null
        ? new Platinum.fromJson(json['platinum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.diamondPearl != null) {
      data['diamond-pearl'] = this.diamondPearl.toJson();
    }
    if (this.heartgoldSoulsilver != null) {
      data['heartgold-soulsilver'] = this.heartgoldSoulsilver.toJson();
    }
    if (this.platinum != null) {
      data['platinum'] = this.platinum.toJson();
    }
    return data;
  }
}

class DiamondPearl {
  String frontDefault;
  String frontShiny;
  Null frontShinyFemale;

  DiamondPearl({this.frontDefault, this.frontShiny, this.frontShinyFemale});

  DiamondPearl.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    data['front_shiny'] = this.frontShiny;
    data['front_shiny_female'] = this.frontShinyFemale;
    return data;
  }
}

class Platinum {
  String frontDefault;
  Null frontFemale;
  String frontShiny;

  Platinum({this.frontDefault, this.frontFemale, this.frontShiny});

  Platinum.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    data['front_female'] = this.frontFemale;
    data['front_shiny'] = this.frontShiny;
    return data;
  }
}

class GenerationV {
  BlackWhite blackWhite;

  GenerationV({this.blackWhite});

  GenerationV.fromJson(Map<String, dynamic> json) {
    blackWhite = json['black-white'] != null
        ? new BlackWhite.fromJson(json['black-white'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.blackWhite != null) {
      data['black-white'] = this.blackWhite.toJson();
    }
    return data;
  }
}

class BlackWhite {
  Platinum animated;
  String frontDefault;
  Null frontFemale;
  String frontShiny;

  BlackWhite(
      {this.animated, this.frontDefault, this.frontFemale, this.frontShiny});

  BlackWhite.fromJson(Map<String, dynamic> json) {
    animated = json['animated'] != null
        ? new Platinum.fromJson(json['animated'])
        : null;
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.animated != null) {
      data['animated'] = this.animated.toJson();
    }
    data['front_default'] = this.frontDefault;
    data['front_female'] = this.frontFemale;
    data['front_shiny'] = this.frontShiny;
    return data;
  }
}

class GenerationVi {
  OmegarubyAlphasapphire omegarubyAlphasapphire;
  OmegarubyAlphasapphire xY;

  GenerationVi({this.omegarubyAlphasapphire, this.xY});

  GenerationVi.fromJson(Map<String, dynamic> json) {
    omegarubyAlphasapphire = json['omegaruby-alphasapphire'] != null
        ? new OmegarubyAlphasapphire.fromJson(json['omegaruby-alphasapphire'])
        : null;
    xY = json['x-y'] != null
        ? new OmegarubyAlphasapphire.fromJson(json['x-y'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.omegarubyAlphasapphire != null) {
      data['omegaruby-alphasapphire'] = this.omegarubyAlphasapphire.toJson();
    }
    if (this.xY != null) {
      data['x-y'] = this.xY.toJson();
    }
    return data;
  }
}

class OmegarubyAlphasapphire {
  String frontDefault;
  Null frontFemale;
  String frontShiny;
  Null frontShinyFemale;

  OmegarubyAlphasapphire(
      {this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  OmegarubyAlphasapphire.fromJson(Map<String, dynamic> json) {
    frontDefault = json['front_default'];
    frontFemale = json['front_female'];
    frontShiny = json['front_shiny'];
    frontShinyFemale = json['front_shiny_female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['front_default'] = this.frontDefault;
    data['front_female'] = this.frontFemale;
    data['front_shiny'] = this.frontShiny;
    data['front_shiny_female'] = this.frontShinyFemale;
    return data;
  }
}

class GenerationVii {
  DreamWorld icons;
  OmegarubyAlphasapphire ultraSunUltraMoon;

  GenerationVii({this.icons, this.ultraSunUltraMoon});

  GenerationVii.fromJson(Map<String, dynamic> json) {
    icons =
        json['icons'] != null ? new DreamWorld.fromJson(json['icons']) : null;
    ultraSunUltraMoon = json['ultra-sun-ultra-moon'] != null
        ? new OmegarubyAlphasapphire.fromJson(json['ultra-sun-ultra-moon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icons != null) {
      data['icons'] = this.icons.toJson();
    }
    if (this.ultraSunUltraMoon != null) {
      data['ultra-sun-ultra-moon'] = this.ultraSunUltraMoon.toJson();
    }
    return data;
  }
}

class GenerationViii {
  DreamWorld icons;

  GenerationViii({this.icons});

  GenerationViii.fromJson(Map<String, dynamic> json) {
    icons =
        json['icons'] != null ? new DreamWorld.fromJson(json['icons']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icons != null) {
      data['icons'] = this.icons.toJson();
    }
    return data;
  }
}

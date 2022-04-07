Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0034F7DCF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 13:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A83610E6DC;
	Thu,  7 Apr 2022 11:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A0A610E6DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 11:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649330309; x=1680866309;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=31MVwy5bgpvbxVPAmHiv6t6/VHv1cFRzI3O97tsza2E=;
 b=Ve1MCm4C47ipj+Tn8BBF5lPumWgmIiMfEBE37SLH7UCPtMyzCHgNTAIq
 pZjn3wsu7l061Ifz3kp8Fol7XBhdSuKf5ga62EnVvwduIvd4A/EguVEwm
 RxWA+7n/Qpzw8KLzJ2P5hDyLYVOW/fhhS+74xhwW12aV1RlVUyuiWHpWm
 h7+nbxfyJsd+izpoq8xfNBDkwWwX9t2lKnUeu1qqsV50Qwoa5U9c/OSNy
 2QGDFmwu0CHSwwJRDzMWWSRfwAR+lJtvl7crfAY4Y9LJw2DWx/Snkat8E
 nNa1XAW94OnWSI4bCzYAeKFK39QEh3IePmg7pm3dvrFY3GPtzvurSi0AR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="248822402"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="248822402"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 04:18:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="550005694"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 07 Apr 2022 04:18:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Apr 2022 14:18:25 +0300
Date: Thu, 7 Apr 2022 14:18:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yk7IgZJlOkIebTq7@intel.com>
References: <20220405173410.11436-3-ville.syrjala@linux.intel.com>
 <20220406133817.30652-1-ville.syrjala@linux.intel.com>
 <87k0c15h05.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87k0c15h05.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 02/22] drm/i915/bios: Make copies of VBT
 data blocks
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 07, 2022 at 01:23:38PM +0300, Jani Nikula wrote:
> On Wed, 06 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Make a copy of each VB data block with a guaranteed minimum
> > size. The extra (if any) will just be left zeroed.
> >
> > This means we don't have to worry about going out of bounds
> > when accessing any of the structure members. Otherwise that
> > could easliy happen if we simply get the version check wrong,
> > or if the VBT is broken/malicious.
> >
> > v2: Don't do arithmetic between bdb header and copy
> >     of the LFP data block (Jani)
> > v3: Make all the copies up front
> > v4: Only WARN about min_size==0 if we found the block
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 230 ++++++++++++++++------
> >  drivers/gpu/drm/i915/i915_drv.h           |   1 +
> >  2 files changed, 174 insertions(+), 57 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 5518f4cfa1b1..068978734e3b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -88,7 +88,7 @@ static u32 get_blocksize(const void *block_data)
> >  }
> >  
> >  static const void *
> > -find_section(const void *_bdb, enum bdb_block_id section_id)
> > +find_raw_section(const void *_bdb, enum bdb_block_id section_id)
> >  {
> >  	const struct bdb_header *bdb = _bdb;
> >  	const u8 *base = _bdb;
> > @@ -118,6 +118,124 @@ find_section(const void *_bdb, enum bdb_block_id section_id)
> >  	return NULL;
> >  }
> >  
> > +/*
> > + * Offset from the start of BDB to the start of the
> > + * block data (just past the block header).
> > + */
> > +static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
> > +{
> > +	const void *block;
> > +
> > +	block = find_raw_section(bdb, section_id);
> > +	if (!block)
> > +		return 0;
> > +
> > +	return block - bdb;
> > +}
> > +
> > +struct bdb_block_entry {
> > +	struct list_head node;
> > +	enum bdb_block_id section_id;
> > +	u8 data[];
> > +};
> > +
> > +static const void *
> > +find_section(struct drm_i915_private *i915,
> > +	     enum bdb_block_id section_id)
> > +{
> > +	struct bdb_block_entry *entry;
> > +
> > +	list_for_each_entry(entry, &i915->vbt.bdb_blocks, node) {
> > +		if (entry->section_id == section_id)
> > +			return entry->data + 3;
> > +	}
> > +
> 
> Failing to find the section_id in the list above, perhaps this should
> check if the section_id is present in bdb_blocks[] and complain
> loudly. If we fail to add a section there, this will never find
> it. I.e. we should never call find_section() on a section_id that isn't
> present in bdb_blocks[].

That's perfectly legit. Eg. old VBTs are always missing a lot
of the eDP related blocks.

What we could do is add some kind of dummy block into the list
for every block we've initialized, whether we found it or not.
With that we could complain if find_section() gets called on
anything that we didn't try to duplicate.

> 
> I also dislike the +/- 3 here and there.

Yeah, I was pondering about defining a structure that actually includes
the BDB block header and try to replace all the magic +/-3 stuff with
that. But didn't feel like bloating this series any further right now.

> 
> But both of these can be cleaned up later.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +	return NULL;
> > +}
> > +
> > +static const struct {
> > +	enum bdb_block_id section_id;
> > +	size_t min_size;
> > +} bdb_blocks[] = {
> > +	{ .section_id = BDB_GENERAL_FEATURES,
> > +	  .min_size = sizeof(struct bdb_general_features), },
> > +	{ .section_id = BDB_GENERAL_DEFINITIONS,
> > +	  .min_size = sizeof(struct bdb_general_definitions), },
> > +	{ .section_id = BDB_PSR,
> > +	  .min_size = sizeof(struct bdb_psr), },
> > +	{ .section_id = BDB_DRIVER_FEATURES,
> > +	  .min_size = sizeof(struct bdb_driver_features), },
> > +	{ .section_id = BDB_SDVO_LVDS_OPTIONS,
> > +	  .min_size = sizeof(struct bdb_sdvo_lvds_options), },
> > +	{ .section_id = BDB_SDVO_PANEL_DTDS,
> > +	  .min_size = sizeof(struct bdb_sdvo_panel_dtds), },
> > +	{ .section_id = BDB_EDP,
> > +	  .min_size = sizeof(struct bdb_edp), },
> > +	{ .section_id = BDB_LVDS_OPTIONS,
> > +	  .min_size = sizeof(struct bdb_lvds_options), },
> > +	{ .section_id = BDB_LVDS_LFP_DATA_PTRS,
> > +	  .min_size = sizeof(struct bdb_lvds_lfp_data_ptrs), },
> > +	{ .section_id = BDB_LVDS_LFP_DATA,
> > +	  .min_size = sizeof(struct bdb_lvds_lfp_data), },
> > +	{ .section_id = BDB_LVDS_BACKLIGHT,
> > +	  .min_size = sizeof(struct bdb_lfp_backlight_data), },
> > +	{ .section_id = BDB_LFP_POWER,
> > +	  .min_size = sizeof(struct bdb_lfp_power), },
> > +	{ .section_id = BDB_MIPI_CONFIG,
> > +	  .min_size = sizeof(struct bdb_mipi_config), },
> > +	{ .section_id = BDB_MIPI_SEQUENCE,
> > +	  .min_size = sizeof(struct bdb_mipi_sequence) },
> > +	{ .section_id = BDB_COMPRESSION_PARAMETERS,
> > +	  .min_size = sizeof(struct bdb_compression_parameters), },
> > +	{ .section_id = BDB_GENERIC_DTD,
> > +	  .min_size = sizeof(struct bdb_generic_dtd), },
> > +};
> > +
> > +static void
> > +init_bdb_block(struct drm_i915_private *i915,
> > +	       const void *bdb, enum bdb_block_id section_id,
> > +	       size_t min_size)
> > +{
> > +	struct bdb_block_entry *entry;
> > +	const void *block;
> > +	size_t block_size;
> > +
> > +	block = find_raw_section(bdb, section_id);
> > +	if (!block)
> > +		return;
> > +
> > +	drm_WARN(&i915->drm, min_size == 0,
> > +		 "Block %d min_size is zero\n", section_id);
> > +
> > +	block_size = get_blocksize(block);
> > +
> > +	entry = kzalloc(struct_size(entry, data, max(min_size, block_size) + 3),
> > +			GFP_KERNEL);
> > +	if (!entry)
> > +		return;
> > +
> > +	entry->section_id = section_id;
> > +	memcpy(entry->data, block - 3, block_size + 3);
> > +
> > +	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
> > +		    section_id, block_size, min_size);
> > +
> > +	list_add_tail(&entry->node, &i915->vbt.bdb_blocks);
> > +}
> > +
> > +static void init_bdb_blocks(struct drm_i915_private *i915,
> > +			    const void *bdb)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(bdb_blocks); i++) {
> > +		enum bdb_block_id section_id = bdb_blocks[i].section_id;
> > +		size_t min_size = bdb_blocks[i].min_size;
> > +
> > +		init_bdb_block(i915, bdb, section_id, min_size);
> > +	}
> > +}
> > +
> >  static void
> >  fill_detail_timing_data(struct drm_display_mode *panel_fixed_mode,
> >  			const struct lvds_dvo_timing *dvo_timing)
> > @@ -199,7 +317,7 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
> >  		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
> >  		   int index)
> >  {
> > -	size_t data_ofs = (const u8 *)data - (const u8 *)bdb;
> > +	size_t data_ofs = block_offset(bdb, BDB_LVDS_LFP_DATA);
> >  	u16 data_size = ((const u16 *)data)[-1]; /* stored in header */
> >  	size_t ofs;
> >  
> > @@ -214,15 +332,14 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
> >  
> >  /* Parse general panel options */
> >  static void
> > -parse_panel_options(struct drm_i915_private *i915,
> > -		    const struct bdb_header *bdb)
> > +parse_panel_options(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_lvds_options *lvds_options;
> >  	int panel_type;
> >  	int drrs_mode;
> >  	int ret;
> >  
> > -	lvds_options = find_section(bdb, BDB_LVDS_OPTIONS);
> > +	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
> >  	if (!lvds_options)
> >  		return;
> >  
> > @@ -285,11 +402,11 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
> >  	struct drm_display_mode *panel_fixed_mode;
> >  	int panel_type = i915->vbt.panel_type;
> >  
> > -	lvds_lfp_data = find_section(bdb, BDB_LVDS_LFP_DATA);
> > +	lvds_lfp_data = find_section(i915, BDB_LVDS_LFP_DATA);
> >  	if (!lvds_lfp_data)
> >  		return;
> >  
> > -	lvds_lfp_data_ptrs = find_section(bdb, BDB_LVDS_LFP_DATA_PTRS);
> > +	lvds_lfp_data_ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> >  	if (!lvds_lfp_data_ptrs)
> >  		return;
> >  
> > @@ -325,15 +442,14 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
> >  }
> >  
> >  static void
> > -parse_generic_dtd(struct drm_i915_private *i915,
> > -		  const struct bdb_header *bdb)
> > +parse_generic_dtd(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_generic_dtd *generic_dtd;
> >  	const struct generic_dtd_entry *dtd;
> >  	struct drm_display_mode *panel_fixed_mode;
> >  	int num_dtd;
> >  
> > -	generic_dtd = find_section(bdb, BDB_GENERIC_DTD);
> > +	generic_dtd = find_section(i915, BDB_GENERIC_DTD);
> >  	if (!generic_dtd)
> >  		return;
> >  
> > @@ -416,21 +532,20 @@ parse_panel_dtd(struct drm_i915_private *i915,
> >  	 * back to trying the old LFP block if that fails.
> >  	 */
> >  	if (i915->vbt.version >= 229)
> > -		parse_generic_dtd(i915, bdb);
> > +		parse_generic_dtd(i915);
> >  	if (!i915->vbt.lfp_lvds_vbt_mode)
> >  		parse_lfp_panel_dtd(i915, bdb);
> >  }
> >  
> >  static void
> > -parse_lfp_backlight(struct drm_i915_private *i915,
> > -		    const struct bdb_header *bdb)
> > +parse_lfp_backlight(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_lfp_backlight_data *backlight_data;
> >  	const struct lfp_backlight_data_entry *entry;
> >  	int panel_type = i915->vbt.panel_type;
> >  	u16 level;
> >  
> > -	backlight_data = find_section(bdb, BDB_LVDS_BACKLIGHT);
> > +	backlight_data = find_section(i915, BDB_LVDS_BACKLIGHT);
> >  	if (!backlight_data)
> >  		return;
> >  
> > @@ -514,8 +629,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
> >  
> >  /* Try to find sdvo panel data */
> >  static void
> > -parse_sdvo_panel_data(struct drm_i915_private *i915,
> > -		      const struct bdb_header *bdb)
> > +parse_sdvo_panel_data(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_sdvo_panel_dtds *dtds;
> >  	struct drm_display_mode *panel_fixed_mode;
> > @@ -531,14 +645,14 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
> >  	if (index == -1) {
> >  		const struct bdb_sdvo_lvds_options *sdvo_lvds_options;
> >  
> > -		sdvo_lvds_options = find_section(bdb, BDB_SDVO_LVDS_OPTIONS);
> > +		sdvo_lvds_options = find_section(i915, BDB_SDVO_LVDS_OPTIONS);
> >  		if (!sdvo_lvds_options)
> >  			return;
> >  
> >  		index = sdvo_lvds_options->panel_type;
> >  	}
> >  
> > -	dtds = find_section(bdb, BDB_SDVO_PANEL_DTDS);
> > +	dtds = find_section(i915, BDB_SDVO_PANEL_DTDS);
> >  	if (!dtds)
> >  		return;
> >  
> > @@ -570,12 +684,11 @@ static int intel_bios_ssc_frequency(struct drm_i915_private *i915,
> >  }
> >  
> >  static void
> > -parse_general_features(struct drm_i915_private *i915,
> > -		       const struct bdb_header *bdb)
> > +parse_general_features(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_general_features *general;
> >  
> > -	general = find_section(bdb, BDB_GENERAL_FEATURES);
> > +	general = find_section(i915, BDB_GENERAL_FEATURES);
> >  	if (!general)
> >  		return;
> >  
> > @@ -695,12 +808,11 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
> >  }
> >  
> >  static void
> > -parse_driver_features(struct drm_i915_private *i915,
> > -		      const struct bdb_header *bdb)
> > +parse_driver_features(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_driver_features *driver;
> >  
> > -	driver = find_section(bdb, BDB_DRIVER_FEATURES);
> > +	driver = find_section(i915, BDB_DRIVER_FEATURES);
> >  	if (!driver)
> >  		return;
> >  
> > @@ -747,8 +859,7 @@ parse_driver_features(struct drm_i915_private *i915,
> >  }
> >  
> >  static void
> > -parse_power_conservation_features(struct drm_i915_private *i915,
> > -				  const struct bdb_header *bdb)
> > +parse_power_conservation_features(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_lfp_power *power;
> >  	u8 panel_type = i915->vbt.panel_type;
> > @@ -756,7 +867,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
> >  	if (i915->vbt.version < 228)
> >  		return;
> >  
> > -	power = find_section(bdb, BDB_LFP_POWER);
> > +	power = find_section(i915, BDB_LFP_POWER);
> >  	if (!power)
> >  		return;
> >  
> > @@ -776,14 +887,14 @@ parse_power_conservation_features(struct drm_i915_private *i915,
> >  }
> >  
> >  static void
> > -parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
> > +parse_edp(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_edp *edp;
> >  	const struct edp_power_seq *edp_pps;
> >  	const struct edp_fast_link_params *edp_link_params;
> >  	int panel_type = i915->vbt.panel_type;
> >  
> > -	edp = find_section(bdb, BDB_EDP);
> > +	edp = find_section(i915, BDB_EDP);
> >  	if (!edp)
> >  		return;
> >  
> > @@ -894,13 +1005,13 @@ parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
> >  }
> >  
> >  static void
> > -parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
> > +parse_psr(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_psr *psr;
> >  	const struct psr_table *psr_table;
> >  	int panel_type = i915->vbt.panel_type;
> >  
> > -	psr = find_section(bdb, BDB_PSR);
> > +	psr = find_section(i915, BDB_PSR);
> >  	if (!psr) {
> >  		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
> >  		return;
> > @@ -1034,8 +1145,7 @@ static void parse_dsi_backlight_ports(struct drm_i915_private *i915,
> >  }
> >  
> >  static void
> > -parse_mipi_config(struct drm_i915_private *i915,
> > -		  const struct bdb_header *bdb)
> > +parse_mipi_config(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_mipi_config *start;
> >  	const struct mipi_config *config;
> > @@ -1058,7 +1168,7 @@ parse_mipi_config(struct drm_i915_private *i915,
> >  	/* Parse #52 for panel index used from panel_type already
> >  	 * parsed
> >  	 */
> > -	start = find_section(bdb, BDB_MIPI_CONFIG);
> > +	start = find_section(i915, BDB_MIPI_CONFIG);
> >  	if (!start) {
> >  		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
> >  		return;
> > @@ -1354,8 +1464,7 @@ static void fixup_mipi_sequences(struct drm_i915_private *i915)
> >  }
> >  
> >  static void
> > -parse_mipi_sequence(struct drm_i915_private *i915,
> > -		    const struct bdb_header *bdb)
> > +parse_mipi_sequence(struct drm_i915_private *i915)
> >  {
> >  	int panel_type = i915->vbt.panel_type;
> >  	const struct bdb_mipi_sequence *sequence;
> > @@ -1368,7 +1477,7 @@ parse_mipi_sequence(struct drm_i915_private *i915,
> >  	if (i915->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
> >  		return;
> >  
> > -	sequence = find_section(bdb, BDB_MIPI_SEQUENCE);
> > +	sequence = find_section(i915, BDB_MIPI_SEQUENCE);
> >  	if (!sequence) {
> >  		drm_dbg_kms(&i915->drm,
> >  			    "No MIPI Sequence found, parsing complete\n");
> > @@ -1439,8 +1548,7 @@ parse_mipi_sequence(struct drm_i915_private *i915,
> >  }
> >  
> >  static void
> > -parse_compression_parameters(struct drm_i915_private *i915,
> > -			     const struct bdb_header *bdb)
> > +parse_compression_parameters(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_compression_parameters *params;
> >  	struct intel_bios_encoder_data *devdata;
> > @@ -1451,7 +1559,7 @@ parse_compression_parameters(struct drm_i915_private *i915,
> >  	if (i915->vbt.version < 198)
> >  		return;
> >  
> > -	params = find_section(bdb, BDB_COMPRESSION_PARAMETERS);
> > +	params = find_section(i915, BDB_COMPRESSION_PARAMETERS);
> >  	if (params) {
> >  		/* Sanity checks */
> >  		if (params->entry_size != sizeof(params->data[0])) {
> > @@ -2086,8 +2194,7 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
> >  }
> >  
> >  static void
> > -parse_general_definitions(struct drm_i915_private *i915,
> > -			  const struct bdb_header *bdb)
> > +parse_general_definitions(struct drm_i915_private *i915)
> >  {
> >  	const struct bdb_general_definitions *defs;
> >  	struct intel_bios_encoder_data *devdata;
> > @@ -2097,7 +2204,7 @@ parse_general_definitions(struct drm_i915_private *i915,
> >  	u16 block_size;
> >  	int bus_pin;
> >  
> > -	defs = find_section(bdb, BDB_GENERAL_DEFINITIONS);
> > +	defs = find_section(i915, BDB_GENERAL_DEFINITIONS);
> >  	if (!defs) {
> >  		drm_dbg_kms(&i915->drm,
> >  			    "No general definition block is found, no devices defined.\n");
> > @@ -2466,6 +2573,7 @@ void intel_bios_init(struct drm_i915_private *i915)
> >  	const struct bdb_header *bdb;
> >  
> >  	INIT_LIST_HEAD(&i915->vbt.display_devices);
> > +	INIT_LIST_HEAD(&i915->vbt.bdb_blocks);
> >  
> >  	if (!HAS_DISPLAY(i915)) {
> >  		drm_dbg_kms(&i915->drm,
> > @@ -2499,22 +2607,24 @@ void intel_bios_init(struct drm_i915_private *i915)
> >  		    "VBT signature \"%.*s\", BDB version %d\n",
> >  		    (int)sizeof(vbt->signature), vbt->signature, i915->vbt.version);
> >  
> > +	init_bdb_blocks(i915, bdb);
> > +
> >  	/* Grab useful general definitions */
> > -	parse_general_features(i915, bdb);
> > -	parse_general_definitions(i915, bdb);
> > -	parse_panel_options(i915, bdb);
> > +	parse_general_features(i915);
> > +	parse_general_definitions(i915);
> > +	parse_panel_options(i915);
> >  	parse_panel_dtd(i915, bdb);
> > -	parse_lfp_backlight(i915, bdb);
> > -	parse_sdvo_panel_data(i915, bdb);
> > -	parse_driver_features(i915, bdb);
> > -	parse_power_conservation_features(i915, bdb);
> > -	parse_edp(i915, bdb);
> > -	parse_psr(i915, bdb);
> > -	parse_mipi_config(i915, bdb);
> > -	parse_mipi_sequence(i915, bdb);
> > +	parse_lfp_backlight(i915);
> > +	parse_sdvo_panel_data(i915);
> > +	parse_driver_features(i915);
> > +	parse_power_conservation_features(i915);
> > +	parse_edp(i915);
> > +	parse_psr(i915);
> > +	parse_mipi_config(i915);
> > +	parse_mipi_sequence(i915);
> >  
> >  	/* Depends on child device list */
> > -	parse_compression_parameters(i915, bdb);
> > +	parse_compression_parameters(i915);
> >  
> >  out:
> >  	if (!vbt) {
> > @@ -2536,14 +2646,20 @@ void intel_bios_init(struct drm_i915_private *i915)
> >   */
> >  void intel_bios_driver_remove(struct drm_i915_private *i915)
> >  {
> > -	struct intel_bios_encoder_data *devdata, *n;
> > +	struct intel_bios_encoder_data *devdata, *nd;
> > +	struct bdb_block_entry *entry, *ne;
> >  
> > -	list_for_each_entry_safe(devdata, n, &i915->vbt.display_devices, node) {
> > +	list_for_each_entry_safe(devdata, nd, &i915->vbt.display_devices, node) {
> >  		list_del(&devdata->node);
> >  		kfree(devdata->dsc);
> >  		kfree(devdata);
> >  	}
> >  
> > +	list_for_each_entry_safe(entry, ne, &i915->vbt.bdb_blocks, node) {
> > +		list_del(&entry->node);
> > +		kfree(entry);
> > +	}
> > +
> >  	kfree(i915->vbt.sdvo_lvds_vbt_mode);
> >  	i915->vbt.sdvo_lvds_vbt_mode = NULL;
> >  	kfree(i915->vbt.lfp_lvds_vbt_mode);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 06e7c2802c5e..9274417cd87a 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -380,6 +380,7 @@ struct intel_vbt_data {
> >  	int crt_ddc_pin;
> >  
> >  	struct list_head display_devices;
> > +	struct list_head bdb_blocks;
> >  
> >  	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
> >  	struct sdvo_device_mapping sdvo_mappings[2];
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel

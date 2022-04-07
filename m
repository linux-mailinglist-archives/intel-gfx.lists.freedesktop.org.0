Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEBC4F7CA4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 12:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA55210E0B7;
	Thu,  7 Apr 2022 10:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEB6A10E0B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649327026; x=1680863026;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DvddDO3Y43QQMZIufWJ3+DAf26+WyzZwxG7JEpwGlhk=;
 b=CEnmq1xVjMCQFbl5J09Uzsibl724aQz7/rjufJn6fQwrBofBxin+IVyb
 9CzMe1aIs9tgnVnodrcHZ49/8bO2szpqhMmp6S03B0zcUodklrE503GNP
 r9zUU/X8eMM/GKqMxn9wbI5d6aacT2Ta03q2LpDC3lI6CqEAYKfZ2mMkK
 IxhnTidjBEmq4vn781f0DPsC/8uR8Ha+5paCMhBmjTvHTUlm5IGDjXYF7
 qX7hKs/3EGppsyMa+T6LZN+/1ASU1bJWvqFtiUF7+qTp+jSe5eYsw7HSR
 FNTmTCdO6ohE2ug8F7xoZd/v5BZ2hLENTd2ND0SDf60NRFagDrNqyX+lv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="260979443"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="260979443"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 03:23:45 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="722904578"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 03:23:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220406133817.30652-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-3-ville.syrjala@linux.intel.com>
 <20220406133817.30652-1-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 13:23:38 +0300
Message-ID: <87k0c15h05.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 06 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make a copy of each VB data block with a guaranteed minimum
> size. The extra (if any) will just be left zeroed.
>
> This means we don't have to worry about going out of bounds
> when accessing any of the structure members. Otherwise that
> could easliy happen if we simply get the version check wrong,
> or if the VBT is broken/malicious.
>
> v2: Don't do arithmetic between bdb header and copy
>     of the LFP data block (Jani)
> v3: Make all the copies up front
> v4: Only WARN about min_size=3D=3D0 if we found the block
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 230 ++++++++++++++++------
>  drivers/gpu/drm/i915/i915_drv.h           |   1 +
>  2 files changed, 174 insertions(+), 57 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 5518f4cfa1b1..068978734e3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -88,7 +88,7 @@ static u32 get_blocksize(const void *block_data)
>  }
>=20=20
>  static const void *
> -find_section(const void *_bdb, enum bdb_block_id section_id)
> +find_raw_section(const void *_bdb, enum bdb_block_id section_id)
>  {
>  	const struct bdb_header *bdb =3D _bdb;
>  	const u8 *base =3D _bdb;
> @@ -118,6 +118,124 @@ find_section(const void *_bdb, enum bdb_block_id se=
ction_id)
>  	return NULL;
>  }
>=20=20
> +/*
> + * Offset from the start of BDB to the start of the
> + * block data (just past the block header).
> + */
> +static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
> +{
> +	const void *block;
> +
> +	block =3D find_raw_section(bdb, section_id);
> +	if (!block)
> +		return 0;
> +
> +	return block - bdb;
> +}
> +
> +struct bdb_block_entry {
> +	struct list_head node;
> +	enum bdb_block_id section_id;
> +	u8 data[];
> +};
> +
> +static const void *
> +find_section(struct drm_i915_private *i915,
> +	     enum bdb_block_id section_id)
> +{
> +	struct bdb_block_entry *entry;
> +
> +	list_for_each_entry(entry, &i915->vbt.bdb_blocks, node) {
> +		if (entry->section_id =3D=3D section_id)
> +			return entry->data + 3;
> +	}
> +

Failing to find the section_id in the list above, perhaps this should
check if the section_id is present in bdb_blocks[] and complain
loudly. If we fail to add a section there, this will never find
it. I.e. we should never call find_section() on a section_id that isn't
present in bdb_blocks[].

I also dislike the +/- 3 here and there.

But both of these can be cleaned up later.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	return NULL;
> +}
> +
> +static const struct {
> +	enum bdb_block_id section_id;
> +	size_t min_size;
> +} bdb_blocks[] =3D {
> +	{ .section_id =3D BDB_GENERAL_FEATURES,
> +	  .min_size =3D sizeof(struct bdb_general_features), },
> +	{ .section_id =3D BDB_GENERAL_DEFINITIONS,
> +	  .min_size =3D sizeof(struct bdb_general_definitions), },
> +	{ .section_id =3D BDB_PSR,
> +	  .min_size =3D sizeof(struct bdb_psr), },
> +	{ .section_id =3D BDB_DRIVER_FEATURES,
> +	  .min_size =3D sizeof(struct bdb_driver_features), },
> +	{ .section_id =3D BDB_SDVO_LVDS_OPTIONS,
> +	  .min_size =3D sizeof(struct bdb_sdvo_lvds_options), },
> +	{ .section_id =3D BDB_SDVO_PANEL_DTDS,
> +	  .min_size =3D sizeof(struct bdb_sdvo_panel_dtds), },
> +	{ .section_id =3D BDB_EDP,
> +	  .min_size =3D sizeof(struct bdb_edp), },
> +	{ .section_id =3D BDB_LVDS_OPTIONS,
> +	  .min_size =3D sizeof(struct bdb_lvds_options), },
> +	{ .section_id =3D BDB_LVDS_LFP_DATA_PTRS,
> +	  .min_size =3D sizeof(struct bdb_lvds_lfp_data_ptrs), },
> +	{ .section_id =3D BDB_LVDS_LFP_DATA,
> +	  .min_size =3D sizeof(struct bdb_lvds_lfp_data), },
> +	{ .section_id =3D BDB_LVDS_BACKLIGHT,
> +	  .min_size =3D sizeof(struct bdb_lfp_backlight_data), },
> +	{ .section_id =3D BDB_LFP_POWER,
> +	  .min_size =3D sizeof(struct bdb_lfp_power), },
> +	{ .section_id =3D BDB_MIPI_CONFIG,
> +	  .min_size =3D sizeof(struct bdb_mipi_config), },
> +	{ .section_id =3D BDB_MIPI_SEQUENCE,
> +	  .min_size =3D sizeof(struct bdb_mipi_sequence) },
> +	{ .section_id =3D BDB_COMPRESSION_PARAMETERS,
> +	  .min_size =3D sizeof(struct bdb_compression_parameters), },
> +	{ .section_id =3D BDB_GENERIC_DTD,
> +	  .min_size =3D sizeof(struct bdb_generic_dtd), },
> +};
> +
> +static void
> +init_bdb_block(struct drm_i915_private *i915,
> +	       const void *bdb, enum bdb_block_id section_id,
> +	       size_t min_size)
> +{
> +	struct bdb_block_entry *entry;
> +	const void *block;
> +	size_t block_size;
> +
> +	block =3D find_raw_section(bdb, section_id);
> +	if (!block)
> +		return;
> +
> +	drm_WARN(&i915->drm, min_size =3D=3D 0,
> +		 "Block %d min_size is zero\n", section_id);
> +
> +	block_size =3D get_blocksize(block);
> +
> +	entry =3D kzalloc(struct_size(entry, data, max(min_size, block_size) + =
3),
> +			GFP_KERNEL);
> +	if (!entry)
> +		return;
> +
> +	entry->section_id =3D section_id;
> +	memcpy(entry->data, block - 3, block_size + 3);
> +
> +	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
> +		    section_id, block_size, min_size);
> +
> +	list_add_tail(&entry->node, &i915->vbt.bdb_blocks);
> +}
> +
> +static void init_bdb_blocks(struct drm_i915_private *i915,
> +			    const void *bdb)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(bdb_blocks); i++) {
> +		enum bdb_block_id section_id =3D bdb_blocks[i].section_id;
> +		size_t min_size =3D bdb_blocks[i].min_size;
> +
> +		init_bdb_block(i915, bdb, section_id, min_size);
> +	}
> +}
> +
>  static void
>  fill_detail_timing_data(struct drm_display_mode *panel_fixed_mode,
>  			const struct lvds_dvo_timing *dvo_timing)
> @@ -199,7 +317,7 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
>  		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
>  		   int index)
>  {
> -	size_t data_ofs =3D (const u8 *)data - (const u8 *)bdb;
> +	size_t data_ofs =3D block_offset(bdb, BDB_LVDS_LFP_DATA);
>  	u16 data_size =3D ((const u16 *)data)[-1]; /* stored in header */
>  	size_t ofs;
>=20=20
> @@ -214,15 +332,14 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
>=20=20
>  /* Parse general panel options */
>  static void
> -parse_panel_options(struct drm_i915_private *i915,
> -		    const struct bdb_header *bdb)
> +parse_panel_options(struct drm_i915_private *i915)
>  {
>  	const struct bdb_lvds_options *lvds_options;
>  	int panel_type;
>  	int drrs_mode;
>  	int ret;
>=20=20
> -	lvds_options =3D find_section(bdb, BDB_LVDS_OPTIONS);
> +	lvds_options =3D find_section(i915, BDB_LVDS_OPTIONS);
>  	if (!lvds_options)
>  		return;
>=20=20
> @@ -285,11 +402,11 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  	struct drm_display_mode *panel_fixed_mode;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
> -	lvds_lfp_data =3D find_section(bdb, BDB_LVDS_LFP_DATA);
> +	lvds_lfp_data =3D find_section(i915, BDB_LVDS_LFP_DATA);
>  	if (!lvds_lfp_data)
>  		return;
>=20=20
> -	lvds_lfp_data_ptrs =3D find_section(bdb, BDB_LVDS_LFP_DATA_PTRS);
> +	lvds_lfp_data_ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
>  	if (!lvds_lfp_data_ptrs)
>  		return;
>=20=20
> @@ -325,15 +442,14 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  }
>=20=20
>  static void
> -parse_generic_dtd(struct drm_i915_private *i915,
> -		  const struct bdb_header *bdb)
> +parse_generic_dtd(struct drm_i915_private *i915)
>  {
>  	const struct bdb_generic_dtd *generic_dtd;
>  	const struct generic_dtd_entry *dtd;
>  	struct drm_display_mode *panel_fixed_mode;
>  	int num_dtd;
>=20=20
> -	generic_dtd =3D find_section(bdb, BDB_GENERIC_DTD);
> +	generic_dtd =3D find_section(i915, BDB_GENERIC_DTD);
>  	if (!generic_dtd)
>  		return;
>=20=20
> @@ -416,21 +532,20 @@ parse_panel_dtd(struct drm_i915_private *i915,
>  	 * back to trying the old LFP block if that fails.
>  	 */
>  	if (i915->vbt.version >=3D 229)
> -		parse_generic_dtd(i915, bdb);
> +		parse_generic_dtd(i915);
>  	if (!i915->vbt.lfp_lvds_vbt_mode)
>  		parse_lfp_panel_dtd(i915, bdb);
>  }
>=20=20
>  static void
> -parse_lfp_backlight(struct drm_i915_private *i915,
> -		    const struct bdb_header *bdb)
> +parse_lfp_backlight(struct drm_i915_private *i915)
>  {
>  	const struct bdb_lfp_backlight_data *backlight_data;
>  	const struct lfp_backlight_data_entry *entry;
>  	int panel_type =3D i915->vbt.panel_type;
>  	u16 level;
>=20=20
> -	backlight_data =3D find_section(bdb, BDB_LVDS_BACKLIGHT);
> +	backlight_data =3D find_section(i915, BDB_LVDS_BACKLIGHT);
>  	if (!backlight_data)
>  		return;
>=20=20
> @@ -514,8 +629,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>=20=20
>  /* Try to find sdvo panel data */
>  static void
> -parse_sdvo_panel_data(struct drm_i915_private *i915,
> -		      const struct bdb_header *bdb)
> +parse_sdvo_panel_data(struct drm_i915_private *i915)
>  {
>  	const struct bdb_sdvo_panel_dtds *dtds;
>  	struct drm_display_mode *panel_fixed_mode;
> @@ -531,14 +645,14 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
>  	if (index =3D=3D -1) {
>  		const struct bdb_sdvo_lvds_options *sdvo_lvds_options;
>=20=20
> -		sdvo_lvds_options =3D find_section(bdb, BDB_SDVO_LVDS_OPTIONS);
> +		sdvo_lvds_options =3D find_section(i915, BDB_SDVO_LVDS_OPTIONS);
>  		if (!sdvo_lvds_options)
>  			return;
>=20=20
>  		index =3D sdvo_lvds_options->panel_type;
>  	}
>=20=20
> -	dtds =3D find_section(bdb, BDB_SDVO_PANEL_DTDS);
> +	dtds =3D find_section(i915, BDB_SDVO_PANEL_DTDS);
>  	if (!dtds)
>  		return;
>=20=20
> @@ -570,12 +684,11 @@ static int intel_bios_ssc_frequency(struct drm_i915=
_private *i915,
>  }
>=20=20
>  static void
> -parse_general_features(struct drm_i915_private *i915,
> -		       const struct bdb_header *bdb)
> +parse_general_features(struct drm_i915_private *i915)
>  {
>  	const struct bdb_general_features *general;
>=20=20
> -	general =3D find_section(bdb, BDB_GENERAL_FEATURES);
> +	general =3D find_section(i915, BDB_GENERAL_FEATURES);
>  	if (!general)
>  		return;
>=20=20
> @@ -695,12 +808,11 @@ parse_sdvo_device_mapping(struct drm_i915_private *=
i915)
>  }
>=20=20
>  static void
> -parse_driver_features(struct drm_i915_private *i915,
> -		      const struct bdb_header *bdb)
> +parse_driver_features(struct drm_i915_private *i915)
>  {
>  	const struct bdb_driver_features *driver;
>=20=20
> -	driver =3D find_section(bdb, BDB_DRIVER_FEATURES);
> +	driver =3D find_section(i915, BDB_DRIVER_FEATURES);
>  	if (!driver)
>  		return;
>=20=20
> @@ -747,8 +859,7 @@ parse_driver_features(struct drm_i915_private *i915,
>  }
>=20=20
>  static void
> -parse_power_conservation_features(struct drm_i915_private *i915,
> -				  const struct bdb_header *bdb)
> +parse_power_conservation_features(struct drm_i915_private *i915)
>  {
>  	const struct bdb_lfp_power *power;
>  	u8 panel_type =3D i915->vbt.panel_type;
> @@ -756,7 +867,7 @@ parse_power_conservation_features(struct drm_i915_pri=
vate *i915,
>  	if (i915->vbt.version < 228)
>  		return;
>=20=20
> -	power =3D find_section(bdb, BDB_LFP_POWER);
> +	power =3D find_section(i915, BDB_LFP_POWER);
>  	if (!power)
>  		return;
>=20=20
> @@ -776,14 +887,14 @@ parse_power_conservation_features(struct drm_i915_p=
rivate *i915,
>  }
>=20=20
>  static void
> -parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
> +parse_edp(struct drm_i915_private *i915)
>  {
>  	const struct bdb_edp *edp;
>  	const struct edp_power_seq *edp_pps;
>  	const struct edp_fast_link_params *edp_link_params;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
> -	edp =3D find_section(bdb, BDB_EDP);
> +	edp =3D find_section(i915, BDB_EDP);
>  	if (!edp)
>  		return;
>=20=20
> @@ -894,13 +1005,13 @@ parse_edp(struct drm_i915_private *i915, const str=
uct bdb_header *bdb)
>  }
>=20=20
>  static void
> -parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
> +parse_psr(struct drm_i915_private *i915)
>  {
>  	const struct bdb_psr *psr;
>  	const struct psr_table *psr_table;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
> -	psr =3D find_section(bdb, BDB_PSR);
> +	psr =3D find_section(i915, BDB_PSR);
>  	if (!psr) {
>  		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
>  		return;
> @@ -1034,8 +1145,7 @@ static void parse_dsi_backlight_ports(struct drm_i9=
15_private *i915,
>  }
>=20=20
>  static void
> -parse_mipi_config(struct drm_i915_private *i915,
> -		  const struct bdb_header *bdb)
> +parse_mipi_config(struct drm_i915_private *i915)
>  {
>  	const struct bdb_mipi_config *start;
>  	const struct mipi_config *config;
> @@ -1058,7 +1168,7 @@ parse_mipi_config(struct drm_i915_private *i915,
>  	/* Parse #52 for panel index used from panel_type already
>  	 * parsed
>  	 */
> -	start =3D find_section(bdb, BDB_MIPI_CONFIG);
> +	start =3D find_section(i915, BDB_MIPI_CONFIG);
>  	if (!start) {
>  		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
>  		return;
> @@ -1354,8 +1464,7 @@ static void fixup_mipi_sequences(struct drm_i915_pr=
ivate *i915)
>  }
>=20=20
>  static void
> -parse_mipi_sequence(struct drm_i915_private *i915,
> -		    const struct bdb_header *bdb)
> +parse_mipi_sequence(struct drm_i915_private *i915)
>  {
>  	int panel_type =3D i915->vbt.panel_type;
>  	const struct bdb_mipi_sequence *sequence;
> @@ -1368,7 +1477,7 @@ parse_mipi_sequence(struct drm_i915_private *i915,
>  	if (i915->vbt.dsi.panel_id !=3D MIPI_DSI_GENERIC_PANEL_ID)
>  		return;
>=20=20
> -	sequence =3D find_section(bdb, BDB_MIPI_SEQUENCE);
> +	sequence =3D find_section(i915, BDB_MIPI_SEQUENCE);
>  	if (!sequence) {
>  		drm_dbg_kms(&i915->drm,
>  			    "No MIPI Sequence found, parsing complete\n");
> @@ -1439,8 +1548,7 @@ parse_mipi_sequence(struct drm_i915_private *i915,
>  }
>=20=20
>  static void
> -parse_compression_parameters(struct drm_i915_private *i915,
> -			     const struct bdb_header *bdb)
> +parse_compression_parameters(struct drm_i915_private *i915)
>  {
>  	const struct bdb_compression_parameters *params;
>  	struct intel_bios_encoder_data *devdata;
> @@ -1451,7 +1559,7 @@ parse_compression_parameters(struct drm_i915_privat=
e *i915,
>  	if (i915->vbt.version < 198)
>  		return;
>=20=20
> -	params =3D find_section(bdb, BDB_COMPRESSION_PARAMETERS);
> +	params =3D find_section(i915, BDB_COMPRESSION_PARAMETERS);
>  	if (params) {
>  		/* Sanity checks */
>  		if (params->entry_size !=3D sizeof(params->data[0])) {
> @@ -2086,8 +2194,7 @@ static void parse_ddi_ports(struct drm_i915_private=
 *i915)
>  }
>=20=20
>  static void
> -parse_general_definitions(struct drm_i915_private *i915,
> -			  const struct bdb_header *bdb)
> +parse_general_definitions(struct drm_i915_private *i915)
>  {
>  	const struct bdb_general_definitions *defs;
>  	struct intel_bios_encoder_data *devdata;
> @@ -2097,7 +2204,7 @@ parse_general_definitions(struct drm_i915_private *=
i915,
>  	u16 block_size;
>  	int bus_pin;
>=20=20
> -	defs =3D find_section(bdb, BDB_GENERAL_DEFINITIONS);
> +	defs =3D find_section(i915, BDB_GENERAL_DEFINITIONS);
>  	if (!defs) {
>  		drm_dbg_kms(&i915->drm,
>  			    "No general definition block is found, no devices defined.\n");
> @@ -2466,6 +2573,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	const struct bdb_header *bdb;
>=20=20
>  	INIT_LIST_HEAD(&i915->vbt.display_devices);
> +	INIT_LIST_HEAD(&i915->vbt.bdb_blocks);
>=20=20
>  	if (!HAS_DISPLAY(i915)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -2499,22 +2607,24 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>  		    "VBT signature \"%.*s\", BDB version %d\n",
>  		    (int)sizeof(vbt->signature), vbt->signature, i915->vbt.version);
>=20=20
> +	init_bdb_blocks(i915, bdb);
> +
>  	/* Grab useful general definitions */
> -	parse_general_features(i915, bdb);
> -	parse_general_definitions(i915, bdb);
> -	parse_panel_options(i915, bdb);
> +	parse_general_features(i915);
> +	parse_general_definitions(i915);
> +	parse_panel_options(i915);
>  	parse_panel_dtd(i915, bdb);
> -	parse_lfp_backlight(i915, bdb);
> -	parse_sdvo_panel_data(i915, bdb);
> -	parse_driver_features(i915, bdb);
> -	parse_power_conservation_features(i915, bdb);
> -	parse_edp(i915, bdb);
> -	parse_psr(i915, bdb);
> -	parse_mipi_config(i915, bdb);
> -	parse_mipi_sequence(i915, bdb);
> +	parse_lfp_backlight(i915);
> +	parse_sdvo_panel_data(i915);
> +	parse_driver_features(i915);
> +	parse_power_conservation_features(i915);
> +	parse_edp(i915);
> +	parse_psr(i915);
> +	parse_mipi_config(i915);
> +	parse_mipi_sequence(i915);
>=20=20
>  	/* Depends on child device list */
> -	parse_compression_parameters(i915, bdb);
> +	parse_compression_parameters(i915);
>=20=20
>  out:
>  	if (!vbt) {
> @@ -2536,14 +2646,20 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>   */
>  void intel_bios_driver_remove(struct drm_i915_private *i915)
>  {
> -	struct intel_bios_encoder_data *devdata, *n;
> +	struct intel_bios_encoder_data *devdata, *nd;
> +	struct bdb_block_entry *entry, *ne;
>=20=20
> -	list_for_each_entry_safe(devdata, n, &i915->vbt.display_devices, node) {
> +	list_for_each_entry_safe(devdata, nd, &i915->vbt.display_devices, node)=
 {
>  		list_del(&devdata->node);
>  		kfree(devdata->dsc);
>  		kfree(devdata);
>  	}
>=20=20
> +	list_for_each_entry_safe(entry, ne, &i915->vbt.bdb_blocks, node) {
> +		list_del(&entry->node);
> +		kfree(entry);
> +	}
> +
>  	kfree(i915->vbt.sdvo_lvds_vbt_mode);
>  	i915->vbt.sdvo_lvds_vbt_mode =3D NULL;
>  	kfree(i915->vbt.lfp_lvds_vbt_mode);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 06e7c2802c5e..9274417cd87a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -380,6 +380,7 @@ struct intel_vbt_data {
>  	int crt_ddc_pin;
>=20=20
>  	struct list_head display_devices;
> +	struct list_head bdb_blocks;
>=20=20
>  	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if p=
ort present. */
>  	struct sdvo_device_mapping sdvo_mappings[2];

--=20
Jani Nikula, Intel Open Source Graphics Center

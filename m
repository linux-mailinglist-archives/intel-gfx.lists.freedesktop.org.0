Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3D24DCE63
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE37810E6BD;
	Thu, 17 Mar 2022 19:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2E010E6B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647543771; x=1679079771;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uNNU0PXSNAG0KwtQEK3QO/fFdtS8sK/PQh49hXL08fA=;
 b=PoRqlXxZIWUab/3xUFtmMgtWPeBUKmYkEtjnSvl0ag4/3MbLHHa1Qyoc
 WPI2ihrzkFb2DFXQWsEzK/LD4TfKOZt7qK9Bva3CfIW7xsHqeDEzNSd6k
 kGMsvPuRlyS5cGPIP06GfF0uJNV8Pi9pG4txzUEBTCY379XkPnH6DAALY
 cGTpdK/hNc05yQbjPzmwA5WWEPZzi3mgph33YQYg3kUmg1CDoe99icIOg
 nn2hxGy/W7hQQadTclWZVsbAutCitQhlJwgw2iq4LYQKXM0KislMUwIHS
 rWsrOmMh26ueSPXpCu437id8GvzC5LEui/Kqc9HMbzztKvO/sA3Fl4US2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="236901385"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="236901385"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:02:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558065672"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:02:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220317171948.10400-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
 <20220317171948.10400-3-ville.syrjala@linux.intel.com>
Date: Thu, 17 Mar 2022 21:02:46 +0200
Message-ID: <87h77wmmg9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/bios: Make copies of VBT
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

On Thu, 17 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make a copy of each VB data block with a guaranteed minimum
> size. The extra (if any) will just be left zeroed.

*VBT

>
> This means we don't have to worry about going out of bounds
> when accessing any of the structure members. Otherwise that
> could easliy happen if we simply get the version check wrong,
> or if the VBT is broken/malicious.

*easily

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

The high level question is if we really want to save the copies until
driver remove instead of just during parsing. The lifetime should be
mentioned in the commit message, with rationale if you have some.

I was wondering about making the copies up front instead of as needed,
but that means setting up a list for the min sizes. It would clean up
the usage (avoids passing around any pointers to original data to the
parsers). Then you could use just find_section(i915, BDB_XXX). Dunno.

As to details, seems to do what it says on the box,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 122 ++++++++++++++++++----
>  drivers/gpu/drm/i915/i915_drv.h           |   1 +
>  2 files changed, 104 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 31fce7c92a28..ff04514eb3b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -87,8 +87,28 @@ static u32 get_blocksize(const void *block_data)
>  	return _get_blocksize(block_data - 3);
>  }
>=20=20
> +struct bdb_block_entry {
> +	struct list_head node;
> +	size_t min_size;
> +	enum bdb_block_id section_id;
> +	u8 data[];
> +};
> +
> +static struct bdb_block_entry *
> +find_bdb_block(struct drm_i915_private *i915, enum bdb_block_id section_=
id)
> +{
> +	struct bdb_block_entry *entry;
> +
> +	list_for_each_entry(entry, &i915->vbt.bdb_blocks, node) {
> +		if (entry->section_id =3D=3D section_id)
> +			return entry;
> +	}
> +
> +	return NULL;
> +}
> +
>  static const void *
> -find_section(const void *_bdb, enum bdb_block_id section_id)
> +find_raw_section(const void *_bdb, enum bdb_block_id section_id)
>  {
>  	const struct bdb_header *bdb =3D _bdb;
>  	const u8 *base =3D _bdb;
> @@ -118,6 +138,47 @@ find_section(const void *_bdb, enum bdb_block_id sec=
tion_id)
>  	return NULL;
>  }
>=20=20
> +static const void *
> +find_section(struct drm_i915_private *i915,
> +	     const void *bdb, enum bdb_block_id section_id,
> +	     size_t min_size)
> +{
> +	struct bdb_block_entry *entry;
> +	const void *block;
> +	size_t block_size;
> +
> +	entry =3D find_bdb_block(i915, section_id);
> +	if (entry) {
> +		/* make sure all callers pass in a consistent min_size */
> +		if (drm_WARN_ON(&i915->drm, entry->min_size !=3D min_size))
> +			return NULL;
> +
> +		return entry->data + 3;
> +	}
> +
> +	block =3D find_raw_section(bdb, section_id);
> +	if (!block)
> +		return NULL;
> +
> +	block_size =3D get_blocksize(block);
> +
> +	entry =3D kzalloc(struct_size(entry, data, max(min_size, block_size) + =
3),
> +			GFP_KERNEL);
> +	if (!entry)
> +		return NULL;
> +
> +	entry->section_id =3D section_id;
> +	entry->min_size =3D min_size;
> +	memcpy(entry->data, block - 3, block_size + 3);
> +
> +	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
> +		    section_id, block_size, min_size);
> +
> +	list_add(&entry->node, &i915->vbt.bdb_blocks);
> +
> +	return entry->data + 3;
> +}
> +
>  static void
>  fill_detail_timing_data(struct drm_display_mode *panel_fixed_mode,
>  			const struct lvds_dvo_timing *dvo_timing)
> @@ -222,7 +283,8 @@ parse_panel_options(struct drm_i915_private *i915,
>  	int drrs_mode;
>  	int ret;
>=20=20
> -	lvds_options =3D find_section(bdb, BDB_LVDS_OPTIONS);
> +	lvds_options =3D find_section(i915, bdb, BDB_LVDS_OPTIONS,
> +				    sizeof(*lvds_options));
>  	if (!lvds_options)
>  		return;
>=20=20
> @@ -285,11 +347,13 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  	struct drm_display_mode *panel_fixed_mode;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
> -	lvds_lfp_data =3D find_section(bdb, BDB_LVDS_LFP_DATA);
> +	lvds_lfp_data =3D find_section(i915, bdb, BDB_LVDS_LFP_DATA,
> +				     sizeof(*lvds_lfp_data));
>  	if (!lvds_lfp_data)
>  		return;
>=20=20
> -	lvds_lfp_data_ptrs =3D find_section(bdb, BDB_LVDS_LFP_DATA_PTRS);
> +	lvds_lfp_data_ptrs =3D find_section(i915, bdb, BDB_LVDS_LFP_DATA_PTRS,
> +					  sizeof(*lvds_lfp_data_ptrs));
>  	if (!lvds_lfp_data_ptrs)
>  		return;
>=20=20
> @@ -333,7 +397,8 @@ parse_generic_dtd(struct drm_i915_private *i915,
>  	struct drm_display_mode *panel_fixed_mode;
>  	int num_dtd;
>=20=20
> -	generic_dtd =3D find_section(bdb, BDB_GENERIC_DTD);
> +	generic_dtd =3D find_section(i915, bdb, BDB_GENERIC_DTD,
> +				   sizeof(*generic_dtd));
>  	if (!generic_dtd)
>  		return;
>=20=20
> @@ -430,7 +495,8 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  	int panel_type =3D i915->vbt.panel_type;
>  	u16 level;
>=20=20
> -	backlight_data =3D find_section(bdb, BDB_LVDS_BACKLIGHT);
> +	backlight_data =3D find_section(i915, bdb, BDB_LVDS_BACKLIGHT,
> +				      sizeof(*backlight_data));
>  	if (!backlight_data)
>  		return;
>=20=20
> @@ -531,14 +597,16 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
>  	if (index =3D=3D -1) {
>  		const struct bdb_sdvo_lvds_options *sdvo_lvds_options;
>=20=20
> -		sdvo_lvds_options =3D find_section(bdb, BDB_SDVO_LVDS_OPTIONS);
> +		sdvo_lvds_options =3D find_section(i915, bdb, BDB_SDVO_LVDS_OPTIONS,
> +						 sizeof(*sdvo_lvds_options));
>  		if (!sdvo_lvds_options)
>  			return;
>=20=20
>  		index =3D sdvo_lvds_options->panel_type;
>  	}
>=20=20
> -	dtds =3D find_section(bdb, BDB_SDVO_PANEL_DTDS);
> +	dtds =3D find_section(i915, bdb, BDB_SDVO_PANEL_DTDS,
> +			    sizeof(*dtds));
>  	if (!dtds)
>  		return;
>=20=20
> @@ -575,7 +643,8 @@ parse_general_features(struct drm_i915_private *i915,
>  {
>  	const struct bdb_general_features *general;
>=20=20
> -	general =3D find_section(bdb, BDB_GENERAL_FEATURES);
> +	general =3D find_section(i915, bdb, BDB_GENERAL_FEATURES,
> +			       sizeof(*general));
>  	if (!general)
>  		return;
>=20=20
> @@ -700,7 +769,8 @@ parse_driver_features(struct drm_i915_private *i915,
>  {
>  	const struct bdb_driver_features *driver;
>=20=20
> -	driver =3D find_section(bdb, BDB_DRIVER_FEATURES);
> +	driver =3D find_section(i915, bdb, BDB_DRIVER_FEATURES,
> +			      sizeof(*driver));
>  	if (!driver)
>  		return;
>=20=20
> @@ -756,7 +826,8 @@ parse_power_conservation_features(struct drm_i915_pri=
vate *i915,
>  	if (bdb->version < 228)
>  		return;
>=20=20
> -	power =3D find_section(bdb, BDB_LFP_POWER);
> +	power =3D find_section(i915, bdb, BDB_LFP_POWER,
> +			     sizeof(*power));
>  	if (!power)
>  		return;
>=20=20
> @@ -783,7 +854,8 @@ parse_edp(struct drm_i915_private *i915, const struct=
 bdb_header *bdb)
>  	const struct edp_fast_link_params *edp_link_params;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
> -	edp =3D find_section(bdb, BDB_EDP);
> +	edp =3D find_section(i915, bdb, BDB_EDP,
> +			   sizeof(*edp));
>  	if (!edp)
>  		return;
>=20=20
> @@ -900,7 +972,8 @@ parse_psr(struct drm_i915_private *i915, const struct=
 bdb_header *bdb)
>  	const struct psr_table *psr_table;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
> -	psr =3D find_section(bdb, BDB_PSR);
> +	psr =3D find_section(i915, bdb, BDB_PSR,
> +			   sizeof(*psr));
>  	if (!psr) {
>  		drm_dbg_kms(&i915->drm, "No PSR BDB found.\n");
>  		return;
> @@ -1058,7 +1131,8 @@ parse_mipi_config(struct drm_i915_private *i915,
>  	/* Parse #52 for panel index used from panel_type already
>  	 * parsed
>  	 */
> -	start =3D find_section(bdb, BDB_MIPI_CONFIG);
> +	start =3D find_section(i915, bdb, BDB_MIPI_CONFIG,
> +			     sizeof(*start));
>  	if (!start) {
>  		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
>  		return;
> @@ -1368,7 +1442,8 @@ parse_mipi_sequence(struct drm_i915_private *i915,
>  	if (i915->vbt.dsi.panel_id !=3D MIPI_DSI_GENERIC_PANEL_ID)
>  		return;
>=20=20
> -	sequence =3D find_section(bdb, BDB_MIPI_SEQUENCE);
> +	sequence =3D find_section(i915, bdb, BDB_MIPI_SEQUENCE,
> +				sizeof(*sequence));
>  	if (!sequence) {
>  		drm_dbg_kms(&i915->drm,
>  			    "No MIPI Sequence found, parsing complete\n");
> @@ -1451,7 +1526,8 @@ parse_compression_parameters(struct drm_i915_privat=
e *i915,
>  	if (bdb->version < 198)
>  		return;
>=20=20
> -	params =3D find_section(bdb, BDB_COMPRESSION_PARAMETERS);
> +	params =3D find_section(i915, bdb, BDB_COMPRESSION_PARAMETERS,
> +			      sizeof(*params));
>  	if (params) {
>  		/* Sanity checks */
>  		if (params->entry_size !=3D sizeof(params->data[0])) {
> @@ -2097,7 +2173,8 @@ parse_general_definitions(struct drm_i915_private *=
i915,
>  	u16 block_size;
>  	int bus_pin;
>=20=20
> -	defs =3D find_section(bdb, BDB_GENERAL_DEFINITIONS);
> +	defs =3D find_section(i915, bdb, BDB_GENERAL_DEFINITIONS,
> +			    sizeof(*defs));
>  	if (!defs) {
>  		drm_dbg_kms(&i915->drm,
>  			    "No general definition block is found, no devices defined.\n");
> @@ -2466,6 +2543,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	const struct bdb_header *bdb;
>=20=20
>  	INIT_LIST_HEAD(&i915->vbt.display_devices);
> +	INIT_LIST_HEAD(&i915->vbt.bdb_blocks);
>=20=20
>  	if (!HAS_DISPLAY(i915)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -2536,14 +2614,20 @@ void intel_bios_init(struct drm_i915_private *i91=
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
> index a9aceb08fcd1..0f52ce62281e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -382,6 +382,7 @@ struct intel_vbt_data {
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

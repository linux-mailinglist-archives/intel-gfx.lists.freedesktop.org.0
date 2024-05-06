Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4627B8BCA4E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E58510EB4D;
	Mon,  6 May 2024 09:14:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBX5HzzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D360510EB4D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714986864; x=1746522864;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=M84jQRHizm1e+69Pw2ppc6o7tViCwa/oZ/wmfOeIrjE=;
 b=SBX5HzzLMT1CWigbXHZF4YzkPgo5CiQUof6OoWbk/O7iGFpXkkXfLtx7
 3O0J8GOZXDrdo3XYLaUyByGOHb8E5TnHbyhyktIc4hs01FMoB2xtWLUC1
 mmIsep28b36i6U1tDG8rA6jK3zd47nYesz2Ex9ysr3dP1QUhwEJRLe1oL
 8tzCvrqoRHpNN1l0Z/zjK2ydMel3IBmlXjdytywaBigcczJihhlwmnId/
 4tNdQLKJxG5xKmDI2njH+UAFoBt+zxshvaje+uiiTq+sWIiiAEc6S13yC
 hlCfv9Dm37bV/II9ACLOPN/TekwDcZR6/Nk9IVBfbtqFLf7myzHZ7DgWq A==;
X-CSE-ConnectionGUID: r8O7ChWCSnqvCsrDWor1/Q==
X-CSE-MsgGUID: S4dPAKpzS424kGVdmst2PA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10846134"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10846134"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:14:23 -0700
X-CSE-ConnectionGUID: BR0JNylRQuGH3dsG1DVWdQ==
X-CSE-MsgGUID: ZjuAjsCkRlqFg0ZAJGCGzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28061757"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:14:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/35] drm/i915/bios: Indicate which VBT structures are
 based on EDID
In-Reply-To: <20240503122449.27266-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-4-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:14:19 +0300
Message-ID: <87msp3nvys.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> VBT reuses a bunch of EDID data structures. Flag those as such
> for clarity.
>
> I chose "bdb_edid_" as the namespace for these.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 28 +++---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 95 ++++++++++---------
>  2 files changed, 62 insertions(+), 61 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 661842a3c2e6..9f933508be1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -242,13 +242,13 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>=20=20
>  	/* fp_timing has variable size */
>  	if (fp_timing_size < 32 ||
> -	    dvo_timing_size !=3D sizeof(struct lvds_dvo_timing) ||
> -	    panel_pnp_id_size !=3D sizeof(struct lvds_pnp_id))
> +	    dvo_timing_size !=3D sizeof(struct bdb_edid_dtd) ||
> +	    panel_pnp_id_size !=3D sizeof(struct bdb_edid_pnp_id))
>  		return false;
>=20=20
>  	/* panel_name is not present in old VBTs */
>  	if (panel_name_size !=3D 0 &&
> -	    panel_name_size !=3D sizeof(struct lvds_lfp_panel_name))
> +	    panel_name_size !=3D sizeof(struct bdb_edid_product_name))
>  		return false;
>=20=20
>  	lfp_data_size =3D ptrs->ptr[1].fp_timing.offset - ptrs->ptr[0].fp_timin=
g.offset;
> @@ -385,8 +385,8 @@ static void *generate_lfp_data_ptrs(struct drm_i915_p=
rivate *i915,
>=20=20
>  	block_size =3D get_blocksize(block);
>=20=20
> -	size =3D fp_timing_size + sizeof(struct lvds_dvo_timing) +
> -		sizeof(struct lvds_pnp_id);
> +	size =3D fp_timing_size + sizeof(struct bdb_edid_dtd) +
> +		sizeof(struct bdb_edid_pnp_id);
>  	if (size * 16 > block_size)
>  		return NULL;
>=20=20
> @@ -398,10 +398,10 @@ static void *generate_lfp_data_ptrs(struct drm_i915=
_private *i915,
>  	*(u16 *)(ptrs_block + 1) =3D sizeof(*ptrs);
>  	ptrs =3D ptrs_block + 3;
>=20=20
> -	table_size =3D sizeof(struct lvds_pnp_id);
> +	table_size =3D sizeof(struct bdb_edid_pnp_id);
>  	size =3D make_lfp_data_ptr(&ptrs->ptr[0].panel_pnp_id, table_size, size=
);
>=20=20
> -	table_size =3D sizeof(struct lvds_dvo_timing);
> +	table_size =3D sizeof(struct bdb_edid_dtd);
>  	size =3D make_lfp_data_ptr(&ptrs->ptr[0].dvo_timing, table_size, size);
>=20=20
>  	table_size =3D fp_timing_size;
> @@ -419,15 +419,15 @@ static void *generate_lfp_data_ptrs(struct drm_i915=
_private *i915,
>  		return NULL;
>  	}
>=20=20
> -	size =3D fp_timing_size + sizeof(struct lvds_dvo_timing) +
> -		sizeof(struct lvds_pnp_id);
> +	size =3D fp_timing_size + sizeof(struct bdb_edid_dtd) +
> +		sizeof(struct bdb_edid_pnp_id);
>  	for (i =3D 1; i < 16; i++) {
>  		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, =
size);
>  		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing=
, size);
>  		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pn=
p_id, size);
>  	}
>=20=20
> -	table_size =3D sizeof(struct lvds_lfp_panel_name);
> +	table_size =3D sizeof(struct bdb_edid_product_name);
>=20=20
>  	if (16 * (size + table_size) <=3D block_size) {
>  		ptrs->panel_name.table_size =3D table_size;
> @@ -525,7 +525,7 @@ static void init_bdb_blocks(struct drm_i915_private *=
i915,
>  static void
>  fill_detail_timing_data(struct drm_i915_private *i915,
>  			struct drm_display_mode *panel_fixed_mode,
> -			const struct lvds_dvo_timing *dvo_timing)
> +			const struct bdb_edid_dtd *dvo_timing)
>  {
>  	panel_fixed_mode->hdisplay =3D (dvo_timing->hactive_hi << 8) |
>  		dvo_timing->hactive_lo;
> @@ -579,7 +579,7 @@ fill_detail_timing_data(struct drm_i915_private *i915,
>  	drm_mode_set_name(panel_fixed_mode);
>  }
>=20=20
> -static const struct lvds_dvo_timing *
> +static const struct bdb_edid_dtd *
>  get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *data,
>  		    const struct bdb_lvds_lfp_data_ptrs *ptrs,
>  		    int index)
> @@ -601,7 +601,7 @@ get_lvds_pnp_id(const struct bdb_lvds_lfp_data *data,
>  		int index)
>  {
>  	/* These two are supposed to have the same layout in memory. */
> -	BUILD_BUG_ON(sizeof(struct lvds_pnp_id) !=3D sizeof(struct drm_edid_pro=
duct_id));
> +	BUILD_BUG_ON(sizeof(struct bdb_edid_pnp_id) !=3D sizeof(struct drm_edid=
_product_id));
>=20=20
>  	return (const void *)data + ptrs->ptr[index].panel_pnp_id.offset;
>  }
> @@ -835,7 +835,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
>  		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
>  {
> -	const struct lvds_dvo_timing *panel_dvo_timing;
> +	const struct bdb_edid_dtd *panel_dvo_timing;
>  	const struct lvds_fp_timing *fp_timing;
>  	struct drm_display_mode *panel_fixed_mode;
>  	int panel_type =3D panel->vbt.panel_type;
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index eebb91f4d88b..7ad4d31f6437 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -39,6 +39,50 @@
>=20=20
>  #include "intel_bios.h"
>=20=20
> +/* EDID derived structures */
> +struct bdb_edid_pnp_id {
> +	u16 mfg_name;
> +	u16 product_code;
> +	u32 serial;
> +	u8 mfg_week;
> +	u8 mfg_year;
> +} __packed;
> +
> +struct bdb_edid_product_name {
> +	char name[13];
> +} __packed;
> +
> +struct bdb_edid_dtd {
> +	u16 clock;		/**< In 10khz */
> +	u8 hactive_lo;
> +	u8 hblank_lo;
> +	u8 hblank_hi:4;
> +	u8 hactive_hi:4;
> +	u8 vactive_lo;
> +	u8 vblank_lo;
> +	u8 vblank_hi:4;
> +	u8 vactive_hi:4;
> +	u8 hsync_off_lo;
> +	u8 hsync_pulse_width_lo;
> +	u8 vsync_pulse_width_lo:4;
> +	u8 vsync_off_lo:4;
> +	u8 vsync_pulse_width_hi:2;
> +	u8 vsync_off_hi:2;
> +	u8 hsync_pulse_width_hi:2;
> +	u8 hsync_off_hi:2;
> +	u8 himage_lo;
> +	u8 vimage_lo;
> +	u8 vimage_hi:4;
> +	u8 himage_hi:4;
> +	u8 h_border;
> +	u8 v_border;
> +	u8 rsvd1:3;
> +	u8 digital:2;
> +	u8 vsync_positive:1;
> +	u8 hsync_positive:1;
> +	u8 non_interlaced:1;
> +} __packed;
> +
>  /**
>   * struct vbt_header - VBT Header structure
>   * @signature:		VBT signature, always starts with "$VBT"
> @@ -645,39 +689,8 @@ struct bdb_sdvo_lvds_options {
>   * Block 23 - SDVO LVDS Panel DTDs
>   */
>=20=20
> -struct lvds_dvo_timing {
> -	u16 clock;		/**< In 10khz */
> -	u8 hactive_lo;
> -	u8 hblank_lo;
> -	u8 hblank_hi:4;
> -	u8 hactive_hi:4;
> -	u8 vactive_lo;
> -	u8 vblank_lo;
> -	u8 vblank_hi:4;
> -	u8 vactive_hi:4;
> -	u8 hsync_off_lo;
> -	u8 hsync_pulse_width_lo;
> -	u8 vsync_pulse_width_lo:4;
> -	u8 vsync_off_lo:4;
> -	u8 vsync_pulse_width_hi:2;
> -	u8 vsync_off_hi:2;
> -	u8 hsync_pulse_width_hi:2;
> -	u8 hsync_off_hi:2;
> -	u8 himage_lo;
> -	u8 vimage_lo;
> -	u8 vimage_hi:4;
> -	u8 himage_hi:4;
> -	u8 h_border;
> -	u8 v_border;
> -	u8 rsvd1:3;
> -	u8 digital:2;
> -	u8 vsync_positive:1;
> -	u8 hsync_positive:1;
> -	u8 non_interlaced:1;
> -} __packed;
> -
>  struct bdb_sdvo_panel_dtds {
> -	struct lvds_dvo_timing dtds[4];
> +	struct bdb_edid_dtd dtds[4];
>  } __packed;
>=20=20
>  /*
> @@ -828,14 +841,6 @@ struct lvds_fp_timing {
>  	u16 terminator;
>  } __packed;
>=20=20
> -struct lvds_pnp_id {
> -	u16 mfg_name;
> -	u16 product_code;
> -	u32 serial;
> -	u8 mfg_week;
> -	u8 mfg_year;
> -} __packed;
> -
>  /*
>   * For reference only. fp_timing has variable size so
>   * the data must be accessed using the data table pointers.
> @@ -843,18 +848,14 @@ struct lvds_pnp_id {
>   */
>  struct lvds_lfp_data_entry {
>  	struct lvds_fp_timing fp_timing;
> -	struct lvds_dvo_timing dvo_timing;
> -	struct lvds_pnp_id pnp_id;
> +	struct bdb_edid_dtd dvo_timing;
> +	struct bdb_edid_pnp_id pnp_id;
>  } __packed;
>=20=20
>  struct bdb_lvds_lfp_data {
>  	struct lvds_lfp_data_entry data[16];
>  } __packed;
>=20=20
> -struct lvds_lfp_panel_name {
> -	u8 name[13];
> -} __packed;
> -
>  struct lvds_lfp_black_border {
>  	u8 top;		/* 227+ */
>  	u8 bottom;	/* 227+ */
> @@ -863,7 +864,7 @@ struct lvds_lfp_black_border {
>  } __packed;
>=20=20
>  struct bdb_lvds_lfp_data_tail {
> -	struct lvds_lfp_panel_name panel_name[16];		/* (156-163?)+ */
> +	struct bdb_edid_product_name panel_name[16];		/* (156-163?)+ */
>  	u16 scaling_enable;					/* 187+ */
>  	u8 seamless_drrs_min_refresh_rate[16];			/* 188+ */
>  	u8 pixel_overlap_count[16];				/* 208+ */

--=20
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D9A4F858E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1FB10EBB7;
	Thu,  7 Apr 2022 17:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF4C610EBDC
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649351249; x=1680887249;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DV2h3wtxxmfi2gmygLPlhhSeymS9G5CejP5nZ0kQzqA=;
 b=k3IKuc5UcR5xWjHSfQkywes3C+f8X6P3aJMizXaembif+Q5GGh7aGhBT
 TAxKlHJ2kJ4v+IsyHrx2hBJi8kHQeKQ8mVXcP1GkbskNspO7RZ11gUtlt
 ouoD3ExcwRocHyFTrh6C824wWpV1DpmMPrk1UvTnMrIK3bky7uGdDa4S0
 scPvYwrmpZt0vGeHgVmgYb4LRvDKdXeiv8amv3QiZMqvvhoSGs1QLkKbD
 JxVDCnCMK7ceaZv0BFOS56IUo3S01oafteSc1aQ31zvug5EAMUVhrJKLw
 nKTo+iUlQOG7fFP95iEOF30BO2xzULYuG+PXmQ/eeHcsnc4KtusV5h7lx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261563380"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261563380"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:07:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="550150751"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:07:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220406134002.30761-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-10-ville.syrjala@linux.intel.com>
 <20220406134002.30761-1-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:07:24 +0300
Message-ID: <87lewg4yb7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 09/22] drm/i915/bios: Get access to the
 tail end of the LFP data block
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
> We need to start parsing stuff from the tail end of the LFP data block.
> This is made awkward by the fact that the fp_timing table has variable
> size. So we must use a bit more finesse to get the tail end, and to
> make sure we allocate enough memory for it to make sure our struct
> representation fits.
>
> v2: Rebase due to the preallocation of BDB blocks
> v3: Rebase due to min_size WARN relocation
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 39 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 17 ++++++++
>  2 files changed, 55 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index d32091dad1b0..9a14d55b636c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -188,7 +188,7 @@ static const struct {
>  	{ .section_id =3D BDB_LVDS_LFP_DATA_PTRS,
>  	  .min_size =3D sizeof(struct bdb_lvds_lfp_data_ptrs), },
>  	{ .section_id =3D BDB_LVDS_LFP_DATA,
> -	  .min_size =3D sizeof(struct bdb_lvds_lfp_data), },
> +	  .min_size =3D 0, /* special case */ },
>  	{ .section_id =3D BDB_LVDS_BACKLIGHT,
>  	  .min_size =3D sizeof(struct bdb_lfp_backlight_data), },
>  	{ .section_id =3D BDB_LFP_POWER,
> @@ -203,6 +203,23 @@ static const struct {
>  	  .min_size =3D sizeof(struct bdb_generic_dtd), },
>  };
>=20=20
> +static size_t lfp_data_min_size(struct drm_i915_private *i915)
> +{
> +	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> +	size_t size;
> +
> +	ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);

This depends on that block having been initialized before. Maybe the
ordering requirement deserves a comment in bdb_blocks[].

> +	if (!ptrs)
> +		return 0;
> +
> +	size =3D sizeof(struct bdb_lvds_lfp_data);

Basically that and the struct definition are bogus, though? They assume
a rigid structure. It might be true for some specific platforms, but
generally likely not.

Or we could of course just add a comment about that in intel_vbt_defs.h.

> +	if (ptrs->panel_name.table_size)
> +		size =3D max(size, ptrs->panel_name.offset +
> +			   sizeof(struct bdb_lvds_lfp_data_tail));
> +
> +	return size;
> +}
> +
>  static bool validate_lfp_data_ptrs(const void *bdb,
>  				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
>  {
> @@ -492,6 +509,9 @@ static void init_bdb_blocks(struct drm_i915_private *=
i915,
>  		enum bdb_block_id section_id =3D bdb_blocks[i].section_id;
>  		size_t min_size =3D bdb_blocks[i].min_size;
>=20=20
> +		if (section_id =3D=3D BDB_LVDS_LFP_DATA)
> +			min_size =3D lfp_data_min_size(i915);

Nitpick, could also leave the "default" min size in bdb_blocks[], have
lfp_data_min_size() return the other value or 0, and have the max()
here. *shrug*

> +
>  		init_bdb_block(i915, bdb, section_id, min_size);
>  	}
>  }
> @@ -562,6 +582,16 @@ get_lvds_fp_timing(const struct bdb_lvds_lfp_data *d=
ata,
>  	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
>  }
>=20=20
> +static const struct bdb_lvds_lfp_data_tail *
> +get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
> +		  const struct bdb_lvds_lfp_data_ptrs *ptrs)
> +{
> +	if (ptrs->panel_name.table_size)
> +		return (const void *)data + ptrs->panel_name.offset;
> +	else
> +		return NULL;
> +}
> +
>  /* Parse general panel options */
>  static void
>  parse_panel_options(struct drm_i915_private *i915)
> @@ -666,6 +696,7 @@ static void
>  parse_lfp_data(struct drm_i915_private *i915)
>  {
>  	const struct bdb_lvds_lfp_data *data;
> +	const struct bdb_lvds_lfp_data_tail *tail;
>  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
>=20=20
>  	ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> @@ -678,6 +709,12 @@ parse_lfp_data(struct drm_i915_private *i915)
>=20=20
>  	if (!i915->vbt.lfp_lvds_vbt_mode)
>  		parse_lfp_panel_dtd(i915, data, ptrs);
> +
> +	tail =3D get_lfp_data_tail(data, ptrs);
> +	if (!tail)
> +		return;
> +
> +	(void)tail;

Mmmkay.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  }
>=20=20
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index e4a11c3e3f3e..64551d206aeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -783,6 +783,23 @@ struct lvds_lfp_panel_name {
>  	u8 name[13];
>  } __packed;
>=20=20
> +struct lvds_lfp_black_border {
> +	u8 top; /*  227 */
> +	u8 bottom; /*  227 */
> +	u8 left; /* 238 */
> +	u8 right; /* 238 */
> +} __packed;
> +
> +struct bdb_lvds_lfp_data_tail {
> +	struct lvds_lfp_panel_name panel_name[16]; /* 156-163? */
> +	u16 scaling_enable; /* 187 */
> +	u8 seamless_drrs_min_refresh_rate[16]; /* 188 */
> +	u8 pixel_overlap_count[16]; /* 208 */
> +	struct lvds_lfp_black_border black_border[16]; /* 227 */
> +	u16 dual_lfp_port_sync_enable; /* 231 */
> +	u16 gpu_dithering_for_banding_artifacts; /* 245 */
> +} __packed;
> +
>  /*
>   * Block 43 - LFP Backlight Control Data Block
>   */

--=20
Jani Nikula, Intel Open Source Graphics Center

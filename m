Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4F14F7D0E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 12:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BFC10E9A7;
	Thu,  7 Apr 2022 10:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A0610E0B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 10:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649327770; x=1680863770;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=76WaKwmefDpzEtwoXGMMoah5hHzBDeoepbhPSZbrAgs=;
 b=LLoUvX/Rsa0zGCTEvIEF0QJ9rOTyTbK48B4Tt8O8dq00+ghbbBZGXpW+
 Aoa21cdQctqmNherc5xKcWuF0gaMS79PxK5hDCoHtn7lkDx/u49qE1NYt
 j25hItqyONnA1Io6dBOPsCfJkjV4Vqy45JYEOQUyiIG0npbAL4CUq1qwt
 DRr0jBR5qJJO8U4+LmBtTquC02uqRfkyxVmPSMdghTqiOjyyvv2C1aUzA
 9rqKRiWXVfuTPItdX4dJi21xo+HGVXGDYtWv7V8MGlFYwvv3KWbsaM7KI
 tVYYfLFu4CX8Yw/rlBcTA9MEHCCrhjPA6O1rwKwlHJJKA3lwGeIjQPXvA g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="241881405"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="241881405"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 03:36:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="570998062"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 03:36:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-4-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 13:36:01 +0300
Message-ID: <87h7755gfi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 03/22] drm/i915/bios: Use the copy of the
 LFP data table always
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently get_lvds_fp_timing() still returns a pointer to the original
> data block rather than our copy. Let's convert the data pointer offsets
> to be relative to the data block rather than the whole BDB. With that
> we can make get_lvds_fp_timing() return a pointer to the copy.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 41 +++++++++++++++++++----
>  1 file changed, 34 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 2e9f639d092e..000544280c35 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -191,6 +191,29 @@ static const struct {
>  	  .min_size =3D sizeof(struct bdb_generic_dtd), },
>  };
>=20=20
> +/* make the data table offsets relative to the data block */
> +static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
> +{
> +	struct bdb_lvds_lfp_data_ptrs *ptrs =3D ptrs_block;
> +	u32 offset;
> +	int i;
> +
> +	offset =3D block_offset(bdb, BDB_LVDS_LFP_DATA);
> +
> +	for (i =3D 0; i < 16; i++) {
> +		if (ptrs->ptr[i].fp_timing.offset < offset ||
> +		    ptrs->ptr[i].dvo_timing.offset < offset ||
> +		    ptrs->ptr[i].panel_pnp_id.offset < offset)
> +			return false;
> +
> +		ptrs->ptr[i].fp_timing.offset -=3D offset;
> +		ptrs->ptr[i].dvo_timing.offset -=3D offset;
> +		ptrs->ptr[i].panel_pnp_id.offset -=3D offset;
> +	}
> +
> +	return true;
> +}
> +
>  static void
>  init_bdb_block(struct drm_i915_private *i915,
>  	       const void *bdb, enum bdb_block_id section_id,
> @@ -217,6 +240,13 @@ init_bdb_block(struct drm_i915_private *i915,
>  	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
>  		    section_id, block_size, min_size);
>=20=20
> +	if (section_id =3D=3D BDB_LVDS_LFP_DATA_PTRS &&
> +	    !fixup_lfp_data_ptrs(bdb, entry->data + 3)) {
> +		drm_err(&i915->drm, "VBT has malformed LFP data table pointers\n");
> +		kfree(entry);
> +		return;
> +	}
> +
>  	list_add_tail(&entry->node, &i915->vbt.bdb_blocks);
>  }
>=20=20
> @@ -312,22 +342,19 @@ get_lvds_dvo_timing(const struct bdb_lvds_lfp_data =
*lvds_lfp_data,
>   * this function may return NULL if the corresponding entry is invalid
>   */
>  static const struct lvds_fp_timing *
> -get_lvds_fp_timing(const struct bdb_header *bdb,
> -		   const struct bdb_lvds_lfp_data *data,
> +get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
>  		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
>  		   int index)
>  {
> -	size_t data_ofs =3D block_offset(bdb, BDB_LVDS_LFP_DATA);
>  	u16 data_size =3D ((const u16 *)data)[-1]; /* stored in header */
>  	size_t ofs;
>=20=20
>  	if (index >=3D ARRAY_SIZE(ptrs->ptr))
>  		return NULL;
>  	ofs =3D ptrs->ptr[index].fp_timing.offset;
> -	if (ofs < data_ofs ||
> -	    ofs + sizeof(struct lvds_fp_timing) > data_ofs + data_size)
> +	if (ofs + sizeof(struct lvds_fp_timing) > data_size)
>  		return NULL;
> -	return (const struct lvds_fp_timing *)((const u8 *)bdb + ofs);
> +	return (const struct lvds_fp_timing *)((const u8 *)data + ofs);
>  }
>=20=20
>  /* Parse general panel options */
> @@ -426,7 +453,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  		    "Found panel mode in BIOS VBT legacy lfp table: " DRM_MODE_FMT "\n=
",
>  		    DRM_MODE_ARG(panel_fixed_mode));
>=20=20
> -	fp_timing =3D get_lvds_fp_timing(bdb, lvds_lfp_data,
> +	fp_timing =3D get_lvds_fp_timing(lvds_lfp_data,
>  				       lvds_lfp_data_ptrs,
>  				       panel_type);
>  	if (fp_timing) {

--=20
Jani Nikula, Intel Open Source Graphics Center

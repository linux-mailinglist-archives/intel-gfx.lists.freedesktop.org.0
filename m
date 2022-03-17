Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 058C44DCE7C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1E810E072;
	Thu, 17 Mar 2022 19:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A1510E072
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647544244; x=1679080244;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=13vj1JlQBmuST7+4+iPtwne+ClfM3bJCqdCfbeiah2M=;
 b=C8n7DGdPoIfAc4EeHdEJd8RJCJ5oJ1HRfhg2meOWQbLAT6kPr1NJ7Sxf
 h9rI4z0+MWQ4BnW1damunvstl+R0gFSKZS8jeQO+mQM4+um4K3E6dsfA/
 Zm3AV848ERWI8XZBoeMETF+fEbKJgYlzyIvebdV1w830TTRjii17TNIb6
 Ib4fcOhK9lOVM0KQE0jJb/mTK0GktC6zpTGWQIEPi+a9NXcGIbShg+BlO
 YvDKZ1iZl47fmxQmU7+CSGQUnL6sZGH7LXZcmSyu/USp+8npCPit/2bIa
 jBmrLOjfudsKZ59yDLRYDHa3VNZ2HIPhoetQo1V89hmnOae4Ll0Q8MdMJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="320172435"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="320172435"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:10:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558068910"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:10:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220317171948.10400-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
 <20220317171948.10400-4-ville.syrjala@linux.intel.com>
Date: Thu, 17 Mar 2022 21:10:37 +0200
Message-ID: <87ee30mm36.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/bios: Use the copy of the
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

On Thu, 17 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently get_lvds_fp_timing() still returns a pointer to the original
> data block rather than our copy. Let's convert the data pointer offsets
> to be relative to the data block rather than the whole BDB. With that
> we can make get_lvds_fp_timing() return a pointer to the copy.

Ugh, so just as I R-b'd the previous patch... I realize it's all broken
without this, right? It does pointer arithmetics between bdb header and
the allocated bdb for ptrs?

Do we want a broken step?

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 56 ++++++++++++++++++++---
>  1 file changed, 49 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index ff04514eb3b7..777339f5dd79 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -138,6 +138,44 @@ find_raw_section(const void *_bdb, enum bdb_block_id=
 section_id)
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
>  static const void *
>  find_section(struct drm_i915_private *i915,
>  	     const void *bdb, enum bdb_block_id section_id,
> @@ -174,6 +212,13 @@ find_section(struct drm_i915_private *i915,
>  	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
>  		    section_id, block_size, min_size);
>=20=20
> +	if (section_id =3D=3D BDB_LVDS_LFP_DATA_PTRS &&
> +	    !fixup_lfp_data_ptrs(bdb, entry->data + 3)) {
> +		drm_err(&i915->drm, "VBT has malformed LFP data table pointers\n");
> +		kfree(entry);
> +		return NULL;
> +	}
> +
>  	list_add(&entry->node, &i915->vbt.bdb_blocks);
>=20=20
>  	return entry->data + 3;
> @@ -255,22 +300,19 @@ get_lvds_dvo_timing(const struct bdb_lvds_lfp_data =
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
> -	size_t data_ofs =3D (const u8 *)data - (const u8 *)bdb;
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
> @@ -373,7 +415,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  		    "Found panel mode in BIOS VBT legacy lfp table:\n");
>  	drm_mode_debug_printmodeline(panel_fixed_mode);
>=20=20
> -	fp_timing =3D get_lvds_fp_timing(bdb, lvds_lfp_data,
> +	fp_timing =3D get_lvds_fp_timing(lvds_lfp_data,
>  				       lvds_lfp_data_ptrs,
>  				       panel_type);
>  	if (fp_timing) {

--=20
Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D64F848F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 18:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD86A10E1C1;
	Thu,  7 Apr 2022 16:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC7E10E1C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 16:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649347641; x=1680883641;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xwnmE+gMMkMqFvhClCLAy5y669rrEYh8xkKrNYP+iYE=;
 b=i7Hhsm9bI2noApq+KWeMWOGMQDLlcihQ498vzI6vi+akVp3+hLzZU0cw
 FN22RLQ6qdrfmrLUQdLzp2wPrjoM8/cdMlPtLXfVHQEF1NYyHLUtgJS56
 fy2RMWvWg08gUrLs9meQvgjXYcCcTA8uSfFUmDDVMMDcl9Qk7ZW/j/Zkp
 7cPeOCAs+CjZr0pe4dJToX3KfZnPKo8PQcdPdzs5WMWEXzKGiXABjr93g
 Tkz8wAHA18fHShEWhrWcvxBI1L0JNJlXSJEl5ULebjFIiC+7xFBP+Ic9u
 35Hl8WYsjF+MjqBh8mHcOS0IKUaWufddubrb2hvKfHlWMf2sLvx2N37/u Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="241299947"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="241299947"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:07:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571120763"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:07:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-5-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 19:07:06 +0300
Message-ID: <871qy86fo5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 04/22] drm/i915/bios: Validate LFP data
 table pointers
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
> Make sure the LFP data table pointers sane. Sensible looking
> table entries, everything points correctly into the data block,
> etc.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I can't adequately describe my opinion about the design of the data
structures here. Sheesh.

Dunno why we keep struct lvds_lfp_data_entry and struct
bdb_lvds_lfp_data around, as they don't really reflect reality.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 82 ++++++++++++++++++++++-
>  1 file changed, 81 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 000544280c35..cd82ea4de8e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -133,6 +133,18 @@ static u32 block_offset(const void *bdb, enum bdb_bl=
ock_id section_id)
>  	return block - bdb;
>  }
>=20=20
> +/* size of the block excluding the header */
> +static u32 block_size(const void *bdb, enum bdb_block_id section_id)
> +{
> +	const void *block;
> +
> +	block =3D find_raw_section(bdb, section_id);
> +	if (!block)
> +		return 0;
> +
> +	return get_blocksize(block);
> +}
> +
>  struct bdb_block_entry {
>  	struct list_head node;
>  	enum bdb_block_id section_id;
> @@ -191,6 +203,74 @@ static const struct {
>  	  .min_size =3D sizeof(struct bdb_generic_dtd), },
>  };
>=20=20
> +static bool validate_lfp_data_ptrs(const void *bdb,
> +				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
> +{
> +	int fp_timing_size, dvo_timing_size, panel_pnp_id_size;
> +	int data_block_size, lfp_data_size;
> +	int i;
> +
> +	data_block_size =3D block_size(bdb, BDB_LVDS_LFP_DATA);
> +	if (data_block_size =3D=3D 0)
> +		return false;
> +
> +	/* always 3 indicating the presence of fp_timing+dvo_timing+panel_pnp_i=
d */
> +	if (ptrs->lvds_entries !=3D 3)
> +		return false;
> +
> +	fp_timing_size =3D ptrs->ptr[0].fp_timing.table_size;
> +	dvo_timing_size =3D ptrs->ptr[0].dvo_timing.table_size;
> +	panel_pnp_id_size =3D ptrs->ptr[0].panel_pnp_id.table_size;
> +
> +	/* fp_timing has variable size */
> +	if (fp_timing_size < 32 ||
> +	    dvo_timing_size !=3D sizeof(struct lvds_dvo_timing) ||
> +	    panel_pnp_id_size !=3D sizeof(struct lvds_pnp_id))
> +		return false;
> +
> +	lfp_data_size =3D ptrs->ptr[1].fp_timing.offset - ptrs->ptr[0].fp_timin=
g.offset;
> +	if (16 * lfp_data_size > data_block_size)
> +		return false;
> +
> +	/*
> +	 * Except for vlv/chv machines all real VBTs seem to have 6
> +	 * unaccounted bytes in the fp_timing table. And it doesn't
> +	 * appear to be a really intentional hole as the fp_timing
> +	 * 0xffff terminator is always within those 6 missing bytes.
> +	 */
> +	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size !=3D lfp_data_=
size &&
> +	    fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size !=3D lfp_d=
ata_size)
> +		return false;
> +
> +	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size > ptrs->ptr[0].dvo_t=
iming.offset ||
> +	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size !=3D ptrs->ptr[0].=
panel_pnp_id.offset ||
> +	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size !=3D lfp_data_=
size)
> +		return false;
> +
> +	/* make sure the table entries have uniform size */
> +	for (i =3D 1; i < 16; i++) {
> +		if (ptrs->ptr[i].fp_timing.table_size !=3D fp_timing_size ||
> +		    ptrs->ptr[i].dvo_timing.table_size !=3D dvo_timing_size ||
> +		    ptrs->ptr[i].panel_pnp_id.table_size !=3D panel_pnp_id_size)
> +			return false;
> +
> +		if (ptrs->ptr[i].fp_timing.offset - ptrs->ptr[i-1].fp_timing.offset !=
=3D lfp_data_size ||
> +		    ptrs->ptr[i].dvo_timing.offset - ptrs->ptr[i-1].dvo_timing.offset =
!=3D lfp_data_size ||
> +		    ptrs->ptr[i].panel_pnp_id.offset - ptrs->ptr[i-1].panel_pnp_id.off=
set !=3D lfp_data_size)
> +			return false;
> +	}
> +
> +	/* make sure the tables fit inside the data block */
> +	for (i =3D 0; i < 16; i++) {
> +		if (ptrs->ptr[i].fp_timing.offset + fp_timing_size > data_block_size ||
> +		    ptrs->ptr[i].dvo_timing.offset + dvo_timing_size > data_block_size=
 ||
> +		    ptrs->ptr[i].panel_pnp_id.offset + panel_pnp_id_size > data_block_=
size)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>  /* make the data table offsets relative to the data block */
>  static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
>  {
> @@ -211,7 +291,7 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void=
 *ptrs_block)
>  		ptrs->ptr[i].panel_pnp_id.offset -=3D offset;
>  	}
>=20=20
> -	return true;
> +	return validate_lfp_data_ptrs(bdb, ptrs);
>  }
>=20=20
>  static void

--=20
Jani Nikula, Intel Open Source Graphics Center

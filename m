Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ABC5AACBC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 12:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928D210E7F4;
	Fri,  2 Sep 2022 10:47:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C36A10E7F4
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 10:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662115650; x=1693651650;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=a0Ad8Y7NtO7CMDRObzOvpYpEmn/2dg4mNGVKT54Vgqo=;
 b=U2LPwxieTgARmSPflEYVs7p6l9mmq7WJGXa6BuICqv7Rj10SFrlyHxwK
 BXbLU3g5XBEn3rEeyXcZEG70vIMpl0s+r/jpmrY3OF8P3Wvr2xN0/9l5+
 ZZkmCVC7i8dEGUIcsc69HacP1LSj+0TtR+jBhTwss9x0Hfs6P/h9V0x3y
 6nnC8XWBay2KgkS4Efi3AcvlMd3prNFPev+dIRYpcKsaqigLXTwbmcEHL
 T17hc/CNho9blvcfzjheL1u1xtolNZ3i/aY69UM0R8qNlvXw3d3V8R35W
 8JAoM7Gp/qMmeD5aqBBKG0NqwSJrKZEEZ6f7eX09/M832PJh8FGIj0mXB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="294694785"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="294694785"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 03:47:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674310969"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 03:47:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220818192223.29881-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
 <20220818192223.29881-2-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 13:47:14 +0300
Message-ID: <871qsuf3yl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/bios: Validate fp_timing
 terminator presence
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

On Thu, 18 Aug 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Validate the LFP data block a bit hardwer by making sure the
> fp_timing terminators (0xffff) are where we expect them to be.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I wonder if it would be good to debug log at each of the "return false"
sites in fixup_lfp_data_ptrs() and validate_lfp_data_ptrs(). Anyway,
that's a separate change.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 60 ++++++++++++-----------
>  1 file changed, 32 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 198a2f4920cc..f1f861da9e93 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -135,18 +135,6 @@ static u32 raw_block_offset(const void *bdb, enum bd=
b_block_id section_id)
>  	return block - bdb;
>  }
>=20=20
> -/* size of the block excluding the header */
> -static u32 raw_block_size(const void *bdb, enum bdb_block_id section_id)
> -{
> -	const void *block;
> -
> -	block =3D find_raw_section(bdb, section_id);
> -	if (!block)
> -		return 0;
> -
> -	return get_blocksize(block);
> -}
> -
>  struct bdb_block_entry {
>  	struct list_head node;
>  	enum bdb_block_id section_id;
> @@ -231,9 +219,14 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  {
>  	int fp_timing_size, dvo_timing_size, panel_pnp_id_size, panel_name_size;
>  	int data_block_size, lfp_data_size;
> +	const void *data_block;
>  	int i;
>=20=20
> -	data_block_size =3D raw_block_size(bdb, BDB_LVDS_LFP_DATA);
> +	data_block =3D find_raw_section(bdb, BDB_LVDS_LFP_DATA);
> +	if (!data_block)
> +		return false;
> +
> +	data_block_size =3D get_blocksize(data_block);
>  	if (data_block_size =3D=3D 0)
>  		return false;
>=20=20
> @@ -261,21 +254,6 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  	if (16 * lfp_data_size > data_block_size)
>  		return false;
>=20=20
> -	/*
> -	 * Except for vlv/chv machines all real VBTs seem to have 6
> -	 * unaccounted bytes in the fp_timing table. And it doesn't
> -	 * appear to be a really intentional hole as the fp_timing
> -	 * 0xffff terminator is always within those 6 missing bytes.
> -	 */
> -	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size !=3D lfp_data_=
size &&
> -	    fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size !=3D lfp_d=
ata_size)
> -		return false;
> -
> -	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size > ptrs->ptr[0].dvo_t=
iming.offset ||
> -	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size !=3D ptrs->ptr[0].=
panel_pnp_id.offset ||
> -	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size !=3D lfp_data_=
size)
> -		return false;
> -
>  	/* make sure the table entries have uniform size */
>  	for (i =3D 1; i < 16; i++) {
>  		if (ptrs->ptr[i].fp_timing.table_size !=3D fp_timing_size ||
> @@ -289,6 +267,23 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  			return false;
>  	}
>=20=20
> +	/*
> +	 * Except for vlv/chv machines all real VBTs seem to have 6
> +	 * unaccounted bytes in the fp_timing table. And it doesn't
> +	 * appear to be a really intentional hole as the fp_timing
> +	 * 0xffff terminator is always within those 6 missing bytes.
> +	 */
> +	if (fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size =3D=3D lfp=
_data_size)
> +		fp_timing_size +=3D 6;
> +
> +	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size !=3D lfp_data_=
size)
> +		return false;
> +
> +	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size !=3D ptrs->ptr[0].dv=
o_timing.offset ||
> +	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size !=3D ptrs->ptr[0].=
panel_pnp_id.offset ||
> +	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size !=3D lfp_data_=
size)
> +		return false;
> +
>  	/* make sure the tables fit inside the data block */
>  	for (i =3D 0; i < 16; i++) {
>  		if (ptrs->ptr[i].fp_timing.offset + fp_timing_size > data_block_size ||
> @@ -300,6 +295,15 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  	if (ptrs->panel_name.offset + 16 * panel_name_size > data_block_size)
>  		return false;
>=20=20
> +	/* make sure fp_timing terminators are present at expected locations */
> +	for (i =3D 0; i < 16; i++) {
> +		const u16 *t =3D data_block + ptrs->ptr[i].fp_timing.offset +
> +			fp_timing_size - 2;
> +
> +		if (*t !=3D 0xffff)
> +			return false;
> +	}
> +
>  	return true;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center

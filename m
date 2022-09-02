Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0571F5AAD3D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 13:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0096210E7FC;
	Fri,  2 Sep 2022 11:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881A310E7FC
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 11:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662117183; x=1693653183;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Y2QbxUNwyHOSREIsAdIsQ6Z28d176/YBLoljkp6TvLE=;
 b=f+8TfA7MENszmiy7Bfw2PjZGSX5uXRbmE2gkX+leM2NPMfN4OPqj270v
 nZOPU64DlcV8K1qyGnbruWj2cgRKdKYyVGrSvfjDv/a4qyMYWeOQYDTr1
 Mxs7dg0bC+8PlufpXsHS+tyaOMqZmHQoGKtMqb0dvzS+4oWb6x+GU3Hua
 AuzzlI1wZa2oZIAopiGTcF+1WL/htt0a2VL3QkGXUyS7lRO4D2iQD22KF
 ZrKmjDfc4bOUZu/8eHBIz6d7H/xtjNOzVA3UwquaX49cMI1+tENKImPC/
 ReUsJ5eaGtdjYI+KAJuKZ6hZxCkAWutybYtIb9TniLhUX4L2ol1RtmKgy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="296739760"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="296739760"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 04:13:02 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674317960"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 04:13:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220818192223.29881-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
 <20220818192223.29881-3-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 14:12:50 +0300
Message-ID: <87y1v2do7h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/bios: Use hardcoded fp_timing
 size for generating LFP data pointers
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
> The current scheme for generating the LFP data table pointers
> (when the block including them is missing from the VBT) expects
> the 0xffff sequence to only appear in the fp_timing terminator
> entries. However some VBTs also have extra 0xffff sequences
> elsewhere in the LFP data. When looking for the terminators
> we may end up finding those extra sequeneces insted, which means
> we deduce the wrong size for the fp_timing table. The code
> then notices the inconsistent looking values and gives up on
> the generated data table pointers, preventing us from parsing
> the LFP data table entirely.
>
> Let's give up on the "search for the terminators" approach
> and instead just hardcode the expected size for the fp_timing
> table.
>
> We have enough sanity checks in place to make sure we
> shouldn't end up parsing total garbage even if that size
> should change in the future (although that seems unlikely
> as the fp_timing and dvo_timing tables have been declared
> obsolete as of VBT version 229).
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6592
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

What a mess.

Could debug log about missing data ptrs on vbt version < 155, but no
biggie.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 46 +++++++++--------------
>  1 file changed, 18 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index f1f861da9e93..f54a1843924e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -337,18 +337,6 @@ static bool fixup_lfp_data_ptrs(const void *bdb, voi=
d *ptrs_block)
>  	return validate_lfp_data_ptrs(bdb, ptrs);
>  }
>=20=20
> -static const void *find_fp_timing_terminator(const u8 *data, int size)
> -{
> -	int i;
> -
> -	for (i =3D 0; i < size - 1; i++) {
> -		if (data[i] =3D=3D 0xff && data[i+1] =3D=3D 0xff)
> -			return &data[i];
> -	}
> -
> -	return NULL;
> -}
> -
>  static int make_lfp_data_ptr(struct lvds_lfp_data_ptr_table *table,
>  			     int table_size, int total_size)
>  {
> @@ -372,11 +360,22 @@ static void next_lfp_data_ptr(struct lvds_lfp_data_=
ptr_table *next,
>  static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
>  				    const void *bdb)
>  {
> -	int i, size, table_size, block_size, offset;
> -	const void *t0, *t1, *block;
> +	int i, size, table_size, block_size, offset, fp_timing_size;
>  	struct bdb_lvds_lfp_data_ptrs *ptrs;
> +	const void *block;
>  	void *ptrs_block;
>=20=20
> +	/*
> +	 * The hardcoded fp_timing_size is only valid for
> +	 * modernish VBTs. All older VBTs definitely should
> +	 * include block 41 and thus we don't need to
> +	 * generate one.
> +	 */
> +	if (i915->vbt.version < 155)
> +		return NULL;
> +
> +	fp_timing_size =3D 38;
> +
>  	block =3D find_raw_section(bdb, BDB_LVDS_LFP_DATA);
>  	if (!block)
>  		return NULL;
> @@ -385,17 +384,8 @@ static void *generate_lfp_data_ptrs(struct drm_i915_=
private *i915,
>=20=20
>  	block_size =3D get_blocksize(block);
>=20=20
> -	size =3D block_size;
> -	t0 =3D find_fp_timing_terminator(block, size);
> -	if (!t0)
> -		return NULL;
> -
> -	size -=3D t0 - block - 2;
> -	t1 =3D find_fp_timing_terminator(t0 + 2, size);
> -	if (!t1)
> -		return NULL;
> -
> -	size =3D t1 - t0;
> +	size =3D fp_timing_size + sizeof(struct lvds_dvo_timing) +
> +		sizeof(struct lvds_pnp_id);
>  	if (size * 16 > block_size)
>  		return NULL;
>=20=20
> @@ -413,7 +403,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_p=
rivate *i915,
>  	table_size =3D sizeof(struct lvds_dvo_timing);
>  	size =3D make_lfp_data_ptr(&ptrs->ptr[0].dvo_timing, table_size, size);
>=20=20
> -	table_size =3D t0 - block + 2;
> +	table_size =3D fp_timing_size;
>  	size =3D make_lfp_data_ptr(&ptrs->ptr[0].fp_timing, table_size, size);
>=20=20
>  	if (ptrs->ptr[0].fp_timing.table_size)
> @@ -428,14 +418,14 @@ static void *generate_lfp_data_ptrs(struct drm_i915=
_private *i915,
>  		return NULL;
>  	}
>=20=20
> -	size =3D t1 - t0;
> +	size =3D fp_timing_size + sizeof(struct lvds_dvo_timing) +
> +		sizeof(struct lvds_pnp_id);
>  	for (i =3D 1; i < 16; i++) {
>  		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, =
size);
>  		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing=
, size);
>  		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pn=
p_id, size);
>  	}
>=20=20
> -	size =3D t1 - t0;
>  	table_size =3D sizeof(struct lvds_lfp_panel_name);
>=20=20
>  	if (16 * (size + table_size) <=3D block_size) {

--=20
Jani Nikula, Intel Open Source Graphics Center

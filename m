Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9AB4F8550
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 18:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D13310EBBF;
	Thu,  7 Apr 2022 16:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B6489FFD
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 16:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649350397; x=1680886397;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EAXYGGTjux+D5DJj0dMdq6dGxwkYOKhK/FErVFFO8wk=;
 b=mUU9FaEkynHwbjnWKYTxCJWeaG0iIFhBZtNuXD4qbaFKlEiWzEVY3CAb
 MDLEs6QuCxuGajd63Ak1s5ppEugRWI2+xlxy2lFZfxh10NalApQ8Q41h1
 KsKQHgwk1mgCp0I8UNnGKqW8su/t2+itr+QhfqpHqS3J+gnIfPNH6ZU52
 +U/QmnGs41IMsub7CIsLNIRtbd6EudKSt9cjMKKppMFCqqc8ZMXpnkqi/
 1FbobA+Myxa0YlzurFG9QfZ7djFoOP1ebuav5okM96o9mK9ZvuHKOP9v6
 9p0sYlk7XPG7zFw/4J4l8RO02f4TZK/z24mi0li1ZWzxgXvilATyvQI+r w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="324542535"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="324542535"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:53:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="723042596"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:53:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220406133923.30709-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-9-ville.syrjala@linux.intel.com>
 <20220406133923.30709-1-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 19:53:13 +0300
Message-ID: <87o81c4yyu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 08/22] drm/i915/bios: Generate LFP data
 table pointers if the VBT lacks them
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
> Modern VBTs no longer contain the LFP data table pointers
> block (41). We are expecting to have one in order to be able
> to parse the LFP data block (42), so let's make one up.
>
> Since the fp_timing table has variable size we must somehow
> determine its size. Rather than just hardcode it we look for
> the terminator bytes (0xffff) to figure out where each table
> entry starts. dvo_timing, panel_pnp_id, and panel_name are
> expected to have fixed size.
>
> This has been observed on various machines, eg. TGL with BDB
> version 240, CML with BDB version 231, etc. The most recent
> VBT I've observed that still had block 41 had BDB version
> 228. So presumably the cutoff (if an exact cutoff even exists)
> is somewhere around BDB version 229-231.
>
> v2: kfree the thing we allocated, not the thing+3 bytes
> v3: Do the debugprint only if we found the LFP data block
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 136 +++++++++++++++++++++-
>  1 file changed, 135 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 8b118c54314d..d32091dad1b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -310,16 +310,146 @@ static bool fixup_lfp_data_ptrs(const void *bdb, v=
oid *ptrs_block)
>  	return validate_lfp_data_ptrs(bdb, ptrs);
>  }
>=20=20
> +static const void *find_fp_timing_terminator(const u8 *data, int size)
> +{
> +	int i;
> +
> +	if (!data)
> +		return NULL;
> +
> +	for (i =3D 0; i < size - 1; i++) {
> +		if (data[i] =3D=3D 0xff && data[i+1] =3D=3D 0xff)
> +			return &data[i];
> +	}
> +
> +	return NULL;
> +}
> +
> +static int make_lfp_data_ptr(struct lvds_lfp_data_ptr_table *table,
> +			     int table_size, int total_size)
> +{
> +	if (total_size < table_size)
> +		return total_size;
> +
> +	table->table_size =3D table_size;
> +	table->offset =3D total_size - table_size;
> +
> +	return total_size - table_size;
> +}
> +
> +static void next_lfp_data_ptr(struct lvds_lfp_data_ptr_table *next,
> +			      const struct lvds_lfp_data_ptr_table *prev,
> +			      int size)
> +{
> +	next->table_size =3D prev->table_size;
> +	next->offset =3D prev->offset + size;
> +}
> +
> +static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
> +				    const void *bdb)
> +{
> +	int i, size, table_size, block_size, offset;
> +	const void *t0, *t1, *block;
> +	struct bdb_lvds_lfp_data_ptrs *ptrs;
> +	void *ptrs_block;
> +
> +	block =3D find_raw_section(bdb, BDB_LVDS_LFP_DATA);
> +	if (!block)
> +		return NULL;
> +
> +	drm_dbg_kms(&i915->drm, "Generating LFP data table pointers\n");
> +
> +	block_size =3D get_blocksize(block);
> +
> +	size =3D block_size;
> +	t0 =3D find_fp_timing_terminator(block, size);
> +
> +	size -=3D t0 - block - 2;
> +	t1 =3D find_fp_timing_terminator(t0 + 2, size);

Need to NULL check t0 before using it.

I'll still keep trying to wrap my head around the below stuff.

> +
> +	if (!t0 || !t1)
> +		return NULL;
> +
> +	size =3D t1 - t0;
> +	if (size * 16 > block_size)
> +		return NULL;
> +
> +	ptrs_block =3D kzalloc(sizeof(*ptrs) + 3, GFP_KERNEL);
> +	if (!ptrs_block)
> +		return NULL;
> +
> +	*(u8 *)(ptrs_block + 0) =3D BDB_LVDS_LFP_DATA_PTRS;
> +	*(u16 *)(ptrs_block + 1) =3D sizeof(*ptrs);
> +	ptrs =3D ptrs_block + 3;
> +
> +	table_size =3D sizeof(struct lvds_pnp_id);
> +	size =3D make_lfp_data_ptr(&ptrs->ptr[0].panel_pnp_id, table_size, size=
);
> +
> +	table_size =3D sizeof(struct lvds_dvo_timing);
> +	size =3D make_lfp_data_ptr(&ptrs->ptr[0].dvo_timing, table_size, size);
> +
> +	table_size =3D t0 - block + 2;
> +	size =3D make_lfp_data_ptr(&ptrs->ptr[0].fp_timing, table_size, size);
> +
> +	if (ptrs->ptr[0].fp_timing.table_size)
> +		ptrs->lvds_entries++;
> +	if (ptrs->ptr[0].dvo_timing.table_size)
> +		ptrs->lvds_entries++;
> +	if (ptrs->ptr[0].panel_pnp_id.table_size)
> +		ptrs->lvds_entries++;
> +
> +	if (size !=3D 0 || ptrs->lvds_entries !=3D 3) {
> +		kfree(ptrs);
> +		return NULL;
> +	}
> +
> +	size =3D t1 - t0;
> +	for (i =3D 1; i < 16; i++) {
> +		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, =
size);
> +		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing=
, size);
> +		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pn=
p_id, size);
> +	}
> +
> +	size =3D t1 - t0;
> +	table_size =3D sizeof(struct lvds_lfp_panel_name);
> +
> +	if (16 * (size + table_size) <=3D block_size) {
> +		ptrs->panel_name.table_size =3D table_size;
> +		ptrs->panel_name.offset =3D size * 16;
> +	}
> +
> +	offset =3D block - bdb;
> +
> +	for (i =3D 0; i < 16; i++) {
> +		ptrs->ptr[i].fp_timing.offset +=3D offset;
> +		ptrs->ptr[i].dvo_timing.offset +=3D offset;
> +		ptrs->ptr[i].panel_pnp_id.offset +=3D offset;
> +	}
> +
> +	if (ptrs->panel_name.table_size)
> +		ptrs->panel_name.offset +=3D offset;
> +
> +	return ptrs_block;
> +}
> +
>  static void
>  init_bdb_block(struct drm_i915_private *i915,
>  	       const void *bdb, enum bdb_block_id section_id,
>  	       size_t min_size)
>  {
>  	struct bdb_block_entry *entry;
> +	void *temp_block =3D NULL;
>  	const void *block;
>  	size_t block_size;
>=20=20
>  	block =3D find_raw_section(bdb, section_id);
> +
> +	/* Modern VBTs lack the LFP data table pointers block, make one up */
> +	if (!block && section_id =3D=3D BDB_LVDS_LFP_DATA_PTRS) {
> +		temp_block =3D generate_lfp_data_ptrs(i915, bdb);
> +		if (temp_block)
> +			block =3D temp_block + 3;
> +	}
>  	if (!block)
>  		return;
>=20=20
> @@ -330,12 +460,16 @@ init_bdb_block(struct drm_i915_private *i915,
>=20=20
>  	entry =3D kzalloc(struct_size(entry, data, max(min_size, block_size) + =
3),
>  			GFP_KERNEL);
> -	if (!entry)
> +	if (!entry) {
> +		kfree(temp_block);
>  		return;
> +	}
>=20=20
>  	entry->section_id =3D section_id;
>  	memcpy(entry->data, block - 3, block_size + 3);
>=20=20
> +	kfree(temp_block);
> +
>  	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
>  		    section_id, block_size, min_size);

--=20
Jani Nikula, Intel Open Source Graphics Center

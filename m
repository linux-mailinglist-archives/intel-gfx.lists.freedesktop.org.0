Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 059B65182B5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 12:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51CA910FD7A;
	Tue,  3 May 2022 10:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3983C10FF51
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 10:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651575321; x=1683111321;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TzZBr1f9G6RTofQxApDdJU3GZvmplfZ5DuS3l+5tuBg=;
 b=auz3bAbHxTaFnZm1qbZmulpNqlnSK1HCkZrVksPJ6ph7FQ/9UUO05P26
 vcZY2kSlFMuvprfOEMFMtHRZQ20mi4XEVSBTQp2IaU/CGhQBZ1XX0pf4x
 a8/cVpl9NK2K/gg79u+YnlI1SEYCIu5u1wdvfWWh6neSedaW38mUmbmOf
 Hb6zHlUEHlgKbXoIYVkWbMSVAFMaiktgz6MpWtS4Wzao9hFsdvSdGztHc
 0Y9cdUQl3hmpg+diX5645hPHj5PO8+00YJUgFoa6VJs3jeoMg/DEjo/+A
 hGHIZSfSmzEyHSk83XHWHDhVPzoZAhL9mIumX8Drq1fdh5WmI710NeYx7 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="353889554"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="353889554"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 03:55:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="599015770"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 03:55:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220426193222.3422-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
 <20220426193222.3422-3-ville.syrjala@linux.intel.com>
Date: Tue, 03 May 2022 13:55:16 +0300
Message-ID: <87o80eriln.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 02/18] drm/i915/bios: Generate LFP data
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

On Tue, 26 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
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
> v4: Fix t0 null check (Jani)
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I've reviewed this as best as I could. It's awful, but I couldn't really
come up with concrete suggestions either. Maybe there could be temp
variables with more helpful naming. Maybe there could be some more
explanatory comments. I don't know. But I couldn't spot any obvious
mistakes.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 134 +++++++++++++++++++++-
>  1 file changed, 133 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 8a1086721525..7bc3d55b6bb0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -311,16 +311,144 @@ static bool fixup_lfp_data_ptrs(const void *bdb, v=
oid *ptrs_block)
>  	return validate_lfp_data_ptrs(bdb, ptrs);
>  }
>=20=20
> +static const void *find_fp_timing_terminator(const u8 *data, int size)
> +{
> +	int i;
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
> +	if (!t0)
> +		return NULL;
> +
> +	size -=3D t0 - block - 2;
> +	t1 =3D find_fp_timing_terminator(t0 + 2, size);
> +	if (!t1)
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
> @@ -331,12 +459,16 @@ init_bdb_block(struct drm_i915_private *i915,
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

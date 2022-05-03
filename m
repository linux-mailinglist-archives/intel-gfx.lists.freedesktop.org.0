Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D44B518B16
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 19:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E98C10E34E;
	Tue,  3 May 2022 17:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA97010E34E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 17:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651598972; x=1683134972;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=srPjVSuOAsgpnxqyvWr+bgJ4JeLXUFf6kkCgn/3HqWU=;
 b=M1KqKDjPnOLBZgtRi1t9eZAfp8NYxcVhtuWmRCsRgLoFb8CUfzf/ng3D
 FKiFf13Yq/e2kX3Cqanl9+pvNT2NPBw0Hf5KHZZmCTVwxaxHNAkW7KPC9
 GEz7J09zjP6nnz3nWMqgOHDf4R4Q+mImwlgDz+Qa3lBwmDRPY8VsqTF2q
 t8FOP2GhcduRkBNRzlH5WrSM96Vsft5TO8csCYr/AFZ+Klg7k+QyYuqoe
 MF3TdHvlr3i0N/q/SnLrpechMN1VsFRc7bJcWFRp9lLa3vIc8Ld2SVzZN
 pWmNVCEmYyKpvbWmkKrn2N0C2ehx8HUN3UUQqUNxnCMmpUNqYbnAu0Q9g w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="330524957"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="330524957"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 10:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="562306003"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 03 May 2022 10:29:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 20:29:14 +0300
Date: Tue, 3 May 2022 20:29:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YnFmahGlRPYRJgD8@intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
 <20220426193222.3422-3-ville.syrjala@linux.intel.com>
 <87o80eriln.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o80eriln.fsf@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 03, 2022 at 01:55:16PM +0300, Jani Nikula wrote:
> On Tue, 26 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Modern VBTs no longer contain the LFP data table pointers
> > block (41). We are expecting to have one in order to be able
> > to parse the LFP data block (42), so let's make one up.
> >
> > Since the fp_timing table has variable size we must somehow
> > determine its size. Rather than just hardcode it we look for
> > the terminator bytes (0xffff) to figure out where each table
> > entry starts. dvo_timing, panel_pnp_id, and panel_name are
> > expected to have fixed size.
> >
> > This has been observed on various machines, eg. TGL with BDB
> > version 240, CML with BDB version 231, etc. The most recent
> > VBT I've observed that still had block 41 had BDB version
> > 228. So presumably the cutoff (if an exact cutoff even exists)
> > is somewhere around BDB version 229-231.
> >
> > v2: kfree the thing we allocated, not the thing+3 bytes
> > v3: Do the debugprint only if we found the LFP data block
> > v4: Fix t0 null check (Jani)
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I've reviewed this as best as I could. It's awful, but I couldn't really
> come up with concrete suggestions either. Maybe there could be temp
> variables with more helpful naming. Maybe there could be some more
> explanatory comments. I don't know. But I couldn't spot any obvious
> mistakes.

The alternative I think that could work is just hardcoding it
based on the assumption that it'll stay a fixed size from here
on out. But then I think we would want also to make
validate_lfp_data_ptrs() check that the terminators appear at the
expected spots, just in case it does end up changing size at some
point.

That approach might be a bit easier on the brain I guess.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 134 +++++++++++++++++++++-
> >  1 file changed, 133 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 8a1086721525..7bc3d55b6bb0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -311,16 +311,144 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
> >  	return validate_lfp_data_ptrs(bdb, ptrs);
> >  }
> >  
> > +static const void *find_fp_timing_terminator(const u8 *data, int size)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < size - 1; i++) {
> > +		if (data[i] == 0xff && data[i+1] == 0xff)
> > +			return &data[i];
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> > +static int make_lfp_data_ptr(struct lvds_lfp_data_ptr_table *table,
> > +			     int table_size, int total_size)
> > +{
> > +	if (total_size < table_size)
> > +		return total_size;
> > +
> > +	table->table_size = table_size;
> > +	table->offset = total_size - table_size;
> > +
> > +	return total_size - table_size;
> > +}
> > +
> > +static void next_lfp_data_ptr(struct lvds_lfp_data_ptr_table *next,
> > +			      const struct lvds_lfp_data_ptr_table *prev,
> > +			      int size)
> > +{
> > +	next->table_size = prev->table_size;
> > +	next->offset = prev->offset + size;
> > +}
> > +
> > +static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
> > +				    const void *bdb)
> > +{
> > +	int i, size, table_size, block_size, offset;
> > +	const void *t0, *t1, *block;
> > +	struct bdb_lvds_lfp_data_ptrs *ptrs;
> > +	void *ptrs_block;
> > +
> > +	block = find_raw_section(bdb, BDB_LVDS_LFP_DATA);
> > +	if (!block)
> > +		return NULL;
> > +
> > +	drm_dbg_kms(&i915->drm, "Generating LFP data table pointers\n");
> > +
> > +	block_size = get_blocksize(block);
> > +
> > +	size = block_size;
> > +	t0 = find_fp_timing_terminator(block, size);
> > +	if (!t0)
> > +		return NULL;
> > +
> > +	size -= t0 - block - 2;
> > +	t1 = find_fp_timing_terminator(t0 + 2, size);
> > +	if (!t1)
> > +		return NULL;
> > +
> > +	size = t1 - t0;
> > +	if (size * 16 > block_size)
> > +		return NULL;
> > +
> > +	ptrs_block = kzalloc(sizeof(*ptrs) + 3, GFP_KERNEL);
> > +	if (!ptrs_block)
> > +		return NULL;
> > +
> > +	*(u8 *)(ptrs_block + 0) = BDB_LVDS_LFP_DATA_PTRS;
> > +	*(u16 *)(ptrs_block + 1) = sizeof(*ptrs);
> > +	ptrs = ptrs_block + 3;
> > +
> > +	table_size = sizeof(struct lvds_pnp_id);
> > +	size = make_lfp_data_ptr(&ptrs->ptr[0].panel_pnp_id, table_size, size);
> > +
> > +	table_size = sizeof(struct lvds_dvo_timing);
> > +	size = make_lfp_data_ptr(&ptrs->ptr[0].dvo_timing, table_size, size);
> > +
> > +	table_size = t0 - block + 2;
> > +	size = make_lfp_data_ptr(&ptrs->ptr[0].fp_timing, table_size, size);
> > +
> > +	if (ptrs->ptr[0].fp_timing.table_size)
> > +		ptrs->lvds_entries++;
> > +	if (ptrs->ptr[0].dvo_timing.table_size)
> > +		ptrs->lvds_entries++;
> > +	if (ptrs->ptr[0].panel_pnp_id.table_size)
> > +		ptrs->lvds_entries++;
> > +
> > +	if (size != 0 || ptrs->lvds_entries != 3) {
> > +		kfree(ptrs);
> > +		return NULL;
> > +	}
> > +
> > +	size = t1 - t0;
> > +	for (i = 1; i < 16; i++) {
> > +		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
> > +		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
> > +		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
> > +	}
> > +
> > +	size = t1 - t0;
> > +	table_size = sizeof(struct lvds_lfp_panel_name);
> > +
> > +	if (16 * (size + table_size) <= block_size) {
> > +		ptrs->panel_name.table_size = table_size;
> > +		ptrs->panel_name.offset = size * 16;
> > +	}
> > +
> > +	offset = block - bdb;
> > +
> > +	for (i = 0; i < 16; i++) {
> > +		ptrs->ptr[i].fp_timing.offset += offset;
> > +		ptrs->ptr[i].dvo_timing.offset += offset;
> > +		ptrs->ptr[i].panel_pnp_id.offset += offset;
> > +	}
> > +
> > +	if (ptrs->panel_name.table_size)
> > +		ptrs->panel_name.offset += offset;
> > +
> > +	return ptrs_block;
> > +}
> > +
> >  static void
> >  init_bdb_block(struct drm_i915_private *i915,
> >  	       const void *bdb, enum bdb_block_id section_id,
> >  	       size_t min_size)
> >  {
> >  	struct bdb_block_entry *entry;
> > +	void *temp_block = NULL;
> >  	const void *block;
> >  	size_t block_size;
> >  
> >  	block = find_raw_section(bdb, section_id);
> > +
> > +	/* Modern VBTs lack the LFP data table pointers block, make one up */
> > +	if (!block && section_id == BDB_LVDS_LFP_DATA_PTRS) {
> > +		temp_block = generate_lfp_data_ptrs(i915, bdb);
> > +		if (temp_block)
> > +			block = temp_block + 3;
> > +	}
> >  	if (!block)
> >  		return;
> >  
> > @@ -331,12 +459,16 @@ init_bdb_block(struct drm_i915_private *i915,
> >  
> >  	entry = kzalloc(struct_size(entry, data, max(min_size, block_size) + 3),
> >  			GFP_KERNEL);
> > -	if (!entry)
> > +	if (!entry) {
> > +		kfree(temp_block);
> >  		return;
> > +	}
> >  
> >  	entry->section_id = section_id;
> >  	memcpy(entry->data, block - 3, block_size + 3);
> >  
> > +	kfree(temp_block);
> > +
> >  	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
> >  		    section_id, block_size, min_size);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel

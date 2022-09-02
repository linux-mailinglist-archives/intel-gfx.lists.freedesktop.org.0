Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905265AAD01
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 13:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A6A10E7F5;
	Fri,  2 Sep 2022 11:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DB410E7F5
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 11:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662116614; x=1693652614;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RPf3KE/Tc/a9pzeE8uGxZrQII98MQ9VC8plPrCHUbeM=;
 b=nASkuEaaXLIR1RAVHZnlTtz5q1XrEWfqELIQEQ20VPTaS9HDQ6fzFq3Q
 ymQSP17jhzViqabjJldjzE7cPF4uZtB5CBDX3RVPxzXvYkF9/qw+bKXMg
 n+z+Y39m01b/79uCvTSCsaNccQuOQEpzzk/c1wc81HlgXjiOomG6oQdot
 ZFyXYqaN2CbF0oiRdqKgnBiDSZDIJNh5MItfTKqeWxzz2Muih9vbWSB2W
 X9RQokoAxYqlwEV3AiPERnXGxuhZxh8y8MV4eCd5/tAtWAb8/JeCA/3q9
 +4ZK8iZE3MugTZENFvba/ILIxzaNLnTml3JL7+nTjS95FRgmcs7nQ+ygR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="322115554"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="322115554"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 04:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="716484259"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 02 Sep 2022 04:03:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Sep 2022 14:03:31 +0300
Date: Fri, 2 Sep 2022 14:03:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YxHjA4lvGvZDdFrf@intel.com>
References: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
 <20220818192223.29881-2-ville.syrjala@linux.intel.com>
 <871qsuf3yl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <871qsuf3yl.fsf@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 02, 2022 at 01:47:14PM +0300, Jani Nikula wrote:
> On Thu, 18 Aug 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Validate the LFP data block a bit hardwer by making sure the
> > fp_timing terminators (0xffff) are where we expect them to be.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I wonder if it would be good to debug log at each of the "return false"
> sites in fixup_lfp_data_ptrs() and validate_lfp_data_ptrs(). Anyway,
> that's a separate change.

Not sure how much it would help. I suspect one still ends
up decoding the whole hexdump by hand.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 60 ++++++++++++-----------
> >  1 file changed, 32 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 198a2f4920cc..f1f861da9e93 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -135,18 +135,6 @@ static u32 raw_block_offset(const void *bdb, enum bdb_block_id section_id)
> >  	return block - bdb;
> >  }
> >  
> > -/* size of the block excluding the header */
> > -static u32 raw_block_size(const void *bdb, enum bdb_block_id section_id)
> > -{
> > -	const void *block;
> > -
> > -	block = find_raw_section(bdb, section_id);
> > -	if (!block)
> > -		return 0;
> > -
> > -	return get_blocksize(block);
> > -}
> > -
> >  struct bdb_block_entry {
> >  	struct list_head node;
> >  	enum bdb_block_id section_id;
> > @@ -231,9 +219,14 @@ static bool validate_lfp_data_ptrs(const void *bdb,
> >  {
> >  	int fp_timing_size, dvo_timing_size, panel_pnp_id_size, panel_name_size;
> >  	int data_block_size, lfp_data_size;
> > +	const void *data_block;
> >  	int i;
> >  
> > -	data_block_size = raw_block_size(bdb, BDB_LVDS_LFP_DATA);
> > +	data_block = find_raw_section(bdb, BDB_LVDS_LFP_DATA);
> > +	if (!data_block)
> > +		return false;
> > +
> > +	data_block_size = get_blocksize(data_block);
> >  	if (data_block_size == 0)
> >  		return false;
> >  
> > @@ -261,21 +254,6 @@ static bool validate_lfp_data_ptrs(const void *bdb,
> >  	if (16 * lfp_data_size > data_block_size)
> >  		return false;
> >  
> > -	/*
> > -	 * Except for vlv/chv machines all real VBTs seem to have 6
> > -	 * unaccounted bytes in the fp_timing table. And it doesn't
> > -	 * appear to be a really intentional hole as the fp_timing
> > -	 * 0xffff terminator is always within those 6 missing bytes.
> > -	 */
> > -	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size != lfp_data_size &&
> > -	    fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size != lfp_data_size)
> > -		return false;
> > -
> > -	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size > ptrs->ptr[0].dvo_timing.offset ||
> > -	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size != ptrs->ptr[0].panel_pnp_id.offset ||
> > -	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size != lfp_data_size)
> > -		return false;
> > -
> >  	/* make sure the table entries have uniform size */
> >  	for (i = 1; i < 16; i++) {
> >  		if (ptrs->ptr[i].fp_timing.table_size != fp_timing_size ||
> > @@ -289,6 +267,23 @@ static bool validate_lfp_data_ptrs(const void *bdb,
> >  			return false;
> >  	}
> >  
> > +	/*
> > +	 * Except for vlv/chv machines all real VBTs seem to have 6
> > +	 * unaccounted bytes in the fp_timing table. And it doesn't
> > +	 * appear to be a really intentional hole as the fp_timing
> > +	 * 0xffff terminator is always within those 6 missing bytes.
> > +	 */
> > +	if (fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size == lfp_data_size)
> > +		fp_timing_size += 6;
> > +
> > +	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size != lfp_data_size)
> > +		return false;
> > +
> > +	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size != ptrs->ptr[0].dvo_timing.offset ||
> > +	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size != ptrs->ptr[0].panel_pnp_id.offset ||
> > +	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size != lfp_data_size)
> > +		return false;
> > +
> >  	/* make sure the tables fit inside the data block */
> >  	for (i = 0; i < 16; i++) {
> >  		if (ptrs->ptr[i].fp_timing.offset + fp_timing_size > data_block_size ||
> > @@ -300,6 +295,15 @@ static bool validate_lfp_data_ptrs(const void *bdb,
> >  	if (ptrs->panel_name.offset + 16 * panel_name_size > data_block_size)
> >  		return false;
> >  
> > +	/* make sure fp_timing terminators are present at expected locations */
> > +	for (i = 0; i < 16; i++) {
> > +		const u16 *t = data_block + ptrs->ptr[i].fp_timing.offset +
> > +			fp_timing_size - 2;
> > +
> > +		if (*t != 0xffff)
> > +			return false;
> > +	}
> > +
> >  	return true;
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel

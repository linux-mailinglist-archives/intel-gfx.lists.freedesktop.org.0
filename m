Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631504FD2DF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 10:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFA510E4B6;
	Tue, 12 Apr 2022 08:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7136010E4B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 08:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649751545; x=1681287545;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vgt6PVaOIiSYPVGo9wcT+11aoppS8L9DUPUCTR+HegE=;
 b=gkMCbtxfcwXCgbhryr/RhuPXhcuTNUZZ5KA1X2XFJ6mlaNSb0BX6iNp/
 BE1SzKEJHLObxwOuh4nrn5txd3mX/984V7MBcRRS+9O898wrjmujbqwbv
 IxL6+sX6tF4XPmQAaI+1AMuCyhtO+f+Ln6vlXkoJHz2xZT9iTPTIzkFl5
 XHuz9sHgfoolFAZ25M9gYrhoaeRaEWKeflolzP4EVZu5Zn/YTflwXFokw
 sKMcve0b70vS08ZQRrRmxP62FJWeXveJozZIS672GdRVHG2gSS6k+/+cw
 +aMrVtuDV3nvtxl7r+z+5Dct0sFoajPZvryHmzBOBwMp3KSINd4YL1BDP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="348752541"
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="348752541"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 01:19:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="655007128"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 12 Apr 2022 01:19:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Apr 2022 11:19:02 +0300
Date: Tue, 12 Apr 2022 11:19:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YlU19h444HJvzq6H@intel.com>
References: <20220405173410.11436-9-ville.syrjala@linux.intel.com>
 <20220406133923.30709-1-ville.syrjala@linux.intel.com>
 <87o81c4yyu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o81c4yyu.fsf@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 07, 2022 at 07:53:13PM +0300, Jani Nikula wrote:
> On Wed, 06 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
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
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 136 +++++++++++++++++++++-
> >  1 file changed, 135 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 8b118c54314d..d32091dad1b0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -310,16 +310,146 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
> >  	return validate_lfp_data_ptrs(bdb, ptrs);
> >  }
> >  
> > +static const void *find_fp_timing_terminator(const u8 *data, int size)
> > +{
> > +	int i;
> > +
> > +	if (!data)
> > +		return NULL;
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
> > +
> > +	size -= t0 - block - 2;
> > +	t1 = find_fp_timing_terminator(t0 + 2, size);
> 
> Need to NULL check t0 before using it.

I had the null check in find_fp_timing_terminator() but the +2
here does mean that it doesn't actually work. I'll move the check here.

-- 
Ville Syrjälä
Intel

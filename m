Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD53B405907
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 16:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAFD6E4DD;
	Thu,  9 Sep 2021 14:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6544B6E4DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 14:29:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="201002480"
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="201002480"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 07:29:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="696341446"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 07:29:34 -0700
Date: Thu, 9 Sep 2021 07:29:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20210909142933.GZ461228@mdroper-desk1.amr.corp.intel.com>
References: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
 <20210907172728.GF461228@mdroper-desk1.amr.corp.intel.com>
 <YTekMq0Kfb3Xkeid@intel.com>
 <20210907181929.GG461228@mdroper-desk1.amr.corp.intel.com>
 <YToTGr2kSQjGtpan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YToTGr2kSQjGtpan@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add separate MOCS table for
 Gen12 devices other than TGL/RKL
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

On Thu, Sep 09, 2021 at 04:58:50PM +0300, Ville Syrjälä wrote:
> On Tue, Sep 07, 2021 at 11:19:29AM -0700, Matt Roper wrote:
> > On Tue, Sep 07, 2021 at 08:41:06PM +0300, Ville Syrjälä wrote:
> > > On Tue, Sep 07, 2021 at 10:27:28AM -0700, Matt Roper wrote:
> > > > On Tue, Sep 07, 2021 at 10:46:39PM +0530, Ayaz A Siddiqui wrote:
> > > > > MOCS table of TGL/RKL has MOCS[1] set to L3_UC.
> > > > > While for other gen12 devices we need to set MOCS[1] as L3_WB,
> > > > > So adding a new MOCS table for other gen 12 devices eg. ADL.
> > > > > 
> > > > > Fixes: cfbe5291a189 ("drm/i915/gt: Initialize unused MOCS entries with device specific values")
> > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > > > 
> > > > Yep, we overlooked that the TGL table still had an explicit entry for
> > > > I915_MOCS_PTE and wasn't just using an implicit 'unused_entries' lookup
> > > > for MOCS[1].  The new table is the same as the TGL table, just with
> > > > I915_MOCS_PTE (1) removed.
> > > 
> > > And just how are people planning on handling display cacheability
> > > control without a PTE MOCS entry? Is Mesa/etc. already making all
> > > external bos uncached on these platforms just in case we might
> > > scan out said bo?
> > 
> > MOCS entry 1 has never been considered a valid MOCS table entry on gen12
> > platforms (despite the old #define, it's not actually related to PTE,
> > display, etc. anymore).
> 
> So can someone finally explain to me how we're supposed to cache
> anything that might become a scanout buffer later (eg. window system
> buffers)? Or are we just making everything like that UC now, and is
> everyone happy with that? Is userspace actually following that?

Table entry #1 has never had anything to do with scanout on gen12+.  I
would assume that UMDs are either using the display entry in the MOCS
table (which is 61 on gen12+) or some other UC entry.  If they weren't
properly updated and are still trying to use gen11 MOCS tables, then
they'll continue to work on TGL/RKL (we're not making any changes
there), but they'll just never run properly on the upcoming platforms
like ADL until the userspace enablement of the platform is completed.

> 
> We can't just randomly change this stuff in the kernel since it's an
> abi. Userspace has to be in sync.

That's exactly why we're making this change.  We need to get this right
_before_ it becomes established as ABI on upcoming platforms.  We missed
the boat for TGL/RKL, which is why we're stuck with the "wrong" value in
invalid table entry #1 forever.  But the platforms that haven't
established a behavior as pre-existing ABI yet need to be handled
correctly right from the beginning.  ABI means we can't change the
behavior of a specific platform between kernel releases; it doesn't mean
that new platform B has to reproduce all the mistakes of old platform A
too.  If buggy userspace happened to work by accident on TGL/RKL, that
doesn't mean that it has to accidentally work on ADL hardware too.


Matt

> 
> > Userspace shouldn't be using entry 1, since its
> > settings are officially undefined, but because we had already defined a
> > value for it in the driver on our production gen12 platforms (TGL/RKL),
> > we can't change that value now without an ABI break; we just have to
> > leave it be on TGL/RKL.
> > 
> > Any userspace trying to use entry 1 on gen12 (or any other undocumented
> > table entry) is still buggy and should still be updated.  For the gen12
> > platforms going forward (ADL-S, ADL-P, and anything else that shows up
> > in the future) we can just follow the guidance of setting all
> > invalid/unused entries as L3 cached from day 1.
> > 
> > 
> > Matt
> > 
> > > 
> > > > 
> > > > Looks good to me,
> > > > 
> > > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > > > 
> > > > 
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gt/intel_mocs.c | 41 +++++++++++++++++++++++++---
> > > > >  1 file changed, 37 insertions(+), 4 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > > > > index e96afd7beb49..c8d289b00de4 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > > > > @@ -315,6 +315,35 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
> > > > >  	MOCS_ENTRY(63, 0, L3_1_UC),
> > > > >  };
> > > > >  
> > > > > +static const struct drm_i915_mocs_entry gen12_mocs_table[] = {
> > > > > +
> > > > > +	GEN11_MOCS_ENTRIES,
> > > > > +	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
> > > > > +	MOCS_ENTRY(48,
> > > > > +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > > > > +		   L3_3_WB),
> > > > > +	/* Implicitly enable L1 - HDC:L1 + L3 */
> > > > > +	MOCS_ENTRY(49,
> > > > > +		   LE_1_UC | LE_TC_1_LLC,
> > > > > +		   L3_3_WB),
> > > > > +	/* Implicitly enable L1 - HDC:L1 + LLC */
> > > > > +	MOCS_ENTRY(50,
> > > > > +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > > > > +		   L3_1_UC),
> > > > > +	/* Implicitly enable L1 - HDC:L1 */
> > > > > +	MOCS_ENTRY(51,
> > > > > +		   LE_1_UC | LE_TC_1_LLC,
> > > > > +		   L3_1_UC),
> > > > > +	/* HW Special Case (CCS) */
> > > > > +	MOCS_ENTRY(60,
> > > > > +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > > > > +		   L3_1_UC),
> > > > > +	/* HW Special Case (Displayable) */
> > > > > +	MOCS_ENTRY(61,
> > > > > +		   LE_1_UC | LE_TC_1_LLC,
> > > > > +		   L3_3_WB),
> > > > > +};
> > > > > +
> > > > >  enum {
> > > > >  	HAS_GLOBAL_MOCS = BIT(0),
> > > > >  	HAS_ENGINE_MOCS = BIT(1),
> > > > > @@ -351,14 +380,18 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
> > > > >  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > > > >  		table->uc_index = 1;
> > > > >  		table->unused_entries_index = 5;
> > > > > -	} else if (GRAPHICS_VER(i915) >= 12) {
> > > > > +	} else if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
> > > > > +		/* For TGL/RKL, Can't be changed now for ABI reasons */
> > > > >  		table->size  = ARRAY_SIZE(tgl_mocs_table);
> > > > >  		table->table = tgl_mocs_table;
> > > > >  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > > > >  		table->uc_index = 3;
> > > > > -		/* For TGL/RKL, Can't be changed now for ABI reasons */
> > > > > -		if (!IS_TIGERLAKE(i915) && !IS_ROCKETLAKE(i915))
> > > > > -			table->unused_entries_index = 2;
> > > > > +	} else if (GRAPHICS_VER(i915) >= 12) {
> > > > > +		table->size  = ARRAY_SIZE(gen12_mocs_table);
> > > > > +		table->table = gen12_mocs_table;
> > > > > +		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > > > > +		table->uc_index = 3;
> > > > > +		table->unused_entries_index = 2;
> > > > >  	} else if (GRAPHICS_VER(i915) == 11) {
> > > > >  		table->size  = ARRAY_SIZE(icl_mocs_table);
> > > > >  		table->table = icl_mocs_table;
> > > > > -- 
> > > > > 2.26.2
> > > > > 
> > > > 
> > > > -- 
> > > > Matt Roper
> > > > Graphics Software Engineer
> > > > VTT-OSGC Platform Enablement
> > > > Intel Corporation
> > > > (916) 356-2795
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation
> > (916) 356-2795
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795

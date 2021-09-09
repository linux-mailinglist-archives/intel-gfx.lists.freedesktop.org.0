Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFC0405863
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 15:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FA56E85F;
	Thu,  9 Sep 2021 13:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CCC6E85F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 13:58:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="220845863"
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="220845863"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 06:58:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="548574759"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 09 Sep 2021 06:58:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Sep 2021 16:58:50 +0300
Date: Thu, 9 Sep 2021 16:58:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <YToTGr2kSQjGtpan@intel.com>
References: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
 <20210907172728.GF461228@mdroper-desk1.amr.corp.intel.com>
 <YTekMq0Kfb3Xkeid@intel.com>
 <20210907181929.GG461228@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210907181929.GG461228@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
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

On Tue, Sep 07, 2021 at 11:19:29AM -0700, Matt Roper wrote:
> On Tue, Sep 07, 2021 at 08:41:06PM +0300, Ville Syrjälä wrote:
> > On Tue, Sep 07, 2021 at 10:27:28AM -0700, Matt Roper wrote:
> > > On Tue, Sep 07, 2021 at 10:46:39PM +0530, Ayaz A Siddiqui wrote:
> > > > MOCS table of TGL/RKL has MOCS[1] set to L3_UC.
> > > > While for other gen12 devices we need to set MOCS[1] as L3_WB,
> > > > So adding a new MOCS table for other gen 12 devices eg. ADL.
> > > > 
> > > > Fixes: cfbe5291a189 ("drm/i915/gt: Initialize unused MOCS entries with device specific values")
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > > 
> > > Yep, we overlooked that the TGL table still had an explicit entry for
> > > I915_MOCS_PTE and wasn't just using an implicit 'unused_entries' lookup
> > > for MOCS[1].  The new table is the same as the TGL table, just with
> > > I915_MOCS_PTE (1) removed.
> > 
> > And just how are people planning on handling display cacheability
> > control without a PTE MOCS entry? Is Mesa/etc. already making all
> > external bos uncached on these platforms just in case we might
> > scan out said bo?
> 
> MOCS entry 1 has never been considered a valid MOCS table entry on gen12
> platforms (despite the old #define, it's not actually related to PTE,
> display, etc. anymore).

So can someone finally explain to me how we're supposed to cache
anything that might become a scanout buffer later (eg. window system
buffers)? Or are we just making everything like that UC now, and is
everyone happy with that? Is userspace actually following that?

We can't just randomly change this stuff in the kernel since it's an
abi. Userspace has to be in sync.

> Userspace shouldn't be using entry 1, since its
> settings are officially undefined, but because we had already defined a
> value for it in the driver on our production gen12 platforms (TGL/RKL),
> we can't change that value now without an ABI break; we just have to
> leave it be on TGL/RKL.
> 
> Any userspace trying to use entry 1 on gen12 (or any other undocumented
> table entry) is still buggy and should still be updated.  For the gen12
> platforms going forward (ADL-S, ADL-P, and anything else that shows up
> in the future) we can just follow the guidance of setting all
> invalid/unused entries as L3 cached from day 1.
> 
> 
> Matt
> 
> > 
> > > 
> > > Looks good to me,
> > > 
> > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > > 
> > > 
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_mocs.c | 41 +++++++++++++++++++++++++---
> > > >  1 file changed, 37 insertions(+), 4 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > > > index e96afd7beb49..c8d289b00de4 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > > > @@ -315,6 +315,35 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
> > > >  	MOCS_ENTRY(63, 0, L3_1_UC),
> > > >  };
> > > >  
> > > > +static const struct drm_i915_mocs_entry gen12_mocs_table[] = {
> > > > +
> > > > +	GEN11_MOCS_ENTRIES,
> > > > +	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
> > > > +	MOCS_ENTRY(48,
> > > > +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > > > +		   L3_3_WB),
> > > > +	/* Implicitly enable L1 - HDC:L1 + L3 */
> > > > +	MOCS_ENTRY(49,
> > > > +		   LE_1_UC | LE_TC_1_LLC,
> > > > +		   L3_3_WB),
> > > > +	/* Implicitly enable L1 - HDC:L1 + LLC */
> > > > +	MOCS_ENTRY(50,
> > > > +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > > > +		   L3_1_UC),
> > > > +	/* Implicitly enable L1 - HDC:L1 */
> > > > +	MOCS_ENTRY(51,
> > > > +		   LE_1_UC | LE_TC_1_LLC,
> > > > +		   L3_1_UC),
> > > > +	/* HW Special Case (CCS) */
> > > > +	MOCS_ENTRY(60,
> > > > +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> > > > +		   L3_1_UC),
> > > > +	/* HW Special Case (Displayable) */
> > > > +	MOCS_ENTRY(61,
> > > > +		   LE_1_UC | LE_TC_1_LLC,
> > > > +		   L3_3_WB),
> > > > +};
> > > > +
> > > >  enum {
> > > >  	HAS_GLOBAL_MOCS = BIT(0),
> > > >  	HAS_ENGINE_MOCS = BIT(1),
> > > > @@ -351,14 +380,18 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
> > > >  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > > >  		table->uc_index = 1;
> > > >  		table->unused_entries_index = 5;
> > > > -	} else if (GRAPHICS_VER(i915) >= 12) {
> > > > +	} else if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
> > > > +		/* For TGL/RKL, Can't be changed now for ABI reasons */
> > > >  		table->size  = ARRAY_SIZE(tgl_mocs_table);
> > > >  		table->table = tgl_mocs_table;
> > > >  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > > >  		table->uc_index = 3;
> > > > -		/* For TGL/RKL, Can't be changed now for ABI reasons */
> > > > -		if (!IS_TIGERLAKE(i915) && !IS_ROCKETLAKE(i915))
> > > > -			table->unused_entries_index = 2;
> > > > +	} else if (GRAPHICS_VER(i915) >= 12) {
> > > > +		table->size  = ARRAY_SIZE(gen12_mocs_table);
> > > > +		table->table = gen12_mocs_table;
> > > > +		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > > > +		table->uc_index = 3;
> > > > +		table->unused_entries_index = 2;
> > > >  	} else if (GRAPHICS_VER(i915) == 11) {
> > > >  		table->size  = ARRAY_SIZE(icl_mocs_table);
> > > >  		table->table = icl_mocs_table;
> > > > -- 
> > > > 2.26.2
> > > > 
> > > 
> > > -- 
> > > Matt Roper
> > > Graphics Software Engineer
> > > VTT-OSGC Platform Enablement
> > > Intel Corporation
> > > (916) 356-2795
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- 
Ville Syrjälä
Intel

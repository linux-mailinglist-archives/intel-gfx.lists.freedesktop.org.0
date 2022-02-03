Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8922E4A8B0A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 18:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E035810E543;
	Thu,  3 Feb 2022 17:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3D7610E543
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 17:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643911063; x=1675447063;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gDSNu7eTPK/CFrvS1w+RE4Rr/rZE0AuubjR1PA04Aso=;
 b=j1bVn7R2Q/Dl4i3lkQKfwCWEfcj7S/VRZnDu1NgkiHuy+5Dyac1m8Dlx
 lOYs+cuYu76HlxJKVq6OSd7XLuWqYZ6HtUSsauF7OC6i8AWSWSEjVho/D
 AHUetuKiiyCjhXHkehgOBk0mFqY0PK5SkKvWxyEgziuOjMuITghbAnVux
 iR0H/FC8qkQ1FraoFvKEXUcFBKEBChZ3VQ2n0zDD54CwMSwsIWV00fi7W
 sVmW1qkLM9utn4Wg2MKDGkdHCeaRGdFi7+4m6pMB5mssRFZQclYbe+KA8
 CEibZwGvy+x/45gqRePPBnnY1lWndKa19n6o1iN0Z18pvvXGucGJnbabQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="334561314"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="334561314"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 09:57:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="699400772"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 09:57:41 -0800
Date: Thu, 3 Feb 2022 19:57:38 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220203175738.GB2886729@ideak-desk.fi.intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
 <20220128114914.2339526-5-imre.deak@intel.com>
 <871r0ow17m.fsf@intel.com>
 <20220131160022.GA2434344@ideak-desk.fi.intel.com>
 <87iltyvox2.fsf@intel.com> <87a6favnjy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a6favnjy.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915: Move the power domain->well
 mappings to intel_display_power_map.c
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

On Tue, Feb 01, 2022 at 01:22:41PM +0200, Jani Nikula wrote:
> On Tue, 01 Feb 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Mon, 31 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
> >> On Mon, Jan 31, 2022 at 02:15:25PM +0200, Jani Nikula wrote:
> >>> On Fri, 28 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
> >>> > Move the list of platform specific power domain -> power well
> >>> > definitions to intel_display_power_map.c. While at it group the
> >>> > platforms' power domain macros with the corresponding power well lists
> >>> > and keep all the power domain lists in the same order (matching the enum
> >>> > order).
> >>> >
> >>> > No functional changes.
> >>> >
> >>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >>> 
> >>> The commit message should explain the why.
> >>> 
> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> >>> > index b30e6133c66d0..a0e68ae691021 100644
> >>> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> >>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> >>> > @@ -197,6 +197,7 @@ struct intel_display_power_domain_set {
> >>> >  	for ((domain) = 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
> >>> >  		for_each_if(BIT_ULL(domain) & (mask))
> >>> >  
> >>> > +/* intel_display_power.c */
> >>> >  int intel_power_domains_init(struct drm_i915_private *dev_priv);
> >>> >  void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
> >>> >  void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume);
> >>> > @@ -316,4 +317,8 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
> >>> >  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
> >>> >  			  enum dpio_channel ch, bool override);
> >>> >  
> >>> > +/* intel_display_power_map.c */
> >>> > +const char *
> >>> > +intel_display_power_domain_str(enum intel_display_power_domain domain);
> >>> > +
> >>> >  #endif /* __INTEL_DISPLAY_POWER_H__ */
> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> >>> > new file mode 100644
> >>> > index 0000000000000..3fc7c7d0bc9e9
> >>> > --- /dev/null
> >>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> >>> > @@ -0,0 +1,93 @@
> >>> > +/* SPDX-License-Identifier: MIT */
> >>> > +/*
> >>> > + * Copyright © 2022 Intel Corporation
> >>> > + */
> >>> > +
> >>> > +#ifndef __INTEL_DISPLAY_POWER_INTERNAL_H__
> >>> > +#define __INTEL_DISPLAY_POWER_INTERNAL_H__
> >>> > +
> >>> > +#include "i915_reg_defs.h"
> >>> > +
> >>> > +#include "intel_display.h"
> >>> > +#include "intel_display_power.h"
> >>> > +
> >>> > +struct i915_power_well_regs;
> >>> > +
> >>> > +/* Power well structure for haswell */
> >>> > +struct i915_power_well_desc {
> >>> > +	const char *name;
> >>> > +	bool always_on;
> >>> > +	u64 domains;
> >>> > +	/* unique identifier for this power well */
> >>> > +	enum i915_power_well_id id;
> >>> > +	/*
> >>> > +	 * Arbitraty data associated with this power well. Platform and power
> >>> > +	 * well specific.
> >>> > +	 */
> >>> > +	union {
> >>> > +		struct {
> >>> > +			/*
> >>> > +			 * request/status flag index in the PUNIT power well
> >>> > +			 * control/status registers.
> >>> > +			 */
> >>> > +			u8 idx;
> >>> > +		} vlv;
> >>> > +		struct {
> >>> > +			enum dpio_phy phy;
> >>> > +		} bxt;
> >>> > +		struct {
> >>> > +			/*
> >>> > +			 * request/status flag index in the power well
> >>> > +			 * constrol/status registers.
> >>> > +			 */
> >>> > +			u8 idx;
> >>> > +			/* Mask of pipes whose IRQ logic is backed by the pw */
> >>> > +			u8 irq_pipe_mask;
> >>> > +			/*
> >>> > +			 * Instead of waiting for the status bit to ack enables,
> >>> > +			 * just wait a specific amount of time and then consider
> >>> > +			 * the well enabled.
> >>> > +			 */
> >>> > +			u16 fixed_enable_delay;
> >>> > +			/* The pw is backing the VGA functionality */
> >>> > +			bool has_vga:1;
> >>> > +			bool has_fuses:1;
> >>> > +			/*
> >>> > +			 * The pw is for an ICL+ TypeC PHY port in
> >>> > +			 * Thunderbolt mode.
> >>> > +			 */
> >>> > +			bool is_tc_tbt:1;
> >>> > +		} hsw;
> >>> > +	};
> >>> > +	const struct i915_power_well_ops *ops;
> >>> > +};
> >>> > +
> >>> > +struct i915_power_well {
> >>> > +	const struct i915_power_well_desc *desc;
> >>> > +	/* power well enable/disable usage count */
> >>> > +	int count;
> >>> > +	/* cached hw enabled state */
> >>> > +	bool hw_enabled;
> >>> > +};
> >>> > +
> >>> > +/* intel_display_power.c */
> >>> 
> >>> I've put a lot of effort into splitting our (display) codebase towards
> >>> having a 1-to-1 mapping between .c and .h files. This patch adds an odd
> >>> split between two headers and two compilation units, and I don't think
> >>> it's pretty.
> >>
> >> This header includes struct definitions used by intel_display_power.c
> >> and intel_display_power_map.c. I don't see why this would be a problem,
> >> there are many other cases where multiple .c files include a header file
> >> for the same reason.
> >
> > Declaring types is one thing, but I'd like to have the symbols defined
> > in intel_foo.c be declared in intel_foo.h, and named intel_foo_*. And by
> > symbols I mostly mean functions, preferrably nothing else.
>
> > IOW, if you have stuff in intel_display_power_map.c, add
> > intel_display_power_map.h that describes the interface to that file.

Ok, will add the init/cleanup functions to intel_display_power_map.h
instead. I'd still like to have the definition of ops functions/structs
and the mapping of these to domains in separate files (both are a lot of
code/data and distinct), which requires sharing the ops structs between
the two files. However splitting out also the ops functions along with
other power_well_desc/ops accessor functions as you suggest below, this
can be done from the header file belonging to the .c file actually
defining the structs (so there'd be intel_display_power.[ch],
intel_display_power_well.[ch], intel_display_power_map.[ch]).

> >>> > +extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
> >>> > +extern const struct i915_power_well_ops chv_pipe_power_well_ops;
> >>> > +extern const struct i915_power_well_ops chv_dpio_cmn_power_well_ops;
> >>> > +extern const struct i915_power_well_ops i830_pipes_power_well_ops;
> >>> > +extern const struct i915_power_well_ops hsw_power_well_ops;
> >>> > +extern const struct i915_power_well_ops hsw_power_well_ops;
> >>> > +extern const struct i915_power_well_ops gen9_dc_off_power_well_ops;
> >>> > +extern const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops;
> >>> > +extern const struct i915_power_well_ops vlv_display_power_well_ops;
> >>> > +extern const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops;
> >>> > +extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
> >>> > +extern const struct i915_power_well_ops icl_ddi_power_well_ops;
> >>> > +extern const struct i915_power_well_ops icl_aux_power_well_ops;
> >>> > +extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
> >>> 
> >>> Also not happy about this. Data is not an interface.
> >>> 
> >>> We currently have 20 symbols with extern, and this adds 14 more with a
> >>> clear path to add more for new platforms. I'd rather we were heading in
> >>> the other direction.
> >>> 
> >>> I'm just wondering if the split introduced here is sound. All of the
> >>> above would make this turn up when I look for stuff that I think needs
> >>> to be refactored. And the commit message does not even say why...
> >>
> >> The reason is to reduce the size of intel_display_power.c, to make it
> >> more readable/manageable. The implementation of the power well
> >> enable/disable etc. functionality and the mapping of these power wells
> >> to power domains are two distinct parts in that file that can be
> >> separated.
> >>
> >> The externs above are power wells that are mapped to domains, and
> >> besides the symbol name are opaque to the mapping code.
> >
> > I understand the mapping is a complicated and kind of separate part of
> > it all. But if I put that aside for a bit, I think I'd consider putting
> > the abstraction boundary at struct i915_power_well_desc and everything
> > within.
> >
> > What would the code look like if struct i915_power_well_desc and
> > subsequently struct i915_power_well_ops were opaque pointers and split
> > out of current intel_display_power.c to a separate file? Add functions
> > to access everything in desc and to call the ops.

Yes, this makes sense and, still having it in one commit, it looks ok to
me, so can follow up with it.

> > Just splitting out the mapping still leaves high and low level code in
> > the same file, and I think intel_display_power.c would be clarified a
> > great deal more if the split was between them instead.

Agreed.

> > Also, intel_display_power_* functions in the file are a kind of separate
> > set of functionality from the intel_power_domains_* functions. I think
> > that's a clear candidate for a split too. There's also the dbuf stuff
> > that probably belongs somewhere else (lots of it in intel_pm.c but
> > that's another rabbit hole).

Yes, sounds ok as well, but I suppose all these could be done as a follow up.

> > Long story short, I think there are other, IMHO cleaner, splits to be
> > made in intel_display_power.c that should have priority. And they don't
> > block us from splitting the mapping as follow-up later, but I think that
> > should not be the first thing.
> 
> PS. Most of the other cleanup and refactoring is also independent of the
> split, and should not be blocked if you want to do them first and think
> about this.

I went ahead and did the above refactoring as well as you suggested,
can post it after rebasing on it the rest.

> > BR,
> > Jani.
> >
> >
> >
> >>
> >>> BR,
> >>> Jani.
> >>> 
> >>> 
> >>> > +
> >>> > +/* intel_display_power_map.c */
> >>> > +int intel_init_power_wells(struct i915_power_domains *power_domains);
> >>> > +void intel_cleanup_power_wells(struct i915_power_domains *power_domains);
> >>> > +
> >>> > +#endif
> >>> 
> >>> -- 
> >>> Jani Nikula, Intel Open Source Graphics Center
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E519FBCEBBD
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Oct 2025 00:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C0D10E114;
	Fri, 10 Oct 2025 22:56:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lNnGg/PR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01CA510E114
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 22:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760137002; x=1791673002;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HlGZD2oETZx7QC5phIh0bcjbu4nvMcSTtMHiaHpcGek=;
 b=lNnGg/PR9yOjyBMpqlZE5VLalKroah4PLrTxmegRSvI/eL/hiZWMAulX
 RFLJxNbH5vJ8YfkE7a5L87pOQZrCrHYWgPElUkOLjdSvqDaS+xnTO9rtg
 fTYWqh1B4/xZrCbfkvbEvg6/wrMx06AFEORh0vX3A0g4Fdht3xeVbNvjD
 HvHK5vWTTHbS/5RK4OZrYYeASvsbR3mhwXeQ3vhu9TQm5qMtxZf0wi40v
 dve5Rqz3szUx3tUGVK1iBpOjfUWZj9w//LcTEtlAmRKrNvOOPEsjCzUw9
 YcdffdtZFm6JLzlDDVGYdNo1kquesllCATP9PSjmScHlRKgY9IYHyEMfp Q==;
X-CSE-ConnectionGUID: uqR6FGtdQ2aSB4hTTxH9EQ==
X-CSE-MsgGUID: JMaGfh5GRgONSv+JaZy0fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="62258663"
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="62258663"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 15:56:41 -0700
X-CSE-ConnectionGUID: awb3ii0wQuyuhAiGNRqvYA==
X-CSE-MsgGUID: rD71dUDsRyKv+ri3Q/Ujog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="185344920"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 15:56:40 -0700
Date: Sat, 11 Oct 2025 01:56:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com,
 rodrigo.vivi@intel.com, jani.nikula@intel.com, andi.shyti@kernel.org
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <aOmPJBUwCCZEghjB@intel.com>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <aOkFK7j8gx6NIVHU@intel.com> <aOl5ZATtXk1IEdM-@msatwood-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aOl5ZATtXk1IEdM-@msatwood-mobl>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Oct 10, 2025 at 02:23:48PM -0700, Matt Atwood wrote:
> On Fri, Oct 10, 2025 at 04:07:55PM +0300, Ville Syrjälä wrote:
> > On Thu, Oct 09, 2025 at 02:52:08PM -0700, Matt Atwood wrote:
> > > reg_in_range_table is a useful function that is used in multiple places,
> > > and will be needed for WA_BB implementation later.
> > > 
> > > Let's move this function and i915_range struct to its own file, as we are
> > > trying to move away from i915_utils files.
> > > 
> > > v2: move functions to their own file
> > > v3: use correct naming convention
> > > 
> > > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile                 |  1 +
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  9 +--
> > >  drivers/gpu/drm/i915/i915_mmio_range.c        | 18 +++++
> > >  drivers/gpu/drm/i915/i915_mmio_range.h        | 19 ++++++
> > >  drivers/gpu/drm/i915/i915_perf.c              | 67 ++++++++-----------
> > >  drivers/gpu/drm/i915/intel_uncore.c           | 15 +++--
> > >  drivers/gpu/drm/i915/intel_uncore.h           |  8 +--
> > >  drivers/gpu/drm/i915/selftests/intel_uncore.c |  4 +-
> > >  8 files changed, 82 insertions(+), 59 deletions(-)
> > >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.c
> > >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.h
> > > 
> > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > > index 78a45a6681df..e5819c4320bf 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -26,6 +26,7 @@ i915-y += \
> > >  	i915_ioctl.o \
> > >  	i915_irq.o \
> > >  	i915_mitigations.o \
> > > +	i915_mmio_range.o \
> > >  	i915_module.o \
> > >  	i915_params.o \
> > >  	i915_pci.o \
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 7d486dfa2fc1..ece88c612e27 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -5,6 +5,7 @@
> > >  
> > >  #include "i915_drv.h"
> > >  #include "i915_reg.h"
> > > +#include "i915_mmio_range.h"
> > >  #include "intel_context.h"
> > >  #include "intel_engine_pm.h"
> > >  #include "intel_engine_regs.h"
> > > @@ -2923,7 +2924,7 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
> > >  	wa_list_apply(&engine->wa_list);
> > >  }
> > >  
> > > -static const struct i915_range mcr_ranges_gen8[] = {
> > > +static const struct i915_mmio_range mcr_ranges_gen8[] = {
> > >  	{ .start = 0x5500, .end = 0x55ff },
> > >  	{ .start = 0x7000, .end = 0x7fff },
> > >  	{ .start = 0x9400, .end = 0x97ff },
> > > @@ -2932,7 +2933,7 @@ static const struct i915_range mcr_ranges_gen8[] = {
> > >  	{},
> > >  };
> > >  
> > > -static const struct i915_range mcr_ranges_gen12[] = {
> > > +static const struct i915_mmio_range mcr_ranges_gen12[] = {
> > >  	{ .start =  0x8150, .end =  0x815f },
> > >  	{ .start =  0x9520, .end =  0x955f },
> > >  	{ .start =  0xb100, .end =  0xb3ff },
> > > @@ -2941,7 +2942,7 @@ static const struct i915_range mcr_ranges_gen12[] = {
> > >  	{},
> > >  };
> > >  
> > > -static const struct i915_range mcr_ranges_xehp[] = {
> > > +static const struct i915_mmio_range mcr_ranges_xehp[] = {
> > >  	{ .start =  0x4000, .end =  0x4aff },
> > >  	{ .start =  0x5200, .end =  0x52ff },
> > >  	{ .start =  0x5400, .end =  0x7fff },
> > > @@ -2960,7 +2961,7 @@ static const struct i915_range mcr_ranges_xehp[] = {
> > >  
> > >  static bool mcr_range(struct drm_i915_private *i915, u32 offset)
> > >  {
> > > -	const struct i915_range *mcr_ranges;
> > > +	const struct i915_mmio_range *mcr_ranges;
> > >  	int i;
> > >  
> > >  	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
> > > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
> > > new file mode 100644
> > > index 000000000000..724041e81aa7
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/i915_mmio_range.c
> > > @@ -0,0 +1,18 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright © 2025 Intel Corporation
> > > + */
> > > +
> > > +#include "i915_mmio_range.h"
> > > +
> > > +bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table)
> > > +{
> > > +	while (table->start || table->end) {
> > > +		if (addr >= table->start && addr <= table->end)
> > > +			return true;
> > > +
> > > +		table++;
> > > +	}
> > > +
> > > +	return false;
> > > +}
> > 
> > Should perhaps follow up with:
> > - Convert intel_uncore BSEARCH() into __inline_bsearch() and double
> >   check things still get inlined
> > - Add a function to validate the table is sorted and call that for all
> >   the tables in some common init functions (ideally should be compile
> >   time checked but alas we have no constexpr functions in C)
> > - Use __inline_bsearch() here as well. Not sure if this itself would
> >   need to be inline to allow intel_uncore.c to use it for the shadow range
> >   checks (I suspect the concern there was about inlining the comparisons
> >   rather than avoiding a single bsearch() function call...)
> to be clear, you want this work in a follow up patch, not in the next
> revision?

Yeah, shouldn't mix all that in pne patch. Just some things that
stood out to me when I had a quick look at all the range checks.

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A600F3DAE95
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 23:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122AF6EE85;
	Thu, 29 Jul 2021 21:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED5D6EE85
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 21:59:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="193259685"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="193259685"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:59:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="435661709"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:59:15 -0700
Date: Thu, 29 Jul 2021 14:59:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Yokoyama, Caz" <caz.yokoyama@intel.com>
Message-ID: <20210729215914.GK1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210729054118.2458523-4-matthew.d.roper@intel.com>
 <20210729152158.2646246-1-matthew.d.roper@intel.com>
 <c658dc81d234511b6ec194784b9322b1da3b5639.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c658dc81d234511b6ec194784b9322b1da3b5639.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915: Make shadow tables
 range-based
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 29, 2021 at 02:55:17PM -0700, Yokoyama, Caz wrote:
> On Thu, 2021-07-29 at 08:21 -0700, Matt Roper wrote:
> > Rather than defining our shadow tables as a list of individual
> > registers, provide them as a list of register ranges; we'll have some
> > ranges of multiple registers being added soon (and we already have a
> > couple adjacent registers that we can squash into a single range
> > now).
> >
> > This change also defines the table with hex literal values rather
> > than
> > symbolic register names; since that's how the tables are defined in
> > the
> > bspec, this change will make it easier to review the tables overall.
> >
> > v2:
> >  - Force signed comparison on range overlap sanity check
> >
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  13 +-
> >  drivers/gpu/drm/i915/intel_uncore.c           | 160 +++++++++-------
> > --
> >  drivers/gpu/drm/i915/intel_uncore.h           |   6 +
> >  drivers/gpu/drm/i915/selftests/intel_uncore.c |  32 ++--
> >  4 files changed, 108 insertions(+), 103 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 9173df59821a..7558414bafb2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1963,12 +1963,7 @@ void intel_engine_apply_workarounds(struct
> > intel_engine_cs *engine)
> >       wa_list_apply(engine->gt, &engine->wa_list);
> >  }
> >
> > -struct mcr_range {
> > -     u32 start;
> > -     u32 end;
> > -};
> > -
> > -static const struct mcr_range mcr_ranges_gen8[] = {
> > +static const struct i915_range mcr_ranges_gen8[] = {
> >       { .start = 0x5500, .end = 0x55ff },
> >       { .start = 0x7000, .end = 0x7fff },
> >       { .start = 0x9400, .end = 0x97ff },
> > @@ -1977,7 +1972,7 @@ static const struct mcr_range mcr_ranges_gen8[]
> > = {
> >       {},
> >  };
> >
> > -static const struct mcr_range mcr_ranges_gen12[] = {
> > +static const struct i915_range mcr_ranges_gen12[] = {
> >       { .start =  0x8150, .end =  0x815f },
> >       { .start =  0x9520, .end =  0x955f },
> >       { .start =  0xb100, .end =  0xb3ff },
> > @@ -1986,7 +1981,7 @@ static const struct mcr_range
> > mcr_ranges_gen12[] = {
> >       {},
> >  };
> >
> > -static const struct mcr_range mcr_ranges_xehp[] = {
> > +static const struct i915_range mcr_ranges_xehp[] = {
> >       { .start =  0x4000, .end =  0x4aff },
> >       { .start =  0x5200, .end =  0x52ff },
> >       { .start =  0x5400, .end =  0x7fff },
> > @@ -2004,7 +1999,7 @@ static const struct mcr_range mcr_ranges_xehp[]
> > = {
> >
> >  static bool mcr_range(struct drm_i915_private *i915, u32 offset)
> >  {
> > -     const struct mcr_range *mcr_ranges;
> > +     const struct i915_range *mcr_ranges;
> >       int i;
> >
> >       if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> > b/drivers/gpu/drm/i915/intel_uncore.c
> > index ea910f7ee635..2cfbc16f7dee 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > @@ -946,101 +946,95 @@ static const struct intel_forcewake_range
> > __vlv_fw_ranges[] = {
> >       find_fw_domain(uncore, offset)
> >
> >  /* *Must* be sorted by offset! See intel_shadow_table_check(). */
> > -static const i915_reg_t gen8_shadowed_regs[] = {
> > -     RING_TAIL(RENDER_RING_BASE),    /* 0x2000 (base) */
> > -     GEN6_RPNSWREQ,                  /* 0xA008 *
> > -     GEN6_RC_VIDEO_FREQ,             /* 0xA00C */
> > -     RING_TAIL(GEN6_BSD_RING_BASE),  /* 0x12000 (base) */
> > -     RING_TAIL(VEBOX_RING_BASE),     /* 0x1a000 (base) */
> > -     RING_TAIL(BLT_RING_BASE),       /* 0x22000 (base) */
> > +static const struct i915_range gen8_shadowed_regs[] = {
> > +     { .start =  0x2030, .end =  0x2030 },
> > +     { .start =  0xA008, .end =  0xA00C },
> > +     { .start = 0x12030, .end = 0x12030 },
> > +     { .start = 0x1a030, .end = 0x1a030 },
> > +     { .start = 0x22030, .end = 0x22030 },
> You are replacing macro defined values by literal values. These macro
> defined values are no longer used in this patch, but used in other
> places such as intel_rps.c:gen6_rps_set(). What plan do you have about
> the same address is defined in 2 ways, i.e. macro and literal value?

These are ranges of registers offsets (similar to what we already do
elsewhere in the driver for multicast ranges, forcewake ranges, etc.),
whereas individual registers used throughout the driver are still
defined in i915_reg.h.  Some of these wind up being single-register
ranges, but that's fine/expected, and some of those single-register
ranges also get extended to cover a larger range by later patches in
this series.


Matt

> -caz
> 
> >       /* TODO: Other registers are not yet used */
> >  };
> >
> > -static const i915_reg_t gen11_shadowed_regs[] = {
> > -     RING_TAIL(RENDER_RING_BASE),                    /* 0x2000
> > (base) */
> > -     RING_EXECLIST_CONTROL(RENDER_RING_BASE),        /* 0x2550 */
> > -     GEN6_RPNSWREQ,                                  /* 0xA008 */
> > -     GEN6_RC_VIDEO_FREQ,                             /* 0xA00C */
> > -     RING_TAIL(BLT_RING_BASE),                       /* 0x22000 (base) */
> > -     RING_EXECLIST_CONTROL(BLT_RING_BASE),           /* 0x22550 */
> > -     RING_TAIL(GEN11_BSD_RING_BASE),                 /* 0x1C0000
> > (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),     /* 0x1C0550
> > */
> > -     RING_TAIL(GEN11_BSD2_RING_BASE),                /* 0x1C4000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),    /* 0x1C4550
> > */
> > -     RING_TAIL(GEN11_VEBOX_RING_BASE),               /* 0x1C8000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),   /* 0x1C8550
> > */
> > -     RING_TAIL(GEN11_BSD3_RING_BASE),                /* 0x1D0000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),    /* 0x1D0550
> > */
> > -     RING_TAIL(GEN11_BSD4_RING_BASE),                /* 0x1D4000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),    /* 0x1D4550
> > */
> > -     RING_TAIL(GEN11_VEBOX2_RING_BASE),              /* 0x1D8000
> > (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),  /* 0x1D8550
> > */
> > +static const struct i915_range gen11_shadowed_regs[] = {
> > +     { .start =   0x2030, .end =   0x2030 },
> > +     { .start =   0x2550, .end =   0x2550 },
> > +     { .start =   0xA008, .end =   0xA00C },
> > +     { .start =  0x22030, .end =  0x22030 },
> > +     { .start =  0x22550, .end =  0x22550 },
> > +     { .start = 0x1C0030, .end = 0x1C0030 },
> > +     { .start = 0x1C0550, .end = 0x1C0550 },
> > +     { .start = 0x1C4030, .end = 0x1C4030 },
> > +     { .start = 0x1C4550, .end = 0x1C4550 },
> > +     { .start = 0x1C8030, .end = 0x1C8030 },
> > +     { .start = 0x1C8550, .end = 0x1C8550 },
> > +     { .start = 0x1D0030, .end = 0x1D0030 },
> > +     { .start = 0x1D0550, .end = 0x1D0550 },
> > +     { .start = 0x1D4030, .end = 0x1D4030 },
> > +     { .start = 0x1D4550, .end = 0x1D4550 },
> > +     { .start = 0x1D8030, .end = 0x1D8030 },
> > +     { .start = 0x1D8550, .end = 0x1D8550 },
> >       /* TODO: Other registers are not yet used */
> >  };
> >
> > -static const i915_reg_t gen12_shadowed_regs[] = {
> > -     RING_TAIL(RENDER_RING_BASE),                    /* 0x2000
> > (base) */
> > -     RING_EXECLIST_CONTROL(RENDER_RING_BASE),        /* 0x2550 */
> > -     GEN6_RPNSWREQ,                                  /* 0xA008 */
> > -     GEN6_RC_VIDEO_FREQ,                             /* 0xA00C */
> > -     RING_TAIL(BLT_RING_BASE),                       /* 0x22000 (base) */
> > -     RING_EXECLIST_CONTROL(BLT_RING_BASE),           /* 0x22550 */
> > -     RING_TAIL(GEN11_BSD_RING_BASE),                 /* 0x1C0000
> > (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),     /* 0x1C0550
> > */
> > -     RING_TAIL(GEN11_BSD2_RING_BASE),                /* 0x1C4000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),    /* 0x1C4550
> > */
> > -     RING_TAIL(GEN11_VEBOX_RING_BASE),               /* 0x1C8000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),   /* 0x1C8550
> > */
> > -     RING_TAIL(GEN11_BSD3_RING_BASE),                /* 0x1D0000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),    /* 0x1D0550
> > */
> > -     RING_TAIL(GEN11_BSD4_RING_BASE),                /* 0x1D4000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),    /* 0x1D4550
> > */
> > -     RING_TAIL(GEN11_VEBOX2_RING_BASE),              /* 0x1D8000
> > (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),  /* 0x1D8550
> > */
> > +static const struct i915_range gen12_shadowed_regs[] = {
> > +     { .start =   0x2030, .end =   0x2030 },
> > +     { .start =   0x2550, .end =   0x2550 },
> > +     { .start =   0xA008, .end =   0xA00C },
> > +     { .start =  0x22030, .end =  0x22030 },
> > +     { .start =  0x22550, .end =  0x22550 },
> > +     { .start = 0x1C0030, .end = 0x1C0030 },
> > +     { .start = 0x1C0550, .end = 0x1C0550 },
> > +     { .start = 0x1C4030, .end = 0x1C4030 },
> > +     { .start = 0x1C4550, .end = 0x1C4550 },
> > +     { .start = 0x1C8030, .end = 0x1C8030 },
> > +     { .start = 0x1C8550, .end = 0x1C8550 },
> > +     { .start = 0x1D0030, .end = 0x1D0030 },
> > +     { .start = 0x1D0550, .end = 0x1D0550 },
> > +     { .start = 0x1D4030, .end = 0x1D4030 },
> > +     { .start = 0x1D4550, .end = 0x1D4550 },
> > +     { .start = 0x1D8030, .end = 0x1D8030 },
> > +     { .start = 0x1D8550, .end = 0x1D8550 },
> >       /* TODO: Other registers are not yet used */
> >  };
> >
> > -static const i915_reg_t xehp_shadowed_regs[] = {
> > -     RING_TAIL(RENDER_RING_BASE),                    /* 0x2000
> > (base) */
> > -     RING_EXECLIST_CONTROL(RENDER_RING_BASE),        /* 0x2550 */
> > -     GEN6_RPNSWREQ,                                  /* 0xA008 */
> > -     GEN6_RC_VIDEO_FREQ,                             /* 0xA00C */
> > -     RING_TAIL(BLT_RING_BASE),                       /* 0x22000 (base) */
> > -     RING_EXECLIST_CONTROL(BLT_RING_BASE),           /* 0x22550 */
> > -     RING_TAIL(GEN11_BSD_RING_BASE),                 /* 0x1C0000
> > (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),     /* 0x1C0550
> > */
> > -     RING_TAIL(GEN11_BSD2_RING_BASE),                /* 0x1C4000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),    /* 0x1C4550
> > */
> > -     RING_TAIL(GEN11_VEBOX_RING_BASE),               /* 0x1C8000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),   /* 0x1C8550
> > */
> > -     RING_TAIL(GEN11_BSD3_RING_BASE),                /* 0x1D0000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),    /* 0x1D0550
> > */
> > -     RING_TAIL(GEN11_BSD4_RING_BASE),                /* 0x1D4000 (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),    /* 0x1D4550
> > */
> > -     RING_TAIL(GEN11_VEBOX2_RING_BASE),              /* 0x1D8000
> > (base) */
> > -     RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),  /* 0x1D8550
> > */
> > -     RING_TAIL(XEHP_BSD5_RING_BASE),                 /* 0x1E0000
> > (base) */
> > -     RING_EXECLIST_CONTROL(XEHP_BSD5_RING_BASE),     /* 0x1E0550
> > */
> > -     RING_TAIL(XEHP_BSD6_RING_BASE),                 /* 0x1E4000
> > (base) */
> > -     RING_EXECLIST_CONTROL(XEHP_BSD6_RING_BASE),     /* 0x1E4550
> > */
> > -     RING_TAIL(XEHP_VEBOX3_RING_BASE),               /* 0x1E8000 (base) */
> > -     RING_EXECLIST_CONTROL(XEHP_VEBOX3_RING_BASE),   /* 0x1E8550
> > */
> > -     RING_TAIL(XEHP_BSD7_RING_BASE),                 /* 0x1F0000
> > (base) */
> > -     RING_EXECLIST_CONTROL(XEHP_BSD7_RING_BASE),     /* 0x1F0550
> > */
> > -     RING_TAIL(XEHP_BSD8_RING_BASE),                 /* 0x1F4000
> > (base) */
> > -     RING_EXECLIST_CONTROL(XEHP_BSD8_RING_BASE),     /* 0x1F4550
> > */
> > -     RING_TAIL(XEHP_VEBOX4_RING_BASE),               /* 0x1F8000 (base) */
> > -     RING_EXECLIST_CONTROL(XEHP_VEBOX4_RING_BASE),   /* 0x1F8550
> > */
> > +static const struct i915_range xehp_shadowed_regs[] = {
> > +     { .start =   0x2000, .end =   0x2030 },
> > +     { .start =   0x2550, .end =   0x2550 },
> > +     { .start =   0xA008, .end =   0xA00C },
> > +     { .start =  0x22030, .end =  0x22030 },
> > +     { .start =  0x22550, .end =  0x22550 },
> > +     { .start = 0x1C0030, .end = 0x1C0030 },
> > +     { .start = 0x1C0550, .end = 0x1C0550 },
> > +     { .start = 0x1C4030, .end = 0x1C4030 },
> > +     { .start = 0x1C4550, .end = 0x1C4550 },
> > +     { .start = 0x1C8030, .end = 0x1C8030 },
> > +     { .start = 0x1C8550, .end = 0x1C8550 },
> > +     { .start = 0x1D0030, .end = 0x1D0030 },
> > +     { .start = 0x1D0550, .end = 0x1D0550 },
> > +     { .start = 0x1D4030, .end = 0x1D4030 },
> > +     { .start = 0x1D4550, .end = 0x1D4550 },
> > +     { .start = 0x1D8030, .end = 0x1D8030 },
> > +     { .start = 0x1D8550, .end = 0x1D8550 },
> > +     { .start = 0x1E0030, .end = 0x1E0030 },
> > +     { .start = 0x1E0550, .end = 0x1E0550 },
> > +     { .start = 0x1E4030, .end = 0x1E4030 },
> > +     { .start = 0x1E4550, .end = 0x1E4550 },
> > +     { .start = 0x1E8030, .end = 0x1E8030 },
> > +     { .start = 0x1E8550, .end = 0x1E8550 },
> > +     { .start = 0x1F0030, .end = 0x1F0030 },
> > +     { .start = 0x1F0550, .end = 0x1F0550 },
> > +     { .start = 0x1F4030, .end = 0x1F4030 },
> > +     { .start = 0x1F4550, .end = 0x1F4550 },
> > +     { .start = 0x1F8030, .end = 0x1F8030 },
> > +     { .start = 0x1F8550, .end = 0x1F8550 },
> >       /* TODO: Other registers are not yet used */
> >  };
> >
> > -static int mmio_reg_cmp(u32 key, const i915_reg_t *reg)
> > +static int mmio_range_cmp(u32 key, const struct i915_range *range)
> >  {
> > -     u32 offset = i915_mmio_reg_offset(*reg);
> > -
> > -     if (key < offset)
> > +     if (key < range->start)
> >               return -1;
> > -     else if (key > offset)
> > +     else if (key > range->end)
> >               return 1;
> >       else
> >               return 0;
> > @@ -1049,9 +1043,9 @@ static int mmio_reg_cmp(u32 key, const
> > i915_reg_t *reg)
> >  #define __is_X_shadowed(x) \
> >  static bool is_##x##_shadowed(u32 offset) \
> >  { \
> > -     const i915_reg_t *regs = x##_shadowed_regs; \
> > +     const struct i915_range *regs = x##_shadowed_regs; \
> >       return BSEARCH(offset, regs, ARRAY_SIZE(x##_shadowed_regs), \
> > -                    mmio_reg_cmp); \
> > +                    mmio_range_cmp); \
> >  }
> >
> >  __is_X_shadowed(gen8)
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.h
> > b/drivers/gpu/drm/i915/intel_uncore.h
> > index 3c0b0a8b5250..531665b08039 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.h
> > +++ b/drivers/gpu/drm/i915/intel_uncore.h
> > @@ -119,6 +119,12 @@ struct intel_forcewake_range {
> >       enum forcewake_domains domains;
> >  };
> >
> > +/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > +struct i915_range {
> > +     u32 start;
> > +     u32 end;
> > +};
> > +
> >  struct intel_uncore {
> >       void __iomem *regs;
> >
> > diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> > b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> > index 720b60853f8b..d6a9c11afa23 100644
> > --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> > +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> > @@ -62,30 +62,40 @@ static int intel_fw_table_check(const struct
> > intel_forcewake_range *ranges,
> >  static int intel_shadow_table_check(void)
> >  {
> >       struct {
> > -             const i915_reg_t *regs;
> > +             const struct i915_range *regs;
> >               unsigned int size;
> > -     } reg_lists[] = {
> > +     } range_lists[] = {
> >               { gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
> >               { gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs)
> > },
> >               { gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs)
> > },
> >               { xehp_shadowed_regs, ARRAY_SIZE(xehp_shadowed_regs) },
> >       };
> > -     const i915_reg_t *reg;
> > +     const struct i915_range *range;
> >       unsigned int i, j;
> >       s32 prev;
> >
> > -     for (j = 0; j < ARRAY_SIZE(reg_lists); ++j) {
> > -             reg = reg_lists[j].regs;
> > -             for (i = 0, prev = -1; i < reg_lists[j].size; i++,
> > reg++) {
> > -                     u32 offset = i915_mmio_reg_offset(*reg);
> > +     for (j = 0; j < ARRAY_SIZE(range_lists); ++j) {
> > +             range = range_lists[j].regs;
> > +             for (i = 0, prev = -1; i < range_lists[j].size; i++,
> > range++) {
> > +                     if (range->end < range->start) {
> > +                             pr_err("%s: range[%d]:(%06x-%06x) has
> > end before start\n",
> > +                                    __func__, i, range->start,
> > range->end);
> > +                             return -EINVAL;
> > +                     }
> > +
> > +                     if (prev >= (s32)range->start) {
> > +                             pr_err("%s: range[%d]:(%06x-%06x) is
> > before end of previous (%06x)\n",
> > +                                    __func__, i, range->start,
> > range->end, prev);
> > +                             return -EINVAL;
> > +                     }
> >
> > -                     if (prev >= (s32)offset) {
> > -                             pr_err("%s: entry[%d]:(%x) is before
> > previous (%x)\n",
> > -                                    __func__, i, offset, prev);
> > +                     if (range->start % 4) {
> > +                             pr_err("%s: range[%d]:(%06x-%06x) has
> > non-dword-aligned start\n",
> > +                                    __func__, i, range->start,
> > range->end);
> >                               return -EINVAL;
> >                       }
> >
> > -                     prev = offset;
> > +                     prev = range->end;
> >               }
> >       }
> >

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

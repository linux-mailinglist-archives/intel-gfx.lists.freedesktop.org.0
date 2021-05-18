Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE0B387968
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 14:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0336EB5C;
	Tue, 18 May 2021 12:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E494A6EB60
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 12:59:37 +0000 (UTC)
IronPort-SDR: c88eDZywLTKirgMeLoXOmLf/Hw/My/afI40aTyH2esxcHevTY4UJhtsLyIGxRP6VFdS5UvrkOP
 BC+oHW8ynDKw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="286235582"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="286235582"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:59:37 -0700
IronPort-SDR: qQWSj7gor4RsLd3hBuH0/J7ARsIKhf0UqrDC6y4KXtEiJOwjmofP19vlBvoUQLWS08AFg+N252
 aYGHWrx4esug==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439424206"
Received: from hwang1-mobl.ccr.corp.intel.com (HELO intel.com)
 ([10.254.33.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 05:59:36 -0700
Date: Tue, 18 May 2021 08:59:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
Message-ID: <YKO6NgCXX0oRYdMU@intel.com>
References: <20210426161124.2b7fd708@dellnichtsogutkiste>
 <CAPM=9tzj9Fn+FQFBueMLVxhBSy48kZizTnCM7bNxfUi55o+zYg@mail.gmail.com>
 <YJ0Nyb51rS6YYTFR@intel.com>
 <20210518103025.2fa0935e@dellnichtsogutkiste>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518103025.2fa0935e@dellnichtsogutkiste>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Disable HiZ Raw Stall
 Optimization on broken gen7
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 development@manuel-bentele.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 18, 2021 at 10:30:25AM +0200, Simon Rettberg wrote:
> Am Thu, 13 May 2021 07:30:17 -0400
> schrieb Rodrigo Vivi <rodrigo.vivi@intel.com>:
> 
> > On Thu, May 13, 2021 at 10:18:49AM +1000, Dave Airlie wrote:
> > > Reviewed-by: Dave Airlie <airlied@redhat.com>
> > > 
> > > Can we get this fix in, having a regression spanning 3 kernels
> > > isn't a good look, we can work out why it matters later in life if
> > > anyone cares.  
> > 
> > Agreed and pushed do drm-intel-next.
> 
> What's the status here? I can't seem to find the fix in drm-intel-next.

ouch! face-palm for myself.

I hit the push and never looked back:

$ dim push-queued
dim: 153dfcd6b299 ("drm/i915/gt: Disable HiZ Raw Stall Optimization on broken gen7"): SHA1 in fixes line not found:
dim:     520d05a77b28 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
dim: ERROR: issues in commits detected, aborting

now I removed the invalid fixes line and pushed...

Thank you so much for noticing this.

Sorry,
Rodrigo.

> 
> - Simon
> 
> > 
> > This triggered me to do an archeology work here and I found a possible
> > alternative for ILK:
> > 
> > +#define   HIZ_UNIT_CLOCK_GATE_DISABLE  REG_BIT(5)
> >  
> >  #define FDI_PLL_FREQ_CTL        _MMIO(0x46030)
> >  #define  FDI_PLL_FREQ_CHANGE_REQUEST    (1 << 24)
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > b/drivers/gpu/drm/i915/intel_pm.c index 06d5b7cc8b62..6316b70978f7
> > 100644 --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -6892,8 +6892,11 @@ static void ilk_init_clock_gating(struct
> > drm_i915_private *dev_priv) intel_uncore_write(&dev_priv->uncore,
> > PCH_3DCGDIS0, MARIUNIT_CLOCK_GATE_DISABLE |
> >                    SVSMUNIT_CLOCK_GATE_DISABLE);
> > +
> > +       /* WaDisableHizUnitClockGating:ilk */
> >         intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS1,
> > -                  VFMUNIT_CLOCK_GATE_DISABLE);
> > +                  VFMUNIT_CLOCK_GATE_DISABLE |
> > +                  HIZ_UNIT_CLOCK_GATE_DISABLE);
> > 
> > however I couldn't find anything for Baytrail, so let's move with this
> > one for now.
> > 
> > > 
> > > Dave.
> > > 
> > > On Tue, 27 Apr 2021 at 00:31, Simon Rettberg
> > > <simon.rettberg@rz.uni-freiburg.de> wrote:  
> > > >
> > > > When resetting CACHE_MODE registers, don't enable HiZ Raw Stall
> > > > Optimization on Ivybridge GT1 and Baytrail, as it causes severe
> > > > glitches when rendering any kind of 3D accelerated content.
> > > > This optimization is disabled on these platforms by default
> > > > according to official documentation from 01.org.
> > > >
> > > > Fixes: ef99a60ffd9b ("drm/i915/gt: Clear CACHE_MODE prior to
> > > > clearing residuals") Fixes: 520d05a77b28 ("drm/i915/gt: Clear
> > > > CACHE_MODE prior to clearing residuals") BugLink:
> > > > https://gitlab.freedesktop.org/drm/intel/-/issues/3081 BugLink:
> > > > https://gitlab.freedesktop.org/drm/intel/-/issues/3404 BugLink:
> > > > https://gitlab.freedesktop.org/drm/intel/-/issues/3071
> > > > Reviewed-By: Manuel Bentele <development@manuel-bentele.de>
> > > > Signed-off-by: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
> > > > --- drivers/gpu/drm/i915/gt/gen7_renderclear.c | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> > > > b/drivers/gpu/drm/i915/gt/gen7_renderclear.c index
> > > > de575fdb0..21f08e538 100644 ---
> > > > a/drivers/gpu/drm/i915/gt/gen7_renderclear.c +++
> > > > b/drivers/gpu/drm/i915/gt/gen7_renderclear.c @@ -397,7 +397,10 @@
> > > > static void emit_batch(struct i915_vma * const vma,
> > > > gen7_emit_pipeline_invalidate(&cmds); batch_add(&cmds,
> > > > MI_LOAD_REGISTER_IMM(2)); batch_add(&cmds,
> > > > i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
> > > > -       batch_add(&cmds, 0xffff0000);
> > > > +       batch_add(&cmds, 0xffff0000 |
> > > > +                       ((IS_IVB_GT1(i915) ||
> > > > IS_VALLEYVIEW(i915)) ?
> > > > +                        HIZ_RAW_STALL_OPT_DISABLE :
> > > > +                        0));
> > > >         batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
> > > >         batch_add(&cmds, 0xffff0000 |
> > > > PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
> > > > gen7_emit_pipeline_invalidate(&cmds); --
> > > > 2.25.1
> > > >
> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx  
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx  
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

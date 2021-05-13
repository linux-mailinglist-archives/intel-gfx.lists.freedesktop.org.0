Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4822637F6BD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 13:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41196ECF6;
	Thu, 13 May 2021 11:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78E9C6ECF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 11:30:26 +0000 (UTC)
IronPort-SDR: o0FFRAJFufdJMiUq4BzITcjN/oIzRMb7phciA7A9GVimRlez4voqMYSBmH12yUqGWLCNM+a21n
 MYe8ZApnV57w==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="261170536"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="261170536"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 04:30:20 -0700
IronPort-SDR: TXMJDVHOX0v5b0flxE9c3HCduAwuKQRLx79cSixpVPUvM8231bsebSAJ4IXvzxfKnSQr41N/My
 6bIxlsNCa/3w==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="610343437"
Received: from abgautam-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.254.1.132])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 04:30:18 -0700
Date: Thu, 13 May 2021 07:30:17 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <YJ0Nyb51rS6YYTFR@intel.com>
References: <20210426161124.2b7fd708@dellnichtsogutkiste>
 <CAPM=9tzj9Fn+FQFBueMLVxhBSy48kZizTnCM7bNxfUi55o+zYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPM=9tzj9Fn+FQFBueMLVxhBSy48kZizTnCM7bNxfUi55o+zYg@mail.gmail.com>
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
Cc: development@manuel-bentele.de,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 13, 2021 at 10:18:49AM +1000, Dave Airlie wrote:
> Reviewed-by: Dave Airlie <airlied@redhat.com>
> 
> Can we get this fix in, having a regression spanning 3 kernels isn't a
> good look, we can work out why it matters later in life if anyone
> cares.

Agreed and pushed do drm-intel-next.

This triggered me to do an archeology work here and I found a possible
alternative for ILK:

+#define   HIZ_UNIT_CLOCK_GATE_DISABLE  REG_BIT(5)
 
 #define FDI_PLL_FREQ_CTL        _MMIO(0x46030)
 #define  FDI_PLL_FREQ_CHANGE_REQUEST    (1 << 24)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 06d5b7cc8b62..6316b70978f7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6892,8 +6892,11 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
        intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS0,
                   MARIUNIT_CLOCK_GATE_DISABLE |
                   SVSMUNIT_CLOCK_GATE_DISABLE);
+
+       /* WaDisableHizUnitClockGating:ilk */
        intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS1,
-                  VFMUNIT_CLOCK_GATE_DISABLE);
+                  VFMUNIT_CLOCK_GATE_DISABLE |
+                  HIZ_UNIT_CLOCK_GATE_DISABLE);

however I couldn't find anything for Baytrail, so let's move with this
one for now.

> 
> Dave.
> 
> On Tue, 27 Apr 2021 at 00:31, Simon Rettberg
> <simon.rettberg@rz.uni-freiburg.de> wrote:
> >
> > When resetting CACHE_MODE registers, don't enable HiZ Raw Stall
> > Optimization on Ivybridge GT1 and Baytrail, as it causes severe glitches
> > when rendering any kind of 3D accelerated content.
> > This optimization is disabled on these platforms by default according to
> > official documentation from 01.org.
> >
> > Fixes: ef99a60ffd9b ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> > Fixes: 520d05a77b28 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> > BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3081
> > BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3404
> > BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3071
> > Reviewed-By: Manuel Bentele <development@manuel-bentele.de>
> > Signed-off-by: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
> > ---
> >  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> > index de575fdb0..21f08e538 100644
> > --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> > +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> > @@ -397,7 +397,10 @@ static void emit_batch(struct i915_vma * const vma,
> >         gen7_emit_pipeline_invalidate(&cmds);
> >         batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
> >         batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
> > -       batch_add(&cmds, 0xffff0000);
> > +       batch_add(&cmds, 0xffff0000 |
> > +                       ((IS_IVB_GT1(i915) || IS_VALLEYVIEW(i915)) ?
> > +                        HIZ_RAW_STALL_OPT_DISABLE :
> > +                        0));
> >         batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
> >         batch_add(&cmds, 0xffff0000 | PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
> >         gen7_emit_pipeline_invalidate(&cmds);
> > --
> > 2.25.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

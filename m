Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED583B9E08
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 11:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD416E086;
	Fri,  2 Jul 2021 09:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31786E088
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 09:21:22 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id h9so10604794oih.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Jul 2021 02:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AikWlC/I38bWNqJ30IzfGFGVJQXXr4BoU3AiyXQBIbM=;
 b=ASdztKl4pOFYaYdCXST/ShImLuGxhJp57IaHPRgKeOgpYBWd3ofhCG/PKcSzC7fm4K
 jLNNje58fAQrbEYRghqXJ0HTuJ0JgGwM3XrVK8Ne2LlWYkgM21R+ad4iwzBKqxsqmoZ5
 E8oY18IuIOEYD0Qhek8R3bqGQdNyafP7tw8mc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AikWlC/I38bWNqJ30IzfGFGVJQXXr4BoU3AiyXQBIbM=;
 b=j/Lv1LBDVLqMnqsMg36MHnqL580HuwKxu6iksc+9+O7pzyvt0Lnip+GdLD93PwAEvP
 6tXvx86KynXyvPII65sf9uVHuVFvrr+1Fbz+NQh3JK63oUpYRdtTBneNqZv+f22RK1H8
 Y1k2/ooAPnpuItC+Lh7uXlAD4tTqt2UquF+ep7vhve/h7LrbKEuoQtwwpj+ixDPbPhvv
 0KLt81A1VjeXwxyh7aTbpSlLj2r9ciPtrosA77S1aODMkPa0QVYoUvf35mBSnPDEqgft
 LygBL9H8GCzgw+QDnyFwWbH5BBrJIv/Qqg1Vf5dysGB97ncP3Fq+kZOivPkr/FqPt+1B
 bSIw==
X-Gm-Message-State: AOAM5320NBQct4L7uEwoeJYan0XLngSzrsDE4yyLvyCEciTqYePGgzKt
 X+26DdcIu4DNz/cbbWNHrdEnOfg285+UoQ1erAJCgg==
X-Google-Smtp-Source: ABdhPJzuMJ6xwcpZptQP5zpe7Nl/QhmceifKel0F9dttiXhV1HGGqpXpVd0+CnRCLSunJ/X24Wi1J1jDOHzXmoYjdZI=
X-Received: by 2002:aca:4dc5:: with SMTP id a188mr3212285oib.128.1625217681832; 
 Fri, 02 Jul 2021 02:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
 <20210701202427.1547543-4-matthew.d.roper@intel.com>
In-Reply-To: <20210701202427.1547543-4-matthew.d.roper@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 2 Jul 2021 11:21:10 +0200
Message-ID: <CAKMK7uH4+WgjJ12uYd+3Jb+0fcUtPDhy3R2HLsMQhYF1uHcMow@mail.gmail.com>
To: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/53] drm/i915: Fork DG1 interrupt handler
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 1, 2021 at 10:26 PM Matt Roper <matthew.d.roper@intel.com> wrote:
>
> From: Paulo Zanoni <paulo.r.zanoni@intel.com>
>
> The current interrupt handler is getting increasingly complicated and
> Xe_HP changes will bring even more complexity.  Let's split off a new
> interrupt handler starting with DG1 (i.e., when the master tile
> interrupt register was added to the design) and use that as the basis
> for the new Xe_HP changes.
>
> Now that we track the hardware IP's release number as well as the
> version number, we can also properly define DG1 has version "12.10" and
> replace the has_master_unit_irq feature flag with an IP version test.
>
> Bspec: 50875
> Cc: Daniele Spurio Ceraolo <daniele.ceraolospurio@intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Paulo Zanoni <paulo.r.zanoni@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Tomasz Lis <tomasz.lis@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

So I know DG1 upstream is decidedly non-smooth, but basic
infrastructure we've had since forever ...

Why was this prep work not upstreamed earlier with some benign commit
message that doesn't mention DG2? There's zero DG2 stuff in here, this
could have landed months/years ago even. Bringing this up since right
this moment we have an internal chat about trees diverging a bit much.
-Daniel

> ---
>  drivers/gpu/drm/i915/i915_drv.h          |   2 -
>  drivers/gpu/drm/i915/i915_irq.c          | 139 +++++++++++++++--------
>  drivers/gpu/drm/i915/i915_pci.c          |   2 +-
>  drivers/gpu/drm/i915/i915_reg.h          |   4 +-
>  drivers/gpu/drm/i915/intel_device_info.h |   1 -
>  5 files changed, 95 insertions(+), 53 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 9639800485b9..519cce702f4b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1601,8 +1601,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_LOGICAL_RING_ELSQ(dev_priv) \
>                 (INTEL_INFO(dev_priv)->has_logical_ring_elsq)
>
> -#define HAS_MASTER_UNIT_IRQ(dev_priv) (INTEL_INFO(dev_priv)->has_master_unit_irq)
> -
>  #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
>
>  #define INTEL_PPGTT(dev_priv) (INTEL_INFO(dev_priv)->ppgtt_type)
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 7d0ce8b9f8ed..9d47ffa39093 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2699,11 +2699,9 @@ gen11_display_irq_handler(struct drm_i915_private *i915)
>         enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  }
>
> -static __always_inline irqreturn_t
> -__gen11_irq_handler(struct drm_i915_private * const i915,
> -                   u32 (*intr_disable)(void __iomem * const regs),
> -                   void (*intr_enable)(void __iomem * const regs))
> +static irqreturn_t gen11_irq_handler(int irq, void *arg)
>  {
> +       struct drm_i915_private *i915 = arg;
>         void __iomem * const regs = i915->uncore.regs;
>         struct intel_gt *gt = &i915->gt;
>         u32 master_ctl;
> @@ -2712,9 +2710,9 @@ __gen11_irq_handler(struct drm_i915_private * const i915,
>         if (!intel_irqs_enabled(i915))
>                 return IRQ_NONE;
>
> -       master_ctl = intr_disable(regs);
> +       master_ctl = gen11_master_intr_disable(regs);
>         if (!master_ctl) {
> -               intr_enable(regs);
> +               gen11_master_intr_enable(regs);
>                 return IRQ_NONE;
>         }
>
> @@ -2727,7 +2725,7 @@ __gen11_irq_handler(struct drm_i915_private * const i915,
>
>         gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
>
> -       intr_enable(regs);
> +       gen11_master_intr_enable(regs);
>
>         gen11_gu_misc_irq_handler(gt, gu_misc_iir);
>
> @@ -2736,51 +2734,69 @@ __gen11_irq_handler(struct drm_i915_private * const i915,
>         return IRQ_HANDLED;
>  }
>
> -static irqreturn_t gen11_irq_handler(int irq, void *arg)
> -{
> -       return __gen11_irq_handler(arg,
> -                                  gen11_master_intr_disable,
> -                                  gen11_master_intr_enable);
> -}
> -
> -static u32 dg1_master_intr_disable_and_ack(void __iomem * const regs)
> +static inline u32 dg1_master_intr_disable(void __iomem * const regs)
>  {
>         u32 val;
>
>         /* First disable interrupts */
> -       raw_reg_write(regs, DG1_MSTR_UNIT_INTR, 0);
> +       raw_reg_write(regs, DG1_MSTR_TILE_INTR, 0);
>
>         /* Get the indication levels and ack the master unit */
> -       val = raw_reg_read(regs, DG1_MSTR_UNIT_INTR);
> +       val = raw_reg_read(regs, DG1_MSTR_TILE_INTR);
>         if (unlikely(!val))
>                 return 0;
>
> -       raw_reg_write(regs, DG1_MSTR_UNIT_INTR, val);
> -
> -       /*
> -        * Now with master disabled, get a sample of level indications
> -        * for this interrupt and ack them right away - we keep GEN11_MASTER_IRQ
> -        * out as this bit doesn't exist anymore for DG1
> -        */
> -       val = raw_reg_read(regs, GEN11_GFX_MSTR_IRQ) & ~GEN11_MASTER_IRQ;
> -       if (unlikely(!val))
> -               return 0;
> -
> -       raw_reg_write(regs, GEN11_GFX_MSTR_IRQ, val);
> +       raw_reg_write(regs, DG1_MSTR_TILE_INTR, val);
>
>         return val;
>  }
>
>  static inline void dg1_master_intr_enable(void __iomem * const regs)
>  {
> -       raw_reg_write(regs, DG1_MSTR_UNIT_INTR, DG1_MSTR_IRQ);
> +       raw_reg_write(regs, DG1_MSTR_TILE_INTR, DG1_MSTR_IRQ);
>  }
>
>  static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  {
> -       return __gen11_irq_handler(arg,
> -                                  dg1_master_intr_disable_and_ack,
> -                                  dg1_master_intr_enable);
> +       struct drm_i915_private * const i915 = arg;
> +       struct intel_gt *gt = &i915->gt;
> +       void __iomem * const regs = i915->uncore.regs;
> +       u32 master_tile_ctl, master_ctl;
> +       u32 gu_misc_iir;
> +
> +       if (!intel_irqs_enabled(i915))
> +               return IRQ_NONE;
> +
> +       master_tile_ctl = dg1_master_intr_disable(regs);
> +       if (!master_tile_ctl) {
> +               dg1_master_intr_enable(regs);
> +               return IRQ_NONE;
> +       }
> +
> +       /* FIXME: we only support tile 0 for now. */
> +       if (master_tile_ctl & DG1_MSTR_TILE(0)) {
> +               master_ctl = raw_reg_read(regs, GEN11_GFX_MSTR_IRQ);
> +               raw_reg_write(regs, GEN11_GFX_MSTR_IRQ, master_ctl);
> +       } else {
> +               DRM_ERROR("Tile not supported: 0x%08x\n", master_tile_ctl);
> +               dg1_master_intr_enable(regs);
> +               return IRQ_NONE;
> +       }
> +
> +       gen11_gt_irq_handler(gt, master_ctl);
> +
> +       if (master_ctl & GEN11_DISPLAY_IRQ)
> +               gen11_display_irq_handler(i915);
> +
> +       gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
> +
> +       dg1_master_intr_enable(regs);
> +
> +       gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> +
> +       pmu_irq_stats(i915, IRQ_HANDLED);
> +
> +       return IRQ_HANDLED;
>  }
>
>  /* Called from drm generic code, passed 'crtc' which
> @@ -3168,10 +3184,20 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
>  {
>         struct intel_uncore *uncore = &dev_priv->uncore;
>
> -       if (HAS_MASTER_UNIT_IRQ(dev_priv))
> -               dg1_master_intr_disable_and_ack(dev_priv->uncore.regs);
> -       else
> -               gen11_master_intr_disable(dev_priv->uncore.regs);
> +       gen11_master_intr_disable(dev_priv->uncore.regs);
> +
> +       gen11_gt_irq_reset(&dev_priv->gt);
> +       gen11_display_irq_reset(dev_priv);
> +
> +       GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> +       GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +}
> +
> +static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> +{
> +       struct intel_uncore *uncore = &dev_priv->uncore;
> +
> +       dg1_master_intr_disable(dev_priv->uncore.regs);
>
>         gen11_gt_irq_reset(&dev_priv->gt);
>         gen11_display_irq_reset(dev_priv);
> @@ -3863,13 +3889,28 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>
>         GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
>
> -       if (HAS_MASTER_UNIT_IRQ(dev_priv)) {
> -               dg1_master_intr_enable(uncore->regs);
> -               intel_uncore_posting_read(&dev_priv->uncore, DG1_MSTR_UNIT_INTR);
> -       } else {
> -               gen11_master_intr_enable(uncore->regs);
> -               intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
> +       gen11_master_intr_enable(uncore->regs);
> +       intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
> +}
> +
> +static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
> +{
> +       struct intel_uncore *uncore = &dev_priv->uncore;
> +       u32 gu_misc_masked = GEN11_GU_MISC_GSE;
> +
> +       gen11_gt_irq_postinstall(&dev_priv->gt);
> +
> +       GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
> +
> +       if (HAS_DISPLAY(dev_priv)) {
> +               icp_irq_postinstall(dev_priv);
> +               gen8_de_irq_postinstall(dev_priv);
> +               intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
> +                                  GEN11_DISPLAY_IRQ_ENABLE);
>         }
> +
> +       dg1_master_intr_enable(dev_priv->uncore.regs);
> +       intel_uncore_posting_read(&dev_priv->uncore, DG1_MSTR_TILE_INTR);
>  }
>
>  static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
> @@ -4408,9 +4449,9 @@ static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_priv)
>                 else
>                         return i8xx_irq_handler;
>         } else {
> -               if (HAS_MASTER_UNIT_IRQ(dev_priv))
> +               if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
>                         return dg1_irq_handler;
> -               if (GRAPHICS_VER(dev_priv) >= 11)
> +               else if (GRAPHICS_VER(dev_priv) >= 11)
>                         return gen11_irq_handler;
>                 else if (GRAPHICS_VER(dev_priv) >= 8)
>                         return gen8_irq_handler;
> @@ -4433,7 +4474,9 @@ static void intel_irq_reset(struct drm_i915_private *dev_priv)
>                 else
>                         i8xx_irq_reset(dev_priv);
>         } else {
> -               if (GRAPHICS_VER(dev_priv) >= 11)
> +               if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
> +                       dg1_irq_reset(dev_priv);
> +               else if (GRAPHICS_VER(dev_priv) >= 11)
>                         gen11_irq_reset(dev_priv);
>                 else if (GRAPHICS_VER(dev_priv) >= 8)
>                         gen8_irq_reset(dev_priv);
> @@ -4456,7 +4499,9 @@ static void intel_irq_postinstall(struct drm_i915_private *dev_priv)
>                 else
>                         i8xx_irq_postinstall(dev_priv);
>         } else {
> -               if (GRAPHICS_VER(dev_priv) >= 11)
> +               if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
> +                       dg1_irq_postinstall(dev_priv);
> +               else if (GRAPHICS_VER(dev_priv) >= 11)
>                         gen11_irq_postinstall(dev_priv);
>                 else if (GRAPHICS_VER(dev_priv) >= 8)
>                         gen8_irq_postinstall(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index dc0883bad9cf..9684b647fd04 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -907,7 +907,6 @@ static const struct intel_device_info rkl_info = {
>
>  #define DGFX_FEATURES \
>         .memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
> -       .has_master_unit_irq = 1, \
>         .has_llc = 0, \
>         .has_snoop = 1, \
>         .is_dgfx = 1
> @@ -915,6 +914,7 @@ static const struct intel_device_info rkl_info = {
>  static const struct intel_device_info dg1_info __maybe_unused = {
>         GEN12_FEATURES,
>         DGFX_FEATURES,
> +       .graphics_ver_release = 10,
>         PLATFORM(INTEL_DG1),
>         .pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
>         .require_force_probe = 1,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 16a19239d86d..f7dad8541417 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7985,9 +7985,9 @@ enum {
>  #define  GEN11_GT_DW1_IRQ              (1 << 1)
>  #define  GEN11_GT_DW0_IRQ              (1 << 0)
>
> -#define DG1_MSTR_UNIT_INTR             _MMIO(0x190008)
> +#define DG1_MSTR_TILE_INTR             _MMIO(0x190008)
>  #define   DG1_MSTR_IRQ                 REG_BIT(31)
> -#define   DG1_MSTR_UNIT(u)             REG_BIT(u)
> +#define   DG1_MSTR_TILE(t)             REG_BIT(t)
>
>  #define GEN11_DISPLAY_INT_CTL          _MMIO(0x44200)
>  #define  GEN11_DISPLAY_IRQ_ENABLE      (1 << 31)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 944a5ff4df49..b00249906c28 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -127,7 +127,6 @@ enum intel_ppgtt_type {
>         func(has_llc); \
>         func(has_logical_ring_contexts); \
>         func(has_logical_ring_elsq); \
> -       func(has_master_unit_irq); \
>         func(has_pooled_eu); \
>         func(has_rc6); \
>         func(has_rc6p); \
> --
> 2.25.4
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

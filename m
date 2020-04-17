Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B6A1AE15C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 17:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA766EC46;
	Fri, 17 Apr 2020 15:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8676EC44
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 15:41:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20935423-1500050 for multiple; Fri, 17 Apr 2020 16:41:40 +0100
MIME-Version: 1.0
In-Reply-To: <20200417152244.77623-1-michael.j.ruhl@intel.com>
References: <20200417152244.77623-1-michael.j.ruhl@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158713809922.2062.18026137702042561111@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 16:41:39 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
 common helper
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Michael J. Ruhl (2020-04-17 16:22:44)
> DMA_MASK bit values are different for different generations.
> 
> This will become more difficult to manage over time with the open
> coded usage of different versions of the device.
> 
> Fix by:
>   adding dma_mask_size to the device info configuration,
>   updating open code call sequence to the latest interface,
>   refactoring into a common function for setting the dma_mask
> 
> Note: GEN(5) and down is also set in intel_gmch_probe().
> 
> Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> cc: Brian Welty <brian.welty@intel.com>
> cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c     | 15 --------------
>  drivers/gpu/drm/i915/i915_drv.c          | 25 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_pci.c          | 14 +++++++++++++
>  drivers/gpu/drm/i915/intel_device_info.c |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h |  2 ++
>  5 files changed, 42 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index eebd1190506f..66165b10256e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -840,7 +840,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>         struct pci_dev *pdev = i915->drm.pdev;
>         unsigned int size;
>         u16 snb_gmch_ctl;
> -       int err;
>  
>         /* TODO: We're not aware of mappable constraints on gen8 yet */
>         if (!IS_DGFX(i915)) {
> @@ -848,13 +847,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>                 ggtt->mappable_end = resource_size(&ggtt->gmadr);
>         }
>  
> -       err = pci_set_dma_mask(pdev, DMA_BIT_MASK(39));
> -       if (!err)
> -               err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(39));
> -       if (err)
> -               drm_err(&i915->drm,
> -                       "Can't set DMA mask/consistent mask (%d)\n", err);
> -
>         pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>         if (IS_CHERRYVIEW(i915))
>                 size = chv_get_total_gtt_size(snb_gmch_ctl);
> @@ -990,7 +982,6 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>         struct pci_dev *pdev = i915->drm.pdev;
>         unsigned int size;
>         u16 snb_gmch_ctl;
> -       int err;
>  
>         ggtt->gmadr = pci_resource(pdev, 2);
>         ggtt->mappable_end = resource_size(&ggtt->gmadr);
> @@ -1005,12 +996,6 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>                 return -ENXIO;
>         }
>  
> -       err = pci_set_dma_mask(pdev, DMA_BIT_MASK(40));
> -       if (!err)
> -               err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(40));
> -       if (err)
> -               drm_err(&i915->drm,
> -                       "Can't set DMA mask/consistent mask (%d)\n", err);
>         pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>  
>         size = gen6_get_total_gtt_size(snb_gmch_ctl);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 641f5e03b661..3c5654b5d321 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -566,6 +566,29 @@ static void intel_sanitize_options(struct drm_i915_private *dev_priv)
>         intel_gvt_sanitize_options(dev_priv);
>  }
>  
> +/**
> + * i915_set_dma_mask - set the dma mask as configured for the platform
> + * @i915: valid i915 instance
> + *
> + * Set the dma device and coherent masks.  This needs to occur before
> + * i915_ggtt_probe_hw.
> + *
> + * NOTE: for devices < GEN(6), the dma_mask will also be set in
> + * intel_gmch_probe() (i.e. it will be set a second time).
> + */
> +static void i915_set_dma_mask(struct drm_i915_private *i915)
> +{
> +       struct pci_dev *pdev = i915->drm.pdev;
> +       unsigned int mask_size = INTEL_INFO(i915)->dma_mask_size;
> +       int err;
> +
> +       GEM_BUG_ON(!mask_size);
> +
> +       err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(mask_size));
> +       if (err)
> +               DRM_ERROR("Can't set DMA mask/consistent mask (%d)\n", err);

Which device again? How serious of an error is it exactly since it is
ignored? Since it is being ignored, what's the impact to the user?
Should they take any action, or can they ignore it? [If they can ignore
it as well, this is barely anything to take note of.]

>  /**
>   * i915_driver_hw_probe - setup state requiring device access
>   * @dev_priv: device private
> @@ -613,6 +636,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  
>         i915_perf_init(dev_priv);
>  
> +       i915_set_dma_mask(dev_priv);
> +
>         ret = i915_ggtt_probe_hw(dev_priv);
>         if (ret)
>                 goto err_perf;
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 66738f2c4f28..2fc25ec12c3d 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -171,6 +171,7 @@
>         .engine_mask = BIT(RCS0), \
>         .has_snoop = true, \
>         .has_coherent_ggtt = false, \
> +       .dma_mask_size = 32, \
>         I9XX_PIPE_OFFSETS, \
>         I9XX_CURSOR_OFFSETS, \
>         I9XX_COLORS, \
> @@ -190,6 +191,7 @@
>         .engine_mask = BIT(RCS0), \
>         .has_snoop = true, \
>         .has_coherent_ggtt = false, \
> +       .dma_mask_size = 32, \
>         I845_PIPE_OFFSETS, \
>         I845_CURSOR_OFFSETS, \
>         I9XX_COLORS, \
> @@ -226,6 +228,7 @@ static const struct intel_device_info i865g_info = {
>         .engine_mask = BIT(RCS0), \
>         .has_snoop = true, \
>         .has_coherent_ggtt = true, \
> +       .dma_mask_size = 32, \

gen2 is set to 30b?

>         I9XX_PIPE_OFFSETS, \
>         I9XX_CURSOR_OFFSETS, \
>         I9XX_COLORS, \
> @@ -286,6 +289,7 @@ static const struct intel_device_info g33_info = {
>         PLATFORM(INTEL_G33),
>         .display.has_hotplug = 1,
>         .display.has_overlay = 1,
> +       .dma_mask_size = 36,
>  };
>  
>  static const struct intel_device_info pnv_g_info = {
> @@ -293,6 +297,7 @@ static const struct intel_device_info pnv_g_info = {
>         PLATFORM(INTEL_PINEVIEW),
>         .display.has_hotplug = 1,
>         .display.has_overlay = 1,
> +       .dma_mask_size = 36,
>  };
>  
>  static const struct intel_device_info pnv_m_info = {
> @@ -301,6 +306,7 @@ static const struct intel_device_info pnv_m_info = {
>         .is_mobile = 1,
>         .display.has_hotplug = 1,
>         .display.has_overlay = 1,
> +       .dma_mask_size = 36,
>  };
>  
>  #define GEN4_FEATURES \
> @@ -313,6 +319,7 @@ static const struct intel_device_info pnv_m_info = {
>         .engine_mask = BIT(RCS0), \
>         .has_snoop = true, \
>         .has_coherent_ggtt = true, \
> +       .dma_mask_size = 36, \
>         I9XX_PIPE_OFFSETS, \
>         I9XX_CURSOR_OFFSETS, \
>         I965_COLORS, \

I thought we had restricted i965g/i965gm to 32b.

Hmm. dma_set_coherent_mask.

Not much point tablifying one without the other?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

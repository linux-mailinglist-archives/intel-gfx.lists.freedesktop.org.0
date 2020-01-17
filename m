Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D19140895
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 12:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01E66F4F9;
	Fri, 17 Jan 2020 11:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1A96F4F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:02:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 03:02:06 -0800
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="214438318"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 03:02:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200109110835.29764-7-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200109110835.29764-1-vandita.kulkarni@intel.com>
 <20200109110835.29764-7-vandita.kulkarni@intel.com>
Date: Fri, 17 Jan 2020 13:02:01 +0200
Message-ID: <87a76mibx2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V6 6/9] drm/i915/dsi: Configure TE interrupt for
 cmd mode
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

On Thu, 09 Jan 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> We need to configure TE interrupt in two places.
> Port interrupt and DSI interrupt mask registers.
>
> v2: Hide the private flags check inside configure_te (Jani)
>
> v3: Fix the position of masking de_port_masked for DSI_TE.
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 55 +++++++++++++++++++++++++++++++--
>  1 file changed, 53 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index afc6aad9bf8c..3f6159708def 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -41,6 +41,7 @@
>  #include "display/intel_hotplug.h"
>  #include "display/intel_lpe_audio.h"
>  #include "display/intel_psr.h"
> +#include "display/intel_dsi.h"
>  
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_irq.h"
> @@ -2581,12 +2582,46 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
>  	return 0;
>  }
>  
> +static bool gen11_dsi_configure_te(struct drm_i915_private *dev_priv,
> +				   struct drm_display_mode *mode, bool enable)

Please pass just (struct intel_crtc *crtc, bool enable) to this
function, and the callers get simplified a lot.

> +{
> +	enum port port;
> +	u32 tmp;
> +
> +	if (!(mode->private_flags &
> +	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
> +		return false;
> +
> +	if (mode->private_flags & I915_MODE_FLAG_DSI_USE_TE1)
> +		port = PORT_B;
> +	else
> +		port = PORT_A;

This makes dual link use port B, is that right?

> +
> +	tmp =  I915_READ(DSI_INTR_MASK_REG(port));
> +	if (enable)
> +		tmp &= ~DSI_TE_EVENT;
> +	else
> +		tmp |= DSI_TE_EVENT;
> +
> +	I915_WRITE(DSI_INTR_MASK_REG(port), tmp);
> +	return true;
> +}
> +
>  int bdw_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
> -	enum pipe pipe = to_intel_crtc(crtc)->pipe;
> +	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
> +	enum pipe pipe = intel_crtc->pipe;
> +	struct drm_vblank_crtc *vblank;
> +	struct drm_display_mode *mode;
>  	unsigned long irqflags;
>  
> +	vblank = &crtc->dev->vblank[drm_crtc_index(crtc)];
> +	mode = &vblank->hwmode;

With the parameter change to gen11_dsi_configure_te() all of the above
changes go away...

> +
> +	if (gen11_dsi_configure_te(dev_priv, mode, true))
> +		return 0;

...and this becomes simply

	if (gen11_dsi_configure_te(to_intel_crtc(crtc), true))

> +
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>  	bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> @@ -2652,9 +2687,18 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
>  void bdw_disable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
> -	enum pipe pipe = to_intel_crtc(crtc)->pipe;
> +	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
> +	enum pipe pipe = intel_crtc->pipe;
> +	struct drm_vblank_crtc *vblank;
> +	struct drm_display_mode *mode;
>  	unsigned long irqflags;
>  
> +	vblank = &crtc->dev->vblank[drm_crtc_index(crtc)];
> +	mode = &vblank->hwmode;
> +
> +	if (gen11_dsi_configure_te(dev_priv, mode, false))
> +		return;
> +

Same here.

>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>  	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> @@ -3347,6 +3391,13 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	if (IS_CNL_WITH_PORT_F(dev_priv) || INTEL_GEN(dev_priv) >= 11)
>  		de_port_masked |= CNL_AUX_CHANNEL_F;
>  
> +	if (INTEL_GEN(dev_priv) >= 11) {
> +		enum port port;
> +
> +		if (intel_bios_is_dsi_present(dev_priv, &port))
> +			de_port_masked |= DSI0_TE | DSI1_TE;
> +	}
> +
>  	de_pipe_enables = de_pipe_masked | GEN8_PIPE_VBLANK |
>  					   GEN8_PIPE_FIFO_UNDERRUN;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

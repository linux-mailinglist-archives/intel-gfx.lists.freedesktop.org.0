Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE227046BF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 09:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55C010E318;
	Tue, 16 May 2023 07:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE7910E317
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 07:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684223044; x=1715759044;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3bs+D+COD0AIquEej0HLsfDp8BzoIOfHr9loUMNjEE0=;
 b=YV33SAnpt8hV7oK4SLAiU9ZS31POLUI2zEPD1aDHkuwvt2+dU3gwBiPA
 bmPEaNH8iYooytawJp9oomkf9FK6/6W0u12qkqTx4uDokiWyU4O8l9Qii
 pAfvtuX7AYMgRUQaPEOHM9glhY/w/uAw/gqMVwznhSr8c3OI0Nd3ASm+9
 OuZYzSafdezt7fJO5GEGU3bO0bKMwdYpi5gdqZC8XhZOr5Xeym0tN/J/W
 SuxW07EkTaO2bDnEvxq3iiZ+lR2s4zsPkDH3Gx5GWE3B32QDnmVwKUvGp
 96OXgZV5U9lJJ8wuXON1n9ixTTjyjxQn38QArcxuiSzKHddHQdNbIWhbg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="348909931"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="348909931"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 00:44:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="695353186"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="695353186"
Received: from khach-mobl.ger.corp.intel.com (HELO localhost) ([10.252.49.69])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2023 00:44:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20230515101738.2399816-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230515101738.2399816-1-jani.nikula@intel.com>
Date: Tue, 16 May 2023 10:43:59 +0300
Message-ID: <87bkikiuv4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/irq: convert
 gen8_de_irq_handler() to void
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 15 May 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> The return value is not used for anything.
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the reviews, series pushed to drm-intel-next.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/i915_irq.c | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 02b6cbb832e9..64cc52538206 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2124,10 +2124,8 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
>  		intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
>  }
>  
> -static irqreturn_t
> -gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
> +static void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  {
> -	irqreturn_t ret = IRQ_NONE;
>  	u32 iir;
>  	enum pipe pipe;
>  
> @@ -2137,7 +2135,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
>  		if (iir) {
>  			intel_uncore_write(&dev_priv->uncore, GEN8_DE_MISC_IIR, iir);
> -			ret = IRQ_HANDLED;
>  			gen8_de_misc_irq_handler(dev_priv, iir);
>  		} else {
>  			drm_err_ratelimited(&dev_priv->drm,
> @@ -2149,7 +2146,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		iir = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IIR);
>  		if (iir) {
>  			intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IIR, iir);
> -			ret = IRQ_HANDLED;
>  			gen11_hpd_irq_handler(dev_priv, iir);
>  		} else {
>  			drm_err_ratelimited(&dev_priv->drm,
> @@ -2163,7 +2159,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  			bool found = false;
>  
>  			intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IIR, iir);
> -			ret = IRQ_HANDLED;
>  
>  			if (iir & gen8_de_port_aux_mask(dev_priv)) {
>  				intel_dp_aux_irq_handler(dev_priv);
> @@ -2223,7 +2218,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  			continue;
>  		}
>  
> -		ret = IRQ_HANDLED;
>  		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
>  
>  		if (iir & GEN8_PIPE_VBLANK)
> @@ -2257,8 +2251,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		 */
>  		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
>  		if (iir) {
> -			ret = IRQ_HANDLED;
> -
>  			if (pica_iir)
>  				xelpdp_pica_irq_handler(dev_priv, pica_iir);
>  
> @@ -2277,8 +2269,6 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  				"The master control interrupt lied (SDE)!\n");
>  		}
>  	}
> -
> -	return ret;
>  }
>  
>  static inline u32 gen8_master_intr_disable(void __iomem * const regs)

-- 
Jani Nikula, Intel Open Source Graphics Center

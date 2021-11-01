Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75004415A2
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 09:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1067D6E176;
	Mon,  1 Nov 2021 08:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318C66E176
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 08:46:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="211027269"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="211027269"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 01:46:45 -0700
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="499956695"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 01:46:44 -0700
Date: Mon, 1 Nov 2021 10:41:58 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211101084158.GA8858@intel.com>
References: <20211029191802.18448-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211029191802.18448-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Don't request GMBUS to
 generate irqs when called while irqs are off
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

On Fri, Oct 29, 2021 at 10:18:01PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We will need to do some i2c poking from the encoder->shutdown() hook.
> Currently that gets called after irqs have been turned off. We still
> poll the gmbus status bits even if the interrupt never arrives so
> things will work just fine. But seems like asking gmbus to generate
> interrupts we will never see is a bit pointless, so don't.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index ceb1bf8a8c3c..3b8b84177085 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -334,6 +334,15 @@ intel_gpio_setup(struct intel_gmbus *bus, unsigned int pin)
>  	algo->data = bus;
>  }
>  
> +static bool has_gmbus_irq(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * encoder->shutdown() may want to use GMBUS
> +	 * after irqs have already been disabled.
> +	 */
> +	return HAS_GMBUS_IRQ(i915) && intel_irqs_enabled(i915);
> +}
> +
>  static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
>  {
>  	DEFINE_WAIT(wait);
> @@ -344,7 +353,7 @@ static int gmbus_wait(struct drm_i915_private *dev_priv, u32 status, u32 irq_en)
>  	 * we also need to check for NAKs besides the hw ready/idle signal, we
>  	 * need to wake up periodically and check that ourselves.
>  	 */
> -	if (!HAS_GMBUS_IRQ(dev_priv))
> +	if (!has_gmbus_irq(dev_priv))
>  		irq_en = 0;
>  
>  	add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
> @@ -375,7 +384,7 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
>  
>  	/* Important: The hw handles only the first bit, so set only one! */
>  	irq_enable = 0;
> -	if (HAS_GMBUS_IRQ(dev_priv))
> +	if (has_gmbus_irq(dev_priv))
>  		irq_enable = GMBUS_IDLE_EN;
>  
>  	add_wait_queue(&dev_priv->gmbus_wait_queue, &wait);
> -- 
> 2.32.0
> 

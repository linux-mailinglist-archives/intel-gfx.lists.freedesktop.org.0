Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F0AB8633A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA0A10E221;
	Thu, 18 Sep 2025 17:25:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jp/0Jjbu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A3E10E17E;
 Thu, 18 Sep 2025 17:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758216331; x=1789752331;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+OmfkTgyFJ+6iy1PWY4dGV7seIDo6K7vFn94nuIGT4o=;
 b=jp/0JjbuGt2lHQgRwso2UBfWjCRWmTyntYON6QMgoE4qT4mMjiYhQMa0
 jLEi0mzuQyKcEFExxDXLxHNRcmbLTkmYAQXOq7/SgciL0rJHBIpq/YSY0
 RdhxZj27aSiDqvEIYyepf4qi5/InizqFxgq2lusVZnC+Df0s5nNxKfo2B
 fZHkkioPZ4VGjwT0+qIZ0lzpRWivFpIwHXfgLsia5eKPB8JCmsmldW3f6
 yVPwVubeK0+Qj0y73GQMNhnUT09UfBq8JY2iijUWAH9+bifpXcAJWRJtu
 lpxx5MOXX2ia6FQPEQQggKiJJMFDCVUFCoteQ3KdYlI7PBuryGinOdEDL A==;
X-CSE-ConnectionGUID: uQry2RxNSBqy27MPRix/kA==
X-CSE-MsgGUID: ejWr32bvSf2N/C/Re7uJ+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64195075"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="64195075"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:25:30 -0700
X-CSE-ConnectionGUID: rXFf24TdQemS+A1li9/zZQ==
X-CSE-MsgGUID: Lj+2QmkSS5KE/tNGrWWCug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="179887382"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:25:28 -0700
Date: Thu, 18 Sep 2025 20:25:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/irq: add ilk_display_irq_reset()
Message-ID: <aMxAhuWQNwKV1Biw@intel.com>
References: <903f35b109acea1f70b942a76392e58e88b0b720.1758198300.git.jani.nikula@intel.com>
 <20250918133835.2412980-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250918133835.2412980-1-jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 04:38:35PM +0300, Jani Nikula wrote:
> Abstract ilk_display_irq_reset(), moving display related reset
> there. This results in a slightly different order between GT and PCH
> reset, hopefully with no impact.
> 
> v3: Reset display first (Ville)
> 
> v2: Also move GEN7_ERR_INT (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 20 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_irq.h  |  2 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 16 ++-------------
>  3 files changed, 22 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 93c2e42f98c9..c6f367e6159e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1985,7 +1985,7 @@ void vlv_display_irq_postinstall(struct intel_display *display)
>  	spin_unlock_irq(&display->irq.lock);
>  }
>  
> -void ibx_display_irq_reset(struct intel_display *display)
> +static void ibx_display_irq_reset(struct intel_display *display)
>  {
>  	if (HAS_PCH_NOP(display))
>  		return;
> @@ -1996,6 +1996,24 @@ void ibx_display_irq_reset(struct intel_display *display)
>  		intel_de_write(display, SERR_INT, 0xffffffff);
>  }
>  
> +void ilk_display_irq_reset(struct intel_display *display)
> +{
> +	struct intel_uncore *uncore = to_intel_uncore(display->drm);
> +
> +	gen2_irq_reset(uncore, DE_IRQ_REGS);
> +	display->irq.ilk_de_imr_mask = ~0u;
> +
> +	if (DISPLAY_VER(display) == 7)
> +		intel_de_write(display, GEN7_ERR_INT, 0xffffffff);
> +
> +	if (display->platform.haswell) {
> +		intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
> +		intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
> +	}
> +
> +	ibx_display_irq_reset(display);
> +}
> +
>  void gen8_display_irq_reset(struct intel_display *display)
>  {
>  	enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index c66db3851da4..cee120347064 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -56,7 +56,7 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
>  
>  void i9xx_display_irq_reset(struct intel_display *display);
> -void ibx_display_irq_reset(struct intel_display *display);
> +void ilk_display_irq_reset(struct intel_display *display);
>  void vlv_display_irq_reset(struct intel_display *display);
>  void gen8_display_irq_reset(struct intel_display *display);
>  void gen11_display_irq_reset(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index ab65402bc6bf..7c7c6dcbce88 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -656,22 +656,10 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
>  static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_display *display = dev_priv->display;
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> -
> -	gen2_irq_reset(uncore, DE_IRQ_REGS);
> -	display->irq.ilk_de_imr_mask = ~0u;
> -
> -	if (GRAPHICS_VER(dev_priv) == 7)
> -		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
> -
> -	if (IS_HASWELL(dev_priv)) {
> -		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
> -		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
> -	}
>  
> +	/* The master interrupt enable is in DEIER, reset display irq first */
> +	ilk_display_irq_reset(display);
>  	gen5_gt_irq_reset(to_gt(dev_priv));
> -
> -	ibx_display_irq_reset(display);
>  }
>  
>  static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel

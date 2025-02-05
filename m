Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D079FA28A5E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 13:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A365810E791;
	Wed,  5 Feb 2025 12:35:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YORRHN8z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB04010E7A5;
 Wed,  5 Feb 2025 12:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738758930; x=1770294930;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=r4heft4Kaotp1EjwA4vfP++x+yMiSKxEcS3ymwWuF54=;
 b=YORRHN8zBSpbb3TcksKihmSbq7Bb81g+RhJXwO52Rg+3GMg0qxW18icI
 W9G1vBvQmgdM+FbbPK2sc6k7+mIAvTMv8ItGugExrmYpzN9H/ukmj61bJ
 pI7OzWceUWtolKUV00pGAuv+EaEHgKwLHaBVLJWN5p3sjH0QVAXWExB57
 P9mva4tm3AIF8OvppN+ofw+8yqNVNVn47dbxrMoowElx937PWVXauUBmh
 uwPvXh27OqpIskp0js9+ZjmbBl4hfnISVoBNBo1hIuEDbKU6fQzs+XFym
 W6WQQbMFmRrq74nzM/MoV60/a6rSl+/rEchsNoO6nf8Pj30jHi/REEix/ g==;
X-CSE-ConnectionGUID: dM+cFpLyT0asu9HUQr9qEA==
X-CSE-MsgGUID: UmbUgiNUQaSdi5crUs4qZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49968631"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="49968631"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:35:29 -0800
X-CSE-ConnectionGUID: YPdXnnAATrGQR7HhNFrn9w==
X-CSE-MsgGUID: QwclhZcCSnqO5WBaP1FKdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111777006"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:35:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/17] drm/i915/ddi: Simplify waiting for a port to idle
 via DDI_BUF_CTL
In-Reply-To: <20250129200221.2508101-8-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-8-imre.deak@intel.com>
Date: Wed, 05 Feb 2025 14:35:18 +0200
Message-ID: <87o6zg4lix.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> When waiting for a port to idle, there is no point in distinguishing the
> platform specific timeouts, instead of just using the maximum timeout.

Why?

All of this sounds kind of reasonable, but we'll need a better rationale
than "there is no point".

> Simplify things accordingly, describing the Bspec platform specific
> timeouts in code comments.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 78 +++++++++++-------------
>  1 file changed, 36 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 24c56d2aa5f31..d040558b5d029 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -177,69 +177,63 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
>  		       trans->entries[level].hsw.trans2);
>  }
>  
> -static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
> +static i915_reg_t intel_ddi_buf_status_reg(struct intel_display *display, enum port port)
>  {
> -	int ret;
> +	struct drm_i915_private *i915 = to_i915(display->drm);

Please don't add new i915 uses, display will work just fine here.

>  
> -	/* FIXME: find out why Bspec's 100us timeout is too short */
> -	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port)) &
> -			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
> -	if (ret)
> -		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
> -			port_name(port));
> +	if (DISPLAY_VER(display) >= 14)
> +		return XELPDP_PORT_BUF_CTL1(i915, port);
> +	else
> +		return DDI_BUF_CTL(port);
>  }
>  
>  void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
>  			     enum port port)
>  {
> -	if (IS_BROXTON(dev_priv)) {
> +	struct intel_display *display = &dev_priv->display;
> +
> +	/*
> +	 * Bspec's platform specific timeouts:
> +	 * MTL+   : 100 us
> +	 * BXT    : fixed 16 us
> +	 * HSW-ADL: 8 us
> +	 *
> +	 * FIXME: MTL requires 10 ms based on tests, find out why 100 us is too short
> +	 */

Seems a bit odd to me to list all the platform specific timeouts, and
then largely ignore them without explanation!

Also, 10 ms is several orders of magnitude longer than it should need to
be on all platforms.

> +	if (display->platform.broxton) {
>  		udelay(16);
>  		return;
>  	}
>  
> -	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> -			 DDI_BUF_IS_IDLE), 8))
> -		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\n",
> +	static_assert(DDI_BUF_IS_IDLE == XELPDP_PORT_BUF_PHY_IDLE);
> +	if (intel_de_wait_for_set(display, intel_ddi_buf_status_reg(display, port),
> +				  DDI_BUF_IS_IDLE, 10))
> +		drm_err(display->drm, "Timeout waiting for DDI BUF %c to get idle\n",
>  			port_name(port));
>  }
>  
>  static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
> -	int timeout_us;
> -	int ret;
>  
> -	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
> -	if (DISPLAY_VER(dev_priv) < 10) {
> +	/*
> +	 * Bspec's platform specific timeouts:
> +	 * MTL+             : 10000 us
> +	 * DG2              : 1200 us
> +	 * TGL-ADL combo PHY: 1000 us
> +	 * TGL-ADL TypeC PHY: 3000 us
> +	 * HSW-ICL          : fixed 518 us
> +	 */
> +	if (DISPLAY_VER(display) < 10) {
>  		usleep_range(518, 1000);
>  		return;
>  	}
>  
> -	if (DISPLAY_VER(dev_priv) >= 14) {
> -		timeout_us = 10000;
> -	} else if (IS_DG2(dev_priv)) {
> -		timeout_us = 1200;
> -	} else if (DISPLAY_VER(dev_priv) >= 12) {
> -		if (intel_encoder_is_tc(encoder))
> -			timeout_us = 3000;
> -		else
> -			timeout_us = 1000;
> -	} else {
> -		timeout_us = 500;
> -	}
> -
> -	if (DISPLAY_VER(dev_priv) >= 14)
> -		ret = _wait_for(!(intel_de_read(dev_priv,
> -						XELPDP_PORT_BUF_CTL1(dev_priv, port)) &
> -				  XELPDP_PORT_BUF_PHY_IDLE),
> -				timeout_us, 10, 10);
> -	else
> -		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
> -				timeout_us, 10, 10);
> -
> -	if (ret)
> -		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\n",
> +	static_assert(DDI_BUF_IS_IDLE == XELPDP_PORT_BUF_PHY_IDLE);
> +	if (intel_de_wait_for_clear(display, intel_ddi_buf_status_reg(display, port),
> +				    DDI_BUF_IS_IDLE, 10))
> +		drm_err(display->drm, "Timeout waiting for DDI BUF %c to get active\n",
>  			port_name(port));
>  }
>  
> @@ -3067,7 +3061,7 @@ static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
>  	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
>  
>  	/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */

Comment is now stale. (Which is why we should never add comments like
that.)

> -	mtl_wait_ddi_buf_idle(dev_priv, port);
> +	intel_wait_ddi_buf_idle(dev_priv, port);
>  
>  	/* 3.d Disable D2D Link */
>  	mtl_ddi_disable_d2d_link(encoder);

-- 
Jani Nikula, Intel

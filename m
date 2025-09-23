Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A5DB96576
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C313B10E63B;
	Tue, 23 Sep 2025 14:41:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkI+dDBI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FC410E63B;
 Tue, 23 Sep 2025 14:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758638514; x=1790174514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wWC/g1LXJjsoPm3oWBGaf/vyYtOzd0Bz5RF5xq4yrl8=;
 b=fkI+dDBIoL0R46g2i4aFcvfL9j71hfGmyRw1WMvHV45onwS0PM+mqk/K
 xCQZ/Oj4d3g8fhH402f/rif2k+JKnGUvIna4tzXvFBdhtt8SiOKkUHz89
 8A0i3394C8VL8Irx6B0lG8oCsVRpjvz01kZX2YkP0Rgo9CYLEJ42QG+vQ
 jSO6ByhWEXENEEAGHDHWHlknvK8/UhcdMXrq+9wUWlCYmGnUlKleyI7UR
 h797WIzSzrT36PD1OwLQWftjE0FLPw7fCxL8yDABBKEelrBHd/qw/GoRM
 PTKG3+lUthUhtubznfeXlRDjVr99msEbWD6nHa7vbALATG8fIbFLkNXaw A==;
X-CSE-ConnectionGUID: FwxQO+H2S6uKw42YWaJZiQ==
X-CSE-MsgGUID: k54CeEzdTLalBpWap+nkJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64746239"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="64746239"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:41:54 -0700
X-CSE-ConnectionGUID: EN5sXmPaSXC6AQooiIyKzw==
X-CSE-MsgGUID: QM5GeZ8YQlKHf7DM2hpMPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176722594"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:41:53 -0700
Date: Tue, 23 Sep 2025 17:41:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/5] drm/i915/irq: abstract
 i9xx_display_irq_enable_mask()
Message-ID: <aNKxrt_6SqRxtZw4@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
 <dd7cd63a4019ff24098d565b67ea827df6b9ed45.1758637773.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd7cd63a4019ff24098d565b67ea827df6b9ed45.1758637773.git.jani.nikula@intel.com>
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

On Tue, Sep 23, 2025 at 05:31:06PM +0300, Jani Nikula wrote:
> Figure out the enable mask for display things in display code. Reuse the
> same function for both i915 and i965 code, the end result remains the
> same.
> 
> This removes a pair of DISPLAY_VER() and HAS_HOTPLUG() checks from core
> irq code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display_irq.h |  1 +
>  drivers/gpu/drm/i915/i915_irq.c                  | 16 ++--------------
>  3 files changed, 19 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index c6f367e6159e..4d51900123ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1900,6 +1900,22 @@ void i9xx_display_irq_reset(struct intel_display *display)
>  	i9xx_pipestat_irq_reset(display);
>  }
>  
> +u32 i9xx_display_irq_enable_mask(struct intel_display *display)
> +{
> +	u32 enable_mask;
> +
> +	enable_mask = I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
> +		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT;
> +
> +	if (DISPLAY_VER(display) >= 3)
> +		enable_mask |= I915_ASLE_INTERRUPT;
> +
> +	if (HAS_HOTPLUG(display))
> +		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
> +
> +	return enable_mask;
> +}
> +
>  void i915_display_irq_postinstall(struct intel_display *display)
>  {
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index cee120347064..e44d88e0d7e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -61,6 +61,7 @@ void vlv_display_irq_reset(struct intel_display *display);
>  void gen8_display_irq_reset(struct intel_display *display);
>  void gen11_display_irq_reset(struct intel_display *display);
>  
> +u32 i9xx_display_irq_enable_mask(struct intel_display *display);
>  void i915_display_irq_postinstall(struct intel_display *display);
>  void i965_display_irq_postinstall(struct intel_display *display);
>  void vlv_display_irq_postinstall(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 04de02fc08d9..f9fbb88b9e26 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -895,17 +895,9 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i9xx_error_mask(dev_priv));
>  
> -	enable_mask =
> -		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
> -		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
> +	enable_mask = i9xx_display_irq_enable_mask(display) |
>  		I915_MASTER_ERROR_INTERRUPT;
>  
> -	if (DISPLAY_VER(display) >= 3)
> -		enable_mask |= I915_ASLE_INTERRUPT;
> -
> -	if (HAS_HOTPLUG(display))
> -		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
> -
>  	dev_priv->gen2_imr_mask = ~enable_mask;
>  
>  	enable_mask |= I915_USER_INTERRUPT;
> @@ -1010,11 +1002,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i965_error_mask(dev_priv));
>  
> -	enable_mask =
> -		I915_ASLE_INTERRUPT |
> -		I915_DISPLAY_PORT_INTERRUPT |
> -		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
> -		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
> +	enable_mask = i9xx_display_irq_enable_mask(display) |
>  		I915_MASTER_ERROR_INTERRUPT;
>  
>  	dev_priv->gen2_imr_mask = ~enable_mask;
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel

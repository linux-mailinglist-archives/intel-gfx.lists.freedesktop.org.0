Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0457EA28A31
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 13:24:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E797E10E1CE;
	Wed,  5 Feb 2025 12:24:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXkswN4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3D710E1CE;
 Wed,  5 Feb 2025 12:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738758288; x=1770294288;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=LlYR1z/i3XoXJ9jHsaJTcqPAZvQ695GcULRlAVAUOgo=;
 b=FXkswN4UeIZhFej1pZJ/hyL0B2xE5jQYzjtx0j/0HTaPfBd3paB5fshP
 TLyxZ0PBMo7+q+InTNnCa3rwHt5zjQbyV+rRBHitGDrXCnI5RTicN/wPA
 9vUQ+ZsS8CpxeOL5LpgabJB4VuV7AI0T0i+97uzkA69D75vT+q2IGUub1
 L3mkL16JKrZmkNxZthqzx5Pw/r0QPOmzXLZdGChUSdCSgP4Or8s2W7Qby
 GCKAQPKmwE0S7aNZTnf2j7gf8H0Tu++GOgJVR30HXsMYjlODwScOBlmn5
 5tIiDi84PdELfnSU8VewXqRuNRufPejbhI4ylscspm/9dcC0CRhMb4med w==;
X-CSE-ConnectionGUID: RqCzSuynSrOlcLuaJb5c1A==
X-CSE-MsgGUID: LtevRIa9TkyUIXEf8OTpMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39019864"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39019864"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:24:48 -0800
X-CSE-ConnectionGUID: It2+LLILS8qiAGqzgXY5sw==
X-CSE-MsgGUID: ziIFTdxwR4udYFdGETrN1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111465946"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:24:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/17] drm/i915/ddi: Simplify the port disabling via
 DDI_BUF_CTL
In-Reply-To: <20250129200221.2508101-7-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-7-imre.deak@intel.com>
Date: Wed, 05 Feb 2025 14:24:41 +0200
Message-ID: <87r04c4m0m.fsf@intel.com>
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
> A port can be disabled only via a modeset (or during HW state
> sanitization) when the port is enabled. Thus it's not required to check
> the port's enabled state before disabling it. In any case if the port
> happened to be disabled, the following disabling would be just a nop and
> waiting for the buffer's idle state should succeed. Simplify the
> disabling sequence accordingly.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 23 +++++------------------
>  1 file changed, 5 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3138dc4034797..24c56d2aa5f31 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3062,17 +3062,12 @@ static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
> -	u32 val;
>  
>  	/* 3.b Clear DDI_CTL_DE Enable to 0. */
> -	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> -	if (val & DDI_BUF_CTL_ENABLE) {
> -		val &= ~DDI_BUF_CTL_ENABLE;
> -		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
> +	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
>  
> -		/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
> -		mtl_wait_ddi_buf_idle(dev_priv, port);
> -	}
> +	/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
> +	mtl_wait_ddi_buf_idle(dev_priv, port);
>  
>  	/* 3.d Disable D2D Link */
>  	mtl_ddi_disable_d2d_link(encoder);
> @@ -3089,15 +3084,8 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
> -	bool wait = false;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> -	if (val & DDI_BUF_CTL_ENABLE) {
> -		val &= ~DDI_BUF_CTL_ENABLE;
> -		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
> -		wait = true;
> -	}
> +	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state))
>  		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> @@ -3105,8 +3093,7 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
>  
>  	intel_ddi_disable_fec(encoder, crtc_state);
>  
> -	if (wait)
> -		intel_wait_ddi_buf_idle(dev_priv, port);
> +	intel_wait_ddi_buf_idle(dev_priv, port);
>  }
>  
>  static void intel_disable_ddi_buf(struct intel_encoder *encoder,

-- 
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AA3A28AA2
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 13:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E1C10E79E;
	Wed,  5 Feb 2025 12:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AB0HqZYT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D0810E798;
 Wed,  5 Feb 2025 12:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738759560; x=1770295560;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=7zwB82tk7wQsis42j1KX+83tMmt+r9CkZNdLK3uAcwI=;
 b=AB0HqZYT/Z8aWBn2N0nv6T7KDPqAlm0mJXOR+LuoG8k0RluEol7PIw9U
 uR1V7A/4HoMvNK46LOF2SKRZ5OhfKxuEPlO8rbuqGflaqor4qnNnzgNhN
 hxH8WaHnqbq3eRHLn4oPlg5REWaMlVejlIxiZVtPmsJ/J6DCae7P8JEGu
 LTjVQUwZm2lpIXBuS5L3Z4vGEAFNnjIVCLY6i7BlgLaFFwoz+4AaBgBAl
 HoaCpQ13z5YNdjEEJ/wOg0lI8FLWeeur3/fj8JxYNZGSrNohOMsysQTVN
 Fxic6M1LalKVhVzaHCAFtsskPbMgtbYglhgW/FSRph+xt5xUCotXKWE5l A==;
X-CSE-ConnectionGUID: zv8H24JKQlmx4JFQkCR/6A==
X-CSE-MsgGUID: ceLTkZ9GTom4Q5Hep1Y27A==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50310928"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="50310928"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:46:00 -0800
X-CSE-ConnectionGUID: C3VG6pVMQcm93atHY8W16g==
X-CSE-MsgGUID: hEMJ8aKBSdqrR2nxAcdOkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="110871397"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:45:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/17] drm/i915/ddi: Unify the platform specific
 functions disabling a port
In-Reply-To: <20250129200221.2508101-10-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-10-imre.deak@intel.com>
Date: Wed, 05 Feb 2025 14:45:54 +0200
Message-ID: <87ikpo4l19.fsf@intel.com>
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
> The functions disabling a port for MTL+ and earlier platforms only
> differ by an extra step on MTL+ (to disable the D2D link) and the point
> at which the port's idle state is waited for. Combine the two functions
> accounting for the above differences, removing the duplication.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 43 ++++--------------------
>  1 file changed, 7 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 07188606a0177..73702ccbb3773 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3057,58 +3057,29 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
>  			port_name(port));
>  }
>  
> -static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state)
> +static void intel_disable_ddi_buf(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
>  
> -	/* 3.b Clear DDI_CTL_DE Enable to 0. */
>  	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
>  
> -	/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
> -	intel_wait_ddi_buf_idle(dev_priv, port);
> +	if (DISPLAY_VER(display) >= 14)
> +		intel_wait_ddi_buf_idle(dev_priv, port);
>  
> -	/* 3.d Disable D2D Link */
>  	mtl_ddi_disable_d2d_link(encoder);
>  
> -	/* 3.e Disable DP_TP_CTL */
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
>  			     DP_TP_CTL_ENABLE, 0);
>  	}
> -}
> -
> -static void disable_ddi_buf(struct intel_encoder *encoder,
> -			    const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	enum port port = encoder->port;
> -
> -	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
> -
> -	if (intel_crtc_has_dp_encoder(crtc_state))
> -		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> -			     DP_TP_CTL_ENABLE, 0);
>  
>  	intel_ddi_disable_fec(encoder, crtc_state);
>  
> -	intel_wait_ddi_buf_idle(dev_priv, port);
> -}
> -
> -static void intel_disable_ddi_buf(struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -
> -	if (DISPLAY_VER(dev_priv) >= 14) {
> -		mtl_disable_ddi_buf(encoder, crtc_state);
> -
> -		/* 3.f Disable DP_TP_CTL FEC Enable if it is needed */
> -		intel_ddi_disable_fec(encoder, crtc_state);
> -	} else {
> -		disable_ddi_buf(encoder, crtc_state);
> -	}
> +	if (DISPLAY_VER(display) < 14)
> +		intel_wait_ddi_buf_idle(dev_priv, port);
>  
>  	intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
>  }

-- 
Jani Nikula, Intel

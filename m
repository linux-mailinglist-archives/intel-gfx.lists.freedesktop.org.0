Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F969606FE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 12:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4848110E07A;
	Tue, 27 Aug 2024 10:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mylGgqy0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4137310E07A
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 10:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724753394; x=1756289394;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RB8RTLJcS7iVNaVKjJksv/QHxVkn18kDhBuHuCgckks=;
 b=mylGgqy0zM/+WDscws8kIRRzQqulNLPtld+UI7dziHJxpSbDvdc+Us7d
 sfoB5keFFXrK2KHPHbnK3m80f6wYhvwBrr4TdHsnqWVdE3V+IB+32i3oJ
 Aws72AoUrghSDWmBNG8fMqS++BFVCLMQkx6hsRFly5xSAkTRmlFYE8iqh
 DKsr9nxtBeCXg7bSr7lHgbkueOu/s7XmzgG9bePhxGxByDJvTaFpchNgJ
 eGVxH4AqTfVJkLvg8xulLOe1pSyvK+7t817nxIUZgNiYfnyVnFSKrPYPE
 0K44/bfxQ71qp0zO+Gv+7LcfbYGU0ZTEzQ4gT/qlHA2leGPqXZJlUbp5b A==;
X-CSE-ConnectionGUID: vOEaLEinREiL0ic/r9jVxA==
X-CSE-MsgGUID: PiZOuJVgRAOJbiwUXhWDGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23345657"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="23345657"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 03:09:54 -0700
X-CSE-ConnectionGUID: 0awq6KEuS/qDpfh+0gYdXQ==
X-CSE-MsgGUID: 2CWPTiVTQPOoLHtklbCeJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="93609606"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO [10.245.244.40])
 ([10.245.244.40])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 03:09:51 -0700
Message-ID: <8e0e10a9-fd2e-4452-8a12-ba68e522a418@linux.intel.com>
Date: Tue, 27 Aug 2024 12:09:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: use old bpp as a base when modeset is
 not allowed
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
References: <20240826104132.966597-1-jouni.hogander@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240826104132.966597-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

We shouldn't have code acting differently whether modesets are allowed,
I think I'm missing some context here?

Cheers,
~Marten

Den 2024-08-26 kl. 12:41, skrev Jouni Högander:
> We are currently observing failure on refresh rate change on VRR setup if
> full modeset is not allowed. This is caused by the mismatch in bpp
> configured by GOP and bpp value calculated by our driver. Changing bpp to
> value calculated by our driver would require full mode set.
> 
> We don't have mechanism to communicate current bpp to userspace ->
> Userspace can't request to use current bpp. Changing bpp means full
> modeset. This becomes a problem when userspace haven't allowed full mode
> set.
> 
> Complete solution here would mean adding mechanism to communicate current
> bpp to userspace. User space should use this bpp to avoid changing bpp if
> it wants to avoid full mode set.
> 
> Tackle this for now in our driver by using existing bpp if full modeset is
> not allowed.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++------
>  1 file changed, 23 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9049b9a1209d8..7b805998b280a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4385,21 +4385,34 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>  			  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct intel_crtc_state *crtc_state =
> +	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_crtc_state *old_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *connector_state;
>  	int bpp, i;
>  
> -	if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -	    IS_CHERRYVIEW(dev_priv)))
> -		bpp = 10*3;
> -	else if (DISPLAY_VER(dev_priv) >= 5)
> -		bpp = 12*3;
> -	else
> -		bpp = 8*3;
> +	/*
> +	 * TODO: We don't have mechanism to communicate current bpp to
> +	 * userspace -> Userspace can't request to use current bpp. Changing bpp
> +	 * means full modeset. This becomes a problem when userspace wants to
> +	 * avoid full modeset. Tackle this on our driver by using existing bpp
> +	 * if full modeset is not allowed.
> +	 */
> +	if (!state->base.allow_modeset) {
> +		bpp = old_crtc_state->pipe_bpp;
> +	} else {
> +		if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> +		     IS_CHERRYVIEW(dev_priv)))
> +			bpp = 10 * 3;
> +		else if (DISPLAY_VER(dev_priv) >= 5)
> +			bpp = 12 * 3;
> +		else
> +			bpp = 8 * 3;
> +	}
>  
> -	crtc_state->pipe_bpp = bpp;
> +	new_crtc_state->pipe_bpp = bpp;
>  
>  	/* Clamp display bpp to connector max bpp */
>  	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> @@ -4408,7 +4421,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>  		if (connector_state->crtc != &crtc->base)
>  			continue;
>  
> -		ret = compute_sink_pipe_bpp(connector_state, crtc_state);
> +		ret = compute_sink_pipe_bpp(connector_state, new_crtc_state);
>  		if (ret)
>  			return ret;
>  	}


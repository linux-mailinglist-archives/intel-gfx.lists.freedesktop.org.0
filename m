Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEDBCF3A1D
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 13:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C62C10E3D1;
	Mon,  5 Jan 2026 12:56:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VR5OajR9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1138610E3C8;
 Mon,  5 Jan 2026 12:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767617817; x=1799153817;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=y9jviwOC0b5Pl0QCngSd3okDONyHj1+EbhQlYxiT4F0=;
 b=VR5OajR96ydbb3zNy3bRm/EkhuLGMnHVR3iWTpPp73JZRNVKwCmXoc+P
 aJJMacDwtVz1SU1OlUE+twdtgzqTDF6mROhXjlzwDAD1V7KRKPVEq2ZIH
 2d2A4q9Hb5CXYEbVc8To4YcTEO0NK0A8G6d6WXJ0Q9Y0CyYcGLB8OQXHM
 +cwgFZK5cvsLEaMkwo7ou/f0U+3R8MSiXJrws5MoUTTUsNqozs3/9MzUQ
 +9F2pRU6Ovp5zsEcyPxwCqQ8Vj6c1zPizxHPy/zEiSRPPp1W1IdNQIFKY
 JVhG+Pn9Jr7ZnDnBqKS8qqDiWiLdaBbvngfwg62VGVQCpbNFuw9WLHrgz g==;
X-CSE-ConnectionGUID: 2WdUXIQpQuKTPQzvqTihVg==
X-CSE-MsgGUID: wWmpFUHSThmqLlrGQz9biA==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69030974"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69030974"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:56:57 -0800
X-CSE-ConnectionGUID: 01FwwsK/Tau7uaPaiQeXgA==
X-CSE-MsgGUID: 8QGe72H4Q5i96ZtW3lmu1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="225917737"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.3])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:56:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: Re: [PATCH 8/9] drm/i915/display: Add intel_dc3co_can_enable() helper
In-Reply-To: <20251209113332.2770263-9-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-9-dibin.moolakadan.subrahmanian@intel.com>
Date: Mon, 05 Jan 2026 14:56:50 +0200
Message-ID: <df369eb61d6d3d87a5bcd0d295ad57af65a55657@intel.com>
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

On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> Introduce a new helper that validates whether DC3CO can be enabled
> based on both allow  and source.
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c     |  2 +-
>  3 files changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b14a1c9f80bd..9f9ba58371ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6295,6 +6295,15 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
>  	return 0;
>  }
>  
> +bool intel_dc3co_can_enable(struct intel_display *display)
> +{
> +	/*
> +	 * ToDo - Check CMTG enabled
> +	 * ToDo - Check flipq enabled
> +	 */
> +	return (display->power.dc3co_allow && display->power.dc3co_source);
> +}
> +

This doesn't belong in intel_display.[ch].

>  bool intel_dc3co_allowed(struct intel_display *display)
>  {
>  	return display->power.dc3co_allow;
> @@ -7683,7 +7692,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		 */
>  		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
>  	}
> -	if (intel_dc3co_allowed(display))
> +	if (intel_dc3co_can_enable(display))
>  		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
>  	else
>  		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 87bbf1f66209..f704cce4f1d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -564,4 +564,5 @@ int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>  bool intel_dc3co_allowed(struct intel_display *display);
>  void intel_dc3co_source_set(struct intel_display *display, enum intel_dc3co_source source);
>  void intel_dc3co_source_unset(struct intel_display *display, enum intel_dc3co_source source);
> +bool intel_dc3co_can_enable(struct intel_display *display);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index d4c5dc6dcc82..18bf45455ea2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -3909,7 +3909,7 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>  		return;
>  	}
>  
> -	if (intel_dc3co_allowed(display))
> +	if (intel_dc3co_can_enable(display))
>  		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>  						DC_STATE_EN_UPTO_DC3CO);
>  	else

-- 
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3130BB8FD8C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 11:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199B810E402;
	Mon, 22 Sep 2025 09:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNkuxBYB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24B510E3FE;
 Mon, 22 Sep 2025 09:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758534685; x=1790070685;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xuVp8O5dSpVTnZ8SDOTOLpCFCE0lpnN1zcJhGOj3A6w=;
 b=XNkuxBYBXylHkj9W//H70z9bNqadf1fNgI0kMy9onhZ4W8mAeFLxHfQs
 7Jj6LLZvWLeILJjXJA6rp62qcMAAeFDmbjGbPay+oQsJPWkzV+XYeBYpA
 d2i2L5zj2GSRqkrFWuZkx+0vhC3TiD2y4YW3/K1ldU/ApNPtWEQGCA/NJ
 APguIgkr3v0HlwxD3eTOhdUJSG6R1e9YDKXMKtYyhSgMmc0CxFGSYkyVE
 G9qeJCZRq/JwdAr/zHeJrkmwE19QZ5qQEGLaUuowikQ3oeIa8kFmmuHZ4
 LDI3Ew/2g/jx6Ky4cOP3KKAIUUuaqrsBamQ35iqTwrMzwIidfeIzEr90M w==;
X-CSE-ConnectionGUID: xHhMqRfNQxCoUxF9eJ9hEg==
X-CSE-MsgGUID: qQ+uL45IQKep4vY4O/G4bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="86228982"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="86228982"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 02:51:24 -0700
X-CSE-ConnectionGUID: 7751AFkOTA+EwDfZ1rfdvg==
X-CSE-MsgGUID: 02GGl00yQKKCKdJPuoMbkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="176502958"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 02:51:22 -0700
Date: Mon, 22 Sep 2025 12:51:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/9] drm/i915/psr:
 s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
Message-ID: <aNEcF0wPz3UBypxR@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-2-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:27AM +0530, Ankit Nautiyal wrote:
> Rename intel_psr_min_vblank_delay to intel_psr_min_set_context_latency
> to reflect that it provides the minimum value for 'Set context
> latency'(SCL or Window W2) for PSR/Panel Replay to work correctly across
> different platforms.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c     | 6 +++---
>  drivers/gpu/drm/i915/display/intel_psr.h     | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 18b9baa96241..679c2a9baaee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2369,7 +2369,7 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
>  	if (!HAS_DSB(display))
>  		return 0;
>  
> -	vblank_delay = max(vblank_delay, intel_psr_min_vblank_delay(crtc_state));
> +	vblank_delay = max(vblank_delay, intel_psr_min_set_context_latency(crtc_state));
>  
>  	return vblank_delay;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 01bf304c705f..49ccd0864c55 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2360,12 +2360,12 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
>  }
>  
>  /**
> - * intel_psr_min_vblank_delay - Minimum vblank delay needed by PSR
> + * intel_psr_min_set_context_latency - Minimum 'set context latency' lines needed by PSR
>   * @crtc_state: the crtc state
>   *
> - * Return minimum vblank delay needed by PSR.
> + * Return minimum SCL lines/delay needed by PSR.
>   */
> -int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state)
> +int intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 077751aa599f..9147996d6c9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -77,7 +77,7 @@ void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
>  void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
>  					  struct intel_atomic_state *state,
>  					  struct intel_crtc *crtc);
> -int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state);
> +int intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state);
>  void intel_psr_connector_debugfs_add(struct intel_connector *connector);
>  void intel_psr_debugfs_register(struct intel_display *display);
>  bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

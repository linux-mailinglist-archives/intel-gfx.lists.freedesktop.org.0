Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2278B8FEB2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36CE110E404;
	Mon, 22 Sep 2025 10:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZCEUiMx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B9F10E403;
 Mon, 22 Sep 2025 10:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758535671; x=1790071671;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=M7H5GIzTLPxgpRNsdp4RT3SaUuFAxbSpl8JCTyDwwM0=;
 b=FZCEUiMxkNpFZdD3X3eXG8NRs+suVRadwg8oBf/rktN1BmHuv5EqUj3D
 LRU4R8LnfAc07g25PPYVG61k4OI/itWepoE3qqleoR5otaebMknKV2We2
 IklA21YZvI7xtAvCGIHpSftA/2IUJed1MAyD0wffmA+AIUIxQ7O10lWxv
 h5ahnLLnYi65I073YYiv5RgX9ifRkfEUmcI9HwTjpwDN4ET4ojPZXulMl
 jJnep/LQVaGooeWLDwpyEn5twPbuRBGWvFmf2WYrfwzYj/hyy7aSWu2Tp
 /1S76X7CBNl6kFDQhJBv5m0qBh/3cEKSf2nrIyU6qT29isMznpf0rk1Fk w==;
X-CSE-ConnectionGUID: /gFKDDECS8eZCJhTNSYTmw==
X-CSE-MsgGUID: vmnrzhkgTH2isKP2iLD9Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="72218853"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="72218853"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:07:50 -0700
X-CSE-ConnectionGUID: mwSeibikSk+fprnZjfIiZQ==
X-CSE-MsgGUID: 565bQkh2SoOwVM5FXa0m/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="180851305"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:07:49 -0700
Date: Mon, 22 Sep 2025 13:07:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/9] drm/i915/display: Use VBLANK_START to get the vblank
 delay for TGL
Message-ID: <aNEf8XAdjowLeBUk@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-4-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:29AM +0530, Ankit Nautiyal wrote:
> For TGL the TRANS_SET_CONTEXT_LATENCY doesn't exist to account for SCL.
> However, the VBLANK_START-VACTIVE diffence plays an identical role here ie.
> it can be used to create the SCL window ahead of the undelayed vblank.
> 
> While readback there is no specific register to read out the SCL, so use
> the same helper intel_crtc_compute_scl() and reduce the vblank_start by
> this amount.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5a7794387ea2..455bbebb50a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2822,6 +2822,16 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  		adjusted_mode->crtc_vblank_end += 1;
>  	}
>  
> +	if (DISPLAY_VER(display) == 12) {
> +		/*
> +		 * There is no specific register for SCL for TGL.
> +		 * Derive the value from the helper intel_crtc_set_context_latency().
> +		 * crtc_vblank_start needs to be reduced with this amount.
> +		 */
> +		pipe_config->set_context_latency = intel_crtc_set_context_latency(pipe_config);

That thing *computes* the SCL, it doesn't teel us what the
current hw value is.

> +		adjusted_mode->crtc_vblank_start -= pipe_config->set_context_latency;
> +	}
> +
>  	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
>  		pipe_config->set_context_latency =
>  			intel_de_read(display,

I think this whole thing needs to look something like this:

if (DISPLAY_VER >= 13 && !dsi) {
	set_context_latency = read(TRANS_SET_CONTEXT_LATENCY);
	crtc_vblank_start = crtc_vdisplay + set_set_context_latency;
} else if (DISPLAY_VER >= 12) {
	set_context_latency = crtc_vblank_start - crtc_vdisplay;
}

That'll also cover DSI (not that the DSI code itself is actually
ready for SCL...).

And I think you need to squash this into the set_context_latency
patch. Otherwise we'll get state checker mismatches on TGL in
between.

-- 
Ville Syrjälä
Intel

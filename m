Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F154896BEE2
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 15:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A51B10E4C8;
	Wed,  4 Sep 2024 13:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTjC4hA1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64EAA10E4C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725457403; x=1756993403;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tzd/P0YWfw4BHHA9ePjZl0beAHP66e3SWz314RTd1gc=;
 b=WTjC4hA1yZFxY2oS4rTvSWLEmKLPTfZmBnmsSswl/eUuS78T7wzpNc+u
 nm3qKvtrPo403zpUZcSqO6DVjiepAiDupHcbAMAZxt1NAq3uSs+/9YQmD
 +gbI5CWHTeT3TAKRmRPMb/hkggl+qas3m9FVbi82SVyXpwyX2/Tz05hoN
 xOSE/c+cL6Q/lhLjjLlTqd+TJGFUuyfLq31gCjirO2rgo+BA1Gu8f3qlN
 IzRRay+Kj7KTH1ZhIpTJJk3SUhZgrlWMpqGeDUbW81gWGJ1lnMHikRpcI
 LBU8td0j1Ka8+ykRJGtVzrpzP//OTZpXJztw740IUlGMtQjaq6qCk2b5m Q==;
X-CSE-ConnectionGUID: 00oHR1wgQx2OHYIXO69ItA==
X-CSE-MsgGUID: +YdYVrGISlGWgGdjZKsCUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24070687"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="24070687"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:43:23 -0700
X-CSE-ConnectionGUID: 4tkTDh4CSgKG9yGrP13wFw==
X-CSE-MsgGUID: GIq1tpR2QaulZQDXYfpPBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65322587"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Sep 2024 06:43:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2024 16:43:19 +0300
Date: Wed, 4 Sep 2024 16:43:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: pass display to
 intel_crtc_for_pipe()
Message-ID: <Zthj9wYWT5ESIGEX@intel.com>
References: <20240904130633.3831492-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240904130633.3831492-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 04, 2024 at 04:06:32PM +0300, Jani Nikula wrote:
> Convert the intel_crtc_for_pipe() struct drm_i915_private parameter to
> struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c          | 15 ++++++++++-----
>  .../gpu/drm/i915/display/intel_atomic_plane.c   |  4 ++--
>  drivers/gpu/drm/i915/display/intel_cdclk.c      |  6 ++++--
>  drivers/gpu/drm/i915/display/intel_crt.c        |  3 ++-
>  drivers/gpu/drm/i915/display/intel_crtc.c       |  8 +++++---
>  drivers/gpu/drm/i915/display/intel_crtc.h       |  3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c    | 17 ++++++++++-------
>  .../gpu/drm/i915/display/intel_display_driver.c |  3 ++-
>  .../gpu/drm/i915/display/intel_display_irq.c    |  9 ++++++---
>  .../gpu/drm/i915/display/intel_display_trace.h  | 15 ++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll.c       |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dsb.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c        |  3 +--
>  drivers/gpu/drm/i915/display/intel_fdi.c        | 10 ++++++----
>  .../gpu/drm/i915/display/intel_fifo_underrun.c  | 15 ++++++++++-----
>  drivers/gpu/drm/i915/display/intel_link_bw.c    |  3 +--
>  .../gpu/drm/i915/display/intel_modeset_setup.c  | 12 ++++++++----
>  .../gpu/drm/i915/display/intel_sprite_uapi.c    |  3 ++-
>  drivers/gpu/drm/i915/display/skl_watermark.c    |  7 ++++---
>  19 files changed, 88 insertions(+), 53 deletions(-)
> 
<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1b578cad2813..32e0f2907899 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -48,12 +48,12 @@ struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
>  	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
>  }
>  
> -struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
> +struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
>  				       enum pipe pipe)
>  {
>  	struct intel_crtc *crtc;
>  
> -	for_each_intel_crtc(&i915->drm, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		if (crtc->pipe == pipe)
>  			return crtc;
>  	}
> @@ -69,7 +69,9 @@ void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
>  void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
>  				     enum pipe pipe)
>  {
> -	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
> +	struct intel_display *display = &i915->display;
> +

Stray newline.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
>  
>  	if (crtc->active)
>  		intel_crtc_wait_for_next_vblank(crtc);

-- 
Ville Syrjälä
Intel

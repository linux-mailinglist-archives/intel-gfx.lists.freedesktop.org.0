Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41E8A74862
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 11:35:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D73810E9D1;
	Fri, 28 Mar 2025 10:35:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ir0Objj8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC45310E9D4;
 Fri, 28 Mar 2025 10:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743158138; x=1774694138;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6AKUlSb+rhRNccBUYNa+2qrZCV54WiaibZ+kxy1lXH8=;
 b=ir0Objj8ilJCWSDC12Uh3EB3GToiXBGKybpaPXUyYQuiRe9cJPdCygLq
 hQvxcaOfRtFFESn57s6J4qoAnsUbuEF238kt4yPEwX28XOkRRgZDRqEWw
 xvXJ/CTLtu8hhbVmWJBFgkO039L1dffMHKGm4nrtXZ3DQbbFlWr9TkbZC
 6H7IzIJimJma3AaqmQiFBzFcRVgXcWKhVWz81/D2/uy3j7xK06mZy3jVl
 uYy72fq2w7wPMD5b7GQ/Ry985J+rkkCq3YwXLNIZrIYrWiBe3lN9bT8UL
 BuT054b4dhStoponBzUMWjPWBefLIuL3//gztK3VY9u7JSgUC4cu6SCYA g==;
X-CSE-ConnectionGUID: b4XfZzJ/Q52HiPB06PRMzw==
X-CSE-MsgGUID: 7bNHWafQT1GuRpHLhpsU7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55883923"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="55883923"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 03:35:38 -0700
X-CSE-ConnectionGUID: u7l1eljMTLiCGQqZSJwEbw==
X-CSE-MsgGUID: U1LIFc+sSRKErNYmS3SoBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="130620028"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 28 Mar 2025 03:35:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Mar 2025 12:35:34 +0200
Date: Fri, 28 Mar 2025 12:35:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 1/2] drm/i915/display: Introduce transcoder_has_vrr()
 helper
Message-ID: <Z-Z7dnm3-ItbhNIv@intel.com>
References: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
 <20250327144629.648306-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250327144629.648306-2-ankit.k.nautiyal@intel.com>
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

On Thu, Mar 27, 2025 at 08:16:28PM +0530, Ankit Nautiyal wrote:
> Introduce a new helper to check transcoder_has_vrr() and use
> that to exclude transcoders which do not support VRR.
> 
> v2: Include HAS_VRR into the helper. (Ville)
> v3: Drop the usage in places where not applicable. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ee7812126129..b82b3d63be73 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2625,6 +2625,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  		      PIPE_LINK_N2(display, transcoder));
>  }
>  
> +static bool
> +transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
> +}
> +
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -3908,7 +3917,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	    DISPLAY_VER(display) >= 11)
>  		intel_get_transcoder_timings(crtc, pipe_config);
>  
> -	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
> +	if (transcoder_has_vrr(pipe_config))
>  		intel_vrr_get_config(pipe_config);
>  
>  	intel_get_pipe_src_size(crtc, pipe_config);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

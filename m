Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CB9A74865
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 11:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEDF10E9D5;
	Fri, 28 Mar 2025 10:36:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3fipz0B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1EF10E9D4;
 Fri, 28 Mar 2025 10:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743158171; x=1774694171;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3CUsI6/oe0Vtr+g4mKkWMaqpYpHZuilM8nXRWykt5BM=;
 b=Y3fipz0BkyTa3RSEVUnRRTg1LKTRe6vM2ochNNND4X9FxpPHBcOhU70E
 /RRY5UPNOTY2CyMpTspcSW8lje6djrGrjEPN+S0bdGSzFnCJA3lTSpX6r
 r7oLKSTRP7lQV1MKdPIG/t8C/QACAbmNKFyEQZmrUHhjl/jxCUohEsA+Y
 0pU9As+8/h1PcNqNAzSW9JwTbZyXcFb1QSkTxy4DInxH5ZMdT0X/D+c6m
 Y+LT3LNDims8nblldmssSNB49Or54wZa6Lt2UnHZNoMae7gWVIf4UzJKq
 HtadUlweyT3YaFgFJ3ijFitJemAh+rTQc4MYVBzGgKANqGuSaI60JCVtJ g==;
X-CSE-ConnectionGUID: 8xHRmlClQPK8hXYnmbO3sA==
X-CSE-MsgGUID: KDipfYBmQrmxKKWfEJhNsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55883972"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="55883972"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 03:36:11 -0700
X-CSE-ConnectionGUID: fKqu6hccS5eq5dpaTfvrzw==
X-CSE-MsgGUID: w5ABdA+tSOubw36wkCOtFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="130620079"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 28 Mar 2025 03:36:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Mar 2025 12:36:07 +0200
Date: Fri, 28 Mar 2025 12:36:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Message-ID: <Z-Z7l789aSJdpDa3@intel.com>
References: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
 <20250327144629.648306-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250327144629.648306-3-ankit.k.nautiyal@intel.com>
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

On Thu, Mar 27, 2025 at 08:16:29PM +0530, Ankit Nautiyal wrote:
> For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> bits are not required. Since the support for these bits is going to
> be deprecated in upcoming platforms, avoid writing these bits for the
> platforms that do not use legacy Timing Generator.
> 
> Since for these platforms vrr.vmin is always filled with crtc_vtotal,
> use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.
> 
> v2: Avoid having a helper for manipulating VTOTAL register, and instead
> just make the change where required. (Ville)
> v3: Set crtc_vtotal instead of working with the bits directly (Ville).
> Use intel_vrr_vmin_vtotal() to set the vtotal during readout. (Ville)
> v4: Keep the reading part unchanged, and let it get overwritten for
> cases where we use vrr.vmin. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 10 ++++++++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b82b3d63be73..b447fca1c616 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2698,6 +2698,15 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>  
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not required. Since the support for these bits is going to
> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
> +	 * platforms that do not use legacy Timing Generator.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_vtotal = 1;
> +
>  	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> @@ -2758,6 +2767,15 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not required. Since the support for these bits is going to
> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
> +	 * platforms that do not use legacy Timing Generator.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_vtotal = 1;
> +
>  	/*
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 414f93851059..7359d66fc091 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -708,6 +708,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->vrr.vmin = intel_de_read(display,
>  						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>  
> +		/*
> +		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +		 * bits are not filled. Since for these platforms TRAN_VMIN is always
> +		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
> +		 * adjusted_mode.
> +		 */
> +		if (intel_vrr_always_use_vrr_tg(display))
> +			crtc_state->hw.adjusted_mode.crtc_vtotal =
> +				intel_vrr_vmin_vtotal(crtc_state);
> +
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =
>  				intel_de_read(display,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

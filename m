Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A16584F91B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 17:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1DE910F6B8;
	Fri,  9 Feb 2024 16:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4tG+LV7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D4F10F6B0
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 16:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707494597; x=1739030597;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dAXzWlZRz1lVjVxQkY1ZOLrnOSeeuNfEnk+KIykd1SE=;
 b=j4tG+LV7Hw26+dBAZyutm3upsjg0C8WIF+2bLOHSgI3R9nvd21wnA4Az
 GispcttzpTq3c6r1LDoVQ7CVb+8TMbn+4dbjC18FNjVewJzg9H2TztgUW
 SnrmXFfuNpivi2kY9nZ2KgokqU9JdFDhJbdPB4cnIRen1V/EDO/ddCxf/
 mPBuEDiDr1pIrlDQ/DKmgzr1tLWyfJpmVujYGm4688QIp6QVxn0KpiLZF
 rWaUe41NE/UqqEZ0ekbuRJGL+jNKYM9Z6F9uQfl3CXukrqvF/VitWVEoy
 dZDE/EPFIXHG2dJl6a4KYe6Gh25YcAmQ0KvBjdsT98Yri2RwfUzfGXS6T Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5302251"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5302251"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 08:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="825174151"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="825174151"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 08:03:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 18:03:13 +0200
Date: Fri, 9 Feb 2024 18:03:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jouni.hogander@intel.com,
 arun.r.murthy@intel.com
Subject: Re: [PATCH v2] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZcZMwWzHayyJqxEx@intel.com>
References: <20240209154300.2747529-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240209154300.2747529-1-animesh.manna@intel.com>
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

On Fri, Feb 09, 2024 at 09:13:00PM +0530, Animesh Manna wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> 
> HSD: 14015406119
> 
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index baf7354cb6e2..2e11629e4e9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -552,6 +552,19 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
>  		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
>  		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
> +
> +		/*
> +		 * WA: HSD-14015406119
> +		 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +		 * to at least a value of 1 when Panel Replay is enabled with VRR.
> +		 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +		 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +		 * by 1 if both are equal.
> +		 */
> +		if (DISPLAY_VER(i915) >= 13 && crtc_state->has_panel_replay &&
> +		    adjusted_mode.crtc_vblank_start == adjusted_mode.crtc_vdisplay)
> +			adjusted_mode.crtc_vblank_start += 1;

Wrong place. It needs to done during compute_config/etc.

> +
>  		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
>  	} else {
>  		mode_flags &= ~I915_MODE_FLAG_VRR;
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel

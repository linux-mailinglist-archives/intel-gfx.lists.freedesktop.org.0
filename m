Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0EEA5A1B2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD53010E4A6;
	Mon, 10 Mar 2025 18:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EHkwBqwN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BDF910E4A6;
 Mon, 10 Mar 2025 18:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741630252; x=1773166252;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VQf8F7kENif0CmRwT7adXBhS7vJCsEfXAcKCP0g8ufk=;
 b=EHkwBqwNLPjgnNvCLHoUPpVYnnLYxm9mI9fysaXbSLV7kGKynV9UHL4T
 E1i8Ibj3uhGWsUS+ktQtpQSbTktafCydtTH0uhNAsfR4exlO7WV/Ep8OQ
 CtMwcfxHQEHo08OlhwSOVBoF0X2PwX7+2Z/InEzOwKgbMoZgmELBOQIaQ
 CYoNkqKSv0SqXPMjIOVseEAXCgUMT81bTZOgbYZ0zTi3PiwAMU5zd6QRM
 wgXmUAUq8o2zYDdlHapNzYXVLtthodpmtvk72hVokIvdFpFONFEKa3II8
 vT3sJDaGPNSAq31/nIdGycAgQSYLt7TCw9iR+5zl3CXyYZlX+fhbhCdj7 w==;
X-CSE-ConnectionGUID: ZCcbpG1yRG+W34UQn/hTtQ==
X-CSE-MsgGUID: sKmrQrX7R6ilQMF1jOlROw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42674578"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42674578"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:10:52 -0700
X-CSE-ConnectionGUID: /bJGNHcuRvKgWv/9wFRtfg==
X-CSE-MsgGUID: DMyjN5vlTwux+cqdDWAqTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125293312"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:10:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:10:48 +0200
Date: Mon, 10 Mar 2025 20:10:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 19/21] drm/i915/vrr: Allow fixed_rr with pipe joiner
Message-ID: <Z88rKGqULpL7L6Zt@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-20-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310121615.1077079-20-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 10, 2025 at 05:46:13PM +0530, Ankit Nautiyal wrote:
> VRR with joiner is currently disabled as it still needs some work to
> correctly sequence the primary and secondary transcoders. However, we can
> still use VRR Timing generator in fixed refresh rate for joiner and since
> it just need to program vrr timings once and does not involve changing
> timings on the fly. We still need to skip the VRR and LRR for joiner.
> 
> To achieve this set vrr.in_range to 0 for joiner case, so that we do not
> try VRR and LRR for the joiner case.
> 
> v2: Avoid checks for secondary pipes, where not required. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b83b1c66c242..76398b3a9679 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -353,19 +353,23 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (!HAS_VRR(display))
>  		return;
>  
> -	/*
> -	 * FIXME all joined pipes share the same transcoder.
> -	 * Need to account for that during VRR toggle/push/etc.
> -	 */
> -	if (crtc_state->joiner_pipes)
> -		return;
> -
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
>  	crtc_state->vrr.in_range =
>  		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
>  
> +	/*
> +	 * Allow fixed refresh rate with VRR Timing Generator.
> +	 * For now set the vrr.in_range to 0, to allow fixed_rr but skip actual
> +	 * VRR and LRR.
> +	 * #TODO For actual VRR with joiner, we need to figure out how to
> +	 * correctly sequence transcoder level stuff vs. pipe level stuff
> +	 * in the commit.
> +	 */
> +	if (crtc_state->joiner_pipes)
> +		crtc_state->vrr.in_range = 0;

s/0/false/

> +
>  	vmin = intel_vrr_compute_vmin(crtc_state);
>  
>  	if (crtc_state->vrr.in_range) {
> @@ -488,6 +492,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;

This check is redundant due to the vrr.enable check above.

With those two issues sorted
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  	if (dsb)
>  		intel_dsb_nonpost_start(dsb);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

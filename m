Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 838DABCDB27
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 17:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1713610EC46;
	Fri, 10 Oct 2025 15:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eo9OFPvE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A77EF10EC45;
 Fri, 10 Oct 2025 15:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760108714; x=1791644714;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FiEWaBdWlm/3/IXPgHlLThzbeSPL+exj8rZTvkEURoI=;
 b=Eo9OFPvE2T6D6yHlroaN1WECG66RK1w26T1b49ttshmJzpQkATMp0+Wl
 99dpUpvJ50lld1iCgkGq8404sLG6aFtNzHROHD9MeG3NVr/Ud7wrijaJv
 u+wgr8y39OuLdgsihUQTZbGP3Plz5Z58Fh+UlDlwTNynfi6xdXeBj4ehU
 faUOzU/fQbZIb4XtZd3N1dUj5oIzDB9RvZSaUAEhHU2XAXAZIRXsTRjna
 ZDToOqus8HxsPu+1yWUaEif6YiEyMr4mfJShXNueGPBAZu8E2R357R/DC
 igAaGbFjpYMypKCOHdIxLAOhS0VSpDDzarmBmccG8S1ddWze44tNn3kZs A==;
X-CSE-ConnectionGUID: quKqDkF0SMCBV2xW2TeI2A==
X-CSE-MsgGUID: 7sipmSVNQ9ilYVyRGfVa/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="73016098"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="73016098"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 08:05:14 -0700
X-CSE-ConnectionGUID: VL+sNJFrRc2F1tngedoCRA==
X-CSE-MsgGUID: KgmKMA5YRVOn5aTSPJBE3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="180116888"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 08:05:12 -0700
Date: Fri, 10 Oct 2025 18:05:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/8] drm/i915/display: Add vblank_start adjustment logic
 for always-on VRR TG
Message-ID: <aOkgpe74FsEX8yi5@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251009090102.850344-8-ankit.k.nautiyal@intel.com>
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

On Thu, Oct 09, 2025 at 02:31:01PM +0530, Ankit Nautiyal wrote:
> As we move towards using a shorter, optimized guardband, we need to adjust
> how the delayed vblank start is computed.
> 
> Adjust the crtc_vblank_start using Vmin Vtotal - guardband only when
> intel_vrr_always_use_vrr_tg() is true.
> 
> This also paves way for guardband optimization, by handling the movement of
> the crtc_vblank_start for platforms that have VRR TG always active.
> 
> v2: Drop the helper and add the adjustment directly to
> intel_vrr_compute_guardband(). Ville
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 221b25832e56..5f9b8e5c48be 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -436,7 +436,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>  void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
> @@ -444,6 +444,10 @@ void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>  	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
>  					intel_vrr_max_guardband(crtc_state));
>  
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		adjusted_mode->crtc_vblank_start  =
> +			crtc_state->vrr.vmin - crtc_state->vrr.guardband;

Since this is for the fixed refresh rate timings I think we should use
adjusted_mode.crtc_vtotal here instead of vmin (yes the two should be
equivalent at least for now, but I think it's better to be consistent).

And this should be squashed with the readout equivalent to make sure
both sides stay in sync so there's no possibility of angering the state
checker by only having the changes on one side.

> +
>  	if (DISPLAY_VER(display) < 13)
>  		crtc_state->vrr.pipeline_full =
>  			intel_vrr_guardband_to_pipeline_full(crtc_state,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

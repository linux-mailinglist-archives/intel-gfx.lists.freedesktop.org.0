Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA3DA1BDC4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 22:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C1D10E18E;
	Fri, 24 Jan 2025 21:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CG7bNsr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0ECF10E198;
 Fri, 24 Jan 2025 21:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737753153; x=1769289153;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RXLBCHDVfVT1+eu+h1fWZjXceZN9QieduYDrv9Hg58Y=;
 b=CG7bNsr11i2P/6vwkMgYkJX0paC98nSUDb+6tBk3PFZhMF8FC9WhNZWx
 Lhnd7qg7OuVDs5DDUyDLWhIJbsUqUeOOwX6J+XQ8AXuh1gU3u8e0Q0jHh
 Pw5Qn97F8d2N2HtpMzrxpE//S6UG0d+znVYlmMlgFDtN6PfaaP33aLwp8
 Z3SFjF6kgHmY30jiCzqeDA5D/GljQZuAZDdkY+ZrL9COEzet4eMPa++QJ
 +MoLSI5JYzJxBop9a8vpUjzZF7bzMUG91fYvwUSKRZOyeRevcM3f2kwcl
 QcAPSNRbtXow8Eaow2lgGms0lDgwV01IJqeow+aefzbmxpju0eMHSgXNV Q==;
X-CSE-ConnectionGUID: BiI8InBXSwW5aZ/JYudOlg==
X-CSE-MsgGUID: MRGbQIgASXiXvSPNvENvtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38443682"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="38443682"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 13:12:33 -0800
X-CSE-ConnectionGUID: 2AVVaJ2tTOi/H+GPy7bYvg==
X-CSE-MsgGUID: R+JMdd7rTResEsvJ65yTVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="107992106"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 13:12:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 23:12:28 +0200
Date: Fri, 24 Jan 2025 23:12:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 20/35] drm/i915/vrr: Avoid sending PUSH when VRR TG is
 used with Fixed refresh rate
Message-ID: <Z5QCPJ5dCHuofJDB@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-21-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124150020.2271747-21-ankit.k.nautiyal@intel.com>
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

On Fri, Jan 24, 2025 at 08:30:05PM +0530, Ankit Nautiyal wrote:
> As per the spec, the PUSH enable must be set if not configuring for a
> fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).
> 
> v2: Use helper intel_vrr_use_push(). (Ville)
> v3: directly use the condition, instead of checking for VRR mode.
> 
> Bspec: 68925
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (v1)
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 65bbe40881d6..34e44cd52353 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -437,13 +437,18 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>  }
>  
> +static bool intel_vrr_use_push(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->vrr.flipline != crtc_state->vrr.vmax;
> +}

> +
>  void intel_vrr_send_push(struct intel_dsb *dsb,
>  			 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!intel_vrrtg_is_enabled(crtc_state))
> +	if (!intel_vrr_use_push(crtc_state))
>  		return;
>  
>  	if (dsb)
> @@ -462,7 +467,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!intel_vrrtg_is_enabled(crtc_state))
> +	if (!intel_vrr_use_push(crtc_state))
>  		return false;
>  
>  	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
> @@ -476,8 +481,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!intel_vrrtg_is_enabled(crtc_state))
>  		return;
>  
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> +	if (intel_vrr_use_push(crtc_state))
> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +			       TRANS_PUSH_EN);

What I saw on TGL and ADL is that if you don't enable PUSH then nothing
works. So I think we just want to have this enabled whenever the VRR
timing generator is enabled.

>  
>  	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
>  		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

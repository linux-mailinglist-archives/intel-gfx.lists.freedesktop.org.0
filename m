Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA2A38B1C
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C622810E59B;
	Mon, 17 Feb 2025 18:12:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3vYWqpj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21F1B10E59B;
 Mon, 17 Feb 2025 18:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739815978; x=1771351978;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6ZHZZbrTI4g9cvMlkEzVxdYZBul3PkmS3RPb3oUVdYU=;
 b=S3vYWqpjzLQrd4V9nwoQmoOZcjaAdnl7oEgi593SeJCjHMVeMXw5DKuY
 LbdZ6thTSgScShVbb+KjxmBui3c76k9Jv3E+PtsplN8/Xx6bH8Ii8flJd
 n58hBuArKxdh5zKKzTBEBVDXnpFgNRxeZAGsqYgdzTwYcoNw0YAQok8PY
 p9VOm4XoQB9rdedAluoG+1qSTj02hsUm6syH3CqDhmNcnqFBujkVAejbF
 DWLc60v2zzFvD5OcB9wjOVeA9snO6669zaF+UgnYsehd/FAGepEx5Qwgw
 zaEsMLJ6NQQEcvPTo/GaumejeUUxS4Qb67PqW8dLkl69572vZ9J7hsEob A==;
X-CSE-ConnectionGUID: m8YwxfG0R8Gi1dJIvgP08A==
X-CSE-MsgGUID: 0gM2Es7VRXmcOB2srX5/0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="57907309"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="57907309"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:12:58 -0800
X-CSE-ConnectionGUID: Ks9ZqgIAS/C2HhfrtOAfpA==
X-CSE-MsgGUID: i6kgJRVvS+KnNNfs3mUFqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114382860"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:12:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:12:54 +0200
Date: Mon, 17 Feb 2025 20:12:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 07/19] drm/i915/vrr: Prepare for fixed refresh rate timings
Message-ID: <Z7N8JhVO7cFezgyI@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250214121130.1808451-8-ankit.k.nautiyal@intel.com>
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

On Fri, Feb 14, 2025 at 05:41:17PM +0530, Ankit Nautiyal wrote:
> Currently we always compute the timings as if vrr is enabled.
> With this approach the state checker becomes complicated when we
> introduce fixed refresh rate mode with vrr timing generator.
> 
> To avoid the complications, instead of always computing vrr timings, we
> compute vrr timings based on uapi.vrr_enable knob.
> So when the knob is disabled we always compute vmin=flipline=vmax.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 54 ++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3bcf2a026ad3..a4ed102a2119 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -263,6 +263,35 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>  			intel_vrr_real_vblank_delay(crtc_state);
>  }
>  
> +static
> +int intel_vrr_fixed_rr_vmax(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
> +}
> +
> +static
> +int intel_vrr_fixed_rr_vmin(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return intel_vrr_fixed_rr_vtotal(crtc_state) -
> +		intel_vrr_flipline_offset(display);
> +}
> +
> +static
> +int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_fixed_rr_vtotal(crtc_state);
> +}
> +
> +static
> +void intel_vrr_prepare_fixed_timings(struct intel_crtc_state *crtc_state)
> +{
> +	crtc_state->vrr.vmax = intel_vrr_fixed_rr_vmax(crtc_state);
> +	crtc_state->vrr.vmin = intel_vrr_fixed_rr_vmin(crtc_state);
> +	crtc_state->vrr.flipline = intel_vrr_fixed_rr_flipline(crtc_state);

Same comment as to the previous patch: vblank delay is not a thing
at this point, so this needs to just use the actual timings without
any adjustments.

The rest of the patch looks fine.

> +}
> +
>  static
>  int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>  {
> @@ -343,6 +372,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		intel_vrr_compute_vrr_timings(crtc_state);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> +	else
> +		intel_vrr_prepare_fixed_timings(crtc_state);
>  
>  	if (HAS_AS_SDP(display)) {
>  		crtc_state->vrr.vsync_start =
> @@ -514,6 +545,13 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +		       crtc_state->vrr.vmin - 1);
> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +		       crtc_state->vrr.vmax - 1);
> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> +		       crtc_state->vrr.flipline - 1);
> +
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>  		       TRANS_PUSH_EN);
>  
> @@ -527,6 +565,20 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> +static
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +		       intel_vrr_fixed_rr_vmax(crtc_state) - 1);
> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> +		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
> +}
> +
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(old_crtc_state);
> @@ -541,6 +593,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  				TRANS_VRR_STATUS(display, cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +
> +	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>  }
>  
>  static
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4999B95F194
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 14:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD53410E1FC;
	Mon, 26 Aug 2024 12:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HoMdX2g2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2BF10E1FB;
 Mon, 26 Aug 2024 12:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724676106; x=1756212106;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TWpisV11xc/4o8md5jO9/Hd1Bxgc4RR3jnKJG9DjxPI=;
 b=HoMdX2g2JF782LkHwHYCZjZ5rPVTZsGBJH3LXIJ86a3dOSLBX2ewxqI8
 7BoFZDZxBKd7l6NOXy93dDBPYkawOaHhng27tOe4rK0lpqYE9wiGn845A
 /uQIVRL/+IYvOZAMyoOZOJSL4oBN/+9wNGUG3mGwD1JZ/wAwFtrxQIgLz
 9HOtotIiYZ0LwVBnVH7FjPdZTWQTBxfb5A9rlplamswWb8qnGATngQRBk
 /jAKJxvjDhisaHYEuOGcb12T+Ddr4hwXW8GR/6xf2L81ZsKKr5fyVM0Pt
 xkCGUFjm+uXfzUc7KvOPSeRf78kBn/jF9qaRIRI1f+Wh7snGj5WwrmAQn A==;
X-CSE-ConnectionGUID: NUbB9fhPTluI7/7bmPnKnQ==
X-CSE-MsgGUID: 8vi+i5H9R8KysgJ7sE9HFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="34470064"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="34470064"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:41:46 -0700
X-CSE-ConnectionGUID: 4dgHzuPHSxCdO9YkHKJdgw==
X-CSE-MsgGUID: BA32/jcGR3qTm7bTq6MN/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62807253"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:41:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 05/12] drm/i915/vdsc: Rename helper to check if the pipe
 supports dsc
In-Reply-To: <20240826111527.1113622-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-6-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 15:41:31 +0300
Message-ID: <87frqr1mo4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Rename the helper is_pipe_dsc to intel_dsc_is_pipe_dsc to prepare for its
> future use across multiple files. This change is a preliminary step towards
> making the function non-static, enhancing its accessibility and
> reusability.

Maybe this belongs in intel_dss.[ch] actually. It concerns all of the
DSS/DSC regs.

BR,
Jani.


>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 891346f1f09a..6d60b72a9dfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -35,7 +35,7 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> -static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> +static bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> @@ -366,7 +366,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  	 */
>  	if (DISPLAY_VER(i915) == 12 && !IS_ROCKETLAKE(i915) && pipe == PIPE_A)
>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> -	else if (is_pipe_dsc(crtc, cpu_transcoder))
> +	else if (intel_dsc_is_dsc_pipe(crtc, cpu_transcoder))
>  		return POWER_DOMAIN_PIPE(pipe);
>  	else
>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> @@ -395,7 +395,7 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
>  	enum pipe pipe = crtc->pipe;
>  	bool pipe_dsc;
>  
> -	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
> +	pipe_dsc = intel_dsc_is_dsc_pipe(crtc, cpu_transcoder);
>  
>  	if (dsc_reg_num >= 3)
>  		MISSING_CASE(dsc_reg_num);
> @@ -538,7 +538,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  		rc_buf_thresh_dword[i / 4] |=
>  			(u32)(vdsc_cfg->rc_buf_thresh[i] <<
>  			      BITS_PER_BYTE * (i % 4));
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +	if (!intel_dsc_is_dsc_pipe(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
>  			       rc_buf_thresh_dword[0]);
>  		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
> @@ -592,7 +592,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>  				RC_MAX_QP_SHIFT) |
>  			       (vdsc_cfg->rc_range_params[i].range_min_qp <<
>  				RC_MIN_QP_SHIFT)) << 16 * (i % 2));
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> +	if (!intel_dsc_is_dsc_pipe(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
>  			       rc_range_params_dword[0]);
>  		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0_UDW,
> @@ -726,13 +726,13 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>  
>  static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  {
> -	return is_pipe_dsc(crtc, cpu_transcoder) ?
> +	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
>  		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
>  }
>  
>  static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  {
> -	return is_pipe_dsc(crtc, cpu_transcoder) ?
> +	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
>  		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
>  }

-- 
Jani Nikula, Intel

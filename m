Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670A3868183
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 20:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565FE10E44E;
	Mon, 26 Feb 2024 19:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TzIdoo3p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B95A10E7A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 19:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708977371; x=1740513371;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DG2BSSvQS7aaSRReUqeAlYJAqNMn5glmtPqrPECdx3Y=;
 b=TzIdoo3p0zAD804vMiRAIjTdtgYz5i0B33PRlV/xxkZQOX/sFpWT5YRE
 FY7GVrcR20ael1A+Y243TRwyjiP9lhpPiV4cXHLxQmsdU7IcbFeQqo23k
 1V7EvU012rg/u8b3zK6pGYwLcOV40uGTJPcNLQj7HxWDoW2CYymj/t3d2
 KxtbOnlE/aMwnZtWS6h7A9aykwAf7T40ZiA6VWa8+WtpWN3/tQwCOVtKp
 /Ef/e9ZM2CTA1CDHPBivrVvzt2ojP6S5m2VnrAIhpRm836Z7LGinnXGzK
 BB48KLksHu9gOkByUzQRfSkyKuTpVOM1oN0aI1eZ5aQBxGb16q4X32dSZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="13928970"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="13928970"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:56:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11372990"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:56:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
In-Reply-To: <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
Date: Mon, 26 Feb 2024 21:56:10 +0200
Message-ID: <87o7c3knj9.fsf@intel.com>
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

On Wed, 21 Feb 2024, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> Patch calculates bigjoiner pipes in mst compute.
> Patch also passes bigjoiner bool to validate plane
> max size.

Please use the imperative mood in commit messages, e.g. "calculate"
intead of "calculates".

Please do not refer to "patch". We know it's a patch, until it isn't,
and then it's a commit.

Please explain *why* the changes are being done, not just *what* is
being done.

In the subject, what is "bigjoiner case for DP2.0"? DP 2.0 is a spec
version, and as such irrelevant for the changes being done.

> Signed-off-by: vsrini4 <vidya.srinivas@intel.com>

?

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 5307ddd4edcf5..fd27d9976c050 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -523,6 +523,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				       struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
>  	const struct intel_connector *connector =
> @@ -540,6 +541,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> +				    adjusted_mode->crtc_clock))
> +		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> +
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
> @@ -1318,12 +1323,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> -
>  	if (mode->clock < 10000) {
>  		*status = MODE_CLOCK_LOW;
>  		return 0;
> @@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		return 0;
>  	}
>  
> +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
> +		*status = MODE_CLOCK_HIGH;
> +		return 0;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >= 10 &&
>  	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
>  		/*
> @@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		return 0;
>  	}
>  
> -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
>  	return 0;
>  }

-- 
Jani Nikula, Intel

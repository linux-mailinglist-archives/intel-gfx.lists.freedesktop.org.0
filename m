Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAAF4EBF90
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 13:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450DC10E190;
	Wed, 30 Mar 2022 11:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB7310E190
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 11:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648638417; x=1680174417;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LCYBVP+pHmI6uKNBl93maH6d+sUWI+AzfpoQnT+UW60=;
 b=b1N1cTYY0CEAVpwj1jOTX/rfH6/OewldhbJ/Jz6h79X/nXuF6lO8XvP/
 9X+jChJqJvofmPHV1mvnH/Qnr4W2qVStWYIXlUk8jQprulEV2Wy8cO8xm
 QN2LHoq+xi7tNBkuyTQuTMWzHNOg6I9UvCV0NgxvfT0WaVkFDeYcKHR0+
 +Acy4KrN/rFjNzrgU6lCUO1UAXHkWtnFybdoS/b4Y1pLk7FHsDG64YF9I
 8BNkeIsY127k4y+j8pKE10N4hRNbp0zUiZhMroY5iqPNkTJIHv0+s3f/v
 PYyPcGMacm78SrtVhvi+BfzIlmZQNl0C7401biCi9wqUx8Ge0hm76Olcn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="241670966"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="241670966"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 04:06:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="639693695"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 30 Mar 2022 04:06:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Mar 2022 14:06:53 +0300
Date: Wed, 30 Mar 2022 14:06:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YkQ5zbjXyWhe6lxC@intel.com>
References: <20220330093019.4150386-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220330093019.4150386-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: make DSC usage logging
 actually useful
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 30, 2022 at 12:30:19PM +0300, Jani Nikula wrote:
> Debug log when DSC is going to be used, and why, instead of
> unconditionally logging the rarely used debug option setting, which
> might not have any bearing on whether DSC is going to be used or not.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c7f8fc654857..56c36c9ef173 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1483,6 +1483,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  		&pipe_config->hw.adjusted_mode;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
> +	bool joiner_needs_dsc = false;
>  	int ret;
>  
>  	limits.min_rate = intel_dp_common_rate(intel_dp, 0);
> @@ -1518,19 +1519,23 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  				    adjusted_mode->crtc_clock))
>  		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>  
> +	/*
> +	 * Pipe joiner needs compression up to display 12 due to bandwidth
> +	 * limitation. DG2 onwards pipe joiner can be enabled without
> +	 * compression.
> +	 */
> +	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;

Could be a function to reduce the pollution.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

PS. The excessive debugs from intel_dp_dsc_get_output_bpp() are
also annoying. Would be nice if someone could do something about
that.

> +
>  	/*
>  	 * Optimize for slow and wide for everything, because there are some
>  	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
>  	 */
>  	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
>  
> -	/*
> -	 * Pipe joiner needs compression upto display12 due to BW limitation. DG2
> -	 * onwards pipe joiner can be enabled without compression.
> -	 */
> -	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
> -	if (ret || intel_dp->force_dsc_en ||
> -	    (DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes)) {
> +	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
> +		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
> +			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
> +			    str_yes_no(intel_dp->force_dsc_en));
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits);
>  		if (ret < 0)
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel

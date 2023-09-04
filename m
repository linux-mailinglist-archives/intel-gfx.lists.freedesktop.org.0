Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FEF791063
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 05:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7075210E286;
	Mon,  4 Sep 2023 03:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD1A10E286
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 03:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693797857; x=1725333857;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RL43pd+jX6nR8ZL5RYpdW29loWA5HRxxGc/KFpp3Q3k=;
 b=HFSB43yEFEZTXyLtP1GH8OZDiNLnOjGbwrPEEYsYD1Xk5s/LnM2Z+Jkc
 cD63Orn6TxDcAkO3ulduEikBO1qdenCw55FQxco/zDuNggxdkWwAK7ZQT
 ZMecIMaQcyPUpQvstKSuhnGvkkOduzTFSe7q2sZcHrROVp+mn9GJGwPae
 q2ywAuwcHbvFvGihM6AM/M5Iza1WO+/Yh1SArDEeEqbpugpsK1VxQ79dv
 EPfPgDeprceEdNooOegmVr0RaDg0kk5XKcPczlntvToIvsvj1DZX2yvG5
 qxC6K4GP6zExmIFr2TdP2nbruBi8F9jnwxMI8lsOr0FR5dpO/eu40kASS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="375405676"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="375405676"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 20:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="740607936"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="740607936"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga002.jf.intel.com with SMTP; 03 Sep 2023 20:24:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Sep 2023 06:24:12 +0300
Date: Mon, 4 Sep 2023 06:24:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZPVN3Iz7ACOt1OlA@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230824080517.693621-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 03/22] drm/i915/dp: Skip computing a
 non-DSC link config if DSC is needed
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

On Thu, Aug 24, 2023 at 11:04:58AM +0300, Imre Deak wrote:
> Computing the non-DSC mode link config is redundant once it's determined
> that DSC will be needed, so skip computing it. In a follow-up patch this
> simplifies setting the link limits which are dependent on the DSC vs.
> non-DSC mode.
> 
> While at it sanitize the debug print about the MST DSC fallback path,
> making it similar to the SST DSC one.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 22 ++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +++++++++++++++------
>  2 files changed, 33 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index cf29562795f75..c580472c06b85 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2246,7 +2246,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
>  	bool joiner_needs_dsc = false;
> -	int ret;
> +	bool dsc_needed;
> +	int ret = 0;
>  
>  	intel_dp_compute_config_limits(intel_dp, pipe_config,
>  				       respect_downstream_limits, &limits);
> @@ -2262,13 +2263,20 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	 */
>  	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
>  
> -	/*
> -	 * Optimize for slow and wide for everything, because there are some
> -	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
> -	 */
> -	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
> +	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en;
> +
> +	if (!dsc_needed) {
> +		/*
> +		 * Optimize for slow and wide for everything, because there are some
> +		 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
> +		 */
> +		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
> +							conn_state, &limits);
> +		if (ret)
> +			dsc_needed = true;
> +	}
>  
> -	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
> +	if (dsc_needed) {
>  		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 6c1c996c74e62..c077b999ccb74 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -350,7 +350,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	struct link_config_limits limits;
> -	int ret;
> +	bool dsc_needed;
> +	int ret = 0;
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
> @@ -365,15 +366,25 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  
>  	intel_dp_mst_compute_config_limits(intel_dp, pipe_config, &limits);
>  
> -	ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
> -					       conn_state, &limits);
> +	dsc_needed = intel_dp->force_dsc_en;
>  
> -	if (ret == -EDEADLK)
> -		return ret;
> +	if (!dsc_needed) {
> +		ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
> +						       conn_state, &limits);
> +
> +		if (ret == -EDEADLK)
> +			return ret;
> +
> +		if (ret)
> +			dsc_needed = true;
> +	}
>  
>  	/* enable compression if the mode doesn't fit available BW */
> -	drm_dbg_kms(&dev_priv->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
> -	if (ret || intel_dp->force_dsc_en) {
> +	if (dsc_needed) {
> +		drm_dbg_kms(&dev_priv->drm, "Try DSC (fallback=%s, force=%s)\n",
> +			    str_yes_no(ret),
> +			    str_yes_no(intel_dp->force_dsc_en));
> +
>  		/*
>  		 * FIXME: As bpc is hardcoded to 8, as mentioned above,
>  		 * WARN and ignore the debug flag force_dsc_bpc for now.
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel

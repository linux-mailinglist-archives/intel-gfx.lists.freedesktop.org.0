Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76452635199
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 08:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E33710E4F9;
	Wed, 23 Nov 2022 07:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978CF10E4F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 07:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669190144; x=1700726144;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DxR2ixB5rrcVKQyCbs5zZjp9tHW4O5mvM0P6Pvt+dpU=;
 b=nFiPfs5mF69IVspXtXcVBB5yWkpdoXI2qf0zMvxJzFnG13sufzA6Qqyw
 U54a/aFcgOv9U932XTfVFiGIkCuzgz6Ig2qgxpxhyWbU7t9JSx4Kw56bd
 tiR/b4gU0BZH6/7ul47SaZn7rPd3gNnQ6ewYLStvDuPWzjlUDVst6c2AP
 IP2tvXuNZ/gIVckJba0LtLOHfWOVRf3qW5Jxh8eteS48+8fXuy3ZEkk7q
 i6ev1w47huHBF+8SyJCwD39vbWJJ9m85w91ELntYca5SKSi1JldTscFjA
 cG9rR3bisZNQLt55aVqRj73Kmbzz0agvttvyaAA/PbI+zNp3kK3kBPO9J Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="293715113"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="293715113"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 23:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="635827631"
X-IronPort-AV: E=Sophos;i="5.96,186,1665471600"; d="scan'208";a="635827631"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 22 Nov 2022 23:55:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 09:55:38 +0200
Date: Wed, 23 Nov 2022 09:55:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nischal Varide <nischal.varide@intel.com>
Message-ID: <Y33R+q+tu08iFkMq@intel.com>
References: <20221123074356.7513-1-nischal.varide@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221123074356.7513-1-nischal.varide@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: A check on mode->clock,
 if it exceeds max_dot_clock
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

On Wed, Nov 23, 2022 at 01:13:56PM +0530, Nischal Varide wrote:
> Making sure that the  mode-clock is not greater than the
> max_dot_clock freq.This patch will prevent attempts from
> userspace to modeset with mode->clock greater than
> max_dot_clock freq.

Already handled elsewhere.

> 
> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 +++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7400d6b4c587..e603b7c01d27 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2045,6 +2045,16 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
>  		return -EINVAL;
>  
> +	if (!intel_dp_can_bigjoiner(intel_dp) &&
> +			(adjusted_mode->clock > dev_priv->max_dotclk_freq))
> +		return -EINVAL;
> +
> +	if (intel_dp_can_bigjoiner(intel_dp) &&
> +		(adjusted_mode->clock >  (2 * dev_priv->max_dotclk_freq)))
> +		return -EINVAL;
> +
> +
> +
>  	/*
>  	 * Try to respect downstream TMDS clock limits first, if
>  	 * that fails assume the user might know something we don't.
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 02f8374ea51f..50603806a964 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2247,6 +2247,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	if (adjusted_mode->clock > dev_priv->max_dotclk_freq)
> +		return -EINVAL;
> +
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
>  							 conn_state);
> -- 
> 2.36.0

-- 
Ville Syrjälä
Intel

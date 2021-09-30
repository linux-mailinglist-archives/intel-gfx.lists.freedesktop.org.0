Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D5E41D6C7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEB36E3C6;
	Thu, 30 Sep 2021 09:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092826E3C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:50:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="224804965"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="224804965"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="618049465"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 30 Sep 2021 02:50:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 12:50:25 +0300
Date: Thu, 30 Sep 2021 12:50:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YVWIYSmggtT037IZ@intel.com>
References: <20210930093229.28598-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210930093229.28598-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdi: use -EAGAIN instead of local
 special return value
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

On Thu, Sep 30, 2021 at 12:32:29PM +0300, Jani Nikula wrote:
> Using standard -EAGAIN should be perfectly fine instead of using a
> special case value.

Can't immediately spot any uses of -EAGAIN which would conflict here.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++------
>  drivers/gpu/drm/i915/display/intel_fdi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_fdi.h     |  1 -
>  3 files changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a4453dd1bb51..db43334fb7d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7717,12 +7717,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>  	ret = intel_crtc_compute_config(to_intel_crtc(crtc), pipe_config);
>  	if (ret == -EDEADLK)
>  		return ret;
> -	if (ret < 0) {
> -		drm_dbg_kms(&i915->drm, "CRTC fixup failed\n");
> -		return ret;
> -	}
> -
> -	if (ret == I915_DISPLAY_CONFIG_RETRY) {
> +	if (ret == -EAGAIN) {
>  		if (drm_WARN(&i915->drm, !retry,
>  			     "loop in pipe configuration computation\n"))
>  			return -EINVAL;
> @@ -7731,6 +7726,10 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>  		retry = false;
>  		goto encoder_retry;
>  	}
> +	if (ret < 0) {
> +		drm_dbg_kms(&i915->drm, "CRTC fixup failed\n");
> +		return ret;
> +	}
>  
>  	/* Dithering seems to not pass-through bits correctly when it should, so
>  	 * only enable it on 6bpc panels and when its not a compliance
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index af01d1fa761e..6b780349371c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -176,7 +176,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
>  	}
>  
>  	if (needs_recompute)
> -		return I915_DISPLAY_CONFIG_RETRY;
> +		return -EAGAIN;
>  
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
> index 61cb216a09f5..abd9f809d421 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> @@ -11,7 +11,6 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_encoder;
>  
> -#define I915_DISPLAY_CONFIG_RETRY 1
>  int intel_fdi_link_freq(struct drm_i915_private *i915,
>  			const struct intel_crtc_state *pipe_config);
>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1364037DD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518E56E188;
	Wed,  8 Sep 2021 10:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2816E188
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:30:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="217281887"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="217281887"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:30:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538489668"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:30:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-15-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-15-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:30:41 +0300
Message-ID: <87y2875pgu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 14/21] drm/i915: constify color function
 vtable.
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

On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>

The commit message could contain some words about how ugly this used to
be and how beautiful it is now. Awesome.

One bug, comment inline.

>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 138 ++++++++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h            |   2 +-
>  2 files changed, 93 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index ed79075158dd..b4e010c7e29d 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1137,14 +1137,14 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	dev_priv->color_funcs.load_luts(crtc_state);
> +	dev_priv->color_funcs->load_luts(crtc_state);
>  }
>  
>  void intel_color_commit(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	dev_priv->color_funcs.color_commit(crtc_state);
> +	dev_priv->color_funcs->color_commit(crtc_state);
>  }
>  
>  static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
> @@ -1200,15 +1200,15 @@ int intel_color_check(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	return dev_priv->color_funcs.color_check(crtc_state);
> +	return dev_priv->color_funcs->color_check(crtc_state);
>  }
>  
>  void intel_color_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	if (dev_priv->color_funcs.read_luts)
> -		dev_priv->color_funcs.read_luts(crtc_state);
> +	if (dev_priv->color_funcs->read_luts)
> +		dev_priv->color_funcs->read_luts(crtc_state);
>  }
>  
>  static bool need_plane_update(struct intel_plane *plane,
> @@ -2092,6 +2092,76 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> +static const struct drm_i915_display_color_funcs chv_color_funcs = {
> +	.color_check = chv_color_check,
> +	.color_commit = i9xx_color_commit,
> +	.load_luts = chv_load_luts,
> +	.read_luts = chv_read_luts,
> +};
> +
> +static const struct drm_i915_display_color_funcs i965_color_funcs = {
> +	.color_check = i9xx_color_check,
> +	.color_commit = i9xx_color_commit,
> +	.load_luts = i965_load_luts,
> +	.read_luts = i965_read_luts,
> +};
> +
> +static const struct drm_i915_display_color_funcs i9xx_color_funcs = {
> +	.color_check = i9xx_color_check,
> +	.color_commit = i9xx_color_commit,
> +	.load_luts = i9xx_load_luts,
> +	.read_luts = i9xx_read_luts,
> +};
> +
> +static const struct drm_i915_display_color_funcs icl_color_funcs = {
> +	.color_check = icl_color_check,
> +	.color_commit = skl_color_commit,
> +	.load_luts = icl_load_luts,
> +	.read_luts = icl_read_luts,
> +};
> +
> +static const struct drm_i915_display_color_funcs glk_color_funcs = {
> +	.color_check = glk_color_check,
> +	.color_commit = skl_color_commit,
> +	.load_luts = glk_load_luts,
> +	.read_luts = glk_read_luts,
> +};
> +
> +static const struct drm_i915_display_color_funcs skl_color_funcs = {
> +	.color_check = ivb_color_check,
> +	.color_commit = skl_color_commit,
> +	.load_luts = bdw_load_luts,
> +	.read_luts = NULL,
> +};
> +
> +static const struct drm_i915_display_color_funcs bdw_color_funcs = {
> +	.color_check = ivb_color_check,
> +	.color_commit = hsw_color_commit,
> +	.load_luts = bdw_load_luts,
> +	.read_luts = NULL,
> +};
> +
> +static const struct drm_i915_display_color_funcs hsw_color_funcs = {
> +	.color_check = ivb_color_check,
> +	.color_commit = hsw_color_commit,
> +	.load_luts = ivb_load_luts,
> +	.read_luts = NULL,
> +};
> +
> +static const struct drm_i915_display_color_funcs ivb_color_funcs = {
> +	.color_check = ivb_color_check,
> +	.color_commit = ilk_color_commit,
> +	.load_luts = ilk_load_luts,

Should be ivb_load_luts.

> +	.read_luts = ilk_read_luts,

Should be NULL.

Old code for ivb i.e. non-hsw gen 7 was:

 -		} else if (DISPLAY_VER(dev_priv) >= 7) {
 -			dev_priv->color_funcs.load_luts = ivb_load_luts;
 -		} else {

Right? It's a nightmare to review this because the old code was a
nightmare to read.

I think with that fixed this is good, and,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +};
> +
> +static const struct drm_i915_display_color_funcs ilk_color_funcs = {
> +	.color_check = ilk_color_check,
> +	.color_commit = ilk_color_commit,
> +	.load_luts = ilk_load_luts,
> +	.read_luts = ilk_read_luts,
> +};
> +
>  void intel_color_init(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -2101,52 +2171,28 @@ void intel_color_init(struct intel_crtc *crtc)
>  
>  	if (HAS_GMCH(dev_priv)) {
>  		if (IS_CHERRYVIEW(dev_priv)) {
> -			dev_priv->color_funcs.color_check = chv_color_check;
> -			dev_priv->color_funcs.color_commit = i9xx_color_commit;
> -			dev_priv->color_funcs.load_luts = chv_load_luts;
> -			dev_priv->color_funcs.read_luts = chv_read_luts;
> +			dev_priv->color_funcs = &chv_color_funcs;
>  		} else if (DISPLAY_VER(dev_priv) >= 4) {
> -			dev_priv->color_funcs.color_check = i9xx_color_check;
> -			dev_priv->color_funcs.color_commit = i9xx_color_commit;
> -			dev_priv->color_funcs.load_luts = i965_load_luts;
> -			dev_priv->color_funcs.read_luts = i965_read_luts;
> +			dev_priv->color_funcs = &i965_color_funcs;
>  		} else {
> -			dev_priv->color_funcs.color_check = i9xx_color_check;
> -			dev_priv->color_funcs.color_commit = i9xx_color_commit;
> -			dev_priv->color_funcs.load_luts = i9xx_load_luts;
> -			dev_priv->color_funcs.read_luts = i9xx_read_luts;
> +			dev_priv->color_funcs = &i9xx_color_funcs;
>  		}
>  	} else {
>  		if (DISPLAY_VER(dev_priv) >= 11)
> -			dev_priv->color_funcs.color_check = icl_color_check;
> -		else if (DISPLAY_VER(dev_priv) >= 10)
> -			dev_priv->color_funcs.color_check = glk_color_check;
> -		else if (DISPLAY_VER(dev_priv) >= 7)
> -			dev_priv->color_funcs.color_check = ivb_color_check;
> -		else
> -			dev_priv->color_funcs.color_check = ilk_color_check;
> -
> -		if (DISPLAY_VER(dev_priv) >= 9)
> -			dev_priv->color_funcs.color_commit = skl_color_commit;
> -		else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -			dev_priv->color_funcs.color_commit = hsw_color_commit;
> -		else
> -			dev_priv->color_funcs.color_commit = ilk_color_commit;
> -
> -		if (DISPLAY_VER(dev_priv) >= 11) {
> -			dev_priv->color_funcs.load_luts = icl_load_luts;
> -			dev_priv->color_funcs.read_luts = icl_read_luts;
> -		} else if (DISPLAY_VER(dev_priv) == 10) {
> -			dev_priv->color_funcs.load_luts = glk_load_luts;
> -			dev_priv->color_funcs.read_luts = glk_read_luts;
> -		} else if (DISPLAY_VER(dev_priv) >= 8) {
> -			dev_priv->color_funcs.load_luts = bdw_load_luts;
> -		} else if (DISPLAY_VER(dev_priv) >= 7) {
> -			dev_priv->color_funcs.load_luts = ivb_load_luts;
> -		} else {
> -			dev_priv->color_funcs.load_luts = ilk_load_luts;
> -			dev_priv->color_funcs.read_luts = ilk_read_luts;
> -		}
> +			dev_priv->color_funcs = &icl_color_funcs;
> +		else if (DISPLAY_VER(dev_priv) == 10)
> +			dev_priv->color_funcs = &glk_color_funcs;
> +		else if (DISPLAY_VER(dev_priv) == 9)
> +			dev_priv->color_funcs = &skl_color_funcs;
> +		else if (DISPLAY_VER(dev_priv) == 8)
> +			dev_priv->color_funcs = &bdw_color_funcs;
> +		else if (DISPLAY_VER(dev_priv) == 7) {
> +			if (IS_HASWELL(dev_priv))
> +				dev_priv->color_funcs = &hsw_color_funcs;
> +			else
> +				dev_priv->color_funcs = &ivb_color_funcs;
> +		} else
> +			dev_priv->color_funcs = &ilk_color_funcs;
>  	}
>  
>  	drm_crtc_enable_color_mgmt(&crtc->base,
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 6050bb519b18..e82df3bf493b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1015,7 +1015,7 @@ struct drm_i915_private {
>  	struct drm_i915_display_funcs display;
>  
>  	/* Display internal color functions */
> -	struct drm_i915_display_color_funcs color_funcs;
> +	const struct drm_i915_display_color_funcs *color_funcs;
>  
>  	/* Display internal audio functions */
>  	struct drm_i915_display_audio_funcs audio_funcs;

-- 
Jani Nikula, Intel Open Source Graphics Center

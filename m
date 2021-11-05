Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 617E9446224
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 11:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D2F6E086;
	Fri,  5 Nov 2021 10:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA23D6E086
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 10:21:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="230600933"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="230600933"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 03:21:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="501891273"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 05 Nov 2021 03:21:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Nov 2021 12:21:49 +0200
Date: Fri, 5 Nov 2021 12:21:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YYUFvepD/DUf5uKv@intel.com>
References: <20211104161858.21786-1-jani.nikula@intel.com>
 <20211104161858.21786-6-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211104161858.21786-6-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915/audio: rename
 intel_init_audio_hooks to intel_audio_hooks_init
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

On Thu, Nov 04, 2021 at 06:18:58PM +0200, Jani Nikula wrote:
> Follow the filename based prefix naming.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c   | 4 ++--
>  drivers/gpu/drm/i915/display/intel_audio.h   | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index aa7037021376..74d56487267c 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -940,10 +940,10 @@ static const struct intel_audio_funcs hsw_audio_funcs = {
>  };
>  
>  /**
> - * intel_init_audio_hooks - Set up chip specific audio hooks
> + * intel_audio_hooks_init - Set up chip specific audio hooks
>   * @dev_priv: device private
>   */
> -void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
> +void intel_audio_hooks_init(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_G4X(dev_priv)) {
>  		dev_priv->audio.funcs = &g4x_audio_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index dcb259dd2da7..63b22131dc45 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -11,7 +11,7 @@ struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_encoder;
>  
> -void intel_init_audio_hooks(struct drm_i915_private *dev_priv);
> +void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
>  void intel_audio_codec_enable(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 29392dfc46c8..25c3a44ed693 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9486,7 +9486,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	intel_init_cdclk_hooks(dev_priv);
> -	intel_init_audio_hooks(dev_priv);
> +	intel_audio_hooks_init(dev_priv);
>  
>  	intel_dpll_init_clock_hook(dev_priv);
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel

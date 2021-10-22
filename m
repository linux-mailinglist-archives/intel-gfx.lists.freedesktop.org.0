Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC5C437B1A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 18:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D236E7D1;
	Fri, 22 Oct 2021 16:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5CEB6EDAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 16:48:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="252844198"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="252844198"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="484745670"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 22 Oct 2021 09:48:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 19:48:29 +0300
Date: Fri, 22 Oct 2021 19:48:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, daniel@ffwll.ch,
 lucas.demarchi@intel.com, Dave Airlie <airlied@redhat.com>
Message-ID: <YXLrXQR23uCHOIpb@intel.com>
References: <cover.1634918767.git.jani.nikula@intel.com>
 <0ab63181bce3bf6a2ef2a04cb738bf5002029edd.1634918767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0ab63181bce3bf6a2ef2a04cb738bf5002029edd.1634918767.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/audio: move intel_audio_funcs
 internal to intel_audio.c
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

On Fri, Oct 22, 2021 at 07:27:58PM +0300, Jani Nikula wrote:
> It's all internal to intel_audio.c.
> 
> Cc: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I've toyed around with similar stuff myself before
(moving bunch of .av_foo/.audio_foo to .audio.foo) just
never bothered sending it out. So very much like the idea.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c |  9 +++++++++
>  drivers/gpu/drm/i915/i915_drv.h            | 10 +---------
>  2 files changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index b46f6539b9ab..39246f64fb39 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -62,6 +62,15 @@
>   * struct &i915_audio_component_audio_ops @audio_ops is called from i915 driver.
>   */
>  
> +struct intel_audio_funcs {
> +	void (*audio_codec_enable)(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state *conn_state);
> +	void (*audio_codec_disable)(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *old_crtc_state,
> +				    const struct drm_connector_state *old_conn_state);
> +};
> +
>  /* DP N/M table */
>  #define LC_810M	810000
>  #define LC_540M	540000
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ed86633a587b..bb023b909e86 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -364,15 +364,6 @@ struct intel_color_funcs {
>  	void (*read_luts)(struct intel_crtc_state *crtc_state);
>  };
>  
> -struct intel_audio_funcs {
> -	void (*audio_codec_enable)(struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *crtc_state,
> -				   const struct drm_connector_state *conn_state);
> -	void (*audio_codec_disable)(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *old_crtc_state,
> -				    const struct drm_connector_state *old_conn_state);
> -};
> -
>  struct intel_cdclk_funcs {
>  	void (*get_cdclk)(struct drm_i915_private *dev_priv,
>  			  struct intel_cdclk_config *cdclk_config);
> @@ -829,6 +820,7 @@ struct i915_selftest_stash {
>  };
>  
>  /* intel_audio.c private */
> +struct intel_audio_funcs;
>  struct intel_audio_private {
>  	/* Display internal audio functions */
>  	const struct intel_audio_funcs *funcs;
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel

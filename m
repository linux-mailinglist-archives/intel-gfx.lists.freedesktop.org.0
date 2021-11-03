Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C294444889
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B54677A282;
	Wed,  3 Nov 2021 18:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3C97A282
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 18:48:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="218761926"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="218761926"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:48:21 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="639028323"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:48:19 -0700
Date: Wed, 3 Nov 2021 20:47:54 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211103184754.GG3153@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018115030.3547-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Fix up the sprite namespacing
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

On Mon, Oct 18, 2021 at 02:50:24PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Give all sprite exclusive functions/etc. a proper namespace.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 106 ++++++++++----------
>  1 file changed, 53 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 08116f41da26..1daa3360cf02 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -118,7 +118,7 @@ static void i9xx_plane_linear_gamma(u16 gamma[8])
>  }
>  
>  static void
> -chv_update_csc(const struct intel_plane_state *plane_state)
> +chv_sprite_update_csc(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> @@ -190,7 +190,7 @@ chv_update_csc(const struct intel_plane_state *plane_state)
>  #define COS_0 1
>  
>  static void
> -vlv_update_clrc(const struct intel_plane_state *plane_state)
> +vlv_sprite_update_clrc(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> @@ -393,7 +393,7 @@ static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
>  	return sprctl;
>  }
>  
> -static void vlv_update_gamma(const struct intel_plane_state *plane_state)
> +static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> @@ -417,9 +417,9 @@ static void vlv_update_gamma(const struct intel_plane_state *plane_state)
>  }
>  
>  static void
> -vlv_update_plane(struct intel_plane *plane,
> -		 const struct intel_crtc_state *crtc_state,
> -		 const struct intel_plane_state *plane_state)
> +vlv_sprite_update(struct intel_plane *plane,
> +		  const struct intel_crtc_state *crtc_state,
> +		  const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> @@ -455,7 +455,7 @@ vlv_update_plane(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, SPCONSTALPHA(pipe, plane_id), 0);
>  
>  	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B)
> -		chv_update_csc(plane_state);
> +		chv_sprite_update_csc(plane_state);
>  
>  	if (key->flags) {
>  		intel_de_write_fw(dev_priv, SPKEYMINVAL(pipe, plane_id),
> @@ -478,15 +478,15 @@ vlv_update_plane(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id),
>  			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
>  
> -	vlv_update_clrc(plane_state);
> -	vlv_update_gamma(plane_state);
> +	vlv_sprite_update_clrc(plane_state);
> +	vlv_sprite_update_gamma(plane_state);
>  
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> -vlv_disable_plane(struct intel_plane *plane,
> -		  const struct intel_crtc_state *crtc_state)
> +vlv_sprite_disable(struct intel_plane *plane,
> +		   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> @@ -502,8 +502,8 @@ vlv_disable_plane(struct intel_plane *plane,
>  }
>  
>  static bool
> -vlv_plane_get_hw_state(struct intel_plane *plane,
> -		       enum pipe *pipe)
> +vlv_sprite_get_hw_state(struct intel_plane *plane,
> +			enum pipe *pipe)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum intel_display_power_domain power_domain;
> @@ -805,7 +805,7 @@ static void ivb_sprite_linear_gamma(const struct intel_plane_state *plane_state,
>  	i++;
>  }
>  
> -static void ivb_update_gamma(const struct intel_plane_state *plane_state)
> +static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> @@ -835,9 +835,9 @@ static void ivb_update_gamma(const struct intel_plane_state *plane_state)
>  }
>  
>  static void
> -ivb_update_plane(struct intel_plane *plane,
> -		 const struct intel_crtc_state *crtc_state,
> -		 const struct intel_plane_state *plane_state)
> +ivb_sprite_update(struct intel_plane *plane,
> +		  const struct intel_crtc_state *crtc_state,
> +		  const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> @@ -902,14 +902,14 @@ ivb_update_plane(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, SPRSURF(pipe),
>  			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
>  
> -	ivb_update_gamma(plane_state);
> +	ivb_sprite_update_gamma(plane_state);
>  
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> -ivb_disable_plane(struct intel_plane *plane,
> -		  const struct intel_crtc_state *crtc_state)
> +ivb_sprite_disable(struct intel_plane *plane,
> +		   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> @@ -927,8 +927,8 @@ ivb_disable_plane(struct intel_plane *plane,
>  }
>  
>  static bool
> -ivb_plane_get_hw_state(struct intel_plane *plane,
> -		       enum pipe *pipe)
> +ivb_sprite_get_hw_state(struct intel_plane *plane,
> +			enum pipe *pipe)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum intel_display_power_domain power_domain;
> @@ -1106,7 +1106,7 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
>  	return dvscntr;
>  }
>  
> -static void g4x_update_gamma(const struct intel_plane_state *plane_state)
> +static void g4x_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> @@ -1136,7 +1136,7 @@ static void ilk_sprite_linear_gamma(u16 gamma[17])
>  		gamma[i] = (i << 10) / 16;
>  }
>  
> -static void ilk_update_gamma(const struct intel_plane_state *plane_state)
> +static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> @@ -1163,9 +1163,9 @@ static void ilk_update_gamma(const struct intel_plane_state *plane_state)
>  }
>  
>  static void
> -g4x_update_plane(struct intel_plane *plane,
> -		 const struct intel_crtc_state *crtc_state,
> -		 const struct intel_plane_state *plane_state)
> +g4x_sprite_update(struct intel_plane *plane,
> +		  const struct intel_crtc_state *crtc_state,
> +		  const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> @@ -1224,16 +1224,16 @@ g4x_update_plane(struct intel_plane *plane,
>  			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
>  
>  	if (IS_G4X(dev_priv))
> -		g4x_update_gamma(plane_state);
> +		g4x_sprite_update_gamma(plane_state);
>  	else
> -		ilk_update_gamma(plane_state);
> +		ilk_sprite_update_gamma(plane_state);
>  
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> -g4x_disable_plane(struct intel_plane *plane,
> -		  const struct intel_crtc_state *crtc_state)
> +g4x_sprite_disable(struct intel_plane *plane,
> +		   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> @@ -1250,8 +1250,8 @@ g4x_disable_plane(struct intel_plane *plane,
>  }
>  
>  static bool
> -g4x_plane_get_hw_state(struct intel_plane *plane,
> -		       enum pipe *pipe)
> +g4x_sprite_get_hw_state(struct intel_plane *plane,
> +			enum pipe *pipe)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum intel_display_power_domain power_domain;
> @@ -1567,7 +1567,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
>  	return ret;
>  }
>  
> -static const u32 g4x_plane_formats[] = {
> +static const u32 g4x_sprite_formats[] = {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_YUYV,
>  	DRM_FORMAT_YVYU,
> @@ -1581,7 +1581,7 @@ static const u64 i9xx_plane_format_modifiers[] = {
>  	DRM_FORMAT_MOD_INVALID
>  };
>  
> -static const u32 snb_plane_formats[] = {
> +static const u32 snb_sprite_formats[] = {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_XBGR8888,
>  	DRM_FORMAT_XRGB2101010,
> @@ -1594,7 +1594,7 @@ static const u32 snb_plane_formats[] = {
>  	DRM_FORMAT_VYUY,
>  };
>  
> -static const u32 vlv_plane_formats[] = {
> +static const u32 vlv_sprite_formats[] = {
>  	DRM_FORMAT_C8,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_XRGB8888,
> @@ -1762,9 +1762,9 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  		return plane;
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		plane->update_plane = vlv_update_plane;
> -		plane->disable_plane = vlv_disable_plane;
> -		plane->get_hw_state = vlv_plane_get_hw_state;
> +		plane->update_plane = vlv_sprite_update;
> +		plane->disable_plane = vlv_sprite_disable;
> +		plane->get_hw_state = vlv_sprite_get_hw_state;
>  		plane->check_plane = vlv_sprite_check;
>  		plane->max_stride = i965_plane_max_stride;
>  		plane->min_cdclk = vlv_plane_min_cdclk;
> @@ -1773,16 +1773,16 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  			formats = chv_pipe_b_sprite_formats;
>  			num_formats = ARRAY_SIZE(chv_pipe_b_sprite_formats);
>  		} else {
> -			formats = vlv_plane_formats;
> -			num_formats = ARRAY_SIZE(vlv_plane_formats);
> +			formats = vlv_sprite_formats;
> +			num_formats = ARRAY_SIZE(vlv_sprite_formats);
>  		}
>  		modifiers = i9xx_plane_format_modifiers;
>  
>  		plane_funcs = &vlv_sprite_funcs;
>  	} else if (DISPLAY_VER(dev_priv) >= 7) {
> -		plane->update_plane = ivb_update_plane;
> -		plane->disable_plane = ivb_disable_plane;
> -		plane->get_hw_state = ivb_plane_get_hw_state;
> +		plane->update_plane = ivb_sprite_update;
> +		plane->disable_plane = ivb_sprite_disable;
> +		plane->get_hw_state = ivb_sprite_get_hw_state;
>  		plane->check_plane = g4x_sprite_check;
>  
>  		if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
> @@ -1793,28 +1793,28 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  			plane->min_cdclk = ivb_sprite_min_cdclk;
>  		}
>  
> -		formats = snb_plane_formats;
> -		num_formats = ARRAY_SIZE(snb_plane_formats);
> +		formats = snb_sprite_formats;
> +		num_formats = ARRAY_SIZE(snb_sprite_formats);
>  		modifiers = i9xx_plane_format_modifiers;
>  
>  		plane_funcs = &snb_sprite_funcs;
>  	} else {
> -		plane->update_plane = g4x_update_plane;
> -		plane->disable_plane = g4x_disable_plane;
> -		plane->get_hw_state = g4x_plane_get_hw_state;
> +		plane->update_plane = g4x_sprite_update;
> +		plane->disable_plane = g4x_sprite_disable;
> +		plane->get_hw_state = g4x_sprite_get_hw_state;
>  		plane->check_plane = g4x_sprite_check;
>  		plane->max_stride = g4x_sprite_max_stride;
>  		plane->min_cdclk = g4x_sprite_min_cdclk;
>  
>  		modifiers = i9xx_plane_format_modifiers;
>  		if (IS_SANDYBRIDGE(dev_priv)) {
> -			formats = snb_plane_formats;
> -			num_formats = ARRAY_SIZE(snb_plane_formats);
> +			formats = snb_sprite_formats;
> +			num_formats = ARRAY_SIZE(snb_sprite_formats);
>  
>  			plane_funcs = &snb_sprite_funcs;
>  		} else {
> -			formats = g4x_plane_formats;
> -			num_formats = ARRAY_SIZE(g4x_plane_formats);
> +			formats = g4x_sprite_formats;
> +			num_formats = ARRAY_SIZE(g4x_sprite_formats);
>  
>  			plane_funcs = &g4x_sprite_funcs;
>  		}
> -- 
> 2.32.0
> 

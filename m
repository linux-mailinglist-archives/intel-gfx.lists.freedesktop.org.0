Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E20C34BD962
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB60F10E5A1;
	Mon, 21 Feb 2022 11:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B0610E5AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645442290; x=1676978290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OJP+jeYsffns09f1wY8SCsJBr9jviuZNz0N+ZMwQKmw=;
 b=bhSuRihM2+ItRIqol8vqEDWsd1k+1iimxSdGjziBtBlHb9SzZ7mO1wYE
 83PpsYxkSbvceUomOjyJiu+fh692mY/EKrJUI7ExW3YhMUIBeVfkq+SXp
 mOMwdZt39VbKI5ANX6UG3QvEnQmO9LM3uhXpGgO0XxMFNa95xlPbwoOg3
 7Ld9wHYXEDSRBrq7k7MIJ1mODHy/+/FGCNWWDR14YYcOxFfpguorNqS4V
 wy/iTxJdU2eQ0sinUBlAdEL/MgPIcfGg0awms+GRiWDjwmlYpwE6G0Kfx
 dNwQBfYdP5hmYOzIDTPUap8bN/6xLJgfIvmZwkg3zuO0MRl9FG+gxhyS4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="249069935"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="249069935"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:18:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="507603771"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:18:07 -0800
Date: Mon, 21 Feb 2022 13:18:23 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220221111823.GA17861@intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
 <20220210062403.18690-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220210062403.18690-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Make pre-skl sprite plane
 registers unlocked
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

On Thu, Feb 10, 2022 at 08:24:03AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Drop the locks around sprite plane register writes. The
> lock isn't needed since each plane's register are neatly
> contained on their own cachelines.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 45 ---------------------
>  1 file changed, 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 2d71294aaceb..f6875a49b8cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -430,9 +430,6 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
>  	int crtc_y = plane_state->uapi.dst.y1;
>  	u32 crtc_w = drm_rect_width(&plane_state->uapi.dst);
>  	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
>  			  plane_state->view.color_plane[0].mapping_stride);
> @@ -440,8 +437,6 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
>  			  SP_POS_Y(crtc_y) | SP_POS_X(crtc_x));
>  	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
>  			  SP_HEIGHT(crtc_h - 1) | SP_WIDTH(crtc_w - 1));
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -457,14 +452,11 @@ vlv_sprite_update_arm(struct intel_plane *plane,
>  	u32 x = plane_state->view.color_plane[0].x;
>  	u32 y = plane_state->view.color_plane[0].y;
>  	u32 sprctl, linear_offset;
> -	unsigned long irqflags;
>  
>  	sprctl = plane_state->ctl | vlv_sprite_ctl_crtc(crtc_state);
>  
>  	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B)
>  		chv_sprite_update_csc(plane_state);
>  
> @@ -494,8 +486,6 @@ vlv_sprite_update_arm(struct intel_plane *plane,
>  
>  	vlv_sprite_update_clrc(plane_state);
>  	vlv_sprite_update_gamma(plane_state);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -505,14 +495,9 @@ vlv_sprite_disable_arm(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	enum plane_id plane_id = plane->id;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), 0);
>  	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static bool
> @@ -862,15 +847,12 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
>  	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
>  	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
>  	u32 sprscale = 0;
> -	unsigned long irqflags;
>  
>  	if (crtc_w != src_w || crtc_h != src_h)
>  		sprscale = SPRITE_SCALE_ENABLE |
>  			SPRITE_SRC_WIDTH(src_w - 1) |
>  			SPRITE_SRC_HEIGHT(src_h - 1);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
>  			  plane_state->view.color_plane[0].mapping_stride);
>  	intel_de_write_fw(dev_priv, SPRPOS(pipe),
> @@ -879,8 +861,6 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
>  			  SPRITE_HEIGHT(crtc_h - 1) | SPRITE_WIDTH(crtc_w - 1));
>  	if (IS_IVYBRIDGE(dev_priv))
>  		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -895,14 +875,11 @@ ivb_sprite_update_arm(struct intel_plane *plane,
>  	u32 x = plane_state->view.color_plane[0].x;
>  	u32 y = plane_state->view.color_plane[0].y;
>  	u32 sprctl, linear_offset;
> -	unsigned long irqflags;
>  
>  	sprctl = plane_state->ctl | ivb_sprite_ctl_crtc(crtc_state);
>  
>  	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	if (key->flags) {
>  		intel_de_write_fw(dev_priv, SPRKEYVAL(pipe), key->min_value);
>  		intel_de_write_fw(dev_priv, SPRKEYMSK(pipe),
> @@ -931,8 +908,6 @@ ivb_sprite_update_arm(struct intel_plane *plane,
>  			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
>  
>  	ivb_sprite_update_gamma(plane_state);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -941,17 +916,12 @@ ivb_sprite_disable_arm(struct intel_plane *plane,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, SPRCTL(pipe), 0);
>  	/* Disable the scaler */
>  	if (IS_IVYBRIDGE(dev_priv))
>  		intel_de_write_fw(dev_priv, SPRSCALE(pipe), 0);
>  	intel_de_write_fw(dev_priv, SPRSURF(pipe), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static bool
> @@ -1204,15 +1174,12 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
>  	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
>  	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
>  	u32 dvsscale = 0;
> -	unsigned long irqflags;
>  
>  	if (crtc_w != src_w || crtc_h != src_h)
>  		dvsscale = DVS_SCALE_ENABLE |
>  			DVS_SRC_WIDTH(src_w - 1) |
>  			DVS_SRC_HEIGHT(src_h - 1);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
>  			  plane_state->view.color_plane[0].mapping_stride);
>  	intel_de_write_fw(dev_priv, DVSPOS(pipe),
> @@ -1220,8 +1187,6 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, DVSSIZE(pipe),
>  			  DVS_HEIGHT(crtc_h - 1) | DVS_WIDTH(crtc_w - 1));
>  	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -1236,14 +1201,11 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  	u32 x = plane_state->view.color_plane[0].x;
>  	u32 y = plane_state->view.color_plane[0].y;
>  	u32 dvscntr, linear_offset;
> -	unsigned long irqflags;
>  
>  	dvscntr = plane_state->ctl | g4x_sprite_ctl_crtc(crtc_state);
>  
>  	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	if (key->flags) {
>  		intel_de_write_fw(dev_priv, DVSKEYVAL(pipe), key->min_value);
>  		intel_de_write_fw(dev_priv, DVSKEYMSK(pipe),
> @@ -1267,8 +1229,6 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  		g4x_sprite_update_gamma(plane_state);
>  	else
>  		ilk_sprite_update_gamma(plane_state);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -1277,16 +1237,11 @@ g4x_sprite_disable_arm(struct intel_plane *plane,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, DVSCNTR(pipe), 0);
>  	/* Disable the scaler */
>  	intel_de_write_fw(dev_priv, DVSSCALE(pipe), 0);
>  	intel_de_write_fw(dev_priv, DVSSURF(pipe), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static bool
> -- 
> 2.34.1
> 

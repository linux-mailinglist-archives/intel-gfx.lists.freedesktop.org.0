Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F370F44487F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4E873FF3;
	Wed,  3 Nov 2021 18:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30EE473FF3
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 18:45:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="295018265"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="295018265"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:45:18 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="639027548"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:45:17 -0700
Date: Wed, 3 Nov 2021 20:44:47 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211103184447.GA3153@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018115030.3547-10-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Split vlv/chv sprite plane
 update into noarm+arm pair
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

On Mon, Oct 18, 2021 at 02:50:30PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Chop vlv_sprite_update() into two halves. Fist half becomes
> the _noarm() variant, second part the _arm() variant.
> 
> Fortunately I have already previously grouped the register
> writes into roughtly the correct order, so the split looks
> surprisingly clean.
> 
> Looks like most of the hardware logic wa scopied from the
> pre-ctg sprite C, so SPSTRIDE/POS/SIZE are armed by SPSURF,
> while the rest are self arming. SPCONSTALPHA is the one
> entirely new register that didn't exist in the old sprite C,
> and looks like that one is self arming. The CHV pipe B CSC
> is also self arming, like the rest of the CHV pipe B
> additions.
> 
> I didn't have time to capture i915_update_info numbers for
> these, but since all the other platforms generally showed
> improvements, and crucially no regression, I am fairly
> confident this should behave similarly.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 45 ++++++++++++++-------
>  1 file changed, 30 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 4e5f95aebeca..fc6ecb41a40e 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -416,35 +416,24 @@ static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
>  }
>  
> -/* TODO: split into noarm+arm pair */
>  static void
> -vlv_sprite_update_arm(struct intel_plane *plane,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct intel_plane_state *plane_state)
> +vlv_sprite_update_noarm(struct intel_plane *plane,
> +			const struct intel_crtc_state *crtc_state,
> +			const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  	enum plane_id plane_id = plane->id;
> -	u32 sprsurf_offset = plane_state->view.color_plane[0].offset;
> -	u32 linear_offset;
> -	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
>  	int crtc_x = plane_state->uapi.dst.x1;
>  	int crtc_y = plane_state->uapi.dst.y1;
>  	u32 crtc_w = drm_rect_width(&plane_state->uapi.dst);
>  	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
> -	u32 x = plane_state->view.color_plane[0].x;
> -	u32 y = plane_state->view.color_plane[0].y;
>  	unsigned long irqflags;
> -	u32 sprctl;
> -
> -	sprctl = plane_state->ctl | vlv_sprite_ctl_crtc(crtc_state);
>  
>  	/* Sizes are 0 based */
>  	crtc_w--;
>  	crtc_h--;
>  
> -	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
> -
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
> @@ -453,7 +442,30 @@ vlv_sprite_update_arm(struct intel_plane *plane,
>  			  (crtc_y << 16) | crtc_x);
>  	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
>  			  (crtc_h << 16) | crtc_w);
> -	intel_de_write_fw(dev_priv, SPCONSTALPHA(pipe, plane_id), 0);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +vlv_sprite_update_arm(struct intel_plane *plane,
> +		      const struct intel_crtc_state *crtc_state,
> +		      const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +	enum plane_id plane_id = plane->id;
> +	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
> +	u32 sprsurf_offset = plane_state->view.color_plane[0].offset;
> +	u32 x = plane_state->view.color_plane[0].x;
> +	u32 y = plane_state->view.color_plane[0].y;
> +	u32 sprctl, linear_offset;
> +	unsigned long irqflags;
> +
> +	sprctl = plane_state->ctl | vlv_sprite_ctl_crtc(crtc_state);
> +
> +	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B)
>  		chv_sprite_update_csc(plane_state);
> @@ -467,6 +479,8 @@ vlv_sprite_update_arm(struct intel_plane *plane,
>  				  key->max_value);
>  	}
>  
> +	intel_de_write_fw(dev_priv, SPCONSTALPHA(pipe, plane_id), 0);
> +
>  	intel_de_write_fw(dev_priv, SPLINOFF(pipe, plane_id), linear_offset);
>  	intel_de_write_fw(dev_priv, SPTILEOFF(pipe, plane_id), (y << 16) | x);
>  
> @@ -1791,6 +1805,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  		return plane;
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +		plane->update_noarm = vlv_sprite_update_noarm;
>  		plane->update_arm = vlv_sprite_update_arm;
>  		plane->disable_arm = vlv_sprite_disable_arm;
>  		plane->get_hw_state = vlv_sprite_get_hw_state;
> -- 
> 2.32.0
> 

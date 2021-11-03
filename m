Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AF0444885
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341B673FFE;
	Wed,  3 Nov 2021 18:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F68473FFE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 18:47:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231519598"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="231519598"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:47:16 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="639028019"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:47:15 -0700
Date: Wed, 3 Nov 2021 20:46:50 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211103184650.GD3153@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018115030.3547-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Split skl+ plane update into
 noarm+arm pair
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

On Mon, Oct 18, 2021 at 02:50:26PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Chop skl_program_plane() into two halves. Fist half becomes
> the _noarm() variant, second part the _arm() variant.
> 
> Fortunately I have already previously grouped the register
> writes into roughtly the correct order, so the split looks
> surprisingly clean.
> 
> A few notable oddities I did not realize were self arming
> are AUX_DIST and COLOR_CTL.
> 
> i915_update_info doesn't look too terrible on my cfl running
> kms_atomic_transition --r plane-all-transition --extended:
> w/o patch                           w/ patch
> Updates: 2178                       Updates: 2018
>        |                                   |
>    1us |                               1us |
>        |                                   |
>    4us |                               4us |*****
>        |*********                          |**********
>   16us |**********                    16us |*******
>        |***                                |
>   66us |                              66us |
>        |                                   |
>  262us |                             262us |
>        |                                   |
>    1ms |                               1ms |
>        |                                   |
>    4ms |                               4ms |
>        |                                   |
>   17ms |                              17ms |
>        |                                   |
> Min update: 8332ns                  Min update: 6164ns
> Max update: 48758ns                 Max update: 31808ns
> Average update: 19959ns             Average update: 13159ns
> Overruns > 100us: 0                 Overruns > 100us: 0
> 
> And with lockdep enabled:
> w/o patch                           w/ patch
> Updates: 2177			    Updates: 2172
>        |			    	   |
>    1us |			       1us |
>        |			    	   |
>    4us |			       4us |
>        |*******			    	   |*********
>   16us |**********		      16us |**********
>        |*******			    	   |*
>   66us |			      66us |
>        |			    	   |
>  262us |			     262us |
>        |			    	   |
>    1ms |			       1ms |
>        |			    	   |
>    4ms |			       4ms |
>        |			    	   |
>   17ms |			      17ms |
>        |			    	   |
> Min update: 12645ns		    Min update: 9980ns
> Max update: 50153ns		    Max update: 33533ns
> Average update: 25337ns		    Average update: 18245ns
> Overruns > 250us: 0		    Overruns > 250us: 0
> 
> TODO: On icl+ everything seems to be armed by PLANE_SURF, so we
>       can optimize this even further on modern platforms. But I
>       think there's a bit of refactoring to be done first to
>       figure out the best way to go about it (eg. just reusing
>       the current skl+ functions, or doing a lower level split).
> 
> TODO: Split scaler programming as well, but IIRC the scaler
>       has some oddball double buffering behaviour on some
>       platforms, so needs proper reverse engineering
>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    | 113 +++++++++++-------
>  1 file changed, 72 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 74f3870d39b1..2a822e1e465e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1050,60 +1050,32 @@ static void icl_plane_csc_load_black(struct intel_plane *plane)
>  }
>  
>  static void
> -skl_program_plane(struct intel_plane *plane,
> -		  const struct intel_crtc_state *crtc_state,
> -		  const struct intel_plane_state *plane_state,
> -		  int color_plane)
> +skl_program_plane_noarm(struct intel_plane *plane,
> +			const struct intel_crtc_state *crtc_state,
> +			const struct intel_plane_state *plane_state,
> +			int color_plane)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> -	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
>  	u32 stride = skl_plane_stride(plane_state, color_plane);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> -	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
>  	int crtc_x = plane_state->uapi.dst.x1;
>  	int crtc_y = plane_state->uapi.dst.y1;
> -	u32 x = plane_state->view.color_plane[color_plane].x;
> -	u32 y = plane_state->view.color_plane[color_plane].y;
>  	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
>  	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> -	u8 alpha = plane_state->hw.alpha >> 8;
> -	u32 plane_color_ctl = 0, aux_dist = 0;
>  	unsigned long irqflags;
> -	u32 keymsk, keymax;
> -	u32 plane_ctl = plane_state->ctl;
> -
> -	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
> -
> -	if (DISPLAY_VER(dev_priv) >= 10)
> -		plane_color_ctl = plane_state->color_ctl |
> -			glk_plane_color_ctl_crtc(crtc_state);
>  
>  	/* Sizes are 0 based */
>  	src_w--;
>  	src_h--;
>  
> -	keymax = (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
> -
> -	keymsk = key->channel_mask & 0x7ffffff;
> -	if (alpha < 0xff)
> -		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;
> -
>  	/* The scaler will handle the output position */
>  	if (plane_state->scaler_id >= 0) {
>  		crtc_x = 0;
>  		crtc_y = 0;
>  	}
>  
> -	if (aux_plane) {
> -		aux_dist = skl_surf_address(plane_state, aux_plane) -
> -			skl_surf_address(plane_state, color_plane);
> -
> -		if (DISPLAY_VER(dev_priv) < 12)
> -			aux_dist |= skl_plane_stride(plane_state, aux_plane);
> -	}
> -
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	/*
> @@ -1119,16 +1091,10 @@ skl_program_plane(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
>  			  (src_h << 16) | src_w);
>  
> -	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
> -
>  	if (icl_is_hdr_plane(dev_priv, plane_id))
>  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
>  				  plane_state->cus_ctl);
>  
> -	if (DISPLAY_VER(dev_priv) >= 10)
> -		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> -				  plane_color_ctl);
> -
>  	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
>  		icl_program_input_csc(plane, crtc_state, plane_state);
>  
> @@ -1138,6 +1104,52 @@ skl_program_plane(struct intel_plane *plane,
>  
>  	skl_write_plane_wm(plane, crtc_state);
>  
> +	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +skl_program_plane_arm(struct intel_plane *plane,
> +		      const struct intel_crtc_state *crtc_state,
> +		      const struct intel_plane_state *plane_state,
> +		      int color_plane)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum plane_id plane_id = plane->id;
> +	enum pipe pipe = plane->pipe;
> +	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
> +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
> +	u32 x = plane_state->view.color_plane[color_plane].x;
> +	u32 y = plane_state->view.color_plane[color_plane].y;
> +	u32 keymsk, keymax, aux_dist = 0, plane_color_ctl = 0;
> +	u8 alpha = plane_state->hw.alpha >> 8;
> +	u32 plane_ctl = plane_state->ctl;
> +	unsigned long irqflags;
> +
> +	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
> +
> +	if (DISPLAY_VER(dev_priv) >= 10)
> +		plane_color_ctl = plane_state->color_ctl |
> +			glk_plane_color_ctl_crtc(crtc_state);
> +
> +	keymax = (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
> +
> +	keymsk = key->channel_mask & 0x7ffffff;
> +	if (alpha < 0xff)
> +		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;
> +
> +	if (aux_plane) {
> +		aux_dist = skl_surf_address(plane_state, aux_plane) -
> +			skl_surf_address(plane_state, color_plane);
> +
> +		if (DISPLAY_VER(dev_priv) < 12)
> +			aux_dist |= skl_plane_stride(plane_state, aux_plane);
> +	}
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
>  	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
>  			  key->min_value);
>  	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), keymsk);
> @@ -1146,17 +1158,22 @@ skl_program_plane(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
>  			  (y << 16) | x);
>  
> +	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
> +
>  	if (DISPLAY_VER(dev_priv) < 11)
>  		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
>  				  (plane_state->view.color_plane[1].y << 16) |
>  				   plane_state->view.color_plane[1].x);
>  
> -	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
> +	if (DISPLAY_VER(dev_priv) >= 10)
> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
>  
>  	/*
>  	 * Enable the scaler before the plane so that we don't
>  	 * get a catastrophic underrun even if the two operations
>  	 * end up happening in two different frames.
> +	 *
> +	 * TODO: split into noarm+arm pair
>  	 */
>  	if (plane_state->scaler_id >= 0)
>  		skl_program_plane_scaler(plane, crtc_state, plane_state);
> @@ -1199,7 +1216,20 @@ skl_plane_async_flip(struct intel_plane *plane,
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
> -/* TODO: split into noarm+arm pair */
> +static void
> +skl_plane_update_noarm(struct intel_plane *plane,
> +		       const struct intel_crtc_state *crtc_state,
> +		       const struct intel_plane_state *plane_state)
> +{
> +	int color_plane = 0;
> +
> +	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
> +		/* Program the UV plane on planar master */
> +		color_plane = 1;
> +
> +	skl_program_plane_noarm(plane, crtc_state, plane_state, color_plane);
> +}
> +
>  static void
>  skl_plane_update_arm(struct intel_plane *plane,
>  		     const struct intel_crtc_state *crtc_state,
> @@ -1211,7 +1241,7 @@ skl_plane_update_arm(struct intel_plane *plane,
>  		/* Program the UV plane on planar master */
>  		color_plane = 1;
>  
> -	skl_program_plane(plane, crtc_state, plane_state, color_plane);
> +	skl_program_plane_arm(plane, crtc_state, plane_state, color_plane);
>  }
>  
>  static bool intel_format_is_p01x(u32 format)
> @@ -2159,6 +2189,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  	}
>  
>  	plane->max_stride = skl_plane_max_stride;
> +	plane->update_noarm = skl_plane_update_noarm;
>  	plane->update_arm = skl_plane_update_arm;
>  	plane->disable_arm = skl_plane_disable_arm;
>  	plane->get_hw_state = skl_plane_get_hw_state;
> -- 
> 2.32.0
> 

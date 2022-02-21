Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B3B4BD966
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A54510E5A1;
	Mon, 21 Feb 2022 11:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B175B10E5DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645442495; x=1676978495;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+oYIL52svflkTFtHwPui4Gx+7DgemmzgiahCfb8bE6M=;
 b=iWI2Hkkt/HoO8dFdZtZWYYGWe+yyLVB2ijcz+EjzzXVE1gubQZJ5hWn6
 ZFE6YPmlCTGtx6ImK7JEccik7j/sbfebGt7LA27lvxBXUw+2VdZ3+Wc3q
 EuFNEwYWJVbxVbseo95I5Qbe2bAL/XO8d7Fh+SOWtOYbWDwSIHyZj++AX
 v+wEy9k0IobXE5v5xBmQsN0FNnSK0xuhv1iAP4jQxXxSuUaRZe+VMWe31
 pAQrjy1iMAmin529wGZlViEv5Wxuz9z2kDTlceIrRy0UCtEQhFOmC5AbG
 QUytAmAdxAw7cPkEslAXSiYLTQfWDhrzDpBvboNF3YSonZ2EtwJ7lgyu/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="312235332"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="312235332"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:21:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="507604751"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:21:34 -0800
Date: Mon, 21 Feb 2022 13:21:51 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220221112151.GA17897@intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
 <20220210062403.18690-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220210062403.18690-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915: Optimize icl+ universal
 plane programming
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

On Thu, Feb 10, 2022 at 08:23:59AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On icl+ all plane registers are armed by PLANE_SURF, so we can
> move almost everything over into the update_noarm() hook.
> 
> The PLANE_CTL write has to stay in the icl_update_arm() hook though
> as it still exhibits the somewhat annoying self-arming behaviour
> when the plane transitioning from disabled to enabled.
> 
> We could either do a full split for skl+ vs. icl+, or we could try
> some other kind of split where we'd eg. keep most things in the skl+
> functions and call them from the icl+ functions. I think a full split
> is probably the cleaner approach since we've anyway accumulated quite
> a bit of icl+ specific things, so that is what I opted to do.
> 
> Some i915_update_info stats for tgl:
> before:                             after:
> Updates: 5043                       Updates: 5043
>        |                                   |
>    1us |                               1us |
>        |**                                 |***
>    4us |******                         4us |********
>        |**********                         |***********
>   16us |***********                   16us |**********
>        |****                               |*
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
> Min update: 3494ns                  Min update: 2983ns
> Max update: 49491ns                 Max update: 39986ns
> Average update: 18031ns             Average update: 13423ns
> Overruns > 100us: 0                 Overruns > 100us: 0
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  .../drm/i915/display/skl_universal_plane.c    | 195 ++++++++++++++----
>  1 file changed, 155 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 1223075595ff..5b1b089e045d 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -619,6 +619,25 @@ skl_plane_disable_arm(struct intel_plane *plane,
>  
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
> +	skl_write_plane_wm(plane, crtc_state);
> +
> +	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +icl_plane_disable_arm(struct intel_plane *plane,
> +		      const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum plane_id plane_id = plane->id;
> +	enum pipe pipe = plane->pipe;
> +	unsigned long irqflags;
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
>  	if (icl_is_hdr_plane(dev_priv, plane_id))
>  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
>  
> @@ -1065,7 +1084,7 @@ static void icl_plane_csc_load_black(struct intel_plane *plane)
>  	intel_de_write_fw(i915, PLANE_CSC_POSTOFF(pipe, plane_id, 2), 0);
>  }
>  
> -static int skl_plane_color_plane(const struct intel_plane_state *plane_state)
> +static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
>  {
>  	/* Program the UV plane on planar master */
>  	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
> @@ -1082,9 +1101,7 @@ skl_plane_update_noarm(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> -	int color_plane = skl_plane_color_plane(plane_state);
> -	u32 stride = skl_plane_stride(plane_state, color_plane);
> -	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +	u32 stride = skl_plane_stride(plane_state, 0);
>  	int crtc_x = plane_state->uapi.dst.x1;
>  	int crtc_y = plane_state->uapi.dst.y1;
>  	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> @@ -1099,12 +1116,109 @@ skl_plane_update_noarm(struct intel_plane *plane,
>  
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
> +	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
> +			  PLANE_STRIDE_(stride));
> +	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
> +			  PLANE_POS_Y(crtc_y) | PLANE_POS_X(crtc_x));
> +	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
> +			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
> +
> +	skl_write_plane_wm(plane, crtc_state);
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +skl_plane_update_arm(struct intel_plane *plane,
> +		     const struct intel_crtc_state *crtc_state,
> +		     const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum plane_id plane_id = plane->id;
> +	enum pipe pipe = plane->pipe;
> +	u32 x = plane_state->view.color_plane[0].x;
> +	u32 y = plane_state->view.color_plane[0].y;
> +	u32 plane_ctl, plane_color_ctl = 0;
> +	unsigned long irqflags;
> +
> +	plane_ctl = plane_state->ctl |
> +		skl_plane_ctl_crtc(crtc_state);
> +
> +	if (DISPLAY_VER(dev_priv) >= 10)
> +		plane_color_ctl = plane_state->color_ctl |
> +			glk_plane_color_ctl_crtc(crtc_state);
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
> +	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
> +	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
> +
> +	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
> +			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
> +
> +	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
> +			  skl_plane_aux_dist(plane_state, 0));
> +
> +	intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
> +			  PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
> +			  PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
> +
> +	if (DISPLAY_VER(dev_priv) >= 10)
> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
> +
> +	/*
> +	 * Enable the scaler before the plane so that we don't
> +	 * get a catastrophic underrun even if the two operations
> +	 * end up happening in two different frames.
> +	 *
> +	 * TODO: split into noarm+arm pair
> +	 */
> +	if (plane_state->scaler_id >= 0)
> +		skl_program_plane_scaler(plane, crtc_state, plane_state);
> +
>  	/*
> -	 * FIXME: pxp session invalidation can hit any time even at time of commit
> -	 * or after the commit, display content will be garbage.
> +	 * The control register self-arms if the plane was previously
> +	 * disabled. Try to make the plane enable atomic by writing
> +	 * the control register just before the surface register.
>  	 */
> -	if (plane_state->force_black)
> -		icl_plane_csc_load_black(plane);
> +	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> +			  skl_plane_surf(plane_state, 0));
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +icl_plane_update_noarm(struct intel_plane *plane,
> +		       const struct intel_crtc_state *crtc_state,
> +		       const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum plane_id plane_id = plane->id;
> +	enum pipe pipe = plane->pipe;
> +	int color_plane = icl_plane_color_plane(plane_state);
> +	u32 stride = skl_plane_stride(plane_state, color_plane);
> +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +	int crtc_x = plane_state->uapi.dst.x1;
> +	int crtc_y = plane_state->uapi.dst.y1;
> +	int x = plane_state->view.color_plane[color_plane].x;
> +	int y = plane_state->view.color_plane[color_plane].y;
> +	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> +	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> +	u32 plane_color_ctl;
> +	unsigned long irqflags;
> +
> +	plane_color_ctl = plane_state->color_ctl |
> +		glk_plane_color_ctl_crtc(crtc_state);
> +
> +	/* The scaler will handle the output position */
> +	if (plane_state->scaler_id >= 0) {
> +		crtc_x = 0;
> +		crtc_y = 0;
> +	}
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
>  			  PLANE_STRIDE_(stride));
> @@ -1113,6 +1227,13 @@ skl_plane_update_noarm(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
>  			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
>  
> +	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
> +	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
> +	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
> +
> +	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
> +			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
> +
>  	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier)) {
>  		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 0),
>  				  lower_32_bits(plane_state->ccval));
> @@ -1120,61 +1241,49 @@ skl_plane_update_noarm(struct intel_plane *plane,
>  				  upper_32_bits(plane_state->ccval));
>  	}
>  
> +	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
> +			  skl_plane_aux_dist(plane_state, color_plane));
> +
>  	if (icl_is_hdr_plane(dev_priv, plane_id))
>  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
>  				  plane_state->cus_ctl);
>  
> +	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
> +
>  	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
>  		icl_program_input_csc(plane, crtc_state, plane_state);
>  
>  	skl_write_plane_wm(plane, crtc_state);
>  
> +	/*
> +	 * FIXME: pxp session invalidation can hit any time even at time of commit
> +	 * or after the commit, display content will be garbage.
> +	 */
> +	if (plane_state->force_black)
> +		icl_plane_csc_load_black(plane);
> +
>  	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
>  
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> -skl_plane_update_arm(struct intel_plane *plane,
> +icl_plane_update_arm(struct intel_plane *plane,
>  		     const struct intel_crtc_state *crtc_state,
>  		     const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> -	int color_plane = skl_plane_color_plane(plane_state);
> -	u32 x = plane_state->view.color_plane[color_plane].x;
> -	u32 y = plane_state->view.color_plane[color_plane].y;
> -	u32 plane_color_ctl = 0;
> -	u32 plane_ctl = plane_state->ctl;
> +	int color_plane = icl_plane_color_plane(plane_state);
> +	u32 plane_ctl;
>  	unsigned long irqflags;
>  
> -	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
> -
> -	if (DISPLAY_VER(dev_priv) >= 10)
> -		plane_color_ctl = plane_state->color_ctl |
> -			glk_plane_color_ctl_crtc(crtc_state);
> +	plane_ctl = plane_state->ctl |
> +		skl_plane_ctl_crtc(crtc_state);
>  
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
> -	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
> -	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
> -	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
> -
> -	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
> -			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
> -
> -	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
> -			  skl_plane_aux_dist(plane_state, color_plane));
> -
> -	if (DISPLAY_VER(dev_priv) < 11)
> -		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
> -				  PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
> -				  PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
> -
> -	if (DISPLAY_VER(dev_priv) >= 10)
> -		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
> -
>  	/*
>  	 * Enable the scaler before the plane so that we don't
>  	 * get a catastrophic underrun even if the two operations
> @@ -2162,9 +2271,15 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  	}
>  
>  	plane->max_stride = skl_plane_max_stride;
> -	plane->update_noarm = skl_plane_update_noarm;
> -	plane->update_arm = skl_plane_update_arm;
> -	plane->disable_arm = skl_plane_disable_arm;
> +	if (DISPLAY_VER(dev_priv) >= 11) {
> +		plane->update_noarm = icl_plane_update_noarm;
> +		plane->update_arm = icl_plane_update_arm;
> +		plane->disable_arm = icl_plane_disable_arm;
> +	} else {
> +		plane->update_noarm = skl_plane_update_noarm;
> +		plane->update_arm = skl_plane_update_arm;
> +		plane->disable_arm = skl_plane_disable_arm;
> +	}
>  	plane->get_hw_state = skl_plane_get_hw_state;
>  	plane->check_plane = skl_plane_check;
>  
> -- 
> 2.34.1
> 

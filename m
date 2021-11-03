Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53717444882
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:46:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E44F73FFB;
	Wed,  3 Nov 2021 18:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C48573FFB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 18:46:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="317773500"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="317773500"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:46:37 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="639027876"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:46:36 -0700
Date: Wed, 3 Nov 2021 20:46:11 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211103184611.GC3153@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018115030.3547-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Split g4x+ sprite plane
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

On Mon, Oct 18, 2021 at 02:50:28PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Chop g4x_sprite_update() into two halves. Fist half becomes
> the _noarm() variant, second part the _arm() variant.
> 
> Fortunately I have already previously grouped the register
> writes into roughtly the correct order, so the split looks
> surprisingly clean.
> 
> Not much of a change in i915_update_info on these older
> platforms that don't have so many planes or registers to
> begin with. Here are the numbers from snb (totally unpatched
> vs. both primary plane and sprite patched applied) running
> kms_atomic_transition --r plane-all-transition --extended:
> w/o patch                           w/ patch
> Updates: 5404			    Updates: 5405
>        |			    	   |
>    1us |******			       1us |******
>        |*********		    	   |*********
>    4us |***********		       4us |***********
>        |**********		    	   |**********
>   16us |**			      16us |**
>        |			    	   |
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
> Min update: 1400ns		    Min update: 1307ns
> Max update: 19809ns		    Max update: 20194ns
> Average update: 6957ns		    Average update: 6432ns
> Overruns > 100us: 0		    Overruns > 100us: 0
> 
> But there seems to be a slight improvement with
> lockdep enabled:
> w/o patch                           w/ patch
> Updates: 17612			    Updates: 16364
>        |			    	   |
>    1us |			       1us |
>        |******			    	   |******
>    4us |**********		       4us |**********
>        |************		    	   |*************
>   16us |*************		      16us |************
>        |***			    	   |*
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
> Min update: 3141ns		    Min update: 3562ns
> Max update: 126450ns		    Max update: 73354ns
> Average update: 16373ns		    Average update: 15153ns
> Overruns > 250us: 0		    Overruns > 250us: 0

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 41 ++++++++++++++-------
>  1 file changed, 28 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 9c36c1492b33..03e3bf890ce9 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -1165,28 +1165,21 @@ static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
>  }
>  
>  static void
> -g4x_sprite_update_arm(struct intel_plane *plane,
> -		      const struct intel_crtc_state *crtc_state,
> -		      const struct intel_plane_state *plane_state)
> +g4x_sprite_update_noarm(struct intel_plane *plane,
> +			const struct intel_crtc_state *crtc_state,
> +			const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> -	u32 dvssurf_offset = plane_state->view.color_plane[0].offset;
> -	u32 linear_offset;
> -	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
>  	int crtc_x = plane_state->uapi.dst.x1;
>  	int crtc_y = plane_state->uapi.dst.y1;
>  	u32 crtc_w = drm_rect_width(&plane_state->uapi.dst);
>  	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
> -	u32 x = plane_state->view.color_plane[0].x;
> -	u32 y = plane_state->view.color_plane[0].y;
>  	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
>  	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> -	u32 dvscntr, dvsscale = 0;
> +	u32 dvsscale = 0;
>  	unsigned long irqflags;
>  
> -	dvscntr = plane_state->ctl | g4x_sprite_ctl_crtc(crtc_state);
> -
>  	/* Sizes are 0 based */
>  	src_w--;
>  	src_h--;
> @@ -1196,8 +1189,6 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  	if (crtc_w != src_w || crtc_h != src_h)
>  		dvsscale = DVS_SCALE_ENABLE | (src_w << 16) | src_h;
>  
> -	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
> -
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
> @@ -1206,6 +1197,29 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, DVSSIZE(pipe), (crtc_h << 16) | crtc_w);
>  	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
>  
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
> +static void
> +g4x_sprite_update_arm(struct intel_plane *plane,
> +		      const struct intel_crtc_state *crtc_state,
> +		      const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
> +	u32 dvssurf_offset = plane_state->view.color_plane[0].offset;
> +	u32 x = plane_state->view.color_plane[0].x;
> +	u32 y = plane_state->view.color_plane[0].y;
> +	u32 dvscntr, linear_offset;
> +	unsigned long irqflags;
> +
> +	dvscntr = plane_state->ctl | g4x_sprite_ctl_crtc(crtc_state);
> +
> +	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
>  	if (key->flags) {
>  		intel_de_write_fw(dev_priv, DVSKEYVAL(pipe), key->min_value);
>  		intel_de_write_fw(dev_priv, DVSKEYMSK(pipe),
> @@ -1801,6 +1815,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  
>  		plane_funcs = &snb_sprite_funcs;
>  	} else {
> +		plane->update_noarm = g4x_sprite_update_noarm;
>  		plane->update_arm = g4x_sprite_update_arm;
>  		plane->disable_arm = g4x_sprite_disable_arm;
>  		plane->get_hw_state = g4x_sprite_get_hw_state;
> -- 
> 2.32.0
> 

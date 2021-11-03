Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 302CF444887
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692DF73FFD;
	Wed,  3 Nov 2021 18:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C11573FFD
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Nov 2021 18:47:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="229021677"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="229021677"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:47:40 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="639028169"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:47:38 -0700
Date: Wed, 3 Nov 2021 20:47:13 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211103184713.GE3153@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211018115030.3547-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Split pre-skl primary plane
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

On Mon, Oct 18, 2021 at 02:50:27PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Chop i9xx_plane_update() into two halves. Fist half becomes
> the _noarm() variant, second part the _arm() variant.
> 
> Fortunately I have already previously grouped the register
> writes into roughtly the correct order, so the split looks
> surprisingly clean.
> 
> One slightly surprising fact was that the CHV pipe B PRIMPOS/SIZE
> registers are self arming unlike their pre-ctg DSPPOS/SIZE
> counterparts. In fact all the new CHV pipe B registers are
> self arming.
> 
> I didn't do any i915_update_info measurements for this one
> alone. I'll get total numbers with the corrsponding sprite
> plane changes.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c | 61 +++++++++++++++--------
>  1 file changed, 40 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 93163f9100a8..9dfd0a53e0ee 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -418,23 +418,49 @@ static int i9xx_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
>  	return DIV_ROUND_UP(pixel_rate * num, den);
>  }
>  
> -/* TODO: split into noarm+arm pair */
> +static void i9xx_plane_update_noarm(struct intel_plane *plane,
> +				    const struct intel_crtc_state *crtc_state,
> +				    const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
> +	unsigned long irqflags;
> +
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
> +			  plane_state->view.color_plane[0].stride);
> +
> +	if (DISPLAY_VER(dev_priv) < 4) {
> +		int crtc_x = plane_state->uapi.dst.x1;
> +		int crtc_y = plane_state->uapi.dst.y1;
> +		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
> +		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
> +
> +		/*
> +		 * PLANE_A doesn't actually have a full window
> +		 * generator but let's assume we still need to
> +		 * program whatever is there.
> +		 */
> +		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
> +				  (crtc_y << 16) | crtc_x);
> +		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
> +				  ((crtc_h - 1) << 16) | (crtc_w - 1));
> +	}
> +
> +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +}
> +
>  static void i9xx_plane_update_arm(struct intel_plane *plane,
>  				  const struct intel_crtc_state *crtc_state,
>  				  const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
> -	u32 linear_offset;
>  	int x = plane_state->view.color_plane[0].x;
>  	int y = plane_state->view.color_plane[0].y;
> -	int crtc_x = plane_state->uapi.dst.x1;
> -	int crtc_y = plane_state->uapi.dst.y1;
> -	int crtc_w = drm_rect_width(&plane_state->uapi.dst);
> -	int crtc_h = drm_rect_height(&plane_state->uapi.dst);
> +	u32 dspcntr, dspaddr_offset, linear_offset;
>  	unsigned long irqflags;
> -	u32 dspaddr_offset;
> -	u32 dspcntr;
>  
>  	dspcntr = plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
>  
> @@ -447,20 +473,12 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
>  
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
> -	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
> -			  plane_state->view.color_plane[0].stride);
> +	if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
> +		int crtc_x = plane_state->uapi.dst.x1;
> +		int crtc_y = plane_state->uapi.dst.y1;
> +		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
> +		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
>  
> -	if (DISPLAY_VER(dev_priv) < 4) {
> -		/*
> -		 * PLANE_A doesn't actually have a full window
> -		 * generator but let's assume we still need to
> -		 * program whatever is there.
> -		 */
> -		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
> -				  (crtc_y << 16) | crtc_x);
> -		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
> -				  ((crtc_h - 1) << 16) | (crtc_w - 1));
> -	} else if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
>  		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
>  				  (crtc_y << 16) | crtc_x);
>  		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
> @@ -852,6 +870,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
>  			plane->max_stride = ilk_primary_max_stride;
>  	}
>  
> +	plane->update_noarm = i9xx_plane_update_noarm;
>  	plane->update_arm = i9xx_plane_update_arm;
>  	plane->disable_arm = i9xx_plane_disable_arm;
>  	plane->get_hw_state = i9xx_plane_get_hw_state;
> -- 
> 2.32.0
> 

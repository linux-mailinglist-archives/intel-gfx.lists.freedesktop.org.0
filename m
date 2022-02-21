Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B974BD964
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:18:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D2810E5F8;
	Mon, 21 Feb 2022 11:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EBA10E604
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645442334; x=1676978334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rkuFrYQENZcclgV5+7eUCLMEVgV1BVlvwBmc9EhCpzI=;
 b=imJDcmoojMkaCEy3mAtELI1u3LvzmrBI+XcimfOVZQ/5woutSrb9gv7u
 Xo86p3Q5+MHH7xBifoiv7aeIBoeqX7HKRufoefRjzI7RHpEWZdy3wJ53B
 W7BGQxoFBk+K4e0NNRkGrW4B7iIr85GBT6H8gwjmX3OytFPftOChfmWa7
 74InVoCHJTKio6DbPNs1cVl1MH5Q64YZDhwIq6Kec0/jAztrpDZh4/rPQ
 5ie9cJC6G9CVVDACDo490yV8n2oFWnR4NF4m0mONIBGAvVUVHrn7YNFps
 x9zzD4SU+vZpWnPfA8PrmDV6jbJUUW1HoYqgQdRPrRPUYBV6L53khBcgF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="238905147"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="238905147"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:18:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="507603912"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:18:52 -0800
Date: Mon, 21 Feb 2022 13:19:14 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220221111914.GB17861@intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
 <20220210062403.18690-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220210062403.18690-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915: Make most pre-skl primary
 plane registers unlocked
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

On Thu, Feb 10, 2022 at 08:24:02AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Drop the locks around most primary plane register writes.
> The lock isn't needed since each plane's register are neatly
> contained on their own cachelines.
> 
> The one exception we have to make is DSPADDR/DSPSURF which is
> (ab)used to also trigger FBC nukes on pre-snb (since the
> hardware doesn't seem to have any dedicated mechanism to
> trigger nukes). So we need to keep the lock around it to
> protect against the rmw performed by the fbc code.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c | 24 +++++++++--------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index a87b65cd41fd..af190bacdd97 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -418,9 +418,6 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
>  			  plane_state->view.color_plane[0].mapping_stride);
> @@ -441,8 +438,6 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
>  		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
>  				  DISP_HEIGHT(crtc_h - 1) | DISP_WIDTH(crtc_w - 1));
>  	}
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void i9xx_plane_update_arm(struct intel_plane *plane,
> @@ -465,8 +460,6 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
>  	else
>  		dspaddr_offset = linear_offset;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
>  		int crtc_x = plane_state->uapi.dst.x1;
>  		int crtc_y = plane_state->uapi.dst.y1;
> @@ -496,13 +489,15 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
>  	 * the control register just before the surface register.
>  	 */
>  	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
> +
> +	/* lock to protect against rmw in fbc nuke */
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  	if (DISPLAY_VER(dev_priv) >= 4)
>  		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
>  				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
>  	else
>  		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
>  				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> -
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
> @@ -540,14 +535,14 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
>  	 */
>  	dspcntr = i9xx_plane_ctl_crtc(crtc_state);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
> +
> +	/* lock to protect against rmw in fbc nuke */
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  	if (DISPLAY_VER(dev_priv) >= 4)
>  		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
>  	else
>  		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
> -
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
> @@ -566,8 +561,10 @@ g4x_primary_async_flip(struct intel_plane *plane,
>  	if (async_flip)
>  		dspcntr |= DISP_ASYNC_FLIP;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
> +
> +	/* lock to protect against rmw in fbc nuke */
> +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
>  			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> @@ -582,12 +579,9 @@ vlv_primary_async_flip(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
>  	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
> -	unsigned long irqflags;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  	intel_de_write_fw(dev_priv, DSPADDR_VLV(i9xx_plane),
>  			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> -- 
> 2.34.1
> 

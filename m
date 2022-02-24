Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCED34C2E88
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 15:38:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AFB10EA51;
	Thu, 24 Feb 2022 14:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523BE10EA51
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 14:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645713492; x=1677249492;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XllcH9I7fXUh8dxaXW7lVN3DcaonhbSDrT6Ez23cRp0=;
 b=f9/BuQTKOD2mdVR+/eaIUY6+KeeW6X1KC0jCmRsIed8UwPDoUf4f4au/
 PAc0DGpOoLf5zwIPbTOykvKVrFlO5N6v9XSh+9DWlGxiUFSzfjLfXkxdk
 4qMzK/SVv4PUI4IVqIQ/skHtNxjMXL6a4Nftj67vSn9oVNqoBsUXgSAHB
 VgjzKjL97BzbzKKMraXdH1gDBj3Uter1cxMPL/6U6d0KhojjjijmIiDgO
 ypkrWCPmgTSmF0J9rGOvdJru+4KeMLGs/UMD7EmoFOOn/58V8qjsK15fc
 3zCt9nT5V/bRBZTCqZbLibuS9bFtCaloJfHM+lm3Aw9lvoF5W+X+AfJkU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="232223611"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="232223611"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:37:57 -0800
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="637849183"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 06:37:56 -0800
Date: Thu, 24 Feb 2022 16:38:20 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220224143820.GB19081@intel.com>
References: <20220210062403.18690-1-ville.syrjala@linux.intel.com>
 <20220210062403.18690-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220210062403.18690-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915: Make skl+ universal plane
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

On Thu, Feb 10, 2022 at 08:24:00AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Drop the locks around most universal plane register writes.
> The lock isn't needed since each plane's register are neatly
> contained on their own cachelines.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  .../drm/i915/display/skl_universal_plane.c    | 35 -------------------
>  1 file changed, 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 5b1b089e045d..db9e31c12169 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -615,16 +615,11 @@ skl_plane_disable_arm(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	skl_write_plane_wm(plane, crtc_state);
>  
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -634,9 +629,6 @@ icl_plane_disable_arm(struct intel_plane *plane,
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	if (icl_is_hdr_plane(dev_priv, plane_id))
>  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
> @@ -646,8 +638,6 @@ icl_plane_disable_arm(struct intel_plane *plane,
>  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static bool
> @@ -1106,7 +1096,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
>  	int crtc_y = plane_state->uapi.dst.y1;
>  	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
>  	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> -	unsigned long irqflags;
>  
>  	/* The scaler will handle the output position */
>  	if (plane_state->scaler_id >= 0) {
> @@ -1114,8 +1103,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
>  		crtc_y = 0;
>  	}
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
>  			  PLANE_STRIDE_(stride));
>  	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
> @@ -1124,8 +1111,6 @@ skl_plane_update_noarm(struct intel_plane *plane,
>  			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
>  
>  	skl_write_plane_wm(plane, crtc_state);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -1139,7 +1124,6 @@ skl_plane_update_arm(struct intel_plane *plane,
>  	u32 x = plane_state->view.color_plane[0].x;
>  	u32 y = plane_state->view.color_plane[0].y;
>  	u32 plane_ctl, plane_color_ctl = 0;
> -	unsigned long irqflags;
>  
>  	plane_ctl = plane_state->ctl |
>  		skl_plane_ctl_crtc(crtc_state);
> @@ -1148,8 +1132,6 @@ skl_plane_update_arm(struct intel_plane *plane,
>  		plane_color_ctl = plane_state->color_ctl |
>  			glk_plane_color_ctl_crtc(crtc_state);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id), skl_plane_keyval(plane_state));
>  	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), skl_plane_keymsk(plane_state));
>  	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), skl_plane_keymax(plane_state));
> @@ -1185,8 +1167,6 @@ skl_plane_update_arm(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
>  			  skl_plane_surf(plane_state, 0));
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -1207,7 +1187,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
>  	int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
>  	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
>  	u32 plane_color_ctl;
> -	unsigned long irqflags;
>  
>  	plane_color_ctl = plane_state->color_ctl |
>  		glk_plane_color_ctl_crtc(crtc_state);
> @@ -1218,8 +1197,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
>  		crtc_y = 0;
>  	}
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
>  			  PLANE_STRIDE_(stride));
>  	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
> @@ -1263,8 +1240,6 @@ icl_plane_update_noarm(struct intel_plane *plane,
>  		icl_plane_csc_load_black(plane);
>  
>  	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -1277,13 +1252,10 @@ icl_plane_update_arm(struct intel_plane *plane,
>  	enum pipe pipe = plane->pipe;
>  	int color_plane = icl_plane_color_plane(plane_state);
>  	u32 plane_ctl;
> -	unsigned long irqflags;
>  
>  	plane_ctl = plane_state->ctl |
>  		skl_plane_ctl_crtc(crtc_state);
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	/*
>  	 * Enable the scaler before the plane so that we don't
>  	 * get a catastrophic underrun even if the two operations
> @@ -1302,8 +1274,6 @@ icl_plane_update_arm(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
>  			  skl_plane_surf(plane_state, color_plane));
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static void
> @@ -1313,7 +1283,6 @@ skl_plane_async_flip(struct intel_plane *plane,
>  		     bool async_flip)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> -	unsigned long irqflags;
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
>  	u32 plane_ctl = plane_state->ctl;
> @@ -1323,13 +1292,9 @@ skl_plane_async_flip(struct intel_plane *plane,
>  	if (async_flip)
>  		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
>  			  skl_plane_surf(plane_state, 0));
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  static bool intel_format_is_p01x(u32 format)
> -- 
> 2.34.1
> 

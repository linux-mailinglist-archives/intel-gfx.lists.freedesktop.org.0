Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3261C425AE9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 20:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4047F6E58E;
	Thu,  7 Oct 2021 18:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEF086E58E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 18:36:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226618561"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="226618561"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 11:36:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="478676021"
Received: from jbkilula-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.251.137.40])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 11:36:50 -0700
Date: Thu, 7 Oct 2021 14:36:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Anshuman Gupta <anshuman.gupta@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Juston Li <juston.li@intel.com>, Uma Shankar <uma.shankar@intel.com>
Message-ID: <YV8+P2TOWhD4nukJ@intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
 <20211006235704.28894-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211006235704.28894-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Fix up skl_program_plane()
 pxp stuff
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

On Thu, Oct 07, 2021 at 02:57:02AM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> There's lots of expensive stuff inserted between the PLANE_CTL
> and  PLANE_SURF writes even though the comment before the PLANE_CTL
> write says not to put stuff there. Move it all to a more apporiate
> place.

Yeap, the comment was ignored by all, including me during reviews. Sorry.

I'm wondering now if this entire block deserves a separated function
with more emphasis on the "do not put anything between plane_ctl and
plane_srf...

> 
> There's also a weird PLANE_COLOR_CTL RMW in there. I guess because
> force_black was computed way too late originally, but that is now
> sorted.

I would be hesitant in removing that, but since Juston confirmed that
everything works well for him with these patches, it is fine by me.

Great clean-up.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for this and all the other patches.

> 
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Juston Li <juston.li@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    | 30 +++++++++----------
>  1 file changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 1fcb41942c7e..55dae8c8fcad 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -985,6 +985,9 @@ static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
>  			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	}
>  
> +	if (plane_state->force_black)
> +		plane_color_ctl |= PLANE_COLOR_PLANE_CSC_ENABLE;
> +
>  	return plane_color_ctl;
>  }
>  
> @@ -1090,8 +1093,19 @@ skl_program_plane(struct intel_plane *plane,
>  			aux_dist |= skl_plane_stride(plane_state, aux_plane);
>  	}
>  
> +	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
> +	if (plane_state->decrypt)
> +		plane_surf |= PLANE_SURF_DECRYPT;
> +
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
> +	/*
> +	 * FIXME: pxp session invalidation can hit any time even at time of commit
> +	 * or after the commit, display content will be garbage.
> +	 */
> +	if (plane_state->force_black)
> +		intel_load_plane_csc_black(plane);
> +
>  	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id), stride);
>  	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
>  			  (crtc_y << 16) | crtc_x);
> @@ -1146,22 +1160,6 @@ skl_program_plane(struct intel_plane *plane,
>  	 * the control register just before the surface register.
>  	 */
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> -	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
> -	plane_color_ctl = intel_de_read_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id));
> -
> -	/*
> -	 * FIXME: pxp session invalidation can hit any time even at time of commit
> -	 * or after the commit, display content will be garbage.
> -	 */
> -	if (plane_state->decrypt) {
> -		plane_surf |= PLANE_SURF_DECRYPT;
> -	} else if (plane_state->force_black) {
> -		intel_load_plane_csc_black(plane);
> -		plane_color_ctl |= PLANE_COLOR_PLANE_CSC_ENABLE;
> -	}
> -
> -	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> -			  plane_color_ctl);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
>  
>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> -- 
> 2.32.0
> 

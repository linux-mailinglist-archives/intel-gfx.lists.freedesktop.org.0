Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381F878FE19
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9563410E7C7;
	Fri,  1 Sep 2023 13:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041CE10E7C5;
 Fri,  1 Sep 2023 13:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573852; x=1725109852;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=k0/38VGWA6zJgWXMaf60LYJgr0vQpa32WGJXS2Q1HIM=;
 b=OMg1wdynVkosyZgIyRs7JK7RXHmihRSyX6FukLwnMwyhNjWDlRX4YYiy
 NYgYD3qVBbJ1hp7CKxj7aA6Dh5NsLJrdWGDUF4PtNMQNg8xaXNbBLcFqI
 OZqkF5C7KvysaCDFYR6ByUElVYLhDMzaMBMQxZy5jhzfv3GXuIWGcImI7
 Ir4qRp5t7tq6DYh9Q36UouWczPZ7LT07WCv0PMIeLCD70dyCYIpN35Jje
 AZmcViM2KXxdxsvw/shViEUrLP9kN9bcg+5zanGNq+Ir0ZgS8W1xRErRw
 aE3uKAv0jnvV5uOMWBj0NLCzXmA9Yd7a6FFQwBAg90/K8Dslj7CGjbQJ6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361241753"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361241753"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:10:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774997070"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774997070"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:10:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:10:47 +0300
Date: Fri, 1 Sep 2023 16:10:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZPHi15bP1aE3Nu_W@intel.com>
References: <20230901125950.76088-1-vinod.govindapillai@intel.com>
 <20230901125950.76088-2-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230901125950.76088-2-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/lnl: possibility to enable
 FBC on first three planes
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com,
 intel-xe@lists.freedesktop.org, ville.syraja@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 01, 2023 at 03:59:50PM +0300, Vinod Govindapillai wrote:
> In LNL onwards, FBC can be associated to the first three planes.
> FBC will be enabled on planes first come first served basis
> until the userspace can select one of these FBC capable plane
> explicitly. FBC can be supported in planes with per pixel alpha
> 
> v2:
>  - avoid fbc->state.plane check in intel_fbc_check_plane (Ville)
>  - simplify plane binding register writes (Matt)
>  - Update the subject to reflect that fbc can be enabled only in
>    the first three planes (Matt)
> 
> Bspec: 69560
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c           | 7 ++++++-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 ++++-
>  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
>  3 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 66c8aed07bbc..f1537bb63775 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -660,6 +660,10 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  	if (IS_IVYBRIDGE(i915))
>  		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
>  
> +	if (DISPLAY_VER(i915) >= 20)
> +		dpfc_ctl |= REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK,
> +					   fbc_state->plane->id);

Please add the customary wrapped macro for this.

We'll also need to deal with that annoying plane switching w/a.
Easiest might be to just write DPCF_CTL without the enable bit
in .program_cfb(). But that can be a separate patch for clarity.

> +
>  	if (fbc_state->fence_id >= 0)
>  		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
>  
> @@ -1206,7 +1210,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
> +	if (DISPLAY_VER(i915) < 20 &&

One patch per logical change please.

> +	    plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
>  	    fb->format->has_alpha) {
>  		plane_state->no_fbc_reason = "per-pixel alpha not supported";
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 4d01c7ae4485..1291351c9941 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1962,7 +1962,10 @@ static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
>  	if ((DISPLAY_RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
>  		return false;
>  
> -	return plane_id == PLANE_PRIMARY;
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		return plane_id <= PLANE_SPRITE1;

I think we have some kind of is_hdr_plane() helper somewhere.
Probably should use that.

> +	else
> +		return plane_id == PLANE_PRIMARY;
>  }
>  
>  static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index aefad14ab27a..aadcc630cb52 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1327,6 +1327,7 @@
>  #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
>  #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
>  #define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
> +#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* lnl */

Presumably lnl+

>  #define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
>  #define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
>  #define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel

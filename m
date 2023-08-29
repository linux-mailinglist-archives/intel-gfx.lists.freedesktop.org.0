Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AFC78BF9F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 09:50:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019A010E0B8;
	Tue, 29 Aug 2023 07:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD43A10E0AC;
 Tue, 29 Aug 2023 07:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693295410; x=1724831410;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wS6fEoJ0Z9D4dqYGzoSMCiJUU1nHQ18GEYtb43AJlt8=;
 b=at9OQ/nj+Ff+j9fz4VU/QtXLEMzfcovz8a1a1s4cGR/f2l0OuWPO0rl2
 jiKjTcrEXx1NXt1a54dqD30WVyzIJY3KjqcilLGtvcr+bYVmy96SxMLRO
 tyuev2jr7MAMwSgW36L4IMqarwJ5YboY2Qz2aPaBT2zX6O4rnW2Hv82bY
 7cyJpmTLcHhOGCQwU5haB9T15ugxe2z6yKAnkuD8TXHSN3aIVnsr1WDiY
 VSwEEO56xhQjkFcZE6jTfuWe6OFgq0ebo6ZktCafZipYvVaXT1leuGWSp
 MVWapN0ZUzxpwmDPa4U8LeJUTkJY2wCXRn7uBUVbO6Hb4Ic+tsLLaIoZs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="372718851"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="372718851"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 00:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="715421999"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="715421999"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga006.jf.intel.com with SMTP; 29 Aug 2023 00:50:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Aug 2023 10:50:06 +0300
Date: Tue, 29 Aug 2023 10:50:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZO2jLiEn9zuQFqsO@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230828062035.6906-4-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 09:20:34AM +0300, Vinod Govindapillai wrote:
> In LNL onwards, FBC can be associated to the first three planes.
> The FBC will be enabled for first FBC capable visible plane
> until the userspace can select one of these FBC capable plane
> explicitly
> 
> Bspec: 69560
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 29 +++++++++++++++++++
>  .../drm/i915/display/skl_universal_plane.c    |  5 +++-
>  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
>  3 files changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 45e205a0f740..62f59630d410 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -649,6 +649,21 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
>  		     CHICKEN_FBC_STRIDE_MASK, val);
>  }
>  
> +static u32 lnl_plane_binding(struct intel_fbc *fbc)
> +{
> +	switch (fbc->state.plane->id) {
> +	default:
> +		MISSING_CASE(fbc->state.plane->id);
> +		fallthrough;
> +	case 0:
> +		return DPFC_CTL_PLANE_BINDING_1;
> +	case 1:
> +		return DPFC_CTL_PLANE_BINDING_2;
> +	case 2:
> +		return DPFC_CTL_PLANE_BINDING_3;
> +	}
> +}
> +
>  static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> @@ -660,6 +675,9 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  	if (IS_IVYBRIDGE(i915))
>  		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
>  
> +	if (DISPLAY_VER(i915) >= 20)
> +		dpfc_ctl |= lnl_plane_binding(fbc);
> +
>  	if (fbc_state->fence_id >= 0)
>  		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
>  
> @@ -1250,6 +1268,17 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		}
>  	}
>  
> +	/*
> +	 * From LNL, FBC can be assigned on any plane. Until a provision is
> +	 * provided for the userspace to select a plane for FBC, lets select
> +	 * the first visible plane that is FBC capable.
> +	 */
> +	if (DISPLAY_VER(i915) >= 20 && fbc->state.plane &&
> +	    fbc->state.plane != plane) {
> +		plane_state->no_fbc_reason = "fbc enabled on another plane";
> +		return 0;
> +	}

This isn't right. fbc->state.plane is an internal state thing
that chanes willy nilly, so we don't want to check it here.

But we shouldn't need this kind of check anyway. The code 
should already work just fine if you just do the tweak to
skl_plane_has_fbc((). Which plane actually gets FBC will be
a bit random, but I think that's fine for the moment.

> +
>  	plane_state->no_fbc_reason = NULL;
>  
>  	return 0;
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
> +	else
> +		return plane_id == PLANE_PRIMARY;
>  }
>  
>  static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index aefad14ab27a..b207774f3c33 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1327,6 +1327,10 @@
>  #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
>  #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
>  #define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
> +#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_1		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 0) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_2		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 1) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_3		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 2) /* XE */
>  #define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
>  #define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
>  #define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel

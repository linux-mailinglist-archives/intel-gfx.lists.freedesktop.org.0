Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CE87A66A4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 16:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E03B10E3D7;
	Tue, 19 Sep 2023 14:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1920D10E3D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 14:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695133587; x=1726669587;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rkMmR1Ej+Yp2AtQuJmoEFb41ZXXa94YhXJ6AdnC//mo=;
 b=Mz02wG1w0cez298+0YgIYVXOlsGtfaSdBCglRlJS/wSy8YqbL+MijIJy
 n9TTddK+DwPNWkYktvghSixzBxMxc/6yvt27wwjeVpYbeOL6TiKtr5/Dr
 o5ZwDgNdADWw+CWbbQ5mRa2p5BLqT2w/wP/YRWTHgL97Aokj2hTF57AbZ
 HgNRwq+8xVGIc8kdpFHTUrmXbl/+7or62K1u/QUJsxSdqVTHfV0KjkTLu
 acNNECK9cQsC5+b+Xf54hgBY0SL43PHA9L2WhEFRE4pykCZC83UZW/7P3
 a4jKpbxivBPXvaKpuRS5oksCaym7wVnRDD+Uo4usb8cED+aS59JBmP9BR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="383786090"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="383786090"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 07:26:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746259436"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="746259436"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga002.jf.intel.com with SMTP; 19 Sep 2023 07:26:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Sep 2023 17:26:09 +0300
Date: Tue, 19 Sep 2023 17:26:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZQmvga80j6_iCnQ6@intel.com>
References: <20230914192659.757475-8-imre.deak@intel.com>
 <20230918182506.1634464-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230918182506.1634464-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 07/25] drm/i915: Rename
 intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
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

On Mon, Sep 18, 2023 at 09:25:04PM +0300, Imre Deak wrote:
> Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late() to
> clarify when the function can be called (vs.
> intel_modeset_pipes_in_mask_early()).
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display.h | 4 ++--
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ad5251ba6fe13..a2e20b25d6361 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3139,7 +3139,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
>  					     &new_cdclk_state->actual)) {
>  		/* All pipes must be switched off while we change the cdclk. */
> -		ret = intel_modeset_all_pipes(state, "CDCLK change");
> +		ret = intel_modeset_all_pipes_late(state, "CDCLK change");
>  		if (ret)
>  			return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1c9a128f4af27..9a69b8848fee6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5475,7 +5475,7 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_modeset_all_pipes - force a full modeset on all pipes
> + * intel_modeset_all_pipes_late - force a full modeset on all pipes
>   * @state: intel atomic state
>   * @reason: the reason for the full modeset
>   *
> @@ -5485,8 +5485,8 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>   *
>   * Returns 0 in case of success, negative error code otherwise.
>   */
> -int intel_modeset_all_pipes(struct intel_atomic_state *state,
> -			    const char *reason)
> +int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
> +				 const char *reason)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 3008e8b2b437e..64a5be7859331 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -515,8 +515,8 @@ void intel_update_watermarks(struct drm_i915_private *i915);
>  /* modesetting */
>  int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>  				      const char *reason, u8 pipe_mask);
> -int intel_modeset_all_pipes(struct intel_atomic_state *state,
> -			    const char *reason);
> +int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
> +				 const char *reason);
>  void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
>  					  struct intel_power_domain_mask *old_domains);
>  void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 063929a42a42f..a29d9b717deed 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2616,7 +2616,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  
>  		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
>  			/* TODO: Implement vblank synchronized MBUS joining changes */
> -			ret = intel_modeset_all_pipes(state, "MBUS joining change");
> +			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
>  			if (ret)
>  				return ret;
>  		}
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9171D3B7177
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 13:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC46C6E86E;
	Tue, 29 Jun 2021 11:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897EE6E86E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 11:40:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="206306734"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="206306734"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 04:40:53 -0700
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="641276248"
Received: from cuzum-mobl.ger.corp.intel.com (HELO localhost) ([10.249.36.143])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 04:40:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nischal Varide <nischal.varide@intel.com>, intel-gfx@lists.freedesktop.org,
 nischal.varide@intel.com, uma.shankar@intel.com, anshuman.gupta@intel.com
In-Reply-To: <20210611025447.17234-1-nischal.varide@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210611025447.17234-1-nischal.varide@intel.com>
Date: Tue, 29 Jun 2021 14:40:45 +0300
Message-ID: <87a6n8sxtu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: Enabling dithering after
 the CC1
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Cc: Ville and Daniel for archeology...

On Fri, 11 Jun 2021, Nischal Varide <nischal.varide@intel.com> wrote:
> If the panel is 12bpc then Dithering is not enabled in the Legacy
> dithering block , instead its Enabled after the C1 CC1 pipe post
> color space conversion.For a 6bpc pannel Dithering is enabled in
> Legacy block.

Currently, we only ever enable dithering for 6 bpc displays. See commit
e8fa4270536d ("drm/i915: Only dither on 6bpc panels"). This is decided
at the end of intel_modeset_pipe_config().

The big question here is if we want to expand the use of dithering. I
guess we could be able to reduce banding if we did?

> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c   |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h              |  1 +
>  3 files changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index dab892d2251b..c7af583200c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1574,6 +1574,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
>  static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
>  {
>  	u32 gamma_mode = 0;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  
>  	if (crtc_state->hw.degamma_lut)
>  		gamma_mode |= PRE_CSC_GAMMA_ENABLE;
> @@ -1588,6 +1589,12 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
>  	else
>  		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
>  
> +	if (DISPLAY_VER(i915) >= 13) {
> +		if (!crtc_state->dither_force_disable &&
> +				(crtc_state->pipe_bpp == 36))
> +			gamma_mode |= POST_CC1_DITHER_ENABLE;
> +	}

This enables dithering independent of crtc_state->dither. That doesn't
seem like a good idea. I think the decision should be made at the end of
intel_modeset_pipe_config().

	if (DISPLAY_VER(i915) >= 13 && crtc_state->dither &&
	    crtc_state->pipe_bpp == 36)
		gamma_mode |= POST_CC1_DITHER_ENABLE;

Obviously, as we currently only enable dithering for 6 bpc, this would
become a nop if it looked at crtc_state->dither and pipe_bpp only.

> +
>  	return gamma_mode;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 362bff9beb5c..3a7feb246745 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5762,7 +5762,16 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
>  		break;
>  	}
>  
> -	if (crtc_state->dither)
> +	/*
> +	 * If 12bpc panel then, Enables dithering after the CC1 pipe
> +	 * post color space conversion and not here for display_ver
> +	 * greater than or equal to thirteen.
> +	 */
> +
> +	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))
> +		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
> +
> +	if (crtc_state->dither && (crtc_state->pipe_bpp == 36) && (DISPLAY_VER(dev_priv) < 13))
>  		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;

This is what you're trying to say:

	/* 12 bpc dithering is done at post CSC gamma for display 13+ */
	if (crtc_state->dither &&
	    (crtc_state->pipe_bpp != 36 || DISPLAY_VER(dev_priv) < 13))
		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;

Again, this is a nop until we decide to use dithering more.

>  
>  	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e915ec034c98..33dba13fa94d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7743,6 +7743,7 @@ enum {
>  #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
>  #define  PRE_CSC_GAMMA_ENABLE	(1 << 31)
>  #define  POST_CSC_GAMMA_ENABLE	(1 << 30)
> +#define  POST_CC1_DITHER_ENABLE (1 << 26)
>  #define  GAMMA_MODE_MODE_MASK	(3 << 0)
>  #define  GAMMA_MODE_MODE_8BIT	(0 << 0)
>  #define  GAMMA_MODE_MODE_10BIT	(1 << 0)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

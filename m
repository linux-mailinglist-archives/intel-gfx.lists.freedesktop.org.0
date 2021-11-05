Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E33104467F2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 18:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1576EB49;
	Fri,  5 Nov 2021 17:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462B56EB49
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 17:31:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10159"; a="295392993"
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="295392993"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 10:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="490402421"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 05 Nov 2021 10:31:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Nov 2021 19:31:31 +0200
Date: Fri, 5 Nov 2021 19:31:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YYVqc0hrHoo36GiE@intel.com>
References: <20211104010858.43559-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211104010858.43559-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/adlp: Disable underrun
 recovery
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

On Wed, Nov 03, 2021 at 06:08:58PM -0700, José Roberto de Souza wrote:
> It was also defeatured for ADL-P and other platforms.
> 
> BSpec: 55424
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Can you also nuke the now pointless bubble counter programming
as well?

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 39 ++++----------------
>  1 file changed, 7 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 29392dfc46c8d..64406408ba590 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -956,26 +956,6 @@ void intel_display_finish_reset(struct drm_i915_private *dev_priv)
>  	clear_bit_unlock(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
>  }
>  
> -static bool underrun_recovery_supported(const struct intel_crtc_state *crtc_state)
> -{
> -	if (crtc_state->pch_pfit.enabled &&
> -	    (crtc_state->pipe_src_w > drm_rect_width(&crtc_state->pch_pfit.dst) ||
> -	     crtc_state->pipe_src_h > drm_rect_height(&crtc_state->pch_pfit.dst) ||
> -	     crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420))
> -		return false;
> -
> -	if (crtc_state->dsc.compression_enable)
> -		return false;
> -
> -	if (crtc_state->has_psr2)
> -		return false;
> -
> -	if (crtc_state->splitter.enable)
> -		return false;
> -
> -	return true;
> -}
> -
>  static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -999,19 +979,14 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
>  	 */
>  	tmp |= PIXEL_ROUNDING_TRUNC_FB_PASSTHRU;
>  
> -	if (IS_DG2(dev_priv)) {
> -		/*
> -		 * Underrun recovery must always be disabled on DG2.  However
> -		 * the chicken bit meaning is inverted compared to other
> -		 * platforms.
> -		 */
> +	/*
> +	 * Underrun recovery must always be disabled on display 13+.
> +	 * DG2 chicken bit meaning is inverted compared to other platforms.
> +	 */
> +	if (IS_DG2(dev_priv))
>  		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
> -	} else if (DISPLAY_VER(dev_priv) >= 13) {
> -		if (underrun_recovery_supported(crtc_state))
> -			tmp &= ~UNDERRUN_RECOVERY_DISABLE_ADLP;
> -		else
> -			tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
> -	}
> +	else if (DISPLAY_VER(dev_priv) >= 13)
> +		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
>  
>  	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
>  }
> -- 
> 2.33.1

-- 
Ville Syrjälä
Intel

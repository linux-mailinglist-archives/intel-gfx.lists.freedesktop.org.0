Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EFB6EF99D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 19:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F86210E2FE;
	Wed, 26 Apr 2023 17:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA3C10E9E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 17:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682531342; x=1714067342;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ljzCQgHjTsPRqyugv1rXAqEoL99R+f/BnjF/Or31R1Q=;
 b=OOfeA8Sa625rBJGk1LYCWVJGTafIATwY9DsYWoUR5bS6W7S/kSVEOBo/
 kp2hJAV9heJjKlxLPQ6AyTiutQFy/RLX97dFuW+/H6pVfOqgb4TSNmI2K
 zo/bZvxZz9pS1AHNudnjFYc7IbqoGapYf7BPwHCSWYtY8oFOUWEQp39Pb
 Anxw3PbdxFCHYY3KrWVVGK+7rQ9dypr3Qunny4LWIKFG0G++8lVBk/wgb
 rA2DNeFJOhEKU24X5SB9RknbKrZbRs6iAeyI2RkgZdYa4B6figOZl1888
 kBGYmOIBpfiTGaEQL7XdTTL71Dr2HGWswjEtchY681XiqF+ibpYH1Dh3B g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="326794501"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="326794501"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 10:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="724548550"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="724548550"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 26 Apr 2023 10:48:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 20:48:57 +0300
Date: Wed, 26 Apr 2023 20:48:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZElkCcFvVEx8DYez@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
 <20230426165305.2049341-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230426165305.2049341-3-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915: Make the CRTC wrt. CSC
 state consistent during sanitize-disabling
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

On Wed, Apr 26, 2023 at 07:52:56PM +0300, Imre Deak wrote:
> intel_crtc_free_hw_state() frees all the Intel specific CSC blobs in the
> CRTC state, but the next memset() will only clear the corresponding
> pointers for the ones stored in intel_crtc_state:hw. Clear the ones
> stored in intel_crtc_state as well. Also sync the UAPI state with the HW
> state after the HW state was reset. This will reset the uapi.active
> flag as well, so no need to do this separately. Syncing the state will
> create a new umode blob, so move deleting the blob after the sync call.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index eefa4018dc0c2..57d087de654f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -30,6 +30,8 @@
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>  
> +static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state);
> +
>  static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  					struct drm_modeset_acquire_ctx *ctx)
>  {
> @@ -88,13 +90,17 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  	crtc->active = false;
>  	crtc->base.enabled = false;
>  
> -	drm_WARN_ON(&i915->drm,
> -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> -	crtc_state->uapi.active = false;
>  	crtc_state->uapi.connector_mask = 0;
>  	crtc_state->uapi.encoder_mask = 0;
> +
>  	intel_crtc_free_hw_state(crtc_state);
>  	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
> +	crtc_state->pre_csc_lut = NULL;
> +	crtc_state->post_csc_lut = NULL;
> +	intel_crtc_copy_hw_to_uapi_state(crtc_state);
> +
> +	drm_WARN_ON(&i915->drm,
> +		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);

Hmm. Is there a reason we can't just do the full destroy+reset
thing that intel_modeset_readout_hw_state() does?

>  
>  	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
>  		encoder->base.crtc = NULL;
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel

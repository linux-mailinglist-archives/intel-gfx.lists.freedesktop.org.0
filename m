Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB681D72B2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 10:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F946E1B8;
	Mon, 18 May 2020 08:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF97F6E1B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 08:16:40 +0000 (UTC)
IronPort-SDR: 3RoUXDvNHminxHYpau/kh9/CXN50k7qovuoB3gnW1R7XXXVVcYuUcAUoKEjfw2wIoxZDil32zz
 UHghhCH/STIQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 01:16:39 -0700
IronPort-SDR: 1oJJD6Ut4OOwomqZWY4RLXpQukTaiUrNWxFHLUl3bKZ/vNeL/QRrg6TGjp9e0s1My3K3FJfAKA
 SYjQzdzeIvJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="439131512"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga005.jf.intel.com with ESMTP; 18 May 2020 01:16:35 -0700
Date: Mon, 18 May 2020 13:37:36 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 daniel.vetter@intel.com, ramalingam.c@intel.com
Message-ID: <20200518080736.GN10565@intel.com>
References: <20200515061029.5008-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515061029.5008-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Update CP as per the
 kernel internal state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-05-15 at 11:40:29 +0530, Anshuman Gupta wrote:
> Content Protection property should be updated as per the kernel
> internal state. Let's say if Content protection is disabled
> by userspace, CP property should be set to UNDESIRED so that
> reauthentication will not happen until userspace request it again,
> but when kernel disables the HDCP due to any DDI disabling sequences
> like modeset/DPMS operation, kernel should set the property to
> DESIRED, so that when opportunity arises, kernel will start the
> HDCP authentication on its own.
> 
> Somewhere in the line, state machine to set content protection to
> DESIRED from kernel was broken and IGT coverage was missing for it.
> This patch fixes it.
> 
> v2:
> - Fixing hdcp CP state in intel_hdcp_atomic_check(), that will
>   require to check hdcp->value in intel_hdcp_update_pipe() in order
>   to avoid enabling hdcp, if it was already enabled.
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Link: https://patchwork.freedesktop.org/patch/350962/?series=72664&rev=2 #v1
> Link: https://patchwork.freedesktop.org/patch/359396/?series=72251&rev=3 #v2
Ram, Daniel, Jani,
Above patch fixes HDCP uapi broken state.
Could you please provide your inputs , is it ok to merges this patch in current form.
Thanks,
Anshuman Gupta.

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 27 +++++++++++++++++++----
>  1 file changed, 23 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2cbc4619b4ce..f90f48819838 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2083,6 +2083,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  		(conn_state->hdcp_content_type != hdcp->content_type &&
>  		 conn_state->content_protection !=
>  		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> +	bool desired_and_not_enabled = false;
>  
>  	/*
>  	 * During the HDCP encryption session if Type change is requested,
> @@ -2105,8 +2106,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  	}
>  
>  	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> -	    content_protection_type_changed)
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED) {
> +		mutex_lock(&hdcp->mutex);
> +		/* Avoid enabling hdcp, if it already ENABLED */
> +		desired_and_not_enabled =
> +			hdcp->value != DRM_MODE_CONTENT_PROTECTION_ENABLED;
> +		mutex_unlock(&hdcp->mutex);
> +	}
> +
> +	if (desired_and_not_enabled || content_protection_type_changed)
>  		intel_hdcp_enable(connector,
>  				  crtc_state->cpu_transcoder,
>  				  (u8)conn_state->hdcp_content_type);
> @@ -2155,6 +2163,19 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  		return;
>  	}
>  
> +	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
> +						   new_state->crtc);
> +	/*
> +	 * Fix the HDCP uapi content protection state in case of modeset.
> +	 * FIXME: As per HDCP content protection property uapi doc, an uevent()
> +	 * need to be sent if there is transition from ENABLED->DESIRED.
> +	 */
> +	if (drm_atomic_crtc_needs_modeset(crtc_state) &&
> +	    (old_cp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> +	    new_cp != DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
> +		new_state->content_protection =
> +			DRM_MODE_CONTENT_PROTECTION_DESIRED;
> +
>  	/*
>  	 * Nothing to do if the state didn't change, or HDCP was activated since
>  	 * the last commit. And also no change in hdcp content type.
> @@ -2167,8 +2188,6 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  			return;
>  	}
>  
> -	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
> -						   new_state->crtc);
>  	crtc_state->mode_changed = true;
>  }
>  
> -- 
> 2.26.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD1C20F20E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 12:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F78689C6A;
	Tue, 30 Jun 2020 10:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6985B89C6A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 10:01:11 +0000 (UTC)
IronPort-SDR: Cfe9rdAsNAH19Q0cZ4ylxTRvTTDrhV8TlZ14tBaUGLCTRFLNohYNGeMipmbZC/TvEom5r049O0
 uBs95REhGXEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="231052931"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="231052931"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 03:01:10 -0700
IronPort-SDR: SyuLwYOn2R1P9lwcHQCPhqbruC6LyKImtydU5qecgChH2lfMz8M3CSudobnNNULreAV8oydJeT
 aAZSUOTkR63Q==
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="454552755"
Received: from rgrotewx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 03:01:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200630082048.22308-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200630082048.22308-1-anshuman.gupta@intel.com>
Date: Tue, 30 Jun 2020 13:01:06 +0300
Message-ID: <87a70kna8t.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Update CP as per the
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


Sean, Ram, good to go?

BR,
Jani.


On Tue, 30 Jun 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
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
> - Fixing hdcp CP state in connector atomic check function
>   intel_hdcp_atomic_check(). [Maarten]
>   This will require to check hdcp->value in intel_hdcp_update_pipe()
>   in order to avoid enabling hdcp, if it was already enabled.
>
> v3:
> - Rebased.
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Link: https://patchwork.freedesktop.org/patch/350962/?series=72664&rev=2 #v1
> Link: https://patchwork.freedesktop.org/patch/359396/?series=72251&rev=3 #v2
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 27 +++++++++++++++++++----
>  1 file changed, 23 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 815b054bb167..0d410652e194 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2086,6 +2086,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  		(conn_state->hdcp_content_type != hdcp->content_type &&
>  		 conn_state->content_protection !=
>  		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> +	bool desired_and_not_enabled = false;
>  
>  	/*
>  	 * During the HDCP encryption session if Type change is requested,
> @@ -2108,8 +2109,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
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
> @@ -2158,6 +2166,19 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
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
> @@ -2170,8 +2191,6 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  			return;
>  	}
>  
> -	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
> -						   new_state->crtc);
>  	crtc_state->mode_changed = true;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

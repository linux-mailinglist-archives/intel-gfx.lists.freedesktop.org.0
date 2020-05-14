Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF001D3587
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 17:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4055A6EB76;
	Thu, 14 May 2020 15:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF9A6EB76
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 15:48:45 +0000 (UTC)
IronPort-SDR: utSVI4XEdFbJe+EQc20T+8XIqNR2PnUKMmcvpnFcYZ/XFXGbFxN4QnkOCOV9FKTUHLCCFKMDQ0
 1+1chZR1QKtw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 08:48:44 -0700
IronPort-SDR: hpb0QolqMCKU1rkv6A0m4idyt425jRkeZl+XPvUqFwZf5+ksKk57l8nng08nnpfUyIAwtQW9B2
 zyl9oysnkvzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="251717876"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 14 May 2020 08:48:44 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 May 2020 08:48:44 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 14 May 2020 08:48:43 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.58]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.123]) with mapi id 14.03.0439.000;
 Thu, 14 May 2020 21:18:41 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [CI v2] drm/i915/hdcp: Update CP as per the kernel
 internal state
Thread-Index: AQHWBq/13VCXeJlw+0OLE+69gn/46aioAEQA
Date: Thu, 14 May 2020 15:48:40 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F824ACBDD@BGSMSX104.gar.corp.intel.com>
References: <20200327162921.15622-1-anshuman.gupta@intel.com>
 <20200330161248.26923-1-anshuman.gupta@intel.com>
In-Reply-To: <20200330161248.26923-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI v2] drm/i915/hdcp: Update CP as per the kernel
 internal state
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Anshuman Gupta
> Sent: Monday, March 30, 2020 9:43 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [CI v2] drm/i915/hdcp: Update CP as per the kernel internal
> state
> 
> Content Protection property should be updated as per the kernel internal state.
> Let's say if Content protection is disabled by userspace, CP property should be
> set to UNDESIRED so that reauthentication will not happen until userspace
> request it again, but when kernel disables the HDCP due to any DDI disabling
> sequences like modeset/DPMS operation, kernel should set the property to
> DESIRED, so that when opportunity arises, kernel will start the HDCP
> authentication on its own.
> 
> Somewhere in the line, state machine to set content protection to DESIRED from
> kernel was broken and IGT coverage was missing for it.
> This patch fixes it.
> 
> v2:
> - Fixing hdcp CP state in intel_hdcp_atomic_check(), that will
>   require to check hdcp->value in intel_hdcp_update_pipe() in order
>   to avoid enabling hdcp, if it was already enabled.

This looks a fair compromise to handle the existing state machine.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Ramalingam C <ramalingam.c@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 27 +++++++++++++++++++----
>  1 file changed, 23 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index cd3b686980b2..9b3870ba1a4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2087,6 +2087,7 @@ void intel_hdcp_update_pipe(struct intel_encoder
> *encoder,
>  		(conn_state->hdcp_content_type != hdcp->content_type &&
>  		 conn_state->content_protection !=
>  		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> +	bool desired_and_not_enabled = false;
> 
>  	/*
>  	 * During the HDCP encryption session if Type change is requested, @@ -
> 2109,8 +2110,15 @@ void intel_hdcp_update_pipe(struct intel_encoder
> *encoder,
>  	}
> 
>  	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> -	    content_protection_type_changed)
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED) {
> +		mutex_lock(&hdcp->mutex);
> +		/* Avoid enabling hdcp, if it already ENABLED */
> +		desired_and_not_enabled =
> +			hdcp->value !=
> DRM_MODE_CONTENT_PROTECTION_ENABLED;
> +		mutex_unlock(&hdcp->mutex);
> +	}
> +
> +	if (desired_and_not_enabled || content_protection_type_changed)
>  		intel_hdcp_enable(connector,
>  				  crtc_state->cpu_transcoder,
>  				  (u8)conn_state->hdcp_content_type);
> @@ -2159,6 +2167,19 @@ void intel_hdcp_atomic_check(struct drm_connector
> *connector,
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
> @@ -2171,8 +2192,6 @@ void intel_hdcp_atomic_check(struct drm_connector
> *connector,
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
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

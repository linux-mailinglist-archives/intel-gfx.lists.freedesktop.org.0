Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDB31434C2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 01:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204C66EB64;
	Tue, 21 Jan 2020 00:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0A86EB64
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 00:39:19 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 16:39:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; d="scan'208";a="277242256"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2020 16:39:17 -0800
Date: Tue, 21 Jan 2020 06:09:13 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200121003913.GA5190@intel.com>
References: <20200120054954.5786-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120054954.5786-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-20 at 11:19:54 +0530, Anshuman Gupta wrote:
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
> IGT patch to catch further regression on this features is being
> worked upon.
> 
> v2:
>  - Incorporated the necessary locking. (Ram)
>  - Set content protection property to CP_DESIRED only when
>    user has not asked explicitly to set CP_UNDESIRED.
> 
> v3:
>  - Reset the is_hdcp_undesired flag to false. (Ram)
>  - Rephrasing commit log and small comment for is_hdcp_desired
>    flag. (Ram)
> 
> CC: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.c          | 13 ++++++++++++-
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 630a94892b7b..401a9a7689fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -345,6 +345,12 @@ struct intel_hdcp {
>  	struct delayed_work check_work;
>  	struct work_struct prop_work;
>  
> +	/*
> +	 * Flag to differentiate that HDCP is being disabled originated from
> +	 * userspace or triggered from kernel DDI disable sequence.
> +	 */
> +	bool is_hdcp_undesired;
> +
>  	/* HDCP1.4 Encryption status */
>  	bool hdcp_encrypted;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 0fdbd39f6641..7f631ebd8395 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2002,11 +2002,18 @@ int intel_hdcp_disable(struct intel_connector *connector)
>  	mutex_lock(&hdcp->mutex);
>  
>  	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
> -		hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
>  		if (hdcp->hdcp2_encrypted)
>  			ret = _intel_hdcp2_disable(connector);
>  		else if (hdcp->hdcp_encrypted)
>  			ret = _intel_hdcp_disable(connector);
> +
> +		if (hdcp->is_hdcp_undesired) {
> +			hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
> +			hdcp->is_hdcp_undesired = false;
> +		} else {
> +			hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
> +			schedule_work(&hdcp->prop_work);
> +		}
>  	}
>  
>  	mutex_unlock(&hdcp->mutex);
> @@ -2044,6 +2051,7 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  {
>  	u64 old_cp = old_state->content_protection;
>  	u64 new_cp = new_state->content_protection;
> +	struct intel_connector *intel_conn = to_intel_connector(connector);
>  	struct drm_crtc_state *crtc_state;
>  
>  	if (!new_state->crtc) {
> @@ -2069,6 +2077,9 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>  			return;
>  	}
>  
> +	if (new_cp == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
> +		intel_conn->hdcp.is_hdcp_undesired  =  true;
This flag is reset at commit only. What if the atomic check failed?
Usually atomic check wont fail for HDCP state change. Possible if it is submitted with other request.
So we need to set true and false both here.

-Ram
> +
>  	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
>  						   new_state->crtc);
>  	crtc_state->mode_changed = true;
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

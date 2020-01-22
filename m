Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80583145841
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:56:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704286F576;
	Wed, 22 Jan 2020 14:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D2646F576
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 14:56:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 06:56:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="220335900"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 06:56:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
In-Reply-To: <20200122141142.GA29793@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200120054954.5786-1-anshuman.gupta@intel.com>
 <20200121003913.GA5190@intel.com> <8736c9f1j6.fsf@intel.com>
 <20200122141142.GA29793@intel.com>
Date: Wed, 22 Jan 2020 16:56:06 +0200
Message-ID: <87h80nee0p.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 22 Jan 2020, Ramalingam C <ramalingam.c@intel.com> wrote:
> On 2020-01-21 at 14:15:57 +0200, Jani Nikula wrote:
>> On Tue, 21 Jan 2020, Ramalingam C <ramalingam.c@intel.com> wrote:
>> > On 2020-01-20 at 11:19:54 +0530, Anshuman Gupta wrote:
>> >> Content Protection property should be updated as per the kernel
>> >> internal state. Let's say if Content protection is disabled
>> >> by userspace, CP property should be set to UNDESIRED so that
>> >> reauthentication will not happen until userspace request it again,
>> >> but when kernel disables the HDCP due to any DDI disabling sequences
>> >> like modeset/DPMS operation, kernel should set the property to
>> >> DESIRED, so that when opportunity arises, kernel will start the
>> >> HDCP authentication on its own.
>> >> 
>> >> Somewhere in the line, state machine to set content protection to
>> >> DESIRED from kernel was broken and IGT coverage was missing for it.
>> >> This patch fixes it.
>> >> IGT patch to catch further regression on this features is being
>> >> worked upon.
>> >> 
>> >> v2:
>> >>  - Incorporated the necessary locking. (Ram)
>> >>  - Set content protection property to CP_DESIRED only when
>> >>    user has not asked explicitly to set CP_UNDESIRED.
>> >> 
>> >> v3:
>> >>  - Reset the is_hdcp_undesired flag to false. (Ram)
>> >>  - Rephrasing commit log and small comment for is_hdcp_desired
>> >>    flag. (Ram)
>> >> 
>> >> CC: Ramalingam C <ramalingam.c@intel.com>
>> >> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>> >> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display_types.h |  6 ++++++
>> >>  drivers/gpu/drm/i915/display/intel_hdcp.c          | 13 ++++++++++++-
>> >>  2 files changed, 18 insertions(+), 1 deletion(-)
>> >> 
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> >> index 630a94892b7b..401a9a7689fb 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> >> @@ -345,6 +345,12 @@ struct intel_hdcp {
>> >>  	struct delayed_work check_work;
>> >>  	struct work_struct prop_work;
>> >>  
>> >> +	/*
>> >> +	 * Flag to differentiate that HDCP is being disabled originated from
>> >> +	 * userspace or triggered from kernel DDI disable sequence.
>> >> +	 */
>> >> +	bool is_hdcp_undesired;
>> >> +
>> >>  	/* HDCP1.4 Encryption status */
>> >>  	bool hdcp_encrypted;
>> >>  
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> >> index 0fdbd39f6641..7f631ebd8395 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> >> @@ -2002,11 +2002,18 @@ int intel_hdcp_disable(struct intel_connector *connector)
>> >>  	mutex_lock(&hdcp->mutex);
>> >>  
>> >>  	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
>> >> -		hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
>> >>  		if (hdcp->hdcp2_encrypted)
>> >>  			ret = _intel_hdcp2_disable(connector);
>> >>  		else if (hdcp->hdcp_encrypted)
>> >>  			ret = _intel_hdcp_disable(connector);
>> >> +
>> >> +		if (hdcp->is_hdcp_undesired) {
>> >> +			hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
>> >> +			hdcp->is_hdcp_undesired = false;
>> >> +		} else {
>> >> +			hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
>> >> +			schedule_work(&hdcp->prop_work);
>> >> +		}
>> >>  	}
>> >>  
>> >>  	mutex_unlock(&hdcp->mutex);
>> >> @@ -2044,6 +2051,7 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>> >>  {
>> >>  	u64 old_cp = old_state->content_protection;
>> >>  	u64 new_cp = new_state->content_protection;
>> >> +	struct intel_connector *intel_conn = to_intel_connector(connector);
>> >>  	struct drm_crtc_state *crtc_state;
>> >>  
>> >>  	if (!new_state->crtc) {
>> >> @@ -2069,6 +2077,9 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>> >>  			return;
>> >>  	}
>> >>  
>> >> +	if (new_cp == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
>> >> +		intel_conn->hdcp.is_hdcp_undesired  =  true;
>> > This flag is reset at commit only. What if the atomic check failed?
>> > Usually atomic check wont fail for HDCP state change. Possible if it is submitted with other request.
>> > So we need to set true and false both here.
>> 
>> As I explained in my other mail, you don't have the information
>> available at this point about possible later atomic check failures. I
>> think it's wrong to change the connector at check phase. You'd need to
>> be able to revert the change back to what it was... and that's exactly
>> the reason why we have old and new states, so we can just throw away the
>> new state if the check fails.
> I completely understand that part. And this flag set at atomic_check
> will not change the connector state, untill hdcp_disable called at
> atomic commit.
>
> I am completely fine if this method is not acceptable. But uAPI documented is
> already broken (ENABLED "content protection" will remain DESIRED/ENABLED until userspace
> set it to UNDESIRED). So I am just trying to find a solution to it.
>
> Requirement is as follows:
> ddi_disable()->hdcp_disable() gets called for two scenarios 
> 1. userspace setting the "content protection" to UNDESIRED hence
> atomic_check will mark it as modeset hence hdcp will be disabled.
> 2. userspace is not changing the "content protection", but other display
> operations are leading to the ddi_disable hence hdcp is getting disabled
>
> We need to differentiate these two cause for hdcp disable at
> hdcp_disable so that "content protection" can be set to "DESIRED" from
> "ENABLED" at second case. else HDCP would have been disabled but
> property will be left at "ENABLED".
>
> In first scenario we dont need to change the "content protection" as the
> userspace itself set it to "UNDESIRED". kernel just need to disable the
> authentication.
>
> So yes, this broken uAPI needs to be attended, not sure if anyone is
> affected by this already. Please throw some light on the possible
> direction from this point.

I still think a large part of your problems are due to duplicating the
content_protection state to hdcp->value.

You *are* setting new state content_protection to DESIRED at
intel_hdcp_atomic_check() if it was ENABLED. This should work for both
of your scenarios; I think it's only broken because you lose sync with
hdcp->value.

intel_hdcp_disable() should look at old state and disable if hdcp is
enabled.

intel_hdcp_enable() should look at new state and enable if hdcp is
desired.


BR,
Jani.



>
> -Ram
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> >
>> > -Ram
>> >> +
>> >>  	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
>> >>  						   new_state->crtc);
>> >>  	crtc_state->mode_changed = true;
>> >> -- 
>> >> 2.24.0
>> >> 
>> > _______________________________________________
>> > Intel-gfx mailing list
>> > Intel-gfx@lists.freedesktop.org
>> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

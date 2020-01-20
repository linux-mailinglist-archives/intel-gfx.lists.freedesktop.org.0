Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A21D142836
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 11:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD4E6E0CB;
	Mon, 20 Jan 2020 10:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DAF36E0CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 10:29:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 02:29:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,341,1574150400"; d="scan'208";a="219614678"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 02:29:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>, Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20200120064215.GA14839@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200120054954.5786-1-anshuman.gupta@intel.com>
 <20200120064215.GA14839@intel.com>
Date: Mon, 20 Jan 2020 12:29:36 +0200
Message-ID: <87v9p6fmjz.fsf@intel.com>
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

On Mon, 20 Jan 2020, Ramalingam C <ramalingam.c@intel.com> wrote:
> On 2020-01-20 at 11:19:54 +0530, Anshuman Gupta wrote:
>> Content Protection property should be updated as per the kernel
>> internal state. Let's say if Content protection is disabled
>> by userspace, CP property should be set to UNDESIRED so that
>> reauthentication will not happen until userspace request it again,
>> but when kernel disables the HDCP due to any DDI disabling sequences
>> like modeset/DPMS operation, kernel should set the property to
>> DESIRED, so that when opportunity arises, kernel will start the
>> HDCP authentication on its own.
>> 
>> Somewhere in the line, state machine to set content protection to
>> DESIRED from kernel was broken and IGT coverage was missing for it.
>> This patch fixes it.
>> IGT patch to catch further regression on this features is being
>> worked upon.
>> 
>> v2:
>>  - Incorporated the necessary locking. (Ram)
>>  - Set content protection property to CP_DESIRED only when
>>    user has not asked explicitly to set CP_UNDESIRED.
>> 
>> v3:
>>  - Reset the is_hdcp_undesired flag to false. (Ram)
>>  - Rephrasing commit log and small comment for is_hdcp_desired
>>    flag. (Ram)
>> 
>> CC: Ramalingam C <ramalingam.c@intel.com>
>> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_types.h |  6 ++++++
>>  drivers/gpu/drm/i915/display/intel_hdcp.c          | 13 ++++++++++++-
>>  2 files changed, 18 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 630a94892b7b..401a9a7689fb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -345,6 +345,12 @@ struct intel_hdcp {
>>  	struct delayed_work check_work;
>>  	struct work_struct prop_work;
>>  
>> +	/*
>> +	 * Flag to differentiate that HDCP is being disabled originated from
>> +	 * userspace or triggered from kernel DDI disable sequence.
>> +	 */
>> +	bool is_hdcp_undesired;
> Jani and Daniel,
>
> This flag is added as we need to know the origin of the HDCP disable
> (userspace or kernel modeset/DPMS off) at DDI disable sequence. We
> couldn't do that as new_conn state is not available there to retrieve
> the corresponding content protection state.
>
> Hence we do that at atomic check itself and pass the info through this flag,
> which will be referred at hdcp_disable.
>
> If you think we could do it better please suggest the preferred
> alternate method. Else I request your ack for merging this.

I don't know hdcp code all that well, but it seems to me at the root of
the problem is the duplication of the content protection state
(drm_connector_state->content_protection) into the connector
(intel_hdcp->value), and them going out of sync.

If you relied on the connector state alone, you wouldn't have to worry
about changing the intel_hdcp->value member at disable or anywhere;
disable looks at old state and disables based on that. No history/future
information needed. Isn't that roughly what everything else does, why is
hdcp special?

BR,
Jani.


>
> Thanks,
> -Ram
>> +
>>  	/* HDCP1.4 Encryption status */
>>  	bool hdcp_encrypted;
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index 0fdbd39f6641..7f631ebd8395 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -2002,11 +2002,18 @@ int intel_hdcp_disable(struct intel_connector *connector)
>>  	mutex_lock(&hdcp->mutex);
>>  
>>  	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
>> -		hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
>>  		if (hdcp->hdcp2_encrypted)
>>  			ret = _intel_hdcp2_disable(connector);
>>  		else if (hdcp->hdcp_encrypted)
>>  			ret = _intel_hdcp_disable(connector);
>> +
>> +		if (hdcp->is_hdcp_undesired) {
>> +			hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
>> +			hdcp->is_hdcp_undesired = false;
>> +		} else {
>> +			hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
>> +			schedule_work(&hdcp->prop_work);
>> +		}
>>  	}
>>  
>>  	mutex_unlock(&hdcp->mutex);
>> @@ -2044,6 +2051,7 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>>  {
>>  	u64 old_cp = old_state->content_protection;
>>  	u64 new_cp = new_state->content_protection;
>> +	struct intel_connector *intel_conn = to_intel_connector(connector);
>>  	struct drm_crtc_state *crtc_state;
>>  
>>  	if (!new_state->crtc) {
>> @@ -2069,6 +2077,9 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
>>  			return;
>>  	}
>>  
>> +	if (new_cp == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
>> +		intel_conn->hdcp.is_hdcp_undesired  =  true;
>> +
>>  	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
>>  						   new_state->crtc);
>>  	crtc_state->mode_changed = true;
>> -- 
>> 2.24.0
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

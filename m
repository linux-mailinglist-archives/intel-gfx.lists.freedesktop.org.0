Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A86494BCA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348E310E886;
	Thu, 20 Jan 2022 10:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3222210E8B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642674788; x=1674210788;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ey756TbheAZJz4OQPzKwwMur1q6wtxngDiFIKCH8X0U=;
 b=Mi8UU8ofXcCz/D2AlU6HZOlbye7tEb2vO+Z6Ugq5y7cc0uEV6l/VNEbC
 zrxGM36cFbTdkChESEj9JC5CB76+nueqnJBlmDNCfwDEHxKOI2Lt/e6kE
 DmX6AelMPkPUrCxuTEiuXTiykGTlzv8/dh7LhD/XUq7bZH9bfMaqjcpos
 yP1y7QkkQyKspEH5UwX1JX83mStKNMqGbMsGSxnmXOik+2Gcrv35GYPqH
 Vljq8clYQV/NshdznV5VnBoDHrLRSJtBavTzbfoTytsQW8r8DZ0eRl9dn
 apde0QsuTEuK6Y0kRYCcAb6KVlKOy5Q7SCdiDOLoGkufeh6vqj39VqxGd g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245276855"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="245276855"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:32:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="518563515"
Received: from davidfsc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.140])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:32:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <c0a48445d9c84a7cb644f392699c9028@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1641317930.git.jani.nikula@intel.com>
 <1049e7188a76c421fab7797b5c4a6aa1b709f4c9.1641317930.git.jani.nikula@intel.com>
 <c0a48445d9c84a7cb644f392699c9028@intel.com>
Date: Thu, 20 Jan 2022 12:32:05 +0200
Message-ID: <87h79yaeai.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Jan 2022, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
>> Sent: Tuesday, January 4, 2022 11:10 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract intel_dp_ack_sink_irq_esi()
>> 
>> Smaller functions make the thing easier to read. Debug log failures to ack.
>> 
>> Note: Looks like we have the retry loop simply because of hysterical raisins, dating
>
> Nit: Typo in reasons.

;)

http://www.catb.org/jargon/html/H/hysterical-reasons.html

>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>
>> back to the original DP MST enabling. Keep it, though I have no idea why we have it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++----------
>>  1 file changed, 15 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 357c39e09bf6..ebf80a875a41 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2820,6 +2820,19 @@ intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8
>> *sink_irq_vector)
>>  		DP_DPRX_ESI_LEN;
>>  }
>> 
>> +static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8
>> +esi[4]) {
>> +	int retry;
>> +
>> +	for (retry = 0; retry < 3; retry++) {
>> +		if (drm_dp_dpcd_write(&intel_dp->aux, DP_SINK_COUNT_ESI + 1,
>> +				      &esi[1], 3) == 3)
>> +			return true;
>> +	}
>> +
>> +	return false;
>> +}
>> +
>>  bool
>>  intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>>  		       const struct drm_connector_state *conn_state) @@ -3660,7
>> +3673,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>>  		 */
>>  		u8 esi[DP_DPRX_ESI_LEN+2] = {};
>>  		bool handled;
>> -		int retry;
>> 
>>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
>>  			drm_dbg_kms(&i915->drm,
>> @@ -3685,15 +3697,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>>  		if (!handled)
>>  			break;
>> 
>> -		for (retry = 0; retry < 3; retry++) {
>> -			int wret;
>> -
>> -			wret = drm_dp_dpcd_write(&intel_dp->aux,
>> -						 DP_SINK_COUNT_ESI+1,
>> -						 &esi[1], 3);
>> -			if (wret == 3)
>> -				break;
>> -		}
>> +		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
>> +			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
>>  	}
>> 
>>  	return link_ok;
>> --
>> 2.30.2
>

-- 
Jani Nikula, Intel Open Source Graphics Center

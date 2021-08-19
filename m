Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060763F1B3E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 16:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5439D6E98F;
	Thu, 19 Aug 2021 14:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A776E98F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 14:09:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="238678308"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="238678308"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 07:09:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="532382669"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.213.105.124])
 ([10.213.105.124])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 07:09:25 -0700
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Ville Syrj_l_ <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>, Manasi Navare <manasi.d.navare@intel.com>,
 Jos_ Roberto de Souza <jose.souza@intel.com>,
 Sean Paul <seanpaul@chromium.org>, stable@vger.kernel.org
References: <20210812125845.27787-1-swati2.sharma@intel.com>
 <871r6xn5wd.fsf@intel.com> <04e2728f-a5e3-a8ee-9fdc-9affe753b59e@intel.com>
 <87wnolio9x.fsf@intel.com> <27387edf-5b67-e361-325e-0a9600a28da2@intel.com>
 <87pmudinfd.fsf@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <01f79c2c-b129-0914-ae2f-4396bf59f86c@intel.com>
Date: Thu, 19 Aug 2021 19:39:22 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <87pmudinfd.fsf@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Drop redundant debug print
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



On 16-Aug-21 5:58 PM, Jani Nikula wrote:
> On Mon, 16 Aug 2021, "Sharma, Swati2" <swati2.sharma@intel.com> wrote:
>> On 16-Aug-21 5:40 PM, Jani Nikula wrote:
>>> On Mon, 16 Aug 2021, "Sharma, Swati2" <swati2.sharma@intel.com> wrote:
>>>> On 13-Aug-21 1:16 PM, Jani Nikula wrote:
>>>>> On Thu, 12 Aug 2021, Swati Sharma <swati2.sharma@intel.com> wrote:
>>>>>> drm_dp_dpcd_read/write already has debug error message.
>>>>>> Drop redundant error messages which gives false
>>>>>> status even if correct value is read in drm_dp_dpcd_read().
>>>>>
>>>>> I guess the only problem is it gets harder to associate the preceding
>>>>> low level error messages with intel_dp_check_link_service_irq(). *shrug*
>>>>>
>>>>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>>>>
>>>>>
>>>> Thanks Jani for the review. Can you please merge?
>>>
>>> There was another version with open review?
>>
>> Yes. https://patchwork.freedesktop.org/series/93025/#rev3
>> Should I add debug prints how Imre suggested in other IRQ func
>> to make it generic or should it be dropped from here too?
>> Quoting imre
>> "Yes, that's why I suggested to return for the '0 value read' case
>> without any message printed, but still keep the message for the case
>> when the drm_dp_dpcd_readb() fails."
>> "Ok, it's good to keep them in sync at least, so I'm ok with removing
>> the debug messages from here too."
>>
>> Please let me know what is the better approach.
> 
> IMO just nuke them.

Thanks Jani N. Imre agrees on same. Can we merge now?
https://patchwork.freedesktop.org/series/93025/#rev3

> 
> BR,
> Jani
> 
> 
> 
>>>
>>> BR,
>>> Jani.
>>>
>>>
>>>>
>>>>>>
>>>>>> Fixes: 9488a030ac91 ("drm/i915: Add support for enabling link status and recovery")
>>>>>> Cc: Swati Sharma <swati2.sharma@intel.com>
>>>>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>> Cc: Uma Shankar <uma.shankar@intel.com> (v2)
>>>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>>>> Cc: "Ville Syrj_l_" <ville.syrjala@linux.intel.com>
>>>>>> Cc: Imre Deak <imre.deak@intel.com>
>>>>>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>>>>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>>>>> Cc: "Jos_ Roberto de Souza" <jose.souza@intel.com>
>>>>>> Cc: Sean Paul <seanpaul@chromium.org>
>>>>>> Cc: <stable@vger.kernel.org> # v5.12+
>>>>>>
>>>>>> Link: https://patchwork.freedesktop.org/patch/msgid/20201218103723.30844-12-ankit.k.nautiyal@intel.com
>>>>>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
>>>>>>     1 file changed, 2 insertions(+), 6 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> index c386ef8eb200..5c84f51ad41d 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> @@ -3871,16 +3871,12 @@ static void intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
>>>>>>     		return;
>>>>>>     
>>>>>>     	if (drm_dp_dpcd_readb(&intel_dp->aux,
>>>>>> -			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val) {
>>>>>> -		drm_dbg_kms(&i915->drm, "Error in reading link service irq vector\n");
>>>>>> +			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
>>>>>>     		return;
>>>>>> -	}
>>>>>>     
>>>>>>     	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>>>>> -			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1) {
>>>>>> -		drm_dbg_kms(&i915->drm, "Error in writing link service irq vector\n");
>>>>>> +			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
>>>>>>     		return;
>>>>>> -	}
>>>>>>     
>>>>>>     	if (val & HDMI_LINK_STATUS_CHANGED)
>>>>>>     		intel_dp_handle_hdmi_link_status_change(intel_dp);
>>>>>
>>>
> 

-- 
~Swati Sharma

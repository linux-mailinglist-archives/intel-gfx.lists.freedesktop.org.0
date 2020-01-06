Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BFC130FDB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 11:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC2096E219;
	Mon,  6 Jan 2020 10:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B88A6E219;
 Mon,  6 Jan 2020 10:02:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 02:02:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,402,1571727600"; d="scan'208";a="215157431"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.66.114.55])
 ([10.66.114.55])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 06 Jan 2020 02:02:13 -0800
To: Manasi Navare <manasi.d.navare@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
References: <20191230161523.32222-1-animesh.manna@intel.com>
 <20191230161523.32222-4-animesh.manna@intel.com> <87v9putdvr.fsf@intel.com>
 <8d0d9c04-234f-f099-0f2d-3c3dee5384d6@intel.com>
 <20200103234846.GB2608@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <88415e48-2d1d-6b31-211c-6509b4605c67@intel.com>
Date: Mon, 6 Jan 2020 15:32:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200103234846.GB2608@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 3/9] drm/i915/dp: Move
 vswing/pre-emphasis adjustment calculation
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
Cc: nidhi1.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04-01-2020 05:18, Manasi Navare wrote:
> On Thu, Jan 02, 2020 at 03:56:09PM +0530, Manna, Animesh wrote:
>> On 02-01-2020 14:48, Jani Nikula wrote:
>>> On Mon, 30 Dec 2019, Animesh Manna <animesh.manna@intel.com> wrote:
>>>> vswing/pre-emphasis adjustment calculation is needed in processing
>>>> of auto phy compliance request other than link training, so moved
>>>> the same function in intel_dp.c.
>>> I guess I'm still asking why you think this is better located in
>>> intel_dp.c than intel_dp_link_training.c, as the function has been moved
>>> once in the other direction already to split out stuff from intel_dp.c
>>> and to make the file smaller. Even the file name suggests it should
>>> really be in intel_dp_link_training.c, right?
>> Just a thought, can we change the name to "intel_dp_link_config.c" from "intel_dp_link_training.c" which will provide little wider scope
>> and all the function playing with link configuration can be under it and also exposed through header file.
>>
>> AFAIK, processing phy compliance request always do not need link training. I understood link training is very specific process consisting of clock recovery + channel eq.
>> So I am afraid of exposing intel_get_adjust_train() from intel_dp_link_training.c which is not only specific to link-training. Need your suggestion.
>>
>> Regards,
>> Animesh
>>
> I agree with Jani here and I think I had even suggested this earlier that instead of moving this function to intel_dp.c
> we should make it non static so it can be used even for PHY compliance but since this function still deals
> with adjusting training patterns IMHO it should still stay in intel_dp_link_training.c
>
> Manasi

Sure Manasi, I will make intel_get_adjust_train() non-static and keep in intel_dp_link_training.c.
Now as suggested by Jani before (https://patchwork.freedesktop.org/patch/345823/?series=71121&rev=1#comment_640087) other non static functions are not following the rule,
should I change the function name or keep it as it is?

Regards,
Animesh

>   
>>> BR,
>>> Jani.
>>>
>>>
>>>> No functional change.
>>>>
>>>> v1: initial patch.
>>>> v2:
>>>> - used "intel_dp" prefix in function name. (Jani)
>>>> - used array notation instead pointer for link_status. (Ville)
>>>>
>>>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_dp.c       | 34 ++++++++++++++++++
>>>>   drivers/gpu/drm/i915/display/intel_dp.h       |  4 +++
>>>>   .../drm/i915/display/intel_dp_link_training.c | 36 ++-----------------
>>>>   3 files changed, 40 insertions(+), 34 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 991f343579ef..2a27ee106089 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -4110,6 +4110,40 @@ ivb_cpu_edp_signal_levels(u8 train_set)
>>>>   	}
>>>>   }
>>>> +void
>>>> +intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>>>> +			  const u8 link_status[DP_LINK_STATUS_SIZE])
>>>> +{
>>>> +	u8 v = 0;
>>>> +	u8 p = 0;
>>>> +	int lane;
>>>> +	u8 voltage_max;
>>>> +	u8 preemph_max;
>>>> +
>>>> +	for (lane = 0; lane < intel_dp->lane_count; lane++) {
>>>> +		u8 this_v = drm_dp_get_adjust_request_voltage(link_status,
>>>> +							      lane);
>>>> +		u8 this_p = drm_dp_get_adjust_request_pre_emphasis(link_status,
>>>> +								   lane);
>>>> +
>>>> +		if (this_v > v)
>>>> +			v = this_v;
>>>> +		if (this_p > p)
>>>> +			p = this_p;
>>>> +	}
>>>> +
>>>> +	voltage_max = intel_dp_voltage_max(intel_dp);
>>>> +	if (v >= voltage_max)
>>>> +		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
>>>> +
>>>> +	preemph_max = intel_dp_pre_emphasis_max(intel_dp, v);
>>>> +	if (p >= preemph_max)
>>>> +		p = preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
>>>> +
>>>> +	for (lane = 0; lane < 4; lane++)
>>>> +		intel_dp->train_set[lane] = v | p;
>>>> +}
>>>> +
>>>>   void
>>>>   intel_dp_set_signal_levels(struct intel_dp *intel_dp)
>>>>   {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> index 3da166054788..83eadc87af26 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> @@ -9,6 +9,7 @@
>>>>   #include <linux/types.h>
>>>>   #include <drm/i915_drm.h>
>>>> +#include <drm/drm_dp_helper.h>
>>>>   #include "i915_reg.h"
>>>> @@ -91,6 +92,9 @@ void
>>>>   intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>>>>   				       u8 dp_train_pat);
>>>>   void
>>>> +intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>>>> +			  const u8 link_status[DP_LINK_STATUS_SIZE]);
>>>> +void
>>>>   intel_dp_set_signal_levels(struct intel_dp *intel_dp);
>>>>   void intel_dp_set_idle_link_train(struct intel_dp *intel_dp);
>>>>   u8
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> index 2a1130dd1ad0..e8ff9e279800 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> @@ -34,38 +34,6 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
>>>>   		      link_status[3], link_status[4], link_status[5]);
>>>>   }
>>>> -static void
>>>> -intel_get_adjust_train(struct intel_dp *intel_dp,
>>>> -		       const u8 link_status[DP_LINK_STATUS_SIZE])
>>>> -{
>>>> -	u8 v = 0;
>>>> -	u8 p = 0;
>>>> -	int lane;
>>>> -	u8 voltage_max;
>>>> -	u8 preemph_max;
>>>> -
>>>> -	for (lane = 0; lane < intel_dp->lane_count; lane++) {
>>>> -		u8 this_v = drm_dp_get_adjust_request_voltage(link_status, lane);
>>>> -		u8 this_p = drm_dp_get_adjust_request_pre_emphasis(link_status, lane);
>>>> -
>>>> -		if (this_v > v)
>>>> -			v = this_v;
>>>> -		if (this_p > p)
>>>> -			p = this_p;
>>>> -	}
>>>> -
>>>> -	voltage_max = intel_dp_voltage_max(intel_dp);
>>>> -	if (v >= voltage_max)
>>>> -		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
>>>> -
>>>> -	preemph_max = intel_dp_pre_emphasis_max(intel_dp, v);
>>>> -	if (p >= preemph_max)
>>>> -		p = preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
>>>> -
>>>> -	for (lane = 0; lane < 4; lane++)
>>>> -		intel_dp->train_set[lane] = v | p;
>>>> -}
>>>> -
>>>>   static bool
>>>>   intel_dp_set_link_train(struct intel_dp *intel_dp,
>>>>   			u8 dp_train_pat)
>>>> @@ -215,7 +183,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
>>>>   		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
>>>>   		/* Update training set as requested by target */
>>>> -		intel_get_adjust_train(intel_dp, link_status);
>>>> +		intel_dp_get_adjust_train(intel_dp, link_status);
>>>>   		if (!intel_dp_update_link_train(intel_dp)) {
>>>>   			DRM_ERROR("failed to update link training\n");
>>>>   			return false;
>>>> @@ -325,7 +293,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
>>>>   		}
>>>>   		/* Update training set as requested by target */
>>>> -		intel_get_adjust_train(intel_dp, link_status);
>>>> +		intel_dp_get_adjust_train(intel_dp, link_status);
>>>>   		if (!intel_dp_update_link_train(intel_dp)) {
>>>>   			DRM_ERROR("failed to update link training\n");
>>>>   			break;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

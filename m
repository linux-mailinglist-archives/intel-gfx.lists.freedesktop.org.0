Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B40FA126376
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 14:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5E86EB77;
	Thu, 19 Dec 2019 13:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A38346EB74;
 Thu, 19 Dec 2019 13:28:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 05:28:05 -0800
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="210459169"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.66.117.94])
 ([10.66.117.94])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 19 Dec 2019 05:28:02 -0800
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20191218151350.19579-1-animesh.manna@intel.com>
 <20191218151350.19579-4-animesh.manna@intel.com> <878sn8y4ex.fsf@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <32fe343c-9c30-b254-17c6-da292dd2a3c5@intel.com>
Date: Thu, 19 Dec 2019 18:57:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <878sn8y4ex.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/dp: Move
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
Cc: nidhi1.gupta@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19-12-2019 16:21, Jani Nikula wrote:
> On Wed, 18 Dec 2019, Animesh Manna <animesh.manna@intel.com> wrote:
>> vswing/pre-emphasis adjustment calculation is needed in processing
>> of auto phy compliance request other than link training, so moved
>> the same function in intel_dp.c.
>>
>> No functional change.
>>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 32 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  3 ++
>>   .../drm/i915/display/intel_dp_link_training.c | 32 -------------------
>>   3 files changed, 35 insertions(+), 32 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 2f31d226c6eb..ca82835b6dcf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4110,6 +4110,38 @@ ivb_cpu_edp_signal_levels(u8 train_set)
>>   	}
>>   }
>>   
>> +void
>> +intel_get_adjust_train(struct intel_dp *intel_dp,
> Please follow the naming convention of prefixing non-static functions in
> foo.c with foo_. I.e. intel_dp_ here.

Sure, will do.

Regards,
Animesh

>
> BR,
> Jani.
>
>> +		       const u8 *link_status)
>> +{
>> +	u8 v = 0;
>> +	u8 p = 0;
>> +	int lane;
>> +	u8 voltage_max;
>> +	u8 preemph_max;
>> +
>> +	for (lane = 0; lane < intel_dp->lane_count; lane++) {
>> +		u8 this_v = drm_dp_get_adjust_request_voltage(link_status, lane);
>> +		u8 this_p = drm_dp_get_adjust_request_pre_emphasis(link_status, lane);
>> +
>> +		if (this_v > v)
>> +			v = this_v;
>> +		if (this_p > p)
>> +			p = this_p;
>> +	}
>> +
>> +	voltage_max = intel_dp_voltage_max(intel_dp);
>> +	if (v >= voltage_max)
>> +		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
>> +
>> +	preemph_max = intel_dp_pre_emphasis_max(intel_dp, v);
>> +	if (p >= preemph_max)
>> +		p = preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
>> +
>> +	for (lane = 0; lane < 4; lane++)
>> +		intel_dp->train_set[lane] = v | p;
>> +}
>> +
>>   void
>>   intel_dp_set_signal_levels(struct intel_dp *intel_dp)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 3da166054788..0d0cb692f701 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -91,6 +91,9 @@ void
>>   intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>>   				       u8 dp_train_pat);
>>   void
>> +intel_get_adjust_train(struct intel_dp *intel_dp,
>> +		       const u8 *link_status);
>> +void
>>   intel_dp_set_signal_levels(struct intel_dp *intel_dp);
>>   void intel_dp_set_idle_link_train(struct intel_dp *intel_dp);
>>   u8
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 2a1130dd1ad0..1e38584e7d56 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -34,38 +34,6 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
>>   		      link_status[3], link_status[4], link_status[5]);
>>   }
>>   
>> -static void
>> -intel_get_adjust_train(struct intel_dp *intel_dp,
>> -		       const u8 link_status[DP_LINK_STATUS_SIZE])
>> -{
>> -	u8 v = 0;
>> -	u8 p = 0;
>> -	int lane;
>> -	u8 voltage_max;
>> -	u8 preemph_max;
>> -
>> -	for (lane = 0; lane < intel_dp->lane_count; lane++) {
>> -		u8 this_v = drm_dp_get_adjust_request_voltage(link_status, lane);
>> -		u8 this_p = drm_dp_get_adjust_request_pre_emphasis(link_status, lane);
>> -
>> -		if (this_v > v)
>> -			v = this_v;
>> -		if (this_p > p)
>> -			p = this_p;
>> -	}
>> -
>> -	voltage_max = intel_dp_voltage_max(intel_dp);
>> -	if (v >= voltage_max)
>> -		v = voltage_max | DP_TRAIN_MAX_SWING_REACHED;
>> -
>> -	preemph_max = intel_dp_pre_emphasis_max(intel_dp, v);
>> -	if (p >= preemph_max)
>> -		p = preemph_max | DP_TRAIN_MAX_PRE_EMPHASIS_REACHED;
>> -
>> -	for (lane = 0; lane < 4; lane++)
>> -		intel_dp->train_set[lane] = v | p;
>> -}
>> -
>>   static bool
>>   intel_dp_set_link_train(struct intel_dp *intel_dp,
>>   			u8 dp_train_pat)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

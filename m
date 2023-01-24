Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE3A679F90
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 18:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9ECD10E0B1;
	Tue, 24 Jan 2023 17:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D151110E0B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 17:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674579872; x=1706115872;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hglcBY2wJvq2+0uja+g3bAGXMy/5TDsnI1fGc81dg3w=;
 b=MmT0Lqb1IQVGKfbSqAJmthUtTV6YOvOTPsdoelPWRmk/qDhlMKh1ijie
 g8S8BzVouojTYcUETm5Ya1dskE54DdBdZ+XneJ69ELbHzLdeWPo1D6AAj
 tNkGipPXJJcpvo9ohPDg0xGsdIPdG+WHqjErmu/5OXQmDUnDsPDoae1WZ
 IILGbmZL/OEQXn2qQ+yL+/5LykbYv95HIrXTA4sgI4+aZVkuVWmJLkcUx
 Ejf/z+849DRK7XZpXvhUbtHCSqC+xO+teGqPAJDmmv2vaPmVbibDiwGdO
 K9EWDXUCiox9oWwvjXfR99MorrQPBJYF1V7DpYWAq0qVSwL1TIY+XDhWZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="306006565"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="306006565"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 09:03:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="836044722"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="836044722"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.46.216])
 ([10.249.46.216])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 09:03:45 -0800
Message-ID: <9be0ff9d-58b5-f0df-56ad-28b5c3652ba4@linux.intel.com>
Date: Tue, 24 Jan 2023 18:03:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Matt Roper <matthew.d.roper@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20230124142212.18498-1-nirmoy.das@intel.com>
 <Y9AO2blTxfzNiT9H@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <Y9AO2blTxfzNiT9H@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xehpsdv/selftests: Flush all tiles
 on test exit
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/24/2023 6:01 PM, Matt Roper wrote:
> On Tue, Jan 24, 2023 at 03:22:12PM +0100, Nirmoy Das wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We want to idle all tiles when exiting selftests.
> This test doesn't sound like it's specific to "xehpsdv."  Was the patch
> title supposed to be "xehp" (the architecture, not the platform)?  For
> that matter, we haven't even enabled multiple tiles on xehpsdv/pvc yet,
> so MTL is actually the only platform with multiple GTs at the moment.


Thanks for correcting that. It is needed for MTL. I will resend with 
proper subject.


Regards,

Nirmoy

>
>
> Matt
>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   .../gpu/drm/i915/selftests/igt_flush_test.c   | 28 +++++++++++--------
>>   1 file changed, 17 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>> index b484e12df417..29110abb4fe0 100644
>> --- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>> +++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
>> @@ -14,21 +14,27 @@
>>   
>>   int igt_flush_test(struct drm_i915_private *i915)
>>   {
>> -	struct intel_gt *gt = to_gt(i915);
>> -	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
>> +	struct intel_gt *gt;
>> +	unsigned int i;
>> +	int ret = 0;
>>   
>> -	cond_resched();
>> +	for_each_gt(gt, i915, i) {
>> +		if (intel_gt_is_wedged(gt))
>> +			ret = -EIO;
>>   
>> -	if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
>> -		pr_err("%pS timed out, cancelling all further testing.\n",
>> -		       __builtin_return_address(0));
>> +		cond_resched();
>>   
>> -		GEM_TRACE("%pS timed out.\n",
>> -			  __builtin_return_address(0));
>> -		GEM_TRACE_DUMP();
>> +		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
>> +			pr_err("%pS timed out, cancelling all further testing.\n",
>> +			       __builtin_return_address(0));
>>   
>> -		intel_gt_set_wedged(gt);
>> -		ret = -EIO;
>> +			GEM_TRACE("%pS timed out.\n",
>> +				  __builtin_return_address(0));
>> +			GEM_TRACE_DUMP();
>> +
>> +			intel_gt_set_wedged(gt);
>> +			ret = -EIO;
>> +		}
>>   	}
>>   
>>   	return ret;
>> -- 
>> 2.39.0
>>

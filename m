Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FCD679F99
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 18:05:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0E410E6D0;
	Tue, 24 Jan 2023 17:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5075D10E6DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 17:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674579935; x=1706115935;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=D8tDiqwyNPqxtdSeCS/Zj8qXUsqBQnEIeAcbIiE9cKA=;
 b=FlJbVb8M8YDjYi2GzjaJmkCbOcyaVRcyT/tzmIN40ebiAxcPP0pXpoH7
 wPJQS30xR9GGcSLnZkzG6YRr9qm7dHEh7RdW4nKaiFmzAAugceRbAZ2YV
 qITLVGuiN6bKOfl5ZNiSdRQcBGxZKC7ojAu6IDpsMS6/6RjLAhbvxTTQ8
 wVnXp3PVl4lpsu6esR19kMPp+CjTLQchXKQyZwAxT7tlmoJ6GYn1+hby8
 62UnPKFZfBUdsi/DgXYsv89RpeVg504OaLiuBq7v31l59rEawh9hjVjil
 90wujonIHPeUPvshN3VaZwMOJ+q3Xmw5cr8bfdD8cSVcGsP/LPCNH0h/3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412579693"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412579693"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 09:05:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786154731"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="786154731"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.46.216])
 ([10.249.46.216])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 09:05:32 -0800
Message-ID: <9553f978-b2f4-8cac-e456-f9e31f1fcd74@linux.intel.com>
Date: Tue, 24 Jan 2023 18:05:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20230124142212.18498-1-nirmoy.das@intel.com>
 <Y9AC7hp6JFMe+w/J@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <Y9AC7hp6JFMe+w/J@ashyti-mobl2.lan>
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

Hi Andi,

On 1/24/2023 5:10 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Tue, Jan 24, 2023 at 03:22:12PM +0100, Nirmoy Das wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We want to idle all tiles when exiting selftests.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>


Thanks.

>
> ...
>
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
> I'm just wondering if it makes sense to check if the gt is
> wedged.

Could you please expand more, what are your thoughts about this ?


Nirmoy


>
> Andi
>
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

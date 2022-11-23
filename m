Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E462635E6F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 13:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D37110E547;
	Wed, 23 Nov 2022 12:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B7910E3E8;
 Wed, 23 Nov 2022 12:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669208252; x=1700744252;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gfr6Uu2VC/PARWwEgTaZif15h6EogALyiusqPNUKX1I=;
 b=fERa06rT4qnOphA21hGH6G1NP+2mvywbRgCJMMyKYbw+FeuirC7FbMvJ
 WkRBv7dJbTv95BV0yNI94KvtWFRT3+GyrlDZCsI0DyArRgEUzt+2r/FA+
 yWKVeoYzRNBYOSqpHbpX5mgH9DI1OaNicjszR2SymilPYMJNvtAOS6NAo
 s8Kxdnjm9IbyjKKWAUXFTabvaP9ye2kPH9AnHw8cYkyxMheqktbkG1pjx
 jx6sv+BaTUyf+GKA693flCDcl/5f2Z6QfWRNN6xBb6BtV8fPINKMZQcVI
 CF63sYsu5ccC59vCBI2o2N9mSbUYoOGFCHop47xqK5FXjVkbxWJfTj9I5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="314094408"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="314094408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 04:57:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="672868575"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="672868575"
Received: from tpowell-mobl.ger.corp.intel.com (HELO [10.213.224.65])
 ([10.213.224.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 04:57:28 -0800
Message-ID: <b1f9851e-b8c9-6b53-2d21-a5a5eb37749c@linux.intel.com>
Date: Wed, 23 Nov 2022 12:57:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
References: <20221121145655.75141-1-janusz.krzysztofik@linux.intel.com>
 <20221121145655.75141-3-janusz.krzysztofik@linux.intel.com>
 <6a465c20-b0a7-4beb-6d1b-4ff66a29975f@linux.intel.com>
 <9026056.CDJkKcVGEf@jkrzyszt-mobl1.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <9026056.CDJkKcVGEf@jkrzyszt-mobl1.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: Never return 0 if not all
 requests retired
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
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/11/2022 09:28, Janusz Krzysztofik wrote:
> Hi Tvrtko,
> 
> Thanks for your comments.
> 
> On Tuesday, 22 November 2022 11:50:38 CET Tvrtko Ursulin wrote:
>>
>> On 21/11/2022 14:56, Janusz Krzysztofik wrote:
>>> Users of intel_gt_retire_requests_timeout() expect 0 return value on
>>> success.  However, we have no protection from passing back 0 potentially
>>> returned by a call to dma_fence_wait_timeout() when it succedes right
>>> after its timeout has expired.
>>
>> Is this talking about a potential weakness, or ambiguous kerneldoc, of
>> dma_fence_wait_timeout, dma_fence_default_wait and
>> i915_request_wait_timeout? They appear to say 0 return means timeout,
>> implying unsignaled fence. In other words signaled must return positive
>> remaining timeout. Implementations seems to allow a race which indeed
>> appears that return 0 and signaled fence is possible.
> 
> While my initial analysis was indeed focused on inconsistent semantics of 0
> return values from different dma_fence_default_wait() backends, I should have
> also mentioned in this commit description that users may perfectly
> call intel_gt_retire_requests_timeout() with 0 timeout, in which case the
> false positive 0 value can be returned regardless of dma_fence_wait_timeout()
> potential issues.  Would you like me to reword and resubmit?

Not sure yet.

So the only caller which passes in zero to 
intel_gt_retire_requests_timeout appears to be intel_gt_retire_requests 
and it eats the return value anyway so this patch is immaterial for that 
one.

I guess it can change how intel_gt_wait_for_idle behaves with short-ish 
timeouts. In case this race is hit. But then wouldn't it make sense to 
follow up with a patch which addresses this race by re-checking the "is 
signaled" when timeout expires, either in dma_fence_wait_timeout, or to 
intel_gt_retire_requests_timeout. Or if not that at least better 
document the dma_fence_wait_timeout and/or 
intel_gt_retire_requests_timeout. Makes sense?

Regards,

Tvrtko

> 
>> If dma_fence_wait can indeed return 0 even when a request is signaled,
>> then how is timeout ?: -ETIME below correct? It isn't a chance for false
>> negative in its' callers?
> 
> The goal of intel_gt_retire_requests_timeout() is to retire requests.  When
> that goal has been reached, i.e., all requests have been retired, active count
> is 0, and 0 is correctly returned, regardless of timeout value.
> 
> The value of timeout is used only when there are still pending requests, which
> means that the goal hasn't been reached and the function hasn't succeeded.
> Then, no false negative is possible, unlike the false positive that we now
> have when we return 0  while some requests are still pending.
> 
> Thanks,
> Janusz
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>> Replace 0 with -ETIME before potentially using the timeout value as return
>>> code, so -ETIME is returned if there are still some requests not retired
>>> after timeout, 0 otherwise.
>>>
>>> v3: Use conditional expression, more compact but also better reflecting
>>>       intention standing behind the change.
>>>
>>> v2: Move the added lines down so flush_submission() is not affected.
>>>
>>> Fixes: f33a8a51602c ("drm/i915: Merge wait_for_timelines with retire_request")
>>> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> Cc: stable@vger.kernel.org # v5.5+
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_gt_requests.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>>> index edb881d756309..1dfd01668c79c 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>>> @@ -199,7 +199,7 @@ out_active:	spin_lock(&timelines->lock);
>>>    	if (remaining_timeout)
>>>    		*remaining_timeout = timeout;
>>>    
>>> -	return active_count ? timeout : 0;
>>> +	return active_count ? timeout ?: -ETIME : 0;
>>>    }
>>>    
>>>    static void retire_work_handler(struct work_struct *work)
>>
> 
> 
> 
> 

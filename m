Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CAE47249B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 10:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0658910E71F;
	Mon, 13 Dec 2021 09:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F0510E71F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 09:37:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="299481172"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="299481172"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 01:36:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="517678936"
Received: from cflatley-mobl1.ger.corp.intel.com (HELO [10.213.196.3])
 ([10.213.196.3])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 01:36:57 -0800
Message-ID: <c15f9066-4119-2f97-ed93-1fc5a8d3d0fe@linux.intel.com>
Date: Mon, 13 Dec 2021 09:36:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: "Yang, Dong" <dong.yang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20211210013147.2256699-1-dong.yang@intel.com>
 <d8e9dfad-7665-cc29-9f53-ff350c8a402d@linux.intel.com>
 <DM6PR11MB3051330D8484CC5EA0290DB0F2749@DM6PR11MB3051.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <DM6PR11MB3051330D8484CC5EA0290DB0F2749@DM6PR11MB3051.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request
 to intel_context twice
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


On 13/12/2021 01:53, Yang, Dong wrote:
> I am working on a customized kernel based on 5.4.39,  issue can only reproduced when system facing low memory pressure, and system try to reclaim memory, then wrong double insert i915_reqeust coming  from the i915_gem_shrink() path.

5.4 is quite old and there have been fixes to this code since. Any chance that you can repro on drm-tip? What project are you working on?

Is your bug perhaps similar to what c744d50363b7 ("drm/i915/gt: Split the breadcrumb spinlock between global and contexts") fixed? As the commit says:

"""
  Furthermore, this closes the race between enabling the signaling context
  while it is in the process of being signaled and removed:
"""

> 
> i915_request_enable_breadcrumb+0x136/0x14a
> dma_fence_enable_sw_signaling+0x47/0xb0
> enable_signaling+0x66/0x80
> i915_active_wait+0xc1/0x150
> __i915_vma_unbind+0x17/0x1a0
> i915_vma_unbind+0x47/0xc0
> i915_gem_object_unbind+0x189/0x290
> i915_gem_shrink+0x139/0x460
> ? __pm_runtime_resume+0x53/0x70
> i915_gem_shrinker_scan+0x9c/0xb0
> do_shrink_slab+0x14f/0x2b0
> shrink_slab+0xa7/0x2a0
> shrink_node+0xd1/0x410
> balance_pgdat+0x2b7/0x500
> kswapd+0x1e2/0x3b0
> 
> I believe it's not related to the ce->signal_lock,  the lock should works normally.
> 
> The i915_request_enable_breadcrumb() can be invoked by several context, like called from ioctl(), from interrupt context, and from memory swap thread, I suggest add a double check before insert i915_request to the list, it's hard to assure valid call from all the paths, but add check&protect can avoid the critical effect,  because add same i915_request twice will trigger a dead loop in signal_irq_work() , and the loop will never break continue the i915_request. hwsp_seqno be changed, and invalid address access error reported followed by system panic.

Maybe, but I was pointing out double insert_breadcrumb is already protected when called inside i915_request_enable_breadcrumb - by the virtue of the spinlock and I915_FENCE_FLAG_SIGNAL. So maybe a race with remove or something, but it looks unlikely it is simple double add due parallel enablement.

Regards,

Tvrtko

> 
> Thanks,
> Dong
> 
> -----Original Message-----
> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Sent: Friday, December 10, 2021 4:51 PM
> To: Yang, Dong <dong.yang@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request to intel_context twice
> 
> 
> On 10/12/2021 01:31, dong.yang@intel.com wrote:
>> From: "Yang, Dong" <dong.yang@intel.com>
>>
>> With unknow race condition, the i915_request will be added
> 
> What do you mean with unknown here?
> 
>> to intel_context list twice, and result in system panic.
>>
>> If node alreay exist then do not add it again.
> 
> Note the call chains are under ce->signal_lock and protecting from double add AFAICT:
> 
> static void insert_breadcrumb(struct i915_request *rq) { ...
> 	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
> 		return;
> ...
> 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> 
> 
> bool i915_request_enable_breadcrumb(struct i915_request *rq) { ...
> 	spin_lock(&ce->signal_lock);
> 	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
> 		insert_breadcrumb(rq);
> 	spin_unlock(&ce->signal_lock);
> 
> 
> void i915_request_cancel_breadcrumb(struct i915_request *rq) { ...
> 	spin_lock(&ce->signal_lock);
> 	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
> 		spin_unlock(&ce->signal_lock);
> 		return;
> 	}
> 
> void intel_context_remove_breadcrumbs(struct intel_context *ce,
> 				      struct intel_breadcrumbs *b)
> {
> ...
> 	spin_lock_irqsave(&ce->signal_lock, flags);
> 
> 	if (list_empty(&ce->signals))
> 		goto unlock;
> 
> 	list_for_each_entry_safe(rq, rn, &ce->signals, signal_link) {
> 		GEM_BUG_ON(!__i915_request_is_complete(rq));
> 		if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
> 					&rq->fence.flags))
> 			continue;
> 
> The last one in signal_irq_work is guarded by the __i915_request_is_complete check.
> 
> So I think more context is needed on how you found this may be an issue.
> 
> Regards,
> 
> Tvrtko
> 
>>
>> Signed-off-by: Yang, Dong <dong.yang@intel.com>
>> ---
>>    drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 +++
>>    1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> index 209cf265bf74..9c7bc060d2ae 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
>> @@ -387,6 +387,9 @@ static void insert_breadcrumb(struct i915_request *rq)
>>    		}
>>    	}
>>    
>> +	if (&rq->signal_link == pos)
>> +		return;
>> +
>>    	i915_request_get(rq);
>>    	list_add_rcu(&rq->signal_link, pos);
>>    	GEM_BUG_ON(!check_signal_order(ce, rq));
>>

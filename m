Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236F53903A7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 16:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EBB6EA37;
	Tue, 25 May 2021 14:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACEB6E125;
 Tue, 25 May 2021 14:15:24 +0000 (UTC)
IronPort-SDR: rXXVzFAjErKM60FjXXOzZsU+p6OO/TVPMio3VSM/BJyIwnbFTYfNTFlsLVWMVM53ux0O/2mox2
 icOFSYmyRaFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="202239478"
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="202239478"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 07:15:21 -0700
IronPort-SDR: EQtN2udL+0JprowicJKcJGL7eQi1DN7PcbV2R95UHgLiTWa912jRsWNqaP1zzLp0lg4oi4H3gO
 LQGDJnwB3PNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="443412867"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 25 May 2021 07:15:17 -0700
Received: from [10.249.148.145] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.148.145])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 14PEFF6Z013901; Tue, 25 May 2021 15:15:16 +0100
To: Matthew Brost <matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-38-matthew.brost@intel.com>
 <7e7ca64d-e5d7-7fd8-b446-7167341c0c92@intel.com>
 <20210524183518.GA12293@sdutt-i7>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <2b0430a4-d43e-ad52-890c-340631febd6c@intel.com>
Date: Tue, 25 May 2021 16:15:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210524183518.GA12293@sdutt-i7>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 37/97] drm/i915/guc: Add stall timer to
 non blocking CTB send function
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 24.05.2021 20:35, Matthew Brost wrote:
> On Mon, May 24, 2021 at 02:58:12PM +0200, Michal Wajdeczko wrote:
>>
>>
>> On 06.05.2021 21:13, Matthew Brost wrote:
>>> Implement a stall timer which fails H2G CTBs once a period of time
>>> with no forward progress is reached to prevent deadlock.
>>>
>>> Also update to ct_write to return -EDEADLK rather than -EPIPE on a
>>> corrupted descriptor.
>>
>> broken descriptor is really separate issue compared to no progress from
>> GuC side, I would really like to keep old error code
>>
> 
> I know you do as you have brought it up several times. Again to the rest
> of the stack these two things mean the exact same thing.

but I guess 'the rest of the stack' is only interested if returned error
is EBUSY or not, as all other errors are treated in the same way, thus
no need change existing error codes

>  
>> note that broken CTB descriptor is unrecoverable error, while on other
>> hand, in theory, we could recover from temporary non-moving CTB
>>
> 
> Yea but we don't, in both cases we disable submission which in turn
> triggers a full GPU reset.

is this current limitation or long term design?

I would rather expect that decision to trigger full GPU is done on solid
foundations, like definite lost communication with the GuC or missed
heartbeats, not that we temporarily push CTB to the limit

or if do we want to treat CTB processing as kind of hw health checkout
too, what if heartbeat timeout and CTB stall time do not match ?

> 
>>>
>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 48 +++++++++++++++++++++--
>>>  1 file changed, 45 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> index af7314d45a78..4eab319d61be 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>>> @@ -69,6 +69,8 @@ static inline struct drm_device *ct_to_drm(struct intel_guc_ct *ct)
>>>  #define CTB_H2G_BUFFER_SIZE	(SZ_4K)
>>>  #define CTB_G2H_BUFFER_SIZE	(SZ_4K)
>>>  
>>> +#define MAX_US_STALL_CTB	1000000
>>
>> nit: maybe we should make it a CONFIG value ?
>>
> 
> Sure.
> 
>>> +
>>>  struct ct_request {
>>>  	struct list_head link;
>>>  	u32 fence;
>>> @@ -315,6 +317,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
>>>  
>>>  	ct->requests.last_fence = 1;
>>>  	ct->enabled = true;
>>> +	ct->stall_time = KTIME_MAX;
>>>  
>>>  	return 0;
>>>  
>>> @@ -378,7 +381,7 @@ static int ct_write(struct intel_guc_ct *ct,
>>>  	unsigned int i;
>>>  
>>>  	if (unlikely(ctb->broken))
>>> -		return -EPIPE;
>>> +		return -EDEADLK;
>>>  
>>>  	if (unlikely(desc->status))
>>>  		goto corrupted;
>>> @@ -449,7 +452,7 @@ static int ct_write(struct intel_guc_ct *ct,
>>>  	CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u status=%#x\n",
>>>  		 desc->head, desc->tail, desc->status);
>>>  	ctb->broken = true;
>>> -	return -EPIPE;
>>> +	return -EDEADLK;
>>>  }
>>>  
>>>  /**
>>> @@ -494,6 +497,17 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
>>>  	return err;
>>>  }
>>>  
>>> +static inline bool ct_deadlocked(struct intel_guc_ct *ct)
>>> +{
>>> +	bool ret = ktime_us_delta(ktime_get(), ct->stall_time) >
>>> +		MAX_US_STALL_CTB;
>>> +
>>> +	if (unlikely(ret))
>>> +		CT_ERROR(ct, "CT deadlocked\n");
>>> +
>>> +	return ret;
>>> +}
>>> +
>>>  static inline bool ctb_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
>>>  {
>>>  	struct guc_ct_buffer_desc *desc = ctb->desc;
>>> @@ -505,6 +519,26 @@ static inline bool ctb_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
>>>  	return space >= len_dw;
>>>  }
>>>  
>>> +static int has_room_nb(struct intel_guc_ct *ct, u32 len_dw)
>>> +{
>>> +	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
>>> +
>>> +	lockdep_assert_held(&ct->ctbs.send.lock);
>>> +
>>> +	if (unlikely(!ctb_has_room(ctb, len_dw))) {
>>> +		if (ct->stall_time == KTIME_MAX)
>>> +			ct->stall_time = ktime_get();
>>> +
>>> +		if (unlikely(ct_deadlocked(ct)))
>>> +			return -EDEADLK;
>>> +		else
>>> +			return -EBUSY;
>>> +	}
>>> +
>>> +	ct->stall_time = KTIME_MAX;
>>> +	return 0;
>>> +}
>>> +
>>>  static int ct_send_nb(struct intel_guc_ct *ct,
>>>  		      const u32 *action,
>>>  		      u32 len,
>>> @@ -517,7 +551,7 @@ static int ct_send_nb(struct intel_guc_ct *ct,
>>>  
>>>  	spin_lock_irqsave(&ctb->lock, spin_flags);
>>>  
>>> -	ret = ctb_has_room(ctb, len + 1);
>>> +	ret = has_room_nb(ct, len + 1);
>>>  	if (unlikely(ret))
>>>  		goto out;
>>>  
>>> @@ -561,11 +595,19 @@ static int ct_send(struct intel_guc_ct *ct,
>>>  retry:
>>>  	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
>>>  	if (unlikely(!ctb_has_room(ctb, len + 1))) {
>>> +		if (ct->stall_time == KTIME_MAX)
>>> +			ct->stall_time = ktime_get();
>>>  		spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
>>> +
>>> +		if (unlikely(ct_deadlocked(ct)))
>>> +			return -EDEADLK;
>>> +
>>
>> likely, instead of duplicating code, you can reuse has_room_nb here
>>
> 
> In this patch yes, in the following patch no as this check changes
> between non-blockig and blocking once we introduce G2H credits. I'd
> rather just leave it as is than churning on the patches.
> 
> Matt 
>  
>>>  		cond_resched();
>>>  		goto retry;
>>>  	}
>>>  
>>> +	ct->stall_time = KTIME_MAX;
>>> +
>>>  	fence = ct_get_next_fence(ct);
>>>  	request.fence = fence;
>>>  	request.status = 0;
>>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

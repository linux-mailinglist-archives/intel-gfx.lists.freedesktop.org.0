Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C04D1915DA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611286E392;
	Tue, 24 Mar 2020 16:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81DB36E4A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:13:07 +0000 (UTC)
IronPort-SDR: xwy04VRjr30vED8hjC8Tub/DrRw3wxbmzbBvhJKBGASIW02VLklkjUAvsyUU4LJyy3Ijw7TnvZ
 CFG3RkEpb4UA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 09:13:06 -0700
IronPort-SDR: 6MMuP1JfZ3TP8SDlxWcy9EMhoR+EwwxplNumJOVNzrc2KLy8E8U84yCvLwukk0c5QJmimdSJqm
 iwaW+UjAK6Sg==
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="419944886"
Received: from preuss-mobl1.ger.corp.intel.com (HELO [10.252.56.19])
 ([10.252.56.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 09:13:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
 <20200323092841.22240-7-chris@chris-wilson.co.uk>
 <ddf2b2b0-1a81-943c-21eb-b7a8595fa3c3@linux.intel.com>
 <158496038838.17851.3759554685472513408@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f04053cc-94dc-89dd-0549-76a439aafd8b@linux.intel.com>
Date: Tue, 24 Mar 2020 16:13:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158496038838.17851.3759554685472513408@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Immediately execute the
 fenced work
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/03/2020 10:46, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-23 10:37:22)
>>
>> On 23/03/2020 09:28, Chris Wilson wrote:
>>> If the caller allows and we do not have to wait for any signals,
>>> immediately execute the work within the caller's process. By doing so we
>>> avoid the overhead of scheduling a new task, and the latency in
>>> executing it, at the cost of pulling that work back into the immediate
>>> context. (Sometimes we still prefer to offload the task to another cpu,
>>> especially if we plan on executing many such tasks in parallel for this
>>> client.)
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  2 +-
>>>    drivers/gpu/drm/i915/i915_sw_fence_work.c      |  5 ++++-
>>>    drivers/gpu/drm/i915/i915_sw_fence_work.h      | 12 ++++++++++++
>>>    drivers/gpu/drm/i915/i915_vma.c                |  2 +-
>>>    4 files changed, 18 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> index c2bd5accde0c..e80c6f613feb 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> @@ -1784,7 +1784,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>>>        dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
>>>        dma_resv_unlock(shadow->resv);
>>>    
>>> -     dma_fence_work_commit(&pw->base);
>>> +     dma_fence_work_commit_imm(&pw->base);
>>>        return 0;
>>>    
>>>    err_batch_unlock:
>>> diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
>>> index 997b2998f1f2..a3a81bb8f2c3 100644
>>> --- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
>>> +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
>>> @@ -38,7 +38,10 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
>>>    
>>>                if (!f->dma.error) {
>>>                        dma_fence_get(&f->dma);
>>> -                     queue_work(system_unbound_wq, &f->work);
>>> +                     if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
>>> +                             fence_work(&f->work);
>>> +                     else
>>> +                             queue_work(system_unbound_wq, &f->work);
>>>                } else {
>>>                        fence_complete(f);
>>>                }
>>> diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.h b/drivers/gpu/drm/i915/i915_sw_fence_work.h
>>> index 3a22b287e201..0719d661dc9c 100644
>>> --- a/drivers/gpu/drm/i915/i915_sw_fence_work.h
>>> +++ b/drivers/gpu/drm/i915/i915_sw_fence_work.h
>>> @@ -32,6 +32,10 @@ struct dma_fence_work {
>>>        const struct dma_fence_work_ops *ops;
>>>    };
>>>    
>>> +enum {
>>> +     DMA_FENCE_WORK_IMM = DMA_FENCE_FLAG_USER_BITS,
>>> +};
>>> +
>>>    void dma_fence_work_init(struct dma_fence_work *f,
>>>                         const struct dma_fence_work_ops *ops);
>>>    int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal);
>>> @@ -41,4 +45,12 @@ static inline void dma_fence_work_commit(struct dma_fence_work *f)
>>>        i915_sw_fence_commit(&f->chain);
>>>    }
>>>    
>>> +static inline void dma_fence_work_commit_imm(struct dma_fence_work *f)
>>> +{
>>> +     if (atomic_read(&f->chain.pending) <= 1)
>>> +             __set_bit(DMA_FENCE_WORK_IMM, &f->dma.flags);
>>> +
>>
>> What is someone bumps pending to 2 at this point?
> 
> That's invalid. The sequence is
> 
> create a worker
> ... add all async waits ...
> commit
> 
> Since the worker fires when pending waits hits zero, you cannot add any
> more async waits after commit in a race free manner. You have to play
> games, such as "is this fence already signaled? no, let's delay it
> again". If you are playing such games, you know already and shouldn't be
> trying to execute synchronously/immediately.

> A BUG_ON(!dma_fence_signaled(&f->dma)) would suffice to catch most such
> races.

So the "if the callers allows" from the commit message means something 
like "if pending is only one at the time of commit" ?

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92538535DAC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 11:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153AC10E9D4;
	Fri, 27 May 2022 09:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4423F10EECA
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 09:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653645352; x=1685181352;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JLaijJ6q9mcW3xqgU5ET1OmWzh1yzffilRpEe3Lf4s0=;
 b=AiiXv1XnI4Zdeauefg8yu/2KND6S89oFA27kC7TtMhdREheTfHUXpgAY
 dUQU71O+rHvV3sSIyw+lcf0/08sIVyJktSEYml0LwDiEjFlzt2V+zq0Ka
 oP5+ev0tkMWwIBBJaL71i6KowQYyv0ldoVk5s3CMHriNzJvjXrH5/kWS/
 ohH4ZuW9oT/C//tL/Zd8aPBkyrDrEFpH/jrpCDa+1tNdDKrhI8gZtQHDH
 pyyY96L2QyEqnB5Dk0uB5BkYdU/7JWe0uztsVS4Qq690VrYUwgdPgF3KV
 n3k+Cm6A9r6difssA51M6bg+apyxzust4lUeB13RJYW16u5v1h2V7bX2U g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="262056982"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="262056982"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:55:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="746846011"
Received: from mhefczyc-mobl.ger.corp.intel.com (HELO [10.252.5.252])
 ([10.252.5.252])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:55:50 -0700
Message-ID: <b51cdb8a-d521-206c-3ac6-4ecbf7621caf@intel.com>
Date: Fri, 27 May 2022 10:55:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-GB
To: "Das, Nirmoy" <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220525095955.15371-1-nirmoy.das@intel.com>
 <2c138486-fa2e-867c-33ac-3e7837a8481a@intel.com>
 <2c1400c1-d255-5485-f3c4-e85e9a20d63c@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <2c1400c1-d255-5485-f3c4-e85e9a20d63c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Individualize fences before
 adding to dma_resv obj
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
Cc: thomas.hellstrom@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 27/05/2022 10:46, Das, Nirmoy wrote:
> 
> On 5/26/2022 11:27 AM, Matthew Auld wrote:
>> On 25/05/2022 10:59, Nirmoy Das wrote:
>>> _i915_vma_move_to_active() can receive > 1 fences for
>>> multiple batch buffers submission. Because dma_resv_add_fence()
>>> can only accept one fence at a time, change _i915_vma_move_to_active()
>>> to be aware of multiple fences so that it can add individual
>>> fences to the dma resv object.
>>>
>>> v6: fix multi-line comment.
>>> v5: remove double fence reservation for batch VMAs.
>>> v4: Reserve fences for composite_fence on multi-batch contexts and
>>>      also reserve fence slots to composite_fence for each VMAs.
>>> v3: dma_resv_reserve_fences is not cumulative so pass num_fences.
>>> v2: make sure to reserve enough fence slots before adding.
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>
>> Do we need Fixes: ?
> 
> 
> We can add:
> 
> Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")

Ok, so needs:

Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
Cc: <stable@vger.kernel.org> # v5.16+

Should I go ahead and push this to gt-next?

> 
> 
> Regards,
> 
> Nirmoy
> 
> 
>>
>>> ---
>>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
>>>   drivers/gpu/drm/i915/i915_vma.c               | 48 +++++++++++--------
>>>   2 files changed, 30 insertions(+), 21 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> index b279588c0672..8880d38d36b6 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> @@ -1010,7 +1010,8 @@ static int eb_validate_vmas(struct 
>>> i915_execbuffer *eb)
>>>               }
>>>           }
>>>   -        err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>> +        /* Reserve enough slots to accommodate composite fences */
>>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, 
>>> eb->num_batches);
>>>           if (err)
>>>               return err;
>>>   diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>>> b/drivers/gpu/drm/i915/i915_vma.c
>>> index 4f6db539571a..0bffb70b3c5f 100644
>>> --- a/drivers/gpu/drm/i915/i915_vma.c
>>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>>> @@ -23,6 +23,7 @@
>>>    */
>>>     #include <linux/sched/mm.h>
>>> +#include <linux/dma-fence-array.h>
>>>   #include <drm/drm_gem.h>
>>>     #include "display/intel_frontbuffer.h"
>>> @@ -1823,6 +1824,21 @@ int _i915_vma_move_to_active(struct i915_vma 
>>> *vma,
>>>       if (unlikely(err))
>>>           return err;
>>>   +    /*
>>> +     * Reserve fences slot early to prevent an allocation after 
>>> preparing
>>> +     * the workload and associating fences with dma_resv.
>>> +     */
>>> +    if (fence && !(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>> +        struct dma_fence *curr;
>>> +        int idx;
>>> +
>>> +        dma_fence_array_for_each(curr, idx, fence)
>>> +            ;
>>> +        err = dma_resv_reserve_fences(vma->obj->base.resv, idx);
>>> +        if (unlikely(err))
>>> +            return err;
>>> +    }
>>> +
>>>       if (flags & EXEC_OBJECT_WRITE) {
>>>           struct intel_frontbuffer *front;
>>>   @@ -1832,31 +1848,23 @@ int _i915_vma_move_to_active(struct 
>>> i915_vma *vma,
>>>                   i915_active_add_request(&front->write, rq);
>>>               intel_frontbuffer_put(front);
>>>           }
>>> +    }
>>>   -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>> -            if (unlikely(err))
>>> -                return err;
>>> -        }
>>> +    if (fence) {
>>> +        struct dma_fence *curr;
>>> +        enum dma_resv_usage usage;
>>> +        int idx;
>>>   -        if (fence) {
>>> -            dma_resv_add_fence(vma->obj->base.resv, fence,
>>> -                       DMA_RESV_USAGE_WRITE);
>>> +        obj->read_domains = 0;
>>> +        if (flags & EXEC_OBJECT_WRITE) {
>>> +            usage = DMA_RESV_USAGE_WRITE;
>>>               obj->write_domain = I915_GEM_DOMAIN_RENDER;
>>> -            obj->read_domains = 0;
>>> -        }
>>> -    } else {
>>> -        if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>>> -            err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
>>> -            if (unlikely(err))
>>> -                return err;
>>> +        } else {
>>> +            usage = DMA_RESV_USAGE_READ;
>>>           }
>>>   -        if (fence) {
>>> -            dma_resv_add_fence(vma->obj->base.resv, fence,
>>> -                       DMA_RESV_USAGE_READ);
>>> -            obj->write_domain = 0;
>>> -        }
>>> +        dma_fence_array_for_each(curr, idx, fence)
>>> +            dma_resv_add_fence(vma->obj->base.resv, curr, usage);
>>>       }
>>>         if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)

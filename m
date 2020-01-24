Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBA4147EC7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 11:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F16272347;
	Fri, 24 Jan 2020 10:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C98D72347
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 10:33:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 02:33:19 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="230239363"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 24 Jan 2020 02:33:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200123224459.38128-1-chris@chris-wilson.co.uk>
 <51d86897-7c11-b7f8-b9b9-f49490c62d7a@linux.intel.com>
 <157985821394.6050.1226658095306678166@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <992ad20d-3a26-2131-3fff-4ac601458729@linux.intel.com>
Date: Fri, 24 Jan 2020 10:33:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157985821394.6050.1226658095306678166@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check activity on i915_vma
 after confirming pin_count==0
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


On 24/01/2020 09:30, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-24 09:12:36)
>>
>> On 23/01/2020 22:44, Chris Wilson wrote:
>>> Only assert that the i915_vma is now idle if and only if no other pins
>>> are present. If another user has the i915_vma pinned, they may submit
>>> more work to the i915_vma skipping the vm->mutex used to serialise the
>>> unbind. We need to wait again, if we want to continue and unbind this
>>> vma.
>>>
>>> However, if we own the i915_vma (we hold the vm->mutex for the unbind
>>> and the pin_count is 0), we can assert that the vma remains idle as we
>>> unbind.
>>>
>>> Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
>>> Closes: https://gitlab.freedesktop.org/drm/intel/issues/530
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_vma.c | 14 ++++++++++++--
>>>    1 file changed, 12 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
>>> index 306b951831fe..4999882fbceb 100644
>>> --- a/drivers/gpu/drm/i915/i915_vma.c
>>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>>> @@ -1202,16 +1202,26 @@ int __i915_vma_unbind(struct i915_vma *vma)
>>>        if (ret)
>>>                return ret;
>>>    
>>> -     GEM_BUG_ON(i915_vma_is_active(vma));
>>>        if (i915_vma_is_pinned(vma)) {
>>>                vma_print_allocator(vma, "is pinned");
>>>                return -EAGAIN;
>>>        }
>>>    
>>> -     GEM_BUG_ON(i915_vma_is_active(vma));
>>> +     /*
>>> +      * After confirming that no one else is pinning this vma, wait for
>>> +      * any laggards who may have crept in during the wait (through
>>> +      * a residual pin skipping the vm->mutex) to complete.
>>> +      */
>>> +     ret = i915_vma_sync(vma);
>>> +     if (ret)
>>> +             return ret;
>>> +
>>>        if (!drm_mm_node_allocated(&vma->node))
>>>                return 0;
>>>    
>>> +     GEM_BUG_ON(i915_vma_is_pinned(vma));
>>> +     GEM_BUG_ON(i915_vma_is_active(vma));
>>> +
>>>        if (i915_vma_is_map_and_fenceable(vma)) {
>>>                /*
>>>                 * Check that we have flushed all writes through the GGTT
>>>
>>
>> GEM_BUG_ON in a sandwich of two syncs, which is similar to the while
>> loop from an earlier version. Are you sure there are no races with this
>> one?
> 
> I'm confident that there are no races here with execbuf, but not so
> confident that I'd remove the asserts!
> 
>> If pinned check is the main gate then wouldn't one sync after the
>> pinned check be enough?
> 
> Yes, considered it -- but the sync before the unpin is required to flush
> other users so that the pin_count is stable. And then once stable, we
> need to chase away the latecomers.
> 
>> Especially since in 2/2 you add another sync
>> before taking the mutex.
> 
> Yeah, but we don't always take that path, and we need to hold the mutex
> to stabilise. So before the mutex, it's just an optimistic wait with no
> guarantees for forward progress.

Okay, it's not dangerous or anything so worth a try even without 
bothering (on my side) to think of all possible paths.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

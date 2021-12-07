Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0610F46BD37
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 15:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3450EAA4C9;
	Tue,  7 Dec 2021 14:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18485AA4AB;
 Tue,  7 Dec 2021 14:05:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217604369"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="217604369"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 06:05:47 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="600174578"
Received: from iodintso-mobl.ger.corp.intel.com (HELO [10.252.18.50])
 ([10.252.18.50])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 06:05:46 -0800
Message-ID: <52fadb30-bdc2-6432-931b-ef1bbf3be0ba@intel.com>
Date: Tue, 7 Dec 2021 14:05:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211018091055.1998191-1-matthew.auld@intel.com>
 <20211018091055.1998191-2-matthew.auld@intel.com>
 <1a8431eb-566d-ac2b-85b7-31c590ec84ff@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <1a8431eb-566d-ac2b-85b7-31c590ec84ff@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v9 2/8] drm/i915/ttm: add tt shmem backend
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 07/12/2021 13:10, Tvrtko Ursulin wrote:
> 
> On 18/10/2021 10:10, Matthew Auld wrote:
>> For cached objects we can allocate our pages directly in shmem. This
>> should make it possible(in a later patch) to utilise the existing
>> i915-gem shrinker code for such objects. For now this is still disabled.
>>
>> v2(Thomas):
>>    - Add optional try_to_writeback hook for objects. Importantly we need
>>      to check if the object is even still shrinkable; in between us
>>      dropping the shrinker LRU lock and acquiring the object lock it 
>> could for
>>      example have been moved. Also we need to differentiate between
>>      "lazy" shrinking and the immediate writeback mode. Also later we 
>> need to
>>      handle objects which don't even have mm.pages, so bundling this into
>>      put_pages() would require somehow handling that edge case, hence
>>      just letting the ttm backend handle everything in try_to_writeback
>>      doesn't seem too bad.
>> v3(Thomas):
>>    - Likely a bad idea to touch the object from the unpopulate hook,
>>      since it's not possible to hold a reference, without also creating
>>      circular dependency, so likely this is too fragile. For now just
>>      ensure we at least mark the pages as dirty/accessed when called 
>> from the
>>      shrinker on WILLNEED objects.
>>    - s/try_to_writeback/shrinker_release_pages, since this can do more
>>      than just writeback.
>>    - Get rid of do_backup boolean and just set the SWAPPED flag prior to
>>      calling unpopulate.
>>    - Keep shmem_tt as lowest priority for the TTM LRU bo_swapout walk, 
>> since
>>      these just get skipped anyway. We can try to come up with something
>>      better later.
>> v4(Thomas):
>>    - s/PCI_DMA/DMA/. Also drop NO_KERNEL_MAPPING and NO_WARN, which
>>      apparently doesn't do anything with streaming mappings.
>>    - Just pass along the error for ->truncate, and assume nothing.
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Christian König <christian.koenig@amd.com>
>> Cc: Oak Zeng <oak.zeng@intel.com>
>> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Acked-by: Oak Zeng <oak.zeng@intel.com>
> 
> [snip]
> 
>> -static void try_to_writeback(struct drm_i915_gem_object *obj,
>> -                 unsigned int flags)
>> +static int try_to_writeback(struct drm_i915_gem_object *obj, unsigned 
>> int flags)
>>   {
>> +    if (obj->ops->shrinker_release_pages)
>> +        return obj->ops->shrinker_release_pages(obj,
>> +                            flags & I915_SHRINK_WRITEBACK);
> 
> I have a high level question about how does this new vfunc fit with the 
> existing code.
> 
> Because I notice in the implementation (i915_ttm_shrinker_release_pages) 
> it ends up doing:
> ...
> 
>         switch (obj->mm.madv) {
>         case I915_MADV_DONTNEED:
>                 return i915_ttm_purge(obj);
>         case __I915_MADV_PURGED:
>                 return 0;
>         }
> 
> ... and then...
> 
>         if (should_writeback)
>                 __shmem_writeback(obj->base.size, 
> i915_tt->filp->f_mapping);
> 
> Which on a glance looks like a possible conceptual duplication of the 
> concepts in this very function (try_to_writeback):
> 
>> +
>>       switch (obj->mm.madv) {
>>       case I915_MADV_DONTNEED:
>>           i915_gem_object_truncate(obj);
>> -        return;
>> +        return 0;
>>       case __I915_MADV_PURGED:
>> -        return;
>> +        return 0;
>>       }
>>       if (flags & I915_SHRINK_WRITEBACK)
>>           i915_gem_object_writeback(obj);
> 
> So question is this the final design or some futher tidy is 
> possible/planned?

It seems ok to me, all things considered. The TTM version needs to check 
if the object is still shrinkable at the start(plus some other stuff), 
upon acquiring the object lock. If that succeeds we can do the above 
madv checks and potentially just call truncate. Otherwise we can proceed 
with shrinking, but again TTM is special here, and we have to call 
ttm_bo_validate() underneath(we might not even have mm.pages here). And 
then if that all works we might be able to also perform the writeback, 
if needed. So I suppose we could add all that directly in 
try_to_writeback(), and make it conditional for TTM devices, or I guess 
we need two separate hooks, one to do some pre-checking and another do 
the actual swap step. Not sure if that is better or worse though.

> 
> Background to my question is that I will float a patch which proposes to 
> remove writeback altogether. There are reports from the fields that it 
> causes deadlocks and looking at 2d6692e642e7 ("drm/i915: Start writeback 
> from the shrinker") and its history it seems like it was a known risk.
> 
> Apart from the code organisation questions, on the practical level - do 
> you need writeback from the TTM backend or while I am proposing to 
> remove it from the "legacy" paths, I can propose removing it from the 
> TTM flow as well?

Yeah, if that is somehow busted then we should remove from TTM backend also.

> 
> Regards,
> 
> Tvrtko

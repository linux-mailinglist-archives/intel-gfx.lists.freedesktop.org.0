Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578214E3ED5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8959C10E554;
	Tue, 22 Mar 2022 12:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3C710E554;
 Tue, 22 Mar 2022 12:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647953646; x=1679489646;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7vJ+TXVdMsJk7V6kXZQe7U7wk2Kfj1j2ob7NK4IUNrg=;
 b=AgDvs5bj2ZR4IFK7k8nIOOdJMDJbik3+1LSwJTXgJdyk7RFiNMiITQOe
 EjLgUcPc800nx27KesWaksNAXAkJMQ2d7LX3kQ+llijeCs6prOVo3tRlj
 A1yE+g/Cfy4m+UTSIHERQ/+YX1uPBtTt8kf/LkFsjxZMoAFXl2V5VbeMK
 UTO/JZTo6vVzddLg6cAqJG3d1W6fB2DX2ZF7jRshhkHYNwLH1IQ5QmHEq
 CmOsTN5HNDt/F90Vpje5Y37k5UMxCvS0putEFMWb+GlJS+70vM483vQwy
 606csau2u3Nb8m842k46jPRaZC4zFUbMU7nGNhygmdCSQuArdKWaBnBmI A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="344237788"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="344237788"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:54:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560372678"
Received: from srobinso-mobl.ger.corp.intel.com (HELO [10.213.230.39])
 ([10.213.230.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:53:57 -0700
Message-ID: <fda351f2-b68e-4a75-a96a-6ad1e701a1f5@linux.intel.com>
Date: Tue, 22 Mar 2022 12:53:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220319194227.297639-1-michael.cheng@intel.com>
 <4c86ae70-6f97-7a7c-1fd4-5e73ca29d0ba@linux.intel.com>
 <5db61477-6064-ada0-82a7-c1dc659dacad@linux.intel.com>
 <abdc3b07-a05e-f67d-2135-a30421cb9d12@linux.intel.com>
 <29bde7b0e680e503fbf483a560616e2ce22cdd79.camel@linux.intel.com>
 <210af2db-37ec-2cff-f6a6-7ea0263e135b@linux.intel.com>
 <1bd4ac91f24f6b4322811177f786f4867278ab83.camel@linux.intel.com>
 <b6bb4d03-6229-2419-97dd-f010c9890363@linux.intel.com>
 <d6bc73c04c4c69d3d9e6cf42bd62340a61a7d4c3.camel@linux.intel.com>
 <31310790-4bc5-b9a7-8d35-c0f542b4d658@linux.intel.com>
 <5931be1a37dbb9ccdce127f6173d42fa4dbee593.camel@linux.intel.com>
 <953a9d2b-1004-ab01-b914-4fa6b191add0@linux.intel.com>
 <badf14e83199a1e87b85dd4fefc7c229d3e806bd.camel@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <badf14e83199a1e87b85dd4fefc7c229d3e806bd.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/4] Drop wbinvd_on_all_cpus usage
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
Cc: daniel.vetter@ffwll.ch, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/03/2022 11:37, Thomas Hellström wrote:
> On Tue, 2022-03-22 at 11:20 +0000, Tvrtko Ursulin wrote:
>>
>> On 22/03/2022 10:26, Thomas Hellström wrote:
>>> On Tue, 2022-03-22 at 10:13 +0000, Tvrtko Ursulin wrote:
>>>>
>>>> On 21/03/2022 15:15, Thomas Hellström wrote:
>>>>> On Mon, 2022-03-21 at 14:43 +0000, Tvrtko Ursulin wrote:
>>>>>>
>>>>>> On 21/03/2022 13:40, Thomas Hellström wrote:
>>>>>>> Hi,
>>>>>>>
>>>>>>> On Mon, 2022-03-21 at 13:12 +0000, Tvrtko Ursulin wrote:
>>>>>>>>
>>>>>>>> On 21/03/2022 12:33, Thomas Hellström wrote:
>>>>>>>>> On Mon, 2022-03-21 at 12:22 +0000, Tvrtko Ursulin
>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>> On 21/03/2022 11:03, Thomas Hellström wrote:
>>>>>>>>>>> Hi, Tvrtko.
>>>>>>>>>>>
>>>>>>>>>>> On 3/21/22 11:27, Tvrtko Ursulin wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> On 19/03/2022 19:42, Michael Cheng wrote:
>>>>>>>>>>>>> To align with the discussion in [1][2], this
>>>>>>>>>>>>> patch
>>>>>>>>>>>>> series
>>>>>>>>>>>>> drops
>>>>>>>>>>>>> all
>>>>>>>>>>>>> usage of
>>>>>>>>>>>>> wbvind_on_all_cpus within i915 by either
>>>>>>>>>>>>> replacing
>>>>>>>>>>>>> the
>>>>>>>>>>>>> call
>>>>>>>>>>>>> with certain
>>>>>>>>>>>>> drm clflush helpers, or reverting to a previous
>>>>>>>>>>>>> logic.
>>>>>>>>>>>>
>>>>>>>>>>>> AFAIU, complaint from [1] was that it is wrong to
>>>>>>>>>>>> provide
>>>>>>>>>>>> non
>>>>>>>>>>>> x86
>>>>>>>>>>>> implementations under the wbinvd_on_all_cpus
>>>>>>>>>>>> name.
>>>>>>>>>>>> Instead an
>>>>>>>>>>>> arch
>>>>>>>>>>>> agnostic helper which achieves the same effect
>>>>>>>>>>>> could
>>>>>>>>>>>> be
>>>>>>>>>>>> created.
>>>>>>>>>>>> Does
>>>>>>>>>>>> Arm have such concept?
>>>>>>>>>>>
>>>>>>>>>>> I also understand Linus' email like we shouldn't
>>>>>>>>>>> leak
>>>>>>>>>>> incoherent
>>>>>>>>>>> IO
>>>>>>>>>>> to
>>>>>>>>>>> other architectures, meaning any remaining
>>>>>>>>>>> wbinvd()s
>>>>>>>>>>> should
>>>>>>>>>>> be
>>>>>>>>>>> X86
>>>>>>>>>>> only.
>>>>>>>>>>
>>>>>>>>>> The last part is completely obvious since it is a x86
>>>>>>>>>> instruction
>>>>>>>>>> name.
>>>>>>>>>
>>>>>>>>> Yeah, I meant the function implementing wbinvd()
>>>>>>>>> semantics.
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> But I think we can't pick a solution until we know
>>>>>>>>>> how
>>>>>>>>>> the
>>>>>>>>>> concept
>>>>>>>>>> maps
>>>>>>>>>> to Arm and that will also include seeing how the
>>>>>>>>>> drm_clflush_sg for
>>>>>>>>>> Arm
>>>>>>>>>> would look. Is there a range based solution, or just
>>>>>>>>>> a
>>>>>>>>>> big
>>>>>>>>>> hammer
>>>>>>>>>> there.
>>>>>>>>>> If the latter, then it is no good to churn all these
>>>>>>>>>> reverts
>>>>>>>>>> but
>>>>>>>>>> instead
>>>>>>>>>> an arch agnostic wrapper, with a generic name, would
>>>>>>>>>> be
>>>>>>>>>> the
>>>>>>>>>> way to
>>>>>>>>>> go.
>>>>>>>>>
>>>>>>>>> But my impression was that ARM would not need the
>>>>>>>>> range-
>>>>>>>>> based
>>>>>>>>> interface
>>>>>>>>> either, because ARM is only for discrete and with
>>>>>>>>> discrete
>>>>>>>>> we're
>>>>>>>>> always
>>>>>>>>> coherent.
>>>>>>>>
>>>>>>>> Not sure what you mean here - what about flushing system
>>>>>>>> memory
>>>>>>>> objects
>>>>>>>> on discrete? Those still need flushing on paths like
>>>>>>>> suspend
>>>>>>>> which this
>>>>>>>> series touches. Am I missing something?
>>>>>>>
>>>>>>> System bos on discrete should always have
>>>>>>>
>>>>>>> I915_BO_CACHE_COHERENT_FOR_READ |
>>>>>>> I915_BO_CACHE_COHERENT_FOR_WRITE
>>>>>>>
>>>>>>> either by the gpu being fully cache coherent (or us mapping
>>>>>>> system
>>>>>>> write-combined). Hence no need for cache clflushes or
>>>>>>> wbinvd()
>>>>>>> for
>>>>>>> incoherent IO.
>>>>>>
>>>>>> Hmm so you are talking about the shmem ttm backend. It ends
>>>>>> up
>>>>>> depending on the result of i915_ttm_cache_level, yes? It
>>>>>> cannot
>>>>>> end
>>>>>> up with I915_CACHE_NONE from that function?
>>>>>
>>>>> If the object is allocated with allowable placement in either
>>>>> LMEM
>>>>> or
>>>>> SYSTEM, and it ends in system, it gets allocated with
>>>>> I915_CACHE_NONE,
>>>>> but then the shmem ttm backend isn't used but TTM's wc pools,
>>>>> and
>>>>> the
>>>>> object should *always* be mapped wc. Even in system.
>>>>
>>>> I am not familiar with neither TTM backend or wc pools so maybe a
>>>> missed
>>>> question - if obj->cache_level can be set to none, and
>>>> obj->cache_coherency to zero, then during object lifetime helpers
>>>> which
>>>> consult those fields (like i915_gem_cpu_write_needs_clflush,
>>>> __start_cpu_write, etc) are giving out incorrect answers? That
>>>> is, it
>>>> is
>>>> irrelevant that they would say flushes are required, since in
>>>> actuality
>>>> those objects can never ever and from anywhere be mapped other
>>>> than
>>>> WC
>>>> so flushes aren't actually required?
>>>
>>> If we map other than WC somewhere in these situations, that should
>>> be a
>>> bug needing a fix. It might be that some of these helpers that you
>>> mention might still flag that a clflush is needed, and in that case
>>> that's an oversight that also needs fixing.
>>>
>>>>
>>>>>> I also found in i915_drm.h:
>>>>>>
>>>>>>             * As caching mode when specifying
>>>>>> `I915_MMAP_OFFSET_FIXED`,
>>>>>> WC or WB will
>>>>>>             * be used, depending on the object placement on
>>>>>> creation. WB
>>>>>> will be used
>>>>>>             * when the object can only exist in system memory,
>>>>>> WC
>>>>>> otherwise.
>>>>>>
>>>>>> If what you say is true, that on discrete it is _always_ WC,
>>>>>> then
>>>>>> that needs updating as well.
>>>>>
>>>>> If an object is allocated as system only, then it is mapped WB,
>>>>> and
>>>>> we're relying on the gpu being cache coherent to avoid
>>>>> clflushes.
>>>>> Same
>>>>> is actually currently true if the object happens to be accessed
>>>>> by
>>>>> the
>>>>> cpu while evicted. Might need an update for that.
>>>>
>>>> Hmm okay, I think I actually misunderstood something here. I
>>>> think
>>>> the
>>>> reason for difference bbtween smem+lmem object which happens to
>>>> be in
>>>> smem and smem only object is eluding me.
>>>>
>>>>>>>
>>>>>>> That's adhering to Linus'
>>>>>>>
>>>>>>> "And I sincerely hope to the gods that no cache-incoherent
>>>>>>> i915
>>>>>>> mess
>>>>>>> ever makes it out of the x86 world. Incoherent IO was
>>>>>>> always a
>>>>>>> historical mistake and should never ever happen again, so
>>>>>>> we
>>>>>>> should
>>>>>>> not spread that horrific pattern around."
>>>>>>
>>>>>> Sure, but I was not talking about IO - just the CPU side
>>>>>> access
>>>>>> to
>>>>>> CPU side objects.
>>>>>
>>>>> OK, I was under the impression that clflushes() and wbinvd()s
>>>>> in
>>>>> i915
>>>>> was only ever used to make data visible to non-snooping GPUs.
>>>>>
>>>>> Do you mean that there are other uses as well? Agreed the wb
>>>>> cache
>>>>> flush on on suspend only if gpu is
>>>>> !I915_BO_CACHE_COHERENT_FOR_READ?
>>>>> looks to not fit this pattern completely.
>>>>
>>>> Don't know, I was first trying to understand handling of the
>>>> obj->cache_coherent as discussed in the first quote block. Are
>>>> the
>>>> flags
>>>> consistently set and how the Arm low level code will look.
>>>>
>>>>> Otherwise, for architectures where memory isn't always fully
>>>>> coherent
>>>>> with the cpu cache, I'd expect them to use the apis in
>>>>> asm/cacheflush.h, like flush_cache_range() and similar, which
>>>>> are
>>>>> nops
>>>>> on x86.
>>>>
>>>> Hm do you know why there are no-ops? Like why wouldn't they map
>>>> to
>>>> clflush?
>>>
>>> I think it mostly boils down to the PIPT caches on x86. Everything
>>> is
>>> assumed to be coherent. Whereas some architextures keep different
>>> cache
>>> entries for different virtual addresses even if the physical page
>>> is
>>> the same...
>>>
>>> clflushes and wbinvds on x86 are for odd arch-specific situations
>>> where, for example where we change caching attributes of the linear
>>> kernel map mappings.
>>
>> So in summary we have flush_cache_range which is generic, not
>> implemented on x86 and works with virtual addresses so not directly
>> usable even if x86 implementation was added.
> 
> I think for the intended flush_cache_range() semantics: "Make this
> range visible to all vms on all cpus", I think the x86 implementation
> is actually a nop, and correctly implemented.

If that is so then I agree. (I did not spend much time looking for 
desired semantics, just noticed there was no kerneldoc next to the 
function and stopped there.)

>> There is also x86 specific clflush_cache_range which works with
>> virtual addresses as well so no good for drm_clflush_sg.
>>
>> Question you implicitly raise, correct me if I got it wrong, is
>> whether we should even be trying to extend drm_clflush_sg for Arm,
>> given how most (all?) call sites are not needed on discrete, is that
>> right?
> 
> Yes exactly. No need to bother figuring this out for ARM, as we don't
> do any incoherent IO.
> 
>>
>> Would that mean we could leave most of the code as is and just
>> replace wbinvd_on_all_cpus with something like i915_flush_cpu_caches,
>> which would then legitimately do nothing, at least on Arm if not also
>> on discrete in general?
> 
> Yes, with the caveat that we should, at least as a second step, make
> i915_flush_cpu_caches() range-based if possible from a performance
> point of view.

Sounds like a plan, and I am counting on the second step part to be 
really second step. Because that one will need to actually figure out 
and elaborate sufficiently all three proposed reverts, which was missing 
in this posting. So first step unblocks Arm builds very cheaply and 
non-controversially, second step tries going the range route.

>> If that would work it would make a small and easy to review series. I
>> don't think it would collide with what Linus asked since it is not
>> propagating undesirable things further - given how if there is no
>> actual need to flush then there is no need to make it range based
>> either.
>>
>> Exception would be the dmabuf get pages patch which needs a proper
>> implementation of a new drm flush helper.
> 
> I think the dmabuf get_pages (note that that's also only for integrated
> I915_CACHE_NONE x86-only situations), can be done with
> 
> dma_buf_vmap(dma_buf, &virtual);
> drm_clflush_virt_range(virtual, length);
> dma_buf_vunmap(&virtual);

Looks plausible to me. Downside being it vmaps the whole object at once 
so may regress, at least on 32-bit (!) builds. Would it work in theory 
to fall back to page by page but would it be worth it just for 32-bit I 
am not sure.

Regards,

Tvrtko

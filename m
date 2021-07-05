Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2083BBE87
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 16:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAAE789D40;
	Mon,  5 Jul 2021 14:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616B089D2F;
 Mon,  5 Jul 2021 14:55:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="196273516"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="196273516"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 07:55:42 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="562614201"
Received: from kreynold-mobl1.ger.corp.intel.com (HELO [10.213.227.153])
 ([10.213.227.153])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 07:55:40 -0700
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210701151019.1103315-1-matthew.auld@intel.com>
 <20210701151019.1103315-3-matthew.auld@intel.com>
 <6b1fb400-07a6-bac0-929a-46991835d1f2@linux.intel.com>
 <YN9nkhxOX8wxfhp2@phenom.ffwll.local>
 <241f7e31-66ab-45c7-955f-af6d107128fe@linux.intel.com>
 <YOMWU6J709ZSMuY6@phenom.ffwll.local>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <54d9aac4-6aad-a6f2-198f-8760a6c9926b@linux.intel.com>
Date: Mon, 5 Jul 2021 15:55:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YOMWU6J709ZSMuY6@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/uapi: reject set_domain for
 discrete
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
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/07/2021 15:25, Daniel Vetter wrote:
> On Mon, Jul 05, 2021 at 09:34:22AM +0100, Tvrtko Ursulin wrote:
>> On 02/07/2021 20:22, Daniel Vetter wrote:
>>> On Fri, Jul 02, 2021 at 03:31:08PM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 01/07/2021 16:10, Matthew Auld wrote:
>>>>> The CPU domain should be static for discrete, and on DG1 we don't need
>>>>> any flushing since everything is already coherent, so really all this
>>>>
>>>> Knowledge of the write combine buffer is assumed to be had by anyone involved?
>>
>> What about this question? For discrete userspace will assume WC and will
>> know how to flush WC buffer? Or it is assumed the flush will be hit
>> implicitly? Will this be documented?
> 
> The kernel doesn't pick something at random, it's just fixed. So yeah
> userspace needs to flush the WC buffer or anything else.

Right, so does that needs to be documented somewhere or thinking is it 
is common knowledge? Probably does to be mentioned in conjunction with 
the mmap usage.

>>>>> does is an object wait, for which we have an ioctl. Longer term the
>>>>> desired caching should be an immutable creation time property for the
>>>>> BO, which can be set with something like gem_create_ext.
>>>>>
>>>>> One other user is iris + userptr, which uses the set_domain to probe all
>>>>> the pages to check if the GUP succeeds, however keeping the set_domain
>>>>> around just for that seems rather scuffed. We could equally just submit
>>>>> a dummy batch, which should hopefully be good enough, otherwise adding a
>>>>> new creation time flag for userptr might be an option. Although longer
>>>>> term we will also have vm_bind, which should also be a nice fit for
>>>>> this, so adding a whole new flag is likely overkill.
>>>>
>>>> Execbuf sounds horrible. But it all reminds me of past work by Chris which is surprisingly hard to find in the archives. Patches like:
>>>>
>>>> commit 7706a433388016983052a27c0fd74a64b1897ae7
>>>> Author: Chris Wilson <chris@chris-wilson.co.uk>
>>>> Date:   Wed Nov 8 17:04:07 2017 +0000
>>>>
>>>>       drm/i915/userptr: Probe existence of backing struct pages upon creation
>>>>       Jason Ekstrand requested a more efficient method than userptr+set-domain
>>>>       to determine if the userptr object was backed by a complete set of pages
>>>>       upon creation. To be more efficient than simply populating the userptr
>>>>       using get_user_pages() (as done by the call to set-domain or execbuf),
>>>>       we can walk the tree of vm_area_struct and check for gaps or vma not
>>>>       backed by struct page (VM_PFNMAP). The question is how to handle
>>>>       VM_MIXEDMAP which may be either struct page or pfn backed...
>>>>
>>>> commit 7ca21d3390eec23db99b8131ed18bc036efaba18
>>>> Author: Chris Wilson <chris@chris-wilson.co.uk>
>>>> Date:   Wed Nov 8 17:48:22 2017 +0000
>>>>
>>>>       drm/i915/userptr: Add a flag to populate the userptr on creation
>>>>       Acquiring the backing struct pages for the userptr range is not free;
>>>>       the first client for userptr would insist on frequently creating userptr
>>>>       objects ahead of time and not use them. For that first client, deferring
>>>>       the cost of populating the userptr (calling get_user_pages()) to the
>>>>       actual execbuf was a substantial improvement. However, not all clients
>>>>       are the same, and most would like to validate that the userptr is valid
>>>>       and backed by struct pages upon creation, so offer a
>>>>       I915_USERPTR_POPULATE flag to do just that.
>>>>       Note that big difference between I915_USERPTR_POPULATE and the deferred
>>>>       scheme is that POPULATE is guaranteed to be synchronous, the result is
>>>>       known before the ioctl returns (and the handle exposed). However, due to
>>>>       system memory pressure, the object may be paged out before use,
>>>>       requiring them to be paged back in on execbuf (as may always happen).
>>>>
>>>> At least with the first one I think I was skeptical, since probing at
>>>> point A makes a weak test versus userptr getting used at point B.
>>>> Populate is kind of same really when user controls the backing store. At
>>>> least these two arguments I think stand if we are trying to sell these
>>>> flags as validation. But if the idea is limited to pure preload, with no
>>>> guarantees that it keeps working by time of real use, then I guess it
>>>> may be passable.
>>>
>>> Well we've thrown this out again because there was no userspace. But if
>>> this is requested by mesa, then the _PROBE flag should be entirely
>>> sufficient.
>>
>> Why probe and not populate? For me probe is weak and implies to give a
>> guarantee which cannot really be given. If the pointer is not trusted, there
>> is no reason to think it cannot go bad between creating the buffer (probe)
>> and actual use. Populate on the other hand could be described as simply
>> instantiate the backing store with the same caveat mentioned. No guarantees
>> about the future validity of the backing store in either case should be
>> implied.
> 
> The pointer can also go bad with populate. The only thing probe guarantees
> is that "right now I should be able to call get_user_pages and the only
> reasons it could fail is ENOMEM". Which is pretty much the same as we
> guarantee when we create a normal object.
> 
> Neither does guarantee that by the time you execbuf you won't hit an
> ENOMEM. Userptr on top also could make the pointer go invalid if userspace
> munmaps or does something else funny.

That's pretty much what I wrote so mostly agreed. Modulo that I think 
probe guarantees even less than what you wrote above. Due mmu notifier 
invalidation definitely less than with the normal buffer objects 
(hypothetically, if there was a populate flag for them). So the only 
think which I think makes sense is a populate flag with a disclaimer 
explaining how the backing store may not be there any more as soon as 
the ioctl successfully returns.

>>> Since I don't want to hold up dg1 pciids on this it'd be nice if we could
>>> just go ahead with the dummy batch, if Ken/Jordan don't object - iris is
>>> the only umd that needs this.
>>
>> I am not up to speed to understand how to PCI ids come into play here, but
>> what is the suggestion with the dummy batch - to actually submit something
>> which ends up executing, waking up the GPU etc? Or be crafty and make it
>> fail after it acquires backing store? Not sure if we have such a spot that
>> late so just asking to start with. If the plan is to wake up the GPU that's
>> quite ugly in my opinion. Especially since patch which adds the flag already
>> exists so shouldn't really be much a delay to sync userspace and i915 merge.
> 
> Just submit a real batch with just MI_BATCHBUFFER_END in it.

Okay, so my opinion stands for this to being quite wasteful and flag 
should be preferable.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

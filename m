Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE863E1261
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26446E4D2;
	Thu,  5 Aug 2021 10:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBCFA6E4C7;
 Thu,  5 Aug 2021 10:14:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="275167038"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="275167038"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 03:14:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="480777776"
Received: from ppietrus-mobl1.ger.corp.intel.com (HELO [10.252.51.65])
 ([10.252.51.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 03:14:22 -0700
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Matthew Auld <matthew.william.auld@gmail.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Kenneth Graunke <kenneth@whitecape.org>,
 Matthew Auld <matthew.auld@intel.com>
References: <20210723113405.427004-1-matthew.auld@intel.com>
 <0988bf67-c42a-1e7e-af77-ae2da65b036f@linux.intel.com>
 <CAOFGe94-StYYc3Fk70u3h0xp2F4RqONb96cnFLhgnhxOVKi8JA@mail.gmail.com>
 <cf0253c0-6a4c-aaaa-4110-aa403d66ea9f@linux.intel.com>
 <CAM0jSHO7rQZ0dj5+8kC3P1-00LFkGHeE9XJj6rB95E=gjzkHwg@mail.gmail.com>
 <CAKMK7uGFn=SV4mZMXQuGE-CrtsX8E=ibtvaBkFCtDerMqVucAw@mail.gmail.com>
 <CAOFGe96Qp8A_vYNW92fbBcejEO_P=C21jZr5T550Eh=fJg73nw@mail.gmail.com>
 <5fbdbce5-f316-a5a1-aeb9-3d6470dae3b2@linux.intel.com>
Message-ID: <4bc1e674-68db-1013-be41-6e77c42040e6@linux.intel.com>
Date: Thu, 5 Aug 2021 12:14:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <5fbdbce5-f316-a5a1-aeb9-3d6470dae3b2@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/userptr: Probe existence of
 backing struct pages upon creation
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

Op 03-08-2021 om 17:57 schreef Maarten Lankhorst:
> Op 2021-08-03 om 17:45 schreef Jason Ekstrand:
>> On Tue, Aug 3, 2021 at 10:09 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>>> On Wed, Jul 28, 2021 at 4:22 PM Matthew Auld
>>> <matthew.william.auld@gmail.com> wrote:
>>>> On Mon, 26 Jul 2021 at 17:10, Tvrtko Ursulin
>>>> <tvrtko.ursulin@linux.intel.com> wrote:
>>>>> On 26/07/2021 16:14, Jason Ekstrand wrote:
>>>>>> On Mon, Jul 26, 2021 at 3:31 AM Maarten Lankhorst
>>>>>> <maarten.lankhorst@linux.intel.com> wrote:
>>>>>>> Op 23-07-2021 om 13:34 schreef Matthew Auld:
>>>>>>>> From: Chris Wilson <chris@chris-wilson.co.uk>
>>>>>>>>
>>>>>>>> Jason Ekstrand requested a more efficient method than userptr+set-domain
>>>>>>>> to determine if the userptr object was backed by a complete set of pages
>>>>>>>> upon creation. To be more efficient than simply populating the userptr
>>>>>>>> using get_user_pages() (as done by the call to set-domain or execbuf),
>>>>>>>> we can walk the tree of vm_area_struct and check for gaps or vma not
>>>>>>>> backed by struct page (VM_PFNMAP). The question is how to handle
>>>>>>>> VM_MIXEDMAP which may be either struct page or pfn backed...
>>>>>>>>
>>>>>>>> With discrete we are going to drop support for set_domain(), so offering
>>>>>>>> a way to probe the pages, without having to resort to dummy batches has
>>>>>>>> been requested.
>>>>>>>>
>>>>>>>> v2:
>>>>>>>> - add new query param for the PROBE flag, so userspace can easily
>>>>>>>>    check if the kernel supports it(Jason).
>>>>>>>> - use mmap_read_{lock, unlock}.
>>>>>>>> - add some kernel-doc.
>>>>>>>> v3:
>>>>>>>> - In the docs also mention that PROBE doesn't guarantee that the pages
>>>>>>>>    will remain valid by the time they are actually used(Tvrtko).
>>>>>>>> - Add a small comment for the hole finding logic(Jason).
>>>>>>>> - Move the param next to all the other params which just return true.
>>>>>>>>
>>>>>>>> Testcase: igt/gem_userptr_blits/probe
>>>>>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>>>>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>>>>>>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>>>>>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>>>>>> Cc: Jordan Justen <jordan.l.justen@intel.com>
>>>>>>>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>>>>>>>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>>>>>>>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>>>>>>>> Cc: Ramalingam C <ramalingam.c@intel.com>
>>>>>>>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>>> Acked-by: Kenneth Graunke <kenneth@whitecape.org>
>>>>>>>> Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
>>>>>>>> ---
>>>>>>>>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 41 ++++++++++++++++++++-
>>>>>>>>   drivers/gpu/drm/i915/i915_getparam.c        |  1 +
>>>>>>>>   include/uapi/drm/i915_drm.h                 | 20 ++++++++++
>>>>>>>>   3 files changed, 61 insertions(+), 1 deletion(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>>>>>>> index 56edfeff8c02..468a7a617fbf 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>>>>>>> @@ -422,6 +422,34 @@ static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
>>>>>>>>
>>>>>>>>   #endif
>>>>>>>>
>>>>>>>> +static int
>>>>>>>> +probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
>>>>>>>> +{
>>>>>>>> +     const unsigned long end = addr + len;
>>>>>>>> +     struct vm_area_struct *vma;
>>>>>>>> +     int ret = -EFAULT;
>>>>>>>> +
>>>>>>>> +     mmap_read_lock(mm);
>>>>>>>> +     for (vma = find_vma(mm, addr); vma; vma = vma->vm_next) {
>>>>>>>> +             /* Check for holes, note that we also update the addr below */
>>>>>>>> +             if (vma->vm_start > addr)
>>>>>>>> +                     break;
>>>>>>>> +
>>>>>>>> +             if (vma->vm_flags & (VM_PFNMAP | VM_MIXEDMAP))
>>>>>>>> +                     break;
>>>>>>>> +
>>>>>>>> +             if (vma->vm_end >= end) {
>>>>>>>> +                     ret = 0;
>>>>>>>> +                     break;
>>>>>>>> +             }
>>>>>>>> +
>>>>>>>> +             addr = vma->vm_end;
>>>>>>>> +     }
>>>>>>>> +     mmap_read_unlock(mm);
>>>>>>>> +
>>>>>>>> +     return ret;
>>>>>>>> +}
>>>>>>>> +
>>>>>>>>   /*
>>>>>>>>    * Creates a new mm object that wraps some normal memory from the process
>>>>>>>>    * context - user memory.
>>>>>>>> @@ -477,7 +505,8 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
>>>>>>>>        }
>>>>>>>>
>>>>>>>>        if (args->flags & ~(I915_USERPTR_READ_ONLY |
>>>>>>>> -                         I915_USERPTR_UNSYNCHRONIZED))
>>>>>>>> +                         I915_USERPTR_UNSYNCHRONIZED |
>>>>>>>> +                         I915_USERPTR_PROBE))
>>>>>>>>                return -EINVAL;
>>>>>>>>
>>>>>>>>        if (i915_gem_object_size_2big(args->user_size))
>>>>>>>> @@ -504,6 +533,16 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
>>>>>>>>                        return -ENODEV;
>>>>>>>>        }
>>>>>>>>
>>>>>>>> +     if (args->flags & I915_USERPTR_PROBE) {
>>>>>>>> +             /*
>>>>>>>> +              * Check that the range pointed to represents real struct
>>>>>>>> +              * pages and not iomappings (at this moment in time!)
>>>>>>>> +              */
>>>>>>>> +             ret = probe_range(current->mm, args->user_ptr, args->user_size);
>>>>>>>> +             if (ret)
>>>>>>>> +                     return ret;
>>>>>>>> +     }
>>>>>>>> +
>>>>>>>>   #ifdef CONFIG_MMU_NOTIFIER
>>>>>>>>        obj = i915_gem_object_alloc();
>>>>>>>>        if (obj == NULL)
>>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
>>>>>>>> index 24e18219eb50..bbb7cac43eb4 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/i915_getparam.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/i915_getparam.c
>>>>>>>> @@ -134,6 +134,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
>>>>>>>>        case I915_PARAM_HAS_EXEC_FENCE_ARRAY:
>>>>>>>>        case I915_PARAM_HAS_EXEC_SUBMIT_FENCE:
>>>>>>>>        case I915_PARAM_HAS_EXEC_TIMELINE_FENCES:
>>>>>>>> +     case I915_PARAM_HAS_USERPTR_PROBE:
>>>>>>>>                /* For the time being all of these are always true;
>>>>>>>>                 * if some supported hardware does not have one of these
>>>>>>>>                 * features this value needs to be provided from
>>>>>>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>>>>>> index 975087553ea0..0d290535a6e5 100644
>>>>>>>> --- a/include/uapi/drm/i915_drm.h
>>>>>>>> +++ b/include/uapi/drm/i915_drm.h
>>>>>>>> @@ -674,6 +674,9 @@ typedef struct drm_i915_irq_wait {
>>>>>>>>    */
>>>>>>>>   #define I915_PARAM_HAS_EXEC_TIMELINE_FENCES 55
>>>>>>>>
>>>>>>>> +/* Query if the kernel supports the I915_USERPTR_PROBE flag. */
>>>>>>>> +#define I915_PARAM_HAS_USERPTR_PROBE 56
>>>>>>>> +
>>>>>>>>   /* Must be kept compact -- no holes and well documented */
>>>>>>>>
>>>>>>>>   typedef struct drm_i915_getparam {
>>>>>>>> @@ -2222,12 +2225,29 @@ struct drm_i915_gem_userptr {
>>>>>>>>         * through the GTT. If the HW can't support readonly access, an error is
>>>>>>>>         * returned.
>>>>>>>>         *
>>>>>>>> +      * I915_USERPTR_PROBE:
>>>>>>>> +      *
>>>>>>>> +      * Probe the provided @user_ptr range and validate that the @user_ptr is
>>>>>>>> +      * indeed pointing to normal memory and that the range is also valid.
>>>>>>>> +      * For example if some garbage address is given to the kernel, then this
>>>>>>>> +      * should complain.
>>>>>>>> +      *
>>>>>>>> +      * Returns -EFAULT if the probe failed.
>>>>>>>> +      *
>>>>>>>> +      * Note that this doesn't populate the backing pages, and also doesn't
>>>>>>>> +      * guarantee that the object will remain valid when the object is
>>>>>>>> +      * eventually used.
>>>>>>>> +      *
>>>>>>>> +      * The kernel supports this feature if I915_PARAM_HAS_USERPTR_PROBE
>>>>>>>> +      * returns a non-zero value.
>>>>>>>> +      *
>>>>>>>>         * I915_USERPTR_UNSYNCHRONIZED:
>>>>>>>>         *
>>>>>>>>         * NOT USED. Setting this flag will result in an error.
>>>>>>>>         */
>>>>>>>>        __u32 flags;
>>>>>>>>   #define I915_USERPTR_READ_ONLY 0x1
>>>>>>>> +#define I915_USERPTR_PROBE 0x2
>>>>>>>>   #define I915_USERPTR_UNSYNCHRONIZED 0x80000000
>>>>>>>>        /**
>>>>>>>>         * @handle: Returned handle for the object.
>>>>>>> Could we use _VALIDATE instead of probe? Or at least pin the pages as well, so we don't have to do it later?
>>>>>> I only care that the name matches what it does.  _VALIDATE sounds like
>>>>>> it does a full validation of everything such that, if the import
>>>>>> succeeds, execbuf will as well.  If we pin the pages at the same time,
>>>>>> maybe that's true?  _PROBE, on the other hand, sounds a lot more like
>>>>> No it is not possible to guarantee backing store remains valid until
>>>>> execbuf.
>>>>>
>>>>>> a one-time best-effort check which may race with other stuff and
>>>>>> doesn't guarantee future success.  That's in line with what the
>>>>>> current patch does.
>>>>>>
>>>>>>> We already have i915_gem_object_userptr_validate, no need to dupe it.
>>>>>> I have no opinion on this.
>>>>> I was actually suggesting the same as Maarten here - that we should add
>>>>> a "populate" flag. But opinion was that was not desired - please look
>>>>> for the older threads to see the reasoning there.
>>>> So how should we proceed here? Maarten?
>>> I honestly don't care, and I think the probe flag here is perfectly
>>> fine. Reasons for that:
>>> - we don't have an immediate allocation flag for buffer creation
>>> either. So if there's a need we need a flag for this across the board,
>>> not just userptr, and a clear userspace ask
>> Both Mesa drivers would probably set that flag if we had it and it
>> demonstrated any perf benefits, FWIW.  However, I think it's fine if
>> that's a separate flag.  Also, I don't know that the perf benefits are
>> all that great.  We should get most of those benefits from VM_BIND
>> anyway.
>>
>>> - it's a fundamentally racy test anyway, userspace can munmap or map
>>> something else and then it will fail. So we really don't gain anything
>>> by pinning pages because by the time we go into execbuf they might be
>>> invalidated already - checking the vmas for VM_SPECIAL is perfectly
>>> good enough.
>>> - we can always change the implementation later on too.
>>>
>>> Hence why I think PROBE is the semantics we want/need here. Can we get
>>> some acks/reviews here or is this really a significant enough bikeshed
>>> that we need to hold up dg1 pciids for them?
>> I don't care.  I've already reviewed the patch.
>>
>> --Jason
> I think we should still just put the validate() call in there, but I'm not going to hold up the implementation because of that.
>
> Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
And pushed together with the IGT. :)


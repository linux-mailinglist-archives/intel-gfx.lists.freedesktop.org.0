Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6207354218E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 08:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B383710E10D;
	Wed,  8 Jun 2022 06:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4E210E10D;
 Wed,  8 Jun 2022 06:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654670638; x=1686206638;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=hTHcTBUpg+/fPwylgd8r7twL5jJgSgqW+qpjKCzxF04=;
 b=iWQ22KkfoGGtRu4xiQNNNIHsGNXSLI/56SYpv3Xw8NHv3ilHJj11gZQ4
 25ZT/XubkgdEbxWtgz9lzzwWslBV0b6Ild5ndNnt8NUaALIaPJC4YSnvY
 lvPpqFV0KsAo0/j8voavauN7hgZz12zuaKeV94ThR5x1zl3d3PaL0mBSt
 YXeKOEPS3zsPiEHyKJPEAWXxQur9YToRjIq8IrOqKZpl/ipRH6m8g/rf/
 Ferhzt3RkhAvCHxVnRdXTPXCKJCJgpew13jEQkHzVAmDKyI5KcxQ88Ukk
 lex0h/ag8EC8RUeqzGXJA34WyfbR0nFkPTNzfSvjuXzGvT6Nbj1RRccsU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="277615766"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="277615766"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 23:43:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="609539729"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2022 23:43:57 -0700
Received: from [10.249.140.120] (jdebowsk-DESK.ger.corp.intel.com
 [10.249.140.120])
 by linux.intel.com (Postfix) with ESMTP id 7BB3E5808A6;
 Tue,  7 Jun 2022 23:43:54 -0700 (PDT)
Message-ID: <e9591c47-00f1-fd11-d790-2d880ce1926a@intel.com>
Date: Wed, 8 Jun 2022 09:43:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20220517183212.20274-1-niranjana.vishwanathapura@intel.com>
 <20220517183212.20274-4-niranjana.vishwanathapura@intel.com>
 <e4e1989c314d3958d58010431515ea371935d0c3.camel@intel.com>
 <20220523191943.GH4461@nvishwa1-DESK>
 <CAPM=9tzcYL5kwv18cfq5NzE00jwHuwTj_L73NVgE8vdcBgrQww@mail.gmail.com>
 <CAKMK7uFt23yZxGJfuZ71ngNw-46yvyed8LaQCQ1ksq73MLGEug@mail.gmail.com>
 <20220602050833.GP4461@nvishwa1-DESK> <20220603065330.GT4461@nvishwa1-DESK>
 <08e61393-d4ec-d35e-9b8f-41195365f179@intel.com>
In-Reply-To: <08e61393-d4ec-d35e-9b8f-41195365f179@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC v3 3/3] drm/doc/rfc: VM_BIND uapi definition
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
Cc: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "Hellstrom, Thomas" <thomas.hellstrom@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 08/06/2022 09:40, Lionel Landwerlin wrote:
> On 03/06/2022 09:53, Niranjana Vishwanathapura wrote:
>> On Wed, Jun 01, 2022 at 10:08:35PM -0700, Niranjana Vishwanathapura 
>> wrote:
>>> On Wed, Jun 01, 2022 at 11:27:17AM +0200, Daniel Vetter wrote:
>>>> On Wed, 1 Jun 2022 at 11:03, Dave Airlie <airlied@gmail.com> wrote:
>>>>>
>>>>> On Tue, 24 May 2022 at 05:20, Niranjana Vishwanathapura
>>>>> <niranjana.vishwanathapura@intel.com> wrote:
>>>>>>
>>>>>> On Thu, May 19, 2022 at 04:07:30PM -0700, Zanoni, Paulo R wrote:
>>>>>> >On Tue, 2022-05-17 at 11:32 -0700, Niranjana Vishwanathapura wrote:
>>>>>> >> VM_BIND and related uapi definitions
>>>>>> >>
>>>>>> >> v2: Ensure proper kernel-doc formatting with cross references.
>>>>>> >>     Also add new uapi and documentation as per review comments
>>>>>> >>     from Daniel.
>>>>>> >>
>>>>>> >> Signed-off-by: Niranjana Vishwanathapura 
>>>>>> <niranjana.vishwanathapura@intel.com>
>>>>>> >> ---
>>>>>> >>  Documentation/gpu/rfc/i915_vm_bind.h | 399 
>>>>>> +++++++++++++++++++++++++++
>>>>>> >>  1 file changed, 399 insertions(+)
>>>>>> >>  create mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
>>>>>> >>
>>>>>> >> diff --git a/Documentation/gpu/rfc/i915_vm_bind.h 
>>>>>> b/Documentation/gpu/rfc/i915_vm_bind.h
>>>>>> >> new file mode 100644
>>>>>> >> index 000000000000..589c0a009107
>>>>>> >> --- /dev/null
>>>>>> >> +++ b/Documentation/gpu/rfc/i915_vm_bind.h
>>>>>> >> @@ -0,0 +1,399 @@
>>>>>> >> +/* SPDX-License-Identifier: MIT */
>>>>>> >> +/*
>>>>>> >> + * Copyright © 2022 Intel Corporation
>>>>>> >> + */
>>>>>> >> +
>>>>>> >> +/**
>>>>>> >> + * DOC: I915_PARAM_HAS_VM_BIND
>>>>>> >> + *
>>>>>> >> + * VM_BIND feature availability.
>>>>>> >> + * See typedef drm_i915_getparam_t param.
>>>>>> >> + */
>>>>>> >> +#define I915_PARAM_HAS_VM_BIND 57
>>>>>> >> +
>>>>>> >> +/**
>>>>>> >> + * DOC: I915_VM_CREATE_FLAGS_USE_VM_BIND
>>>>>> >> + *
>>>>>> >> + * Flag to opt-in for VM_BIND mode of binding during VM 
>>>>>> creation.
>>>>>> >> + * See struct drm_i915_gem_vm_control flags.
>>>>>> >> + *
>>>>>> >> + * A VM in VM_BIND mode will not support the older execbuff 
>>>>>> mode of binding.
>>>>>> >> + * In VM_BIND mode, execbuff ioctl will not accept any 
>>>>>> execlist (ie., the
>>>>>> >> + * &drm_i915_gem_execbuffer2.buffer_count must be 0).
>>>>>> >> + * Also, &drm_i915_gem_execbuffer2.batch_start_offset and
>>>>>> >> + * &drm_i915_gem_execbuffer2.batch_len must be 0.
>>>>>> >> + * DRM_I915_GEM_EXECBUFFER_EXT_BATCH_ADDRESSES extension must 
>>>>>> be provided
>>>>>> >> + * to pass in the batch buffer addresses.
>>>>>> >> + *
>>>>>> >> + * Additionally, I915_EXEC_NO_RELOC, I915_EXEC_HANDLE_LUT and
>>>>>> >> + * I915_EXEC_BATCH_FIRST of &drm_i915_gem_execbuffer2.flags 
>>>>>> must be 0
>>>>>> >> + * (not used) in VM_BIND mode. I915_EXEC_USE_EXTENSIONS flag 
>>>>>> must always be
>>>>>> >> + * set (See struct drm_i915_gem_execbuffer_ext_batch_addresses).
>>>>>> >> + * The buffers_ptr, buffer_count, batch_start_offset and 
>>>>>> batch_len fields
>>>>>> >> + * of struct drm_i915_gem_execbuffer2 are also not used and 
>>>>>> must be 0.
>>>>>> >> + */
>>>>>> >
>>>>>> >From that description, it seems we have:
>>>>>> >
>>>>>> >struct drm_i915_gem_execbuffer2 {
>>>>>> >        __u64 buffers_ptr;              -> must be 0 (new)
>>>>>> >        __u32 buffer_count;             -> must be 0 (new)
>>>>>> >        __u32 batch_start_offset;       -> must be 0 (new)
>>>>>> >        __u32 batch_len;                -> must be 0 (new)
>>>>>> >        __u32 DR1;                      -> must be 0 (old)
>>>>>> >        __u32 DR4;                      -> must be 0 (old)
>>>>>> >        __u32 num_cliprects; (fences)   -> must be 0 since using 
>>>>>> extensions
>>>>>> >        __u64 cliprects_ptr; (fences, extensions) -> contains an 
>>>>>> actual pointer!
>>>>>> >        __u64 flags;                    -> some flags must be 0 
>>>>>> (new)
>>>>>> >        __u64 rsvd1; (context info)     -> repurposed field (old)
>>>>>> >        __u64 rsvd2;                    -> unused
>>>>>> >};
>>>>>> >
>>>>>> >Based on that, why can't we just get drm_i915_gem_execbuffer3 
>>>>>> instead
>>>>>> >of adding even more complexity to an already abused interface? 
>>>>>> While
>>>>>> >the Vulkan-like extension thing is really nice, I don't think what
>>>>>> >we're doing here is extending the ioctl usage, we're completely
>>>>>> >changing how the base struct should be interpreted based on how 
>>>>>> the VM
>>>>>> >was created (which is an entirely different ioctl).
>>>>>> >
>>>>>> >From Rusty Russel's API Design grading, drm_i915_gem_execbuffer2 is
>>>>>> >already at -6 without these changes. I think after vm_bind we'll 
>>>>>> need
>>>>>> >to create a -11 entry just to deal with this ioctl.
>>>>>> >
>>>>>>
>>>>>> The only change here is removing the execlist support for VM_BIND
>>>>>> mode (other than natual extensions).
>>>>>> Adding a new execbuffer3 was considered, but I think we need to 
>>>>>> be careful
>>>>>> with that as that goes beyond the VM_BIND support, including any 
>>>>>> future
>>>>>> requirements (as we don't want an execbuffer4 after VM_BIND).
>>>>>
>>>>> Why not? it's not like adding extensions here is really that 
>>>>> different
>>>>> than adding new ioctls.
>>>>>
>>>>> I definitely think this deserves an execbuffer3 without even
>>>>> considering future requirements. Just  to burn down the old
>>>>> requirements and pointless fields.
>>>>>
>>>>> Make execbuffer3 be vm bind only, no relocs, no legacy bits, leave 
>>>>> the
>>>>> older sw on execbuf2 for ever.
>>>>
>>>> I guess another point in favour of execbuf3 would be that it's less
>>>> midlayer. If we share the entry point then there's quite a few vfuncs
>>>> needed to cleanly split out the vm_bind paths from the legacy
>>>> reloc/softping paths.
>>>>
>>>> If we invert this and do execbuf3, then there's the existing ioctl
>>>> vfunc, and then we share code (where it even makes sense, probably
>>>> request setup/submit need to be shared, anything else is probably
>>>> cleaner to just copypaste) with the usual helper approach.
>>>>
>>>> Also that would guarantee that really none of the old concepts like
>>>> i915_active on the vma or vma open counts and all that stuff leaks
>>>> into the new vm_bind execbuf.
>>>>
>>>> Finally I also think that copypasting would make backporting easier,
>>>> or at least more flexible, since it should make it easier to have the
>>>> upstream vm_bind co-exist with all the other things we have. Without
>>>> huge amounts of conflicts (or at least much less) that pushing a pile
>>>> of vfuncs into the existing code would cause.
>>>>
>>>> So maybe we should do this?
>>>
>>> Thanks Dave, Daniel.
>>> There are a few things that will be common between execbuf2 and
>>> execbuf3, like request setup/submit (as you said), fence handling 
>>> (timeline fences, fence array, composite fences), engine selection,
>>> etc. Also, many of the 'flags' will be there in execbuf3 also (but
>>> bit position will differ).
>>> But I guess these should be fine as the suggestion here is to
>>> copy-paste the execbuff code and having a shared code where possible.
>>> Besides, we can stop supporting some older feature in execbuff3
>>> (like fence array in favor of newer timeline fences), which will
>>> further reduce common code.
>>>
>>> Ok, I will update this series by adding execbuf3 and send out soon.
>>>
>>
>> Does this sound reasonable?
>
>
> Thanks for proposing this. Some comments below.
>
>
>>
>> struct drm_i915_gem_execbuffer3 {
>>        __u32 ctx_id;        /* previously execbuffer2.rsvd1 */
>>
>>        __u32 batch_count;
>>        __u64 batch_addr_ptr;    /* Pointer to an array of batch gpu 
>> virtual addresses */
>>
>>        __u64 flags;
>> #define I915_EXEC3_RING_MASK              (0x3f)
>> #define I915_EXEC3_DEFAULT                (0<<0)
>> #define I915_EXEC3_RENDER                 (1<<0)
>> #define I915_EXEC3_BSD                    (2<<0)
>> #define I915_EXEC3_BLT                    (3<<0)
>> #define I915_EXEC3_VEBOX                  (4<<0)
>
>
> Shouldn't we use the new engine selection uAPI instead?
>
> We can already create an engine map with I915_CONTEXT_PARAM_ENGINES in 
> drm_i915_gem_context_create_ext_setparam.
>
> And you can also create virtual engines with the same extension.
>
> It feels like this could be a single u32 with the engine index (in the 
> context engine map).
>
>
>>
>> #define I915_EXEC3_SECURE               (1<<6)
>> #define I915_EXEC3_IS_PINNED            (1<<7)
>
>
> What's the meaning of PINNED?
>
>
>>
>> #define I915_EXEC3_BSD_SHIFT     (8)
>> #define I915_EXEC3_BSD_MASK      (3 << I915_EXEC3_BSD_SHIFT)
>> #define I915_EXEC3_BSD_DEFAULT   (0 << I915_EXEC3_BSD_SHIFT)
>> #define I915_EXEC3_BSD_RING1     (1 << I915_EXEC3_BSD_SHIFT)
>> #define I915_EXEC3_BSD_RING2     (2 << I915_EXEC3_BSD_SHIFT)
>>
>> #define I915_EXEC3_FENCE_IN             (1<<10)
>> #define I915_EXEC3_FENCE_OUT            (1<<11)
>
>
> For Mesa, as soon as we have 
> DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES support, we only use that.
>
> So there isn't much point for FENCE_IN/OUT.
>
> Maybe check with other UMDs?


Correcting myself a bit here :

     - iris uses I915_EXEC_FENCE_ARRAY

     - anv uses I915_EXEC_FENCE_ARRAY or 
DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES


In either case we could easily switch to 
DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES all the time.


>
>
>> #define I915_EXEC3_FENCE_SUBMIT (1<<12)
>
>
> What's FENCE_SUBMIT?
>
>
>>
>>        __u64 in_out_fence;        /* previously execbuffer2.rsvd2 */
>>
>>        __u64 extensions;        /* currently only for 
>> DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES */
>> };
>>
>> With this, user can pass in batch addresses and count directly,
>> instead of as an extension (as this rfc series was proposing).
>>
>> I have removed many of the flags which were either legacy or not
>> applicable to BM_BIND mode.
>> I have also removed fence array support (execbuffer2.cliprects_ptr)
>> as we have timeline fence array support. Is that fine?
>> Do we still need FENCE_IN/FENCE_OUT/FENCE_SUBMIT support?
>>
>> Any thing else needs to be added or removed?
>>
>> Niranjana
>>
>>> Niranjana
>>>
>>>> -Daniel
>>>> -- 
>>>> Daniel Vetter
>>>> Software Engineer, Intel Corporation
>>>> http://blog.ffwll.ch
>
>


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B08934DD7DB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 11:21:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31AA10E9C9;
	Fri, 18 Mar 2022 10:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72EAA10E9B7;
 Fri, 18 Mar 2022 10:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647598890; x=1679134890;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=djYs5z59zPXe28fT2qZ+08RtvOOpeBXXOXaqR6VV6bE=;
 b=I81ezqkXwMtvmd4WZza0M6l7wYuOdTLlT0K1ABihoSKcF3Z8ltXT7Ryx
 xetPo7QaQnWiWhtRuWG1uT7pjrt3+dLsqizEpY8+bdcYUDvWIfjiiuDC5
 Lc7jMHdyn86r44rD9tOponXAfprPhYxZkRZUpliYfIf6szazfF49nf2GL
 o/8Rbwtb7aJg85gZepSXDhnIivfM427aocV+18bWiQIIqxj0jBUHxEI/N
 MF5kLhaYA/QoeYIAnEFv5aSEW1lakflq9HCJr+MKOTeP51qthEVgFLixm
 cIiInVvxr8l9g+hOAalKXeb8Zuw0HhEVqpseVJTIybyQP14mQ2Wg5M4bY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244564354"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="244564354"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 03:21:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="647406160"
Received: from cfahey-mobl.ger.corp.intel.com (HELO [10.252.9.62])
 ([10.252.9.62])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 03:21:27 -0700
Message-ID: <5ac73fff-0193-5433-c4cc-ff76a220da46@intel.com>
Date: Fri, 18 Mar 2022 10:21:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220218112242.2117968-1-matthew.auld@intel.com>
 <20220218112242.2117968-3-matthew.auld@intel.com>
 <49f9bcee-e49a-5d5f-f5ee-9fd246e685ac@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <49f9bcee-e49a-5d5f-f5ee-9fd246e685ac@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/doc: add rfc section for small BAR
 uapi
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
 Kenneth Graunke <kenneth@whitecape.org>, mesa-dev@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18/03/2022 09:38, Lionel Landwerlin wrote:
> Hey Matthew, all,
> 
> This sounds like a good thing to have.
> There are a number of DG2 machines where we have a small BAR and this is 
> causing more apps to fail.
> 
> Anv currently reports 3 memory heaps to the app :
> 
>      - local device only (not host visible) -> mapped to lmem
>      - device/cpu -> mapped to smem
>      - local device but also host visible -> mapped to lmem
> 
> So we could use this straight away, by just not putting the 
> I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS flag on the allocation of the 
> first heap.
> 
> One thing I don't see in this proposal is how can we get the size of the 
> 2 lmem heap : cpu visible, cpu not visible
> We could use that to report the appropriate size to the app.
> We probably want to report a new drm_i915_memory_region_info and either :
>      - put one of the reserve field to use to indicate : cpu visible
>      - or define a new enum value in drm_i915_gem_memory_class

Thanks for taking a look at this. Returning the probed CPU visible size 
as part of the region query seems reasonable. Something like:

@@ -3074,8 +3074,18 @@ struct drm_i915_memory_region_info {
         /** @unallocated_size: Estimate of memory remaining (-1 = 
unknown) */
         __u64 unallocated_size;

-       /** @rsvd1: MBZ */
-       __u64 rsvd1[8];
+       union {
+               /** @rsvd1: MBZ */
+               __u64 rsvd1[8];
+
+               struct {
+                       /**
+                        * @probed_cpu_visible_size: Memory probed by 
the driver
+                        * that is CPU accessible. (-1 = unknown)
+                        */
+                       __u64 probed_cpu_visible_size;
+               };
+       };


I will add this in the next version, if no objections.

> 
> Cheers,
> 
> -Lionel
> 
> 
> On 18/02/2022 13:22, Matthew Auld wrote:
>> Add an entry for the new uapi needed for small BAR on DG2+.
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Jordan Justen <jordan.l.justen@intel.com>
>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>> Cc: mesa-dev@lists.freedesktop.org
>> ---
>>   Documentation/gpu/rfc/i915_small_bar.h   | 153 +++++++++++++++++++++++
>>   Documentation/gpu/rfc/i915_small_bar.rst |  40 ++++++
>>   Documentation/gpu/rfc/index.rst          |   4 +
>>   3 files changed, 197 insertions(+)
>>   create mode 100644 Documentation/gpu/rfc/i915_small_bar.h
>>   create mode 100644 Documentation/gpu/rfc/i915_small_bar.rst
>>
>> diff --git a/Documentation/gpu/rfc/i915_small_bar.h 
>> b/Documentation/gpu/rfc/i915_small_bar.h
>> new file mode 100644
>> index 000000000000..fa65835fd608
>> --- /dev/null
>> +++ b/Documentation/gpu/rfc/i915_small_bar.h
>> @@ -0,0 +1,153 @@
>> +/**
>> + * struct __drm_i915_gem_create_ext - Existing gem_create behaviour, 
>> with added
>> + * extension support using struct i915_user_extension.
>> + *
>> + * Note that in the future we want to have our buffer flags here, at 
>> least for
>> + * the stuff that is immutable. Previously we would have two ioctls, 
>> one to
>> + * create the object with gem_create, and another to apply various 
>> parameters,
>> + * however this creates some ambiguity for the params which are 
>> considered
>> + * immutable. Also in general we're phasing out the various SET/GET 
>> ioctls.
>> + */
>> +struct __drm_i915_gem_create_ext {
>> +    /**
>> +     * @size: Requested size for the object.
>> +     *
>> +     * The (page-aligned) allocated size for the object will be 
>> returned.
>> +     *
>> +     * Note that for some devices we have might have further minimum
>> +     * page-size restrictions(larger than 4K), like for device 
>> local-memory.
>> +     * However in general the final size here should always reflect any
>> +     * rounding up, if for example using the 
>> I915_GEM_CREATE_EXT_MEMORY_REGIONS
>> +     * extension to place the object in device local-memory.
>> +     */
>> +    __u64 size;
>> +    /**
>> +     * @handle: Returned handle for the object.
>> +     *
>> +     * Object handles are nonzero.
>> +     */
>> +    __u32 handle;
>> +    /**
>> +     * @flags: Optional flags.
>> +     *
>> +     * Supported values:
>> +     *
>> +     * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS - Signal to the 
>> kernel that
>> +     * the object will need to be accessed via the CPU.
>> +     *
>> +     * Only valid when placing objects in I915_MEMORY_CLASS_DEVICE, and
>> +     * only strictly required on platforms where only some of the device
>> +     * memory is directly visible or mappable through the CPU, like 
>> on DG2+.
>> +     *
>> +     * One of the placements MUST also be I915_MEMORY_CLASS_SYSTEM, to
>> +     * ensure we can always spill the allocation to system memory, if we
>> +     * can't place the object in the mappable part of
>> +     * I915_MEMORY_CLASS_DEVICE.
>> +     *
>> +     * Note that buffers that need to be captured with 
>> EXEC_OBJECT_CAPTURE,
>> +     * will need to enable this hint, if the object can also be 
>> placed in
>> +     * I915_MEMORY_CLASS_DEVICE, starting from DG2+. The execbuf call 
>> will
>> +     * throw an error otherwise. This also means that such objects 
>> will need
>> +     * I915_MEMORY_CLASS_SYSTEM set as a possible placement.
>> +     *
>> +     * Without this hint, the kernel will assume that non-mappable
>> +     * I915_MEMORY_CLASS_DEVICE is preferred for this object. Note 
>> that the
>> +     * kernel can still migrate the object to the mappable part, as a 
>> last
>> +     * resort, if userspace ever CPU faults this object, but this 
>> might be
>> +     * expensive, and so ideally should be avoided.
>> +     */
>> +#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1 << 0)
>> +    __u32 flags;
>> +    /**
>> +     * @extensions: The chain of extensions to apply to this object.
>> +     *
>> +     * This will be useful in the future when we need to support several
>> +     * different extensions, and we need to apply more than one when
>> +     * creating the object. See struct i915_user_extension.
>> +     *
>> +     * If we don't supply any extensions then we get the same old 
>> gem_create
>> +     * behaviour.
>> +     *
>> +     * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
>> +     * struct drm_i915_gem_create_ext_memory_regions.
>> +     *
>> +     * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
>> +     * struct drm_i915_gem_create_ext_protected_content.
>> +     */
>> +#define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
>> +#define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
>> +    __u64 extensions;
>> +};
>> +
>> +#define DRM_I915_QUERY_VMA_INFO    5
>> +
>> +/**
>> + * struct __drm_i915_query_vma_info
>> + *
>> + * Given a vm and GTT address, lookup the corresponding vma, 
>> returning its set
>> + * of attributes.
>> + *
>> + * .. code-block:: C
>> + *
>> + *    struct drm_i915_query_vma_info info = {};
>> + *    struct drm_i915_query_item item = {
>> + *        .data_ptr = (uintptr_t)&info,
>> + *        .query_id = DRM_I915_QUERY_VMA_INFO,
>> + *    };
>> + *    struct drm_i915_query query = {
>> + *        .num_items = 1,
>> + *        .items_ptr = (uintptr_t)&item,
>> + *    };
>> + *    int err;
>> + *
>> + *    // Unlike some other types of queries, there is no need to 
>> first query
>> + *    // the size of the data_ptr blob here, since we already know 
>> ahead of
>> + *    // time how big this needs to be.
>> + *    item.length = sizeof(info);
>> + *
>> + *    // Next we fill in the vm_id and ppGTT address of the vma we wish
>> + *    // to query, before then firing off the query.
>> + *    info.vm_id = vm_id;
>> + *    info.offset = gtt_address;
>> + *    err = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);
>> + *    if (err || item.length < 0) ...
>> + *
>> + *    // If all went well we can now inspect the returned attributes.
>> + *    if (info.attributes & DRM_I915_QUERY_VMA_INFO_CPU_VISIBLE) ...
>> + */
>> +struct __drm_i915_query_vma_info {
>> +    /**
>> +     * @vm_id: The given vm id that contains the vma. The id is the 
>> value
>> +     * returned by the DRM_I915_GEM_VM_CREATE. See struct
>> +     * drm_i915_gem_vm_control.vm_id.
>> +     */
>> +    __u32 vm_id;
>> +    /** @pad: MBZ. */
>> +    __u32 pad;
>> +    /**
>> +     * @offset: The corresponding ppGTT address of the vma which the 
>> kernel
>> +     * will use to perform the lookup.
>> +     */
>> +    __u64 offset;
>> +    /**
>> +     * @attributes: The returned attributes for the given vma.
>> +     *
>> +     * Possible values:
>> +     *
>> +     * DRM_I915_QUERY_VMA_INFO_CPU_VISIBLE - Set if the pages backing 
>> the
>> +     * vma are currently CPU accessible. If this is not set then the 
>> vma is
>> +     * currently backed by I915_MEMORY_CLASS_DEVICE memory, which the 
>> CPU
>> +     * cannot directly access(this is only possible on discrete 
>> devices with
>> +     * a small BAR). Attempting to MMAP and fault such an object will
>> +     * require the kernel first synchronising any GPU work tied to the
>> +     * object, before then migrating the pages, either to the CPU 
>> accessible
>> +     * part of I915_MEMORY_CLASS_DEVICE, or I915_MEMORY_CLASS_SYSTEM, 
>> if the
>> +     * placements permit it. See 
>> I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS.
>> +     *
>> +     * Note that this is inherently racy.
>> +     */
>> +#define DRM_I915_QUERY_VMA_INFO_CPU_VISIBLE (1<<0)
>> +    __u64 attributes;
>> +    /** @rsvd: MBZ */
>> +    __u32 rsvd[4];
>> +};
>> diff --git a/Documentation/gpu/rfc/i915_small_bar.rst 
>> b/Documentation/gpu/rfc/i915_small_bar.rst
>> new file mode 100644
>> index 000000000000..fea92d3d69ab
>> --- /dev/null
>> +++ b/Documentation/gpu/rfc/i915_small_bar.rst
>> @@ -0,0 +1,40 @@
>> +==========================
>> +I915 Small BAR RFC Section
>> +==========================
>> +Starting from DG2 we will have resizable BAR support for device 
>> local-memory,
>> +but in some cases the final BAR size might still be smaller than the 
>> total
>> +local-memory size. In such cases only part of local-memory will be CPU
>> +accessible, while the remainder is only accessible via the GPU.
>> +
>> +I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS flag
>> +----------------------------------------------
>> +New gem_create_ext flag to tell the kernel that a BO will require CPU 
>> access.
>> +The becomes important when placing an object in LMEM, where 
>> underneath the
>> +device has a small BAR, meaning only part of it is CPU accessible. 
>> Without this
>> +flag the kernel will assume that CPU access is not required, and 
>> prioritize
>> +using the non-CPU visible portion of LMEM(if present on the device).
>> +
>> +Related to this, we now also reject any objects marked with
>> +EXEC_OBJECT_CAPTURE, which are also not tagged with NEEDS_CPU_ACCESS. 
>> This only
>> +impacts DG2+.
>> +
>> +XXX: One open here is whether we should extend the memory region 
>> query to return
>> +the CPU visible size of the region. For now the IGTs just use debugfs 
>> to query
>> +the size. However, if userspace sees a real need for this then 
>> extending the
>> +region query would be a lot nicer.
>> +
>> +.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
>> +   :functions: __drm_i915_gem_create_ext
>> +
>> +DRM_I915_QUERY_VMA_INFO query
>> +-----------------------------
>> +Query the attributes of some vma. Given a vm and GTT offset, find the
>> +respective vma, and return its set of attrubutes. For now we only 
>> support
>> +DRM_I915_QUERY_VMA_INFO_CPU_VISIBLE, which is set if the object/vma is
>> +currently placed in memory that is accessible by the CPU. This should 
>> always be
>> +set on devices where the CPU visible size of LMEM matches the probed 
>> size. If
>> +this is not set then CPU faulting the object will first require 
>> migrating the
>> +pages.
>> +
>> +.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
>> +   :functions: __drm_i915_query_vma_info
>> diff --git a/Documentation/gpu/rfc/index.rst 
>> b/Documentation/gpu/rfc/index.rst
>> index 018a8bf317a6..5b8495bdc1fd 100644
>> --- a/Documentation/gpu/rfc/index.rst
>> +++ b/Documentation/gpu/rfc/index.rst
>> @@ -19,3 +19,7 @@ host such documentation:
>>   .. toctree::
>>       i915_scheduler.rst
>> +
>> +.. toctree::
>> +
>> +    i915_small_bar.rst
> 
> 

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C83518078
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3BAF10F790;
	Tue,  3 May 2022 09:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 127FC10F529;
 Tue,  3 May 2022 09:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651568512; x=1683104512;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dK/5qWnEBLMgIiiRR5MMRoFxqEIgCtwBCYwCnlTrEHQ=;
 b=lg64qLrunKHQvJ4/dOAaM4k2AOfJ99PpUhc85OkR8W77mqX/ApPWOZOj
 MG4XhYGtnb+FPVuOpW4BP55ZWqkg/ROlaAxduG0c389bWvfbkVhI7VG0D
 Mzq/rH1tlLFgtUjUqFn29BWm0iuFyQ//u4golneIclIFCc5jY042weJPH
 FLaz5RecpP2r8wy1yszrTMRNc3m1kkfZL3s+VpeODnPZEgZx1NwNkY/Zs
 QXYoScTxhfl23v0Gpr7Rni/ykaWmwaMGYaDvs316QY1E7HgrObden5xK4
 lyZ2gSMd4W1RsxY9uYbggA+80xg83drBQ8h8TXMbR0PSBHIvuVH7yxrUc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="266278166"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="266278166"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:01:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="663905089"
Received: from croe-mobl1.ger.corp.intel.com (HELO [10.252.27.16])
 ([10.252.27.16])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:01:48 -0700
Message-ID: <6fc46acc-c6fa-4c66-80e0-7121483152c6@intel.com>
Date: Tue, 3 May 2022 10:01:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-GB
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220420171328.57253-1-matthew.auld@intel.com>
 <5a026a09-e0de-6ade-cd70-b549ca646b95@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <5a026a09-e0de-6ade-cd70-b549ca646b95@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/doc: add rfc section for small BAR
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
 dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, mesa-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02/05/2022 08:54, Lionel Landwerlin wrote:
> On 20/04/2022 20:13, Matthew Auld wrote:
>> Add an entry for the new uapi needed for small BAR on DG2+.
>>
>> v2:
>>    - Some spelling fixes and other small tweaks. (Akeem & Thomas)
>>    - Rework error capture interactions, including no longer needing
>>      NEEDS_CPU_ACCESS for objects marked for capture. (Thomas)
>>    - Add probed_cpu_visible_size. (Lionel)
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Jordan Justen <jordan.l.justen@intel.com>
>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
>> Cc: mesa-dev@lists.freedesktop.org
>> ---
>>   Documentation/gpu/rfc/i915_small_bar.h   | 190 +++++++++++++++++++++++
>>   Documentation/gpu/rfc/i915_small_bar.rst |  58 +++++++
>>   Documentation/gpu/rfc/index.rst          |   4 +
>>   3 files changed, 252 insertions(+)
>>   create mode 100644 Documentation/gpu/rfc/i915_small_bar.h
>>   create mode 100644 Documentation/gpu/rfc/i915_small_bar.rst
>>
>> diff --git a/Documentation/gpu/rfc/i915_small_bar.h 
>> b/Documentation/gpu/rfc/i915_small_bar.h
>> new file mode 100644
>> index 000000000000..7bfd0cf44d35
>> --- /dev/null
>> +++ b/Documentation/gpu/rfc/i915_small_bar.h
>> @@ -0,0 +1,190 @@
>> +/**
>> + * struct __drm_i915_memory_region_info - Describes one region as 
>> known to the
>> + * driver.
>> + *
>> + * Note this is using both struct drm_i915_query_item and struct 
>> drm_i915_query.
>> + * For this new query we are adding the new query id 
>> DRM_I915_QUERY_MEMORY_REGIONS
>> + * at &drm_i915_query_item.query_id.
>> + */
>> +struct __drm_i915_memory_region_info {
>> +    /** @region: The class:instance pair encoding */
>> +    struct drm_i915_gem_memory_class_instance region;
>> +
>> +    /** @rsvd0: MBZ */
>> +    __u32 rsvd0;
>> +
>> +    /** @probed_size: Memory probed by the driver (-1 = unknown) */
>> +    __u64 probed_size;
>> +
>> +    /** @unallocated_size: Estimate of memory remaining (-1 = 
>> unknown) */
>> +    __u64 unallocated_size;
>> +
>> +    union {
>> +        /** @rsvd1: MBZ */
>> +        __u64 rsvd1[8];
>> +        struct {
>> +            /**
>> +             * @probed_cpu_visible_size: Memory probed by the driver
>> +             * that is CPU accessible. (-1 = unknown).
>> +             *
>> +             * This will be always be <= @probed_size, and the
>> +             * remainder(if there is any) will not be CPU
>> +             * accessible.
>> +             */
>> +            __u64 probed_cpu_visible_size;
>> +        };
> 
> 
> Trying to implement userspace support in Vulkan for this, I have an 
> additional question about the value of probed_cpu_visible_size.
> 
> When is it set to -1?

I don't anything is currently using -1, for any of these fields.

> 
> I'm guessing before there is support for this value it'll be 0 (MBZ).
> 
> After after it should either be the entire lmem or something smaller.

Yup.

> 
> 
> -Lionel
> 
> 
>> +    };
>> +};
>> +
>> +/**
>> + * struct __drm_i915_gem_create_ext - Existing gem_create behaviour, 
>> with added
>> + * extension support using struct i915_user_extension.
>> + *
>> + * Note that new buffer flags should be added here, at least for the 
>> stuff that
>> + * is immutable. Previously we would have two ioctls, one to create 
>> the object
>> + * with gem_create, and another to apply various parameters, however 
>> this
>> + * creates some ambiguity for the params which are considered 
>> immutable. Also in
>> + * general we're phasing out the various SET/GET ioctls.
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
>> +     * Note that since the kernel only supports flat-CCS on objects 
>> that can
>> +     * *only* be placed in I915_MEMORY_CLASS_DEVICE, we therefore don't
>> +     * support I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS together with
>> +     * flat-CCS.
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
>> index 000000000000..be3d9bcdd86d
>> --- /dev/null
>> +++ b/Documentation/gpu/rfc/i915_small_bar.rst
>> @@ -0,0 +1,58 @@
>> +==========================
>> +I915 Small BAR RFC Section
>> +==========================
>> +Starting from DG2 we will have resizable BAR support for device 
>> local-memory(i.e
>> +I915_MEMORY_CLASS_DEVICE), but in some cases the final BAR size might 
>> still be
>> +smaller than the total probed_size. In such cases, only some subset of
>> +I915_MEMORY_CLASS_DEVICE will be CPU accessible(for example the first 
>> 256M),
>> +while the remainder is only accessible via the GPU.
>> +
>> +I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS flag
>> +----------------------------------------------
>> +New gem_create_ext flag to tell the kernel that a BO will require CPU 
>> access.
>> +This becomes important when placing an object in 
>> I915_MEMORY_CLASS_DEVICE, where
>> +underneath the device has a small BAR, meaning only some portion of 
>> it is CPU
>> +accessible. Without this flag the kernel will assume that CPU access 
>> is not
>> +required, and prioritize using the non-CPU visible portion of
>> +I915_MEMORY_CLASS_DEVICE.
>> +
>> +.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
>> +   :functions: __drm_i915_gem_create_ext
>> +
>> +probed_cpu_visible_size attribute
>> +---------------------------------
>> +New struct__drm_i915_memory_region attribute which returns the total 
>> size of the
>> +CPU accessible portion, for the particular region. This should only be
>> +applicable for I915_MEMORY_CLASS_DEVICE.
>> +
>> +Vulkan will need this as part of creating a separate VkMemoryHeap 
>> with the
>> +VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT set, to represent the CPU visible 
>> portion,
>> +where the total size of the heap needs to be known.
>> +
>> +.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
>> +   :functions: __drm_i915_memory_region_info
>> +
>> +DRM_I915_QUERY_VMA_INFO query
>> +-----------------------------
>> +Query the attributes of some vma. Given a vm and GTT offset, find the
>> +respective vma, and return its set of attributes. For now we only 
>> support
>> +DRM_I915_QUERY_VMA_INFO_CPU_VISIBLE, which is set if the object/vma is
>> +currently placed in memory that is accessible by the CPU. This should 
>> always be
>> +set on devices where the CPU probed_cpu_visible_size of 
>> I915_MEMORY_CLASS_DEVICE
>> +matches the probed_size. If this is not set then CPU faulting the 
>> object will
>> +likely first require migrating the pages.
>> +
>> +.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
>> +   :functions: __drm_i915_query_vma_info
>> +
>> +Error Capture restrictions
>> +--------------------------
>> +With error capture we have two new restrictions:
>> +
>> +    1) Error capture is best effort on small BAR systems; if the 
>> pages are not
>> +    CPU accessible, at the time of capture, then the kernel is free 
>> to skip
>> +    trying to capture them.
>> +
>> +    2) On discrete we now reject error capture on recoverable 
>> contexts. In the
>> +    future the kernel may want to blit during error capture, when for 
>> example
>> +    something is not currently CPU accessible.
>> diff --git a/Documentation/gpu/rfc/index.rst 
>> b/Documentation/gpu/rfc/index.rst
>> index 91e93a705230..5a3bd3924ba6 100644
>> --- a/Documentation/gpu/rfc/index.rst
>> +++ b/Documentation/gpu/rfc/index.rst
>> @@ -23,3 +23,7 @@ host such documentation:
>>   .. toctree::
>>       i915_scheduler.rst
>> +
>> +.. toctree::
>> +
>> +    i915_small_bar.rst
> 
> 

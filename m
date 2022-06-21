Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E81DD55398D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 20:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18F1910FDCC;
	Tue, 21 Jun 2022 18:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FC1F10EE1D;
 Tue, 21 Jun 2022 18:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655836330; x=1687372330;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=y4yk5C5LXXyuT+KZcfoUEotE+y7PgD85Ac4KmKKrmGk=;
 b=dx4qiWVxVVMvdvcyGuxQsCjniyiOHPsxDW6pG1TT6vsgNrrD8suq+LVq
 LvXiHg3EQErLSYJImmUNpBZT14yCZOdbNr2HzjXXDv664n8XMtIkFsvhL
 5FC/xo39A/AoSxmMOcT0h3uP60Xt8Xd9QclpqV7OM1X1jc3OtMjSzVitG
 nCaJ9//g9uca8XH5N8t1FazfibHEQXICsGra2kdPiXWyQ05PlUS/l2+AV
 J9kHdj/mX3TuYnyefffr/80Wucc7inp2DoJdazgZcVgHP702X+obE+7an
 yMpkXLywOlKIZU0fk3BFDdpeKi+nI+FUOTxK3hJpg5pFPjrx5S19JXF4c g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="277754342"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="277754342"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 11:31:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="562521021"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2022 11:31:44 -0700
Received: from [10.249.129.98] (unknown [10.249.129.98])
 by linux.intel.com (Postfix) with ESMTP id E7770580ABB;
 Tue, 21 Jun 2022 11:31:40 -0700 (PDT)
Message-ID: <5e590969-56c3-faaf-215c-c02800560dac@intel.com>
Date: Tue, 21 Jun 2022 21:31:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220621104434.190962-1-matthew.auld@intel.com>
 <20220621104434.190962-2-matthew.auld@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220621104434.190962-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 01/12] drm/doc: add rfc section for small
 BAR uapi
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
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Kenneth Graunke <kenneth@whitecape.org>, mesa-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/06/2022 13:44, Matthew Auld wrote:
> Add an entry for the new uapi needed for small BAR on DG2+.
>
> v2:
>    - Some spelling fixes and other small tweaks. (Akeem & Thomas)
>    - Rework error capture interactions, including no longer needing
>      NEEDS_CPU_ACCESS for objects marked for capture. (Thomas)
>    - Add probed_cpu_visible_size. (Lionel)
> v3:
>    - Drop the vma query for now.
>    - Add unallocated_cpu_visible_size as part of the region query.
>    - Improve the docs some more, including documenting the expected
>      behaviour on older kernels, since this came up in some offline
>      discussion.
> v4:
>    - Various improvements all over. (Tvrtko)
>
> v5:
>    - Include newer integrated platforms when applying the non-recoverable
>      context and error capture restriction. (Thomas)
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Cc: mesa-dev@lists.freedesktop.org
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Acked-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>


With Jordan with have changes for Anv/Iris : 
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/16739

Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


> ---
>   Documentation/gpu/rfc/i915_small_bar.h   | 189 +++++++++++++++++++++++
>   Documentation/gpu/rfc/i915_small_bar.rst |  47 ++++++
>   Documentation/gpu/rfc/index.rst          |   4 +
>   3 files changed, 240 insertions(+)
>   create mode 100644 Documentation/gpu/rfc/i915_small_bar.h
>   create mode 100644 Documentation/gpu/rfc/i915_small_bar.rst
>
> diff --git a/Documentation/gpu/rfc/i915_small_bar.h b/Documentation/gpu/rfc/i915_small_bar.h
> new file mode 100644
> index 000000000000..752bb2ceb399
> --- /dev/null
> +++ b/Documentation/gpu/rfc/i915_small_bar.h
> @@ -0,0 +1,189 @@
> +/**
> + * struct __drm_i915_memory_region_info - Describes one region as known to the
> + * driver.
> + *
> + * Note this is using both struct drm_i915_query_item and struct drm_i915_query.
> + * For this new query we are adding the new query id DRM_I915_QUERY_MEMORY_REGIONS
> + * at &drm_i915_query_item.query_id.
> + */
> +struct __drm_i915_memory_region_info {
> +	/** @region: The class:instance pair encoding */
> +	struct drm_i915_gem_memory_class_instance region;
> +
> +	/** @rsvd0: MBZ */
> +	__u32 rsvd0;
> +
> +	/**
> +	 * @probed_size: Memory probed by the driver (-1 = unknown)
> +	 *
> +	 * Note that it should not be possible to ever encounter a zero value
> +	 * here, also note that no current region type will ever return -1 here.
> +	 * Although for future region types, this might be a possibility. The
> +	 * same applies to the other size fields.
> +	 */
> +	__u64 probed_size;
> +
> +	/**
> +	 * @unallocated_size: Estimate of memory remaining (-1 = unknown)
> +	 *
> +	 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable accounting.
> +	 * Without this (or if this is an older kernel) the value here will
> +	 * always equal the @probed_size. Note this is only currently tracked
> +	 * for I915_MEMORY_CLASS_DEVICE regions (for other types the value here
> +	 * will always equal the @probed_size).
> +	 */
> +	__u64 unallocated_size;
> +
> +	union {
> +		/** @rsvd1: MBZ */
> +		__u64 rsvd1[8];
> +		struct {
> +			/**
> +			 * @probed_cpu_visible_size: Memory probed by the driver
> +			 * that is CPU accessible. (-1 = unknown).
> +			 *
> +			 * This will be always be <= @probed_size, and the
> +			 * remainder (if there is any) will not be CPU
> +			 * accessible.
> +			 *
> +			 * On systems without small BAR, the @probed_size will
> +			 * always equal the @probed_cpu_visible_size, since all
> +			 * of it will be CPU accessible.
> +			 *
> +			 * Note this is only tracked for
> +			 * I915_MEMORY_CLASS_DEVICE regions (for other types the
> +			 * value here will always equal the @probed_size).
> +			 *
> +			 * Note that if the value returned here is zero, then
> +			 * this must be an old kernel which lacks the relevant
> +			 * small-bar uAPI support (including
> +			 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS), but on
> +			 * such systems we should never actually end up with a
> +			 * small BAR configuration, assuming we are able to load
> +			 * the kernel module. Hence it should be safe to treat
> +			 * this the same as when @probed_cpu_visible_size ==
> +			 * @probed_size.
> +			 */
> +			__u64 probed_cpu_visible_size;
> +
> +			/**
> +			 * @unallocated_cpu_visible_size: Estimate of CPU
> +			 * visible memory remaining (-1 = unknown).
> +			 *
> +			 * Note this is only tracked for
> +			 * I915_MEMORY_CLASS_DEVICE regions (for other types the
> +			 * value here will always equal the
> +			 * @probed_cpu_visible_size).
> +			 *
> +			 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable
> +			 * accounting.  Without this the value here will always
> +			 * equal the @probed_cpu_visible_size. Note this is only
> +			 * currently tracked for I915_MEMORY_CLASS_DEVICE
> +			 * regions (for other types the value here will also
> +			 * always equal the @probed_cpu_visible_size).
> +			 *
> +			 * If this is an older kernel the value here will be
> +			 * zero, see also @probed_cpu_visible_size.
> +			 */
> +			__u64 unallocated_cpu_visible_size;
> +		};
> +	};
> +};
> +
> +/**
> + * struct __drm_i915_gem_create_ext - Existing gem_create behaviour, with added
> + * extension support using struct i915_user_extension.
> + *
> + * Note that new buffer flags should be added here, at least for the stuff that
> + * is immutable. Previously we would have two ioctls, one to create the object
> + * with gem_create, and another to apply various parameters, however this
> + * creates some ambiguity for the params which are considered immutable. Also in
> + * general we're phasing out the various SET/GET ioctls.
> + */
> +struct __drm_i915_gem_create_ext {
> +	/**
> +	 * @size: Requested size for the object.
> +	 *
> +	 * The (page-aligned) allocated size for the object will be returned.
> +	 *
> +	 * Note that for some devices we have might have further minimum
> +	 * page-size restrictions (larger than 4K), like for device local-memory.
> +	 * However in general the final size here should always reflect any
> +	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
> +	 * extension to place the object in device local-memory. The kernel will
> +	 * always select the largest minimum page-size for the set of possible
> +	 * placements as the value to use when rounding up the @size.
> +	 */
> +	__u64 size;
> +
> +	/**
> +	 * @handle: Returned handle for the object.
> +	 *
> +	 * Object handles are nonzero.
> +	 */
> +	__u32 handle;
> +
> +	/**
> +	 * @flags: Optional flags.
> +	 *
> +	 * Supported values:
> +	 *
> +	 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS - Signal to the kernel that
> +	 * the object will need to be accessed via the CPU.
> +	 *
> +	 * Only valid when placing objects in I915_MEMORY_CLASS_DEVICE, and only
> +	 * strictly required on configurations where some subset of the device
> +	 * memory is directly visible/mappable through the CPU (which we also
> +	 * call small BAR), like on some DG2+ systems. Note that this is quite
> +	 * undesirable, but due to various factors like the client CPU, BIOS etc
> +	 * it's something we can expect to see in the wild. See
> +	 * &__drm_i915_memory_region_info.probed_cpu_visible_size for how to
> +	 * determine if this system applies.
> +	 *
> +	 * Note that one of the placements MUST be I915_MEMORY_CLASS_SYSTEM, to
> +	 * ensure the kernel can always spill the allocation to system memory,
> +	 * if the object can't be allocated in the mappable part of
> +	 * I915_MEMORY_CLASS_DEVICE.
> +	 *
> +	 * Also note that since the kernel only supports flat-CCS on objects
> +	 * that can *only* be placed in I915_MEMORY_CLASS_DEVICE, we therefore
> +	 * don't support I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS together with
> +	 * flat-CCS.
> +	 *
> +	 * Without this hint, the kernel will assume that non-mappable
> +	 * I915_MEMORY_CLASS_DEVICE is preferred for this object. Note that the
> +	 * kernel can still migrate the object to the mappable part, as a last
> +	 * resort, if userspace ever CPU faults this object, but this might be
> +	 * expensive, and so ideally should be avoided.
> +	 *
> +	 * On older kernels which lack the relevant small-bar uAPI support (see
> +	 * also &__drm_i915_memory_region_info.probed_cpu_visible_size),
> +	 * usage of the flag will result in an error, but it should NEVER be
> +	 * possible to end up with a small BAR configuration, assuming we can
> +	 * also successfully load the i915 kernel module. In such cases the
> +	 * entire I915_MEMORY_CLASS_DEVICE region will be CPU accessible, and as
> +	 * such there are zero restrictions on where the object can be placed.
> +	 */
> +#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1 << 0)
> +	__u32 flags;
> +
> +	/**
> +	 * @extensions: The chain of extensions to apply to this object.
> +	 *
> +	 * This will be useful in the future when we need to support several
> +	 * different extensions, and we need to apply more than one when
> +	 * creating the object. See struct i915_user_extension.
> +	 *
> +	 * If we don't supply any extensions then we get the same old gem_create
> +	 * behaviour.
> +	 *
> +	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
> +	 * struct drm_i915_gem_create_ext_memory_regions.
> +	 *
> +	 * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
> +	 * struct drm_i915_gem_create_ext_protected_content.
> +	 */
> +#define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
> +#define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
> +	__u64 extensions;
> +};
> diff --git a/Documentation/gpu/rfc/i915_small_bar.rst b/Documentation/gpu/rfc/i915_small_bar.rst
> new file mode 100644
> index 000000000000..d6c03ce3b862
> --- /dev/null
> +++ b/Documentation/gpu/rfc/i915_small_bar.rst
> @@ -0,0 +1,47 @@
> +==========================
> +I915 Small BAR RFC Section
> +==========================
> +Starting from DG2 we will have resizable BAR support for device local-memory(i.e
> +I915_MEMORY_CLASS_DEVICE), but in some cases the final BAR size might still be
> +smaller than the total probed_size. In such cases, only some subset of
> +I915_MEMORY_CLASS_DEVICE will be CPU accessible(for example the first 256M),
> +while the remainder is only accessible via the GPU.
> +
> +I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS flag
> +----------------------------------------------
> +New gem_create_ext flag to tell the kernel that a BO will require CPU access.
> +This becomes important when placing an object in I915_MEMORY_CLASS_DEVICE, where
> +underneath the device has a small BAR, meaning only some portion of it is CPU
> +accessible. Without this flag the kernel will assume that CPU access is not
> +required, and prioritize using the non-CPU visible portion of
> +I915_MEMORY_CLASS_DEVICE.
> +
> +.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
> +   :functions: __drm_i915_gem_create_ext
> +
> +probed_cpu_visible_size attribute
> +---------------------------------
> +New struct__drm_i915_memory_region attribute which returns the total size of the
> +CPU accessible portion, for the particular region. This should only be
> +applicable for I915_MEMORY_CLASS_DEVICE. We also report the
> +unallocated_cpu_visible_size, alongside the unallocated_size.
> +
> +Vulkan will need this as part of creating a separate VkMemoryHeap with the
> +VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT set, to represent the CPU visible portion,
> +where the total size of the heap needs to be known. It also wants to be able to
> +give a rough estimate of how memory can potentially be allocated.
> +
> +.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
> +   :functions: __drm_i915_memory_region_info
> +
> +Error Capture restrictions
> +--------------------------
> +With error capture we have two new restrictions:
> +
> +    1) Error capture is best effort on small BAR systems; if the pages are not
> +    CPU accessible, at the time of capture, then the kernel is free to skip
> +    trying to capture them.
> +
> +    2) On discrete and newer integrated platforms we now reject error capture
> +    on recoverable contexts. In the future the kernel may want to blit during
> +    error capture, when for example something is not currently CPU accessible.
> diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
> index 91e93a705230..5a3bd3924ba6 100644
> --- a/Documentation/gpu/rfc/index.rst
> +++ b/Documentation/gpu/rfc/index.rst
> @@ -23,3 +23,7 @@ host such documentation:
>   .. toctree::
>   
>       i915_scheduler.rst
> +
> +.. toctree::
> +
> +    i915_small_bar.rst



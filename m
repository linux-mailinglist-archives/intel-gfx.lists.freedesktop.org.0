Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB1737AD1B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 19:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D39E89C1B;
	Tue, 11 May 2021 17:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51E7F6EA99
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 17:28:12 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id f1so1593394edt.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 10:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dY5G4D/0c5sI5MXM0rdIxqlP7FROlgzNxEafbVglw6c=;
 b=TVGGz9tw4TP2BoQC/fTkcwCtLQBxAd7EHkJx8cR2o8MenUdJeW4dkXdKa2R/gkAkWf
 GTYDdXnDn45LSdUiBp8wSZl9NcJRF1fhPp+OUbEP7ZR+YeTmGPD+pi1EuYqzYUUO57tw
 OBPhzlXFZvLv6vNyOakbfcCepDyvwbBuOR0NM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dY5G4D/0c5sI5MXM0rdIxqlP7FROlgzNxEafbVglw6c=;
 b=oKEX0vF8Jd+tgHfltH6xpEgwuatK0JBtOR0G6+cOA6lGlrYd3gnovmRwQ3fFnE9tIJ
 GmVet2kSwgNcZuwObxg34rBTb3te9ABpFUAm+ADUdxDAi427EPclKcmCtUau2oSNhAud
 X/ro03DWI6MQkTAX1BjJVzrWoAEDnUawKk18QMT4Il4q6a8RhOoXuwrrD/gcO8QvxeTE
 623sZHkw3+KlCDXS9pXR2ac02YBVKJdq4qnAtM8nBTMHSwZm6cz84albMLn3rnlNtp6u
 3iCYdTXzzYVocLHzfDQgObPGidWFfNkMLrOl/UjESJnUWOj/9qZ2jUIr4UP8URZMZIRi
 /ebA==
X-Gm-Message-State: AOAM533k5ZlcknAHo/fGMWf6VQ6T+pDEC7FLnMALc/SNYe514rV5PbY+
 FT2TqYDdlPy4MbNEJmKpGVT6bQ==
X-Google-Smtp-Source: ABdhPJxKTzn3Tklfqsz9UIVP2xPYkRrsVpjLZXkNg2mPCuQCOLMwYwdBDp6dliNFWQNbQMHV8r6+JQ==
X-Received: by 2002:aa7:c390:: with SMTP id k16mr34216048edq.97.1620754090859; 
 Tue, 11 May 2021 10:28:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id hp29sm11590680ejc.47.2021.05.11.10.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 May 2021 10:28:10 -0700 (PDT)
Date: Tue, 11 May 2021 19:28:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YJq+qCOSjrUFAC9v@phenom.ffwll.local>
References: <20210511170356.430284-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511170356.430284-1-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/doc/rfc: drop the i915_gem_lmem.h header
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 11, 2021 at 06:03:56PM +0100, Matthew Auld wrote:
> The proper headers have now landed in include/uapi/drm/i915_drm.h, so we
> can drop i915_gem_lmem.h and instead just reference the real headers for
> pulling in the kernel doc.
> 
> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I guess we need to have a note that when we land the pciid for dg1 to move
all the remaining bits over to real docs and delete the i915 lmem rfc. But
everything in due time.
-Daniel

> ---
>  Documentation/gpu/rfc/i915_gem_lmem.h   | 237 ------------------------
>  Documentation/gpu/rfc/i915_gem_lmem.rst |   6 +-
>  2 files changed, 3 insertions(+), 240 deletions(-)
>  delete mode 100644 Documentation/gpu/rfc/i915_gem_lmem.h
> 
> diff --git a/Documentation/gpu/rfc/i915_gem_lmem.h b/Documentation/gpu/rfc/i915_gem_lmem.h
> deleted file mode 100644
> index d9c61bea0556..000000000000
> --- a/Documentation/gpu/rfc/i915_gem_lmem.h
> +++ /dev/null
> @@ -1,237 +0,0 @@
> -/**
> - * enum drm_i915_gem_memory_class - Supported memory classes
> - */
> -enum drm_i915_gem_memory_class {
> -	/** @I915_MEMORY_CLASS_SYSTEM: System memory */
> -	I915_MEMORY_CLASS_SYSTEM = 0,
> -	/** @I915_MEMORY_CLASS_DEVICE: Device local-memory */
> -	I915_MEMORY_CLASS_DEVICE,
> -};
> -
> -/**
> - * struct drm_i915_gem_memory_class_instance - Identify particular memory region
> - */
> -struct drm_i915_gem_memory_class_instance {
> -	/** @memory_class: See enum drm_i915_gem_memory_class */
> -	__u16 memory_class;
> -
> -	/** @memory_instance: Which instance */
> -	__u16 memory_instance;
> -};
> -
> -/**
> - * struct drm_i915_memory_region_info - Describes one region as known to the
> - * driver.
> - *
> - * Note that we reserve some stuff here for potential future work. As an example
> - * we might want expose the capabilities for a given region, which could include
> - * things like if the region is CPU mappable/accessible, what are the supported
> - * mapping types etc.
> - *
> - * Note that to extend struct drm_i915_memory_region_info and struct
> - * drm_i915_query_memory_regions in the future the plan is to do the following:
> - *
> - * .. code-block:: C
> - *
> - *	struct drm_i915_memory_region_info {
> - *		struct drm_i915_gem_memory_class_instance region;
> - *		union {
> - *			__u32 rsvd0;
> - *			__u32 new_thing1;
> - *		};
> - *		...
> - *		union {
> - *			__u64 rsvd1[8];
> - *			struct {
> - *				__u64 new_thing2;
> - *				__u64 new_thing3;
> - *				...
> - *			};
> - *		};
> - *	};
> - *
> - * With this things should remain source compatible between versions for
> - * userspace, even as we add new fields.
> - *
> - * Note this is using both struct drm_i915_query_item and struct drm_i915_query.
> - * For this new query we are adding the new query id DRM_I915_QUERY_MEMORY_REGIONS
> - * at &drm_i915_query_item.query_id.
> - */
> -struct drm_i915_memory_region_info {
> -	/** @region: The class:instance pair encoding */
> -	struct drm_i915_gem_memory_class_instance region;
> -
> -	/** @rsvd0: MBZ */
> -	__u32 rsvd0;
> -
> -	/** @probed_size: Memory probed by the driver (-1 = unknown) */
> -	__u64 probed_size;
> -
> -	/** @unallocated_size: Estimate of memory remaining (-1 = unknown) */
> -	__u64 unallocated_size;
> -
> -	/** @rsvd1: MBZ */
> -	__u64 rsvd1[8];
> -};
> -
> -/**
> - * struct drm_i915_query_memory_regions
> - *
> - * The region info query enumerates all regions known to the driver by filling
> - * in an array of struct drm_i915_memory_region_info structures.
> - *
> - * Example for getting the list of supported regions:
> - *
> - * .. code-block:: C
> - *
> - *	struct drm_i915_query_memory_regions *info;
> - *	struct drm_i915_query_item item = {
> - *		.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
> - *	};
> - *	struct drm_i915_query query = {
> - *		.num_items = 1,
> - *		.items_ptr = (uintptr_t)&item,
> - *	};
> - *	int err, i;
> - *
> - *	// First query the size of the blob we need, this needs to be large
> - *	// enough to hold our array of regions. The kernel will fill out the
> - *	// item.length for us, which is the number of bytes we need.
> - *	err = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);
> - *	if (err) ...
> - *
> - *	info = calloc(1, item.length);
> - *	// Now that we allocated the required number of bytes, we call the ioctl
> - *	// again, this time with the data_ptr pointing to our newly allocated
> - *	// blob, which the kernel can then populate with the all the region info.
> - *	item.data_ptr = (uintptr_t)&info,
> - *
> - *	err = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);
> - *	if (err) ...
> - *
> - *	// We can now access each region in the array
> - *	for (i = 0; i < info->num_regions; i++) {
> - *		struct drm_i915_memory_region_info mr = info->regions[i];
> - *		u16 class = mr.region.class;
> - *		u16 instance = mr.region.instance;
> - *
> - *		....
> - *	}
> - *
> - *	free(info);
> - */
> -struct drm_i915_query_memory_regions {
> -	/** @num_regions: Number of supported regions */
> -	__u32 num_regions;
> -
> -	/** @rsvd: MBZ */
> -	__u32 rsvd[3];
> -
> -	/** @regions: Info about each supported region */
> -	struct drm_i915_memory_region_info regions[];
> -};
> -
> -#define DRM_I915_GEM_CREATE_EXT		0xdeadbeaf
> -#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)
> -
> -/**
> - * struct drm_i915_gem_create_ext - Existing gem_create behaviour, with added
> - * extension support using struct i915_user_extension.
> - *
> - * Note that in the future we want to have our buffer flags here, at least for
> - * the stuff that is immutable. Previously we would have two ioctls, one to
> - * create the object with gem_create, and another to apply various parameters,
> - * however this creates some ambiguity for the params which are considered
> - * immutable. Also in general we're phasing out the various SET/GET ioctls.
> - */
> -struct drm_i915_gem_create_ext {
> -	/**
> -	 * @size: Requested size for the object.
> -	 *
> -	 * The (page-aligned) allocated size for the object will be returned.
> -	 *
> -	 * Note that for some devices we have might have further minimum
> -	 * page-size restrictions(larger than 4K), like for device local-memory.
> -	 * However in general the final size here should always reflect any
> -	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
> -	 * extension to place the object in device local-memory.
> -	 */
> -	__u64 size;
> -	/**
> -	 * @handle: Returned handle for the object.
> -	 *
> -	 * Object handles are nonzero.
> -	 */
> -	__u32 handle;
> -	/** @flags: MBZ */
> -	__u32 flags;
> -	/**
> -	 * @extensions: The chain of extensions to apply to this object.
> -	 *
> -	 * This will be useful in the future when we need to support several
> -	 * different extensions, and we need to apply more than one when
> -	 * creating the object. See struct i915_user_extension.
> -	 *
> -	 * If we don't supply any extensions then we get the same old gem_create
> -	 * behaviour.
> -	 *
> -	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
> -	 * struct drm_i915_gem_create_ext_memory_regions.
> -	 */
> -#define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
> -	__u64 extensions;
> -};
> -
> -/**
> - * struct drm_i915_gem_create_ext_memory_regions - The
> - * I915_GEM_CREATE_EXT_MEMORY_REGIONS extension.
> - *
> - * Set the object with the desired set of placements/regions in priority
> - * order. Each entry must be unique and supported by the device.
> - *
> - * This is provided as an array of struct drm_i915_gem_memory_class_instance, or
> - * an equivalent layout of class:instance pair encodings. See struct
> - * drm_i915_query_memory_regions and DRM_I915_QUERY_MEMORY_REGIONS for how to
> - * query the supported regions for a device.
> - *
> - * As an example, on discrete devices, if we wish to set the placement as
> - * device local-memory we can do something like:
> - *
> - * .. code-block:: C
> - *
> - *	struct drm_i915_gem_memory_class_instance region_lmem = {
> - *              .memory_class = I915_MEMORY_CLASS_DEVICE,
> - *              .memory_instance = 0,
> - *      };
> - *      struct drm_i915_gem_create_ext_memory_regions regions = {
> - *              .base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
> - *              .regions = (uintptr_t)&region_lmem,
> - *              .num_regions = 1,
> - *      };
> - *      struct drm_i915_gem_create_ext create_ext = {
> - *              .size = 16 * PAGE_SIZE,
> - *              .extensions = (uintptr_t)&regions,
> - *      };
> - *
> - *      int err = ioctl(fd, DRM_IOCTL_I915_GEM_CREATE_EXT, &create_ext);
> - *      if (err) ...
> - *
> - * At which point we get the object handle in &drm_i915_gem_create_ext.handle,
> - * along with the final object size in &drm_i915_gem_create_ext.size, which
> - * should account for any rounding up, if required.
> - */
> -struct drm_i915_gem_create_ext_memory_regions {
> -	/** @base: Extension link. See struct i915_user_extension. */
> -	struct i915_user_extension base;
> -
> -	/** @pad: MBZ */
> -	__u32 pad;
> -	/** @num_regions: Number of elements in the @regions array. */
> -	__u32 num_regions;
> -	/**
> -	 * @regions: The regions/placements array.
> -	 *
> -	 * An array of struct drm_i915_gem_memory_class_instance.
> -	 */
> -	__u64 regions;
> -};
> diff --git a/Documentation/gpu/rfc/i915_gem_lmem.rst b/Documentation/gpu/rfc/i915_gem_lmem.rst
> index 1d344c593018..675ba8620d66 100644
> --- a/Documentation/gpu/rfc/i915_gem_lmem.rst
> +++ b/Documentation/gpu/rfc/i915_gem_lmem.rst
> @@ -48,7 +48,7 @@ particular instance, since we can have more than one per class.
>  In the future we also want to expose more information which can further
>  describe the capabilities of a region.
>  
> -.. kernel-doc:: Documentation/gpu/rfc/i915_gem_lmem.h
> +.. kernel-doc:: include/uapi/drm/i915_drm.h
>          :functions: drm_i915_gem_memory_class drm_i915_gem_memory_class_instance drm_i915_memory_region_info drm_i915_query_memory_regions
>  
>  GEM_CREATE_EXT
> @@ -61,7 +61,7 @@ Side note: We also need to support PXP[1] in the near future, which is also
>  applicable to integrated platforms, and adds its own gem_create_ext extension,
>  which basically lets userspace mark a buffer as "protected".
>  
> -.. kernel-doc:: Documentation/gpu/rfc/i915_gem_lmem.h
> +.. kernel-doc:: include/uapi/drm/i915_drm.h
>          :functions: drm_i915_gem_create_ext
>  
>  I915_GEM_CREATE_EXT_MEMORY_REGIONS
> @@ -73,7 +73,7 @@ them each to use the class/instance encoding, as per the output of the regions
>  query. Having the list in priority order will be useful in the future when
>  placing an object, say during eviction.
>  
> -.. kernel-doc:: Documentation/gpu/rfc/i915_gem_lmem.h
> +.. kernel-doc:: include/uapi/drm/i915_drm.h
>          :functions: drm_i915_gem_create_ext_memory_regions
>  
>  One fair criticism here is that this seems a little over-engineered[2]. If we
> -- 
> 2.26.3
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E193389207
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 16:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537866E1E8;
	Wed, 19 May 2021 14:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A2389177;
 Wed, 19 May 2021 14:53:50 +0000 (UTC)
IronPort-SDR: SIYcZwx9ia3WMHksT/nMsmg9QclxawKJp5uqnpjIds+yiSSdeKpE8sNmqhNKDm2mphBo15z4Dy
 Zyd7bABmk9/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="201050906"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="201050906"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:48 -0700
IronPort-SDR: kWcFBybDT+8CF1EXOgGLapvMHUiqAroeD8lok/pozZbzJG+9oCWRCjVgOflLjlYRoUjO/x1SpF
 GVgC4D0O4oLg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473527375"
Received: from ajwalton-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.22.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:53:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 19 May 2021 15:53:29 +0100
Message-Id: <20210519145337.255167-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210519145337.255167-1-matthew.auld@intel.com>
References: <20210519145337.255167-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/9] i915_drm.h sync
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sync to get gem_create_ext and the regions query stuff.

Generated from kernel commit: 2459e56fd8af ("drm/i915/uapi: implement
object placement extension")

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 include/drm-uapi/i915_drm.h | 394 ++++++++++++++++++++++++++++++++----
 1 file changed, 360 insertions(+), 34 deletions(-)

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index bf9ea471..a1c0030c 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -62,8 +62,8 @@ extern "C" {
 #define I915_ERROR_UEVENT		"ERROR"
 #define I915_RESET_UEVENT		"RESET"
 
-/*
- * i915_user_extension: Base class for defining a chain of extensions
+/**
+ * struct i915_user_extension - Base class for defining a chain of extensions
  *
  * Many interfaces need to grow over time. In most cases we can simply
  * extend the struct and have userspace pass in more data. Another option,
@@ -76,12 +76,58 @@ extern "C" {
  * increasing complexity, and for large parts of that interface to be
  * entirely optional. The downside is more pointer chasing; chasing across
  * the boundary with pointers encapsulated inside u64.
+ *
+ * Example chaining:
+ *
+ * .. code-block:: C
+ *
+ *	struct i915_user_extension ext3 {
+ *		.next_extension = 0, // end
+ *		.name = ...,
+ *	};
+ *	struct i915_user_extension ext2 {
+ *		.next_extension = (uintptr_t)&ext3,
+ *		.name = ...,
+ *	};
+ *	struct i915_user_extension ext1 {
+ *		.next_extension = (uintptr_t)&ext2,
+ *		.name = ...,
+ *	};
+ *
+ * Typically the struct i915_user_extension would be embedded in some uAPI
+ * struct, and in this case we would feed it the head of the chain(i.e ext1),
+ * which would then apply all of the above extensions.
+ *
  */
 struct i915_user_extension {
+	/**
+	 * @next_extension:
+	 *
+	 * Pointer to the next struct i915_user_extension, or zero if the end.
+	 */
 	__u64 next_extension;
+	/**
+	 * @name: Name of the extension.
+	 *
+	 * Note that the name here is just some integer.
+	 *
+	 * Also note that the name space for this is not global for the whole
+	 * driver, but rather its scope/meaning is limited to the specific piece
+	 * of uAPI which has embedded the struct i915_user_extension.
+	 */
 	__u32 name;
-	__u32 flags; /* All undefined bits must be zero. */
-	__u32 rsvd[4]; /* Reserved for future use; must be zero. */
+	/**
+	 * @flags: MBZ
+	 *
+	 * All undefined bits must be zero.
+	 */
+	__u32 flags;
+	/**
+	 * @rsvd: MBZ
+	 *
+	 * Reserved for future use; must be zero.
+	 */
+	__u32 rsvd[4];
 };
 
 /*
@@ -360,6 +406,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_I915_QUERY			0x39
 #define DRM_I915_GEM_VM_CREATE		0x3a
 #define DRM_I915_GEM_VM_DESTROY		0x3b
+#define DRM_I915_GEM_CREATE_EXT		0x3c
 /* Must be kept compact -- no holes */
 
 #define DRM_IOCTL_I915_INIT		DRM_IOW( DRM_COMMAND_BASE + DRM_I915_INIT, drm_i915_init_t)
@@ -392,6 +439,7 @@ typedef struct _drm_i915_sarea {
 #define DRM_IOCTL_I915_GEM_ENTERVT	DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_ENTERVT)
 #define DRM_IOCTL_I915_GEM_LEAVEVT	DRM_IO(DRM_COMMAND_BASE + DRM_I915_GEM_LEAVEVT)
 #define DRM_IOCTL_I915_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create)
+#define DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE_EXT, struct drm_i915_gem_create_ext)
 #define DRM_IOCTL_I915_GEM_PREAD	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PREAD, struct drm_i915_gem_pread)
 #define DRM_IOCTL_I915_GEM_PWRITE	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_PWRITE, struct drm_i915_gem_pwrite)
 #define DRM_IOCTL_I915_GEM_MMAP		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_MMAP, struct drm_i915_gem_mmap)
@@ -943,6 +991,7 @@ struct drm_i915_gem_exec_object {
 	__u64 offset;
 };
 
+/* DRM_IOCTL_I915_GEM_EXECBUFFER was removed in Linux 5.13 */
 struct drm_i915_gem_execbuffer {
 	/**
 	 * List of buffers to be validated with their relocations to be
@@ -1053,12 +1102,12 @@ struct drm_i915_gem_exec_fence {
 	__u32 flags;
 };
 
-/**
+/*
  * See drm_i915_gem_execbuffer_ext_timeline_fences.
  */
 #define DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES 0
 
-/**
+/*
  * This structure describes an array of drm_syncobj and associated points for
  * timeline variants of drm_syncobj. It is invalid to append this structure to
  * the execbuf if I915_EXEC_FENCE_ARRAY is set.
@@ -1699,7 +1748,7 @@ struct drm_i915_gem_context_param {
 	__u64 value;
 };
 
-/**
+/*
  * Context SSEU programming
  *
  * It may be necessary for either functional or performance reason to configure
@@ -2066,7 +2115,7 @@ struct drm_i915_perf_open_param {
 	__u64 properties_ptr;
 };
 
-/**
+/*
  * Enable data capture for a stream that was either opened in a disabled state
  * via I915_PERF_FLAG_DISABLED or was later disabled via
  * I915_PERF_IOCTL_DISABLE.
@@ -2080,7 +2129,7 @@ struct drm_i915_perf_open_param {
  */
 #define I915_PERF_IOCTL_ENABLE	_IO('i', 0x0)
 
-/**
+/*
  * Disable data capture for a stream.
  *
  * It is an error to try and read a stream that is disabled.
@@ -2089,7 +2138,7 @@ struct drm_i915_perf_open_param {
  */
 #define I915_PERF_IOCTL_DISABLE	_IO('i', 0x1)
 
-/**
+/*
  * Change metrics_set captured by a stream.
  *
  * If the stream is bound to a specific context, the configuration change
@@ -2102,7 +2151,7 @@ struct drm_i915_perf_open_param {
  */
 #define I915_PERF_IOCTL_CONFIG	_IO('i', 0x2)
 
-/**
+/*
  * Common to all i915 perf records
  */
 struct drm_i915_perf_record_header {
@@ -2150,7 +2199,7 @@ enum drm_i915_perf_record_type {
 	DRM_I915_PERF_RECORD_MAX /* non-ABI */
 };
 
-/**
+/*
  * Structure to upload perf dynamic configuration into the kernel.
  */
 struct drm_i915_perf_oa_config {
@@ -2171,53 +2220,95 @@ struct drm_i915_perf_oa_config {
 	__u64 flex_regs_ptr;
 };
 
+/**
+ * struct drm_i915_query_item - An individual query for the kernel to process.
+ *
+ * The behaviour is determined by the @query_id. Note that exactly what
+ * @data_ptr is also depends on the specific @query_id.
+ */
 struct drm_i915_query_item {
+	/** @query_id: The id for this query */
 	__u64 query_id;
 #define DRM_I915_QUERY_TOPOLOGY_INFO    1
 #define DRM_I915_QUERY_ENGINE_INFO	2
 #define DRM_I915_QUERY_PERF_CONFIG      3
+#define DRM_I915_QUERY_MEMORY_REGIONS   4
 /* Must be kept compact -- no holes and well documented */
 
-	/*
+	/**
+	 * @length:
+	 *
 	 * When set to zero by userspace, this is filled with the size of the
-	 * data to be written at the data_ptr pointer. The kernel sets this
+	 * data to be written at the @data_ptr pointer. The kernel sets this
 	 * value to a negative value to signal an error on a particular query
 	 * item.
 	 */
 	__s32 length;
 
-	/*
+	/**
+	 * @flags:
+	 *
 	 * When query_id == DRM_I915_QUERY_TOPOLOGY_INFO, must be 0.
 	 *
 	 * When query_id == DRM_I915_QUERY_PERF_CONFIG, must be one of the
-	 * following :
-	 *         - DRM_I915_QUERY_PERF_CONFIG_LIST
-	 *         - DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
-	 *         - DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
+	 * following:
+	 *
+	 *	- DRM_I915_QUERY_PERF_CONFIG_LIST
+	 *      - DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
+	 *      - DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
 	 */
 	__u32 flags;
 #define DRM_I915_QUERY_PERF_CONFIG_LIST          1
 #define DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID 2
 #define DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_ID   3
 
-	/*
-	 * Data will be written at the location pointed by data_ptr when the
-	 * value of length matches the length of the data to be written by the
+	/**
+	 * @data_ptr:
+	 *
+	 * Data will be written at the location pointed by @data_ptr when the
+	 * value of @length matches the length of the data to be written by the
 	 * kernel.
 	 */
 	__u64 data_ptr;
 };
 
+/**
+ * struct drm_i915_query - Supply an array of struct drm_i915_query_item for the
+ * kernel to fill out.
+ *
+ * Note that this is generally a two step process for each struct
+ * drm_i915_query_item in the array:
+ *
+ * 1. Call the DRM_IOCTL_I915_QUERY, giving it our array of struct
+ *    drm_i915_query_item, with &drm_i915_query_item.length set to zero. The
+ *    kernel will then fill in the size, in bytes, which tells userspace how
+ *    memory it needs to allocate for the blob(say for an array of properties).
+ *
+ * 2. Next we call DRM_IOCTL_I915_QUERY again, this time with the
+ *    &drm_i915_query_item.data_ptr equal to our newly allocated blob. Note that
+ *    the &drm_i915_query_item.length should still be the same as what the
+ *    kernel previously set. At this point the kernel can fill in the blob.
+ *
+ * Note that for some query items it can make sense for userspace to just pass
+ * in a buffer/blob equal to or larger than the required size. In this case only
+ * a single ioctl call is needed. For some smaller query items this can work
+ * quite well.
+ *
+ */
 struct drm_i915_query {
+	/** @num_items: The number of elements in the @items_ptr array */
 	__u32 num_items;
 
-	/*
-	 * Unused for now. Must be cleared to zero.
+	/**
+	 * @flags: Unused for now. Must be cleared to zero.
 	 */
 	__u32 flags;
 
-	/*
-	 * This points to an array of num_items drm_i915_query_item structures.
+	/**
+	 * @items_ptr:
+	 *
+	 * Pointer to an array of struct drm_i915_query_item. The number of
+	 * array elements is @num_items.
 	 */
 	__u64 items_ptr;
 };
@@ -2291,21 +2382,21 @@ struct drm_i915_query_topology_info {
  * Describes one engine and it's capabilities as known to the driver.
  */
 struct drm_i915_engine_info {
-	/** Engine class and instance. */
+	/** @engine: Engine class and instance. */
 	struct i915_engine_class_instance engine;
 
-	/** Reserved field. */
+	/** @rsvd0: Reserved field. */
 	__u32 rsvd0;
 
-	/** Engine flags. */
+	/** @flags: Engine flags. */
 	__u64 flags;
 
-	/** Capabilities of this engine. */
+	/** @capabilities: Capabilities of this engine. */
 	__u64 capabilities;
 #define I915_VIDEO_CLASS_CAPABILITY_HEVC		(1 << 0)
 #define I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC	(1 << 1)
 
-	/** Reserved fields. */
+	/** @rsvd1: Reserved fields. */
 	__u64 rsvd1[4];
 };
 
@@ -2316,13 +2407,13 @@ struct drm_i915_engine_info {
  * an array of struct drm_i915_engine_info structures.
  */
 struct drm_i915_query_engine_info {
-	/** Number of struct drm_i915_engine_info structs following. */
+	/** @num_engines: Number of struct drm_i915_engine_info structs following. */
 	__u32 num_engines;
 
-	/** MBZ */
+	/** @rsvd: MBZ */
 	__u32 rsvd[3];
 
-	/** Marker for drm_i915_engine_info structures. */
+	/** @engines: Marker for drm_i915_engine_info structures. */
 	struct drm_i915_engine_info engines[];
 };
 
@@ -2376,6 +2467,241 @@ struct drm_i915_query_perf_config {
 	__u8 data[];
 };
 
+/**
+ * enum drm_i915_gem_memory_class - Supported memory classes
+ */
+enum drm_i915_gem_memory_class {
+	/** @I915_MEMORY_CLASS_SYSTEM: System memory */
+	I915_MEMORY_CLASS_SYSTEM = 0,
+	/** @I915_MEMORY_CLASS_DEVICE: Device local-memory */
+	I915_MEMORY_CLASS_DEVICE,
+};
+
+/**
+ * struct drm_i915_gem_memory_class_instance - Identify particular memory region
+ */
+struct drm_i915_gem_memory_class_instance {
+	/** @memory_class: See enum drm_i915_gem_memory_class */
+	__u16 memory_class;
+
+	/** @memory_instance: Which instance */
+	__u16 memory_instance;
+};
+
+/**
+ * struct drm_i915_memory_region_info - Describes one region as known to the
+ * driver.
+ *
+ * Note that we reserve some stuff here for potential future work. As an example
+ * we might want expose the capabilities for a given region, which could include
+ * things like if the region is CPU mappable/accessible, what are the supported
+ * mapping types etc.
+ *
+ * Note that to extend struct drm_i915_memory_region_info and struct
+ * drm_i915_query_memory_regions in the future the plan is to do the following:
+ *
+ * .. code-block:: C
+ *
+ *	struct drm_i915_memory_region_info {
+ *		struct drm_i915_gem_memory_class_instance region;
+ *		union {
+ *			__u32 rsvd0;
+ *			__u32 new_thing1;
+ *		};
+ *		...
+ *		union {
+ *			__u64 rsvd1[8];
+ *			struct {
+ *				__u64 new_thing2;
+ *				__u64 new_thing3;
+ *				...
+ *			};
+ *		};
+ *	};
+ *
+ * With this things should remain source compatible between versions for
+ * userspace, even as we add new fields.
+ *
+ * Note this is using both struct drm_i915_query_item and struct drm_i915_query.
+ * For this new query we are adding the new query id DRM_I915_QUERY_MEMORY_REGIONS
+ * at &drm_i915_query_item.query_id.
+ */
+struct drm_i915_memory_region_info {
+	/** @region: The class:instance pair encoding */
+	struct drm_i915_gem_memory_class_instance region;
+
+	/** @rsvd0: MBZ */
+	__u32 rsvd0;
+
+	/** @probed_size: Memory probed by the driver (-1 = unknown) */
+	__u64 probed_size;
+
+	/** @unallocated_size: Estimate of memory remaining (-1 = unknown) */
+	__u64 unallocated_size;
+
+	/** @rsvd1: MBZ */
+	__u64 rsvd1[8];
+};
+
+/**
+ * struct drm_i915_query_memory_regions
+ *
+ * The region info query enumerates all regions known to the driver by filling
+ * in an array of struct drm_i915_memory_region_info structures.
+ *
+ * Example for getting the list of supported regions:
+ *
+ * .. code-block:: C
+ *
+ *	struct drm_i915_query_memory_regions *info;
+ *	struct drm_i915_query_item item = {
+ *		.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
+ *	};
+ *	struct drm_i915_query query = {
+ *		.num_items = 1,
+ *		.items_ptr = (uintptr_t)&item,
+ *	};
+ *	int err, i;
+ *
+ *	// First query the size of the blob we need, this needs to be large
+ *	// enough to hold our array of regions. The kernel will fill out the
+ *	// item.length for us, which is the number of bytes we need.
+ *	err = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);
+ *	if (err) ...
+ *
+ *	info = calloc(1, item.length);
+ *	// Now that we allocated the required number of bytes, we call the ioctl
+ *	// again, this time with the data_ptr pointing to our newly allocated
+ *	// blob, which the kernel can then populate with the all the region info.
+ *	item.data_ptr = (uintptr_t)&info,
+ *
+ *	err = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);
+ *	if (err) ...
+ *
+ *	// We can now access each region in the array
+ *	for (i = 0; i < info->num_regions; i++) {
+ *		struct drm_i915_memory_region_info mr = info->regions[i];
+ *		u16 class = mr.region.class;
+ *		u16 instance = mr.region.instance;
+ *
+ *		....
+ *	}
+ *
+ *	free(info);
+ */
+struct drm_i915_query_memory_regions {
+	/** @num_regions: Number of supported regions */
+	__u32 num_regions;
+
+	/** @rsvd: MBZ */
+	__u32 rsvd[3];
+
+	/** @regions: Info about each supported region */
+	struct drm_i915_memory_region_info regions[];
+};
+
+/**
+ * struct drm_i915_gem_create_ext - Existing gem_create behaviour, with added
+ * extension support using struct i915_user_extension.
+ *
+ * Note that in the future we want to have our buffer flags here, at least for
+ * the stuff that is immutable. Previously we would have two ioctls, one to
+ * create the object with gem_create, and another to apply various parameters,
+ * however this creates some ambiguity for the params which are considered
+ * immutable. Also in general we're phasing out the various SET/GET ioctls.
+ */
+struct drm_i915_gem_create_ext {
+	/**
+	 * @size: Requested size for the object.
+	 *
+	 * The (page-aligned) allocated size for the object will be returned.
+	 *
+	 * Note that for some devices we have might have further minimum
+	 * page-size restrictions(larger than 4K), like for device local-memory.
+	 * However in general the final size here should always reflect any
+	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
+	 * extension to place the object in device local-memory.
+	 */
+	__u64 size;
+	/**
+	 * @handle: Returned handle for the object.
+	 *
+	 * Object handles are nonzero.
+	 */
+	__u32 handle;
+	/** @flags: MBZ */
+	__u32 flags;
+	/**
+	 * @extensions: The chain of extensions to apply to this object.
+	 *
+	 * This will be useful in the future when we need to support several
+	 * different extensions, and we need to apply more than one when
+	 * creating the object. See struct i915_user_extension.
+	 *
+	 * If we don't supply any extensions then we get the same old gem_create
+	 * behaviour.
+	 *
+	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
+	 * struct drm_i915_gem_create_ext_memory_regions.
+	 */
+#define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
+	__u64 extensions;
+};
+
+/**
+ * struct drm_i915_gem_create_ext_memory_regions - The
+ * I915_GEM_CREATE_EXT_MEMORY_REGIONS extension.
+ *
+ * Set the object with the desired set of placements/regions in priority
+ * order. Each entry must be unique and supported by the device.
+ *
+ * This is provided as an array of struct drm_i915_gem_memory_class_instance, or
+ * an equivalent layout of class:instance pair encodings. See struct
+ * drm_i915_query_memory_regions and DRM_I915_QUERY_MEMORY_REGIONS for how to
+ * query the supported regions for a device.
+ *
+ * As an example, on discrete devices, if we wish to set the placement as
+ * device local-memory we can do something like:
+ *
+ * .. code-block:: C
+ *
+ *	struct drm_i915_gem_memory_class_instance region_lmem = {
+ *              .memory_class = I915_MEMORY_CLASS_DEVICE,
+ *              .memory_instance = 0,
+ *      };
+ *      struct drm_i915_gem_create_ext_memory_regions regions = {
+ *              .base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
+ *              .regions = (uintptr_t)&region_lmem,
+ *              .num_regions = 1,
+ *      };
+ *      struct drm_i915_gem_create_ext create_ext = {
+ *              .size = 16 * PAGE_SIZE,
+ *              .extensions = (uintptr_t)&regions,
+ *      };
+ *
+ *      int err = ioctl(fd, DRM_IOCTL_I915_GEM_CREATE_EXT, &create_ext);
+ *      if (err) ...
+ *
+ * At which point we get the object handle in &drm_i915_gem_create_ext.handle,
+ * along with the final object size in &drm_i915_gem_create_ext.size, which
+ * should account for any rounding up, if required.
+ */
+struct drm_i915_gem_create_ext_memory_regions {
+	/** @base: Extension link. See struct i915_user_extension. */
+	struct i915_user_extension base;
+
+	/** @pad: MBZ */
+	__u32 pad;
+	/** @num_regions: Number of elements in the @regions array. */
+	__u32 num_regions;
+	/**
+	 * @regions: The regions/placements array.
+	 *
+	 * An array of struct drm_i915_gem_memory_class_instance.
+	 */
+	__u64 regions;
+};
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

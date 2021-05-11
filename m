Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED3037AC6F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B0B6EA8B;
	Tue, 11 May 2021 16:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01C66EA84;
 Tue, 11 May 2021 16:51:48 +0000 (UTC)
IronPort-SDR: iTh+10Ml/UNDvwqf+fGojyudBkMnNpIWuIoMJh+1jYQkAOXS84kiH8bk/t5utpKW9dI3Si9u+u
 Wv2dkTJ+vQGg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199544252"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="199544252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:48 -0700
IronPort-SDR: tt1l3qQXO0vruLXw8w6D4Ghutx0K1rhLNLtelml8qTAdE2Ofo4iHUoRZIOlE/lkQRxFdjiB+dG
 px1Zn3t7xMnw==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="537104825"
Received: from rdavies-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.2.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:51:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 11 May 2021 17:51:13 +0100
Message-Id: <20210511165117.428062-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511165117.428062-1-matthew.auld@intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 08/12] Synchronize memory region uapi and
 tests with i915_drm.h
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
Cc: thomas.hellstrom@linux.intel.com,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 intel-gfx@lists.freedesktop.org, Andrzej Turko <andrzej.turko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andrzej Turko <andrzej.turko@linux.intel.com>

Erase definitions from intel_memory_region.h and change the procedures
to operate on objects defined in i915_drm.h instead. Those objects
were defined in intel_memory_region.h in order to upstream memory region
stubs before the original definitions from i915_drm.h.

Modify tests using the memory region uapi in order to adapt them to the
changes in lib/i915/intel_memory_region.* files.

Signed-off-by: Andrzej Turko <andrzej.turko@linux.intel.com>
Cc: Zbigniew Kempczynski <zbigniew.kempczynski@intel.com>
Cc: Dominik Grzegorzek <dominik.grzegorzek@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 lib/i915/gem_create.c          |   4 +-
 lib/i915/gem_create.h          | 106 -------------------------
 lib/i915/intel_memory_region.c |  34 ++++----
 lib/i915/intel_memory_region.h | 138 ++++-----------------------------
 tests/i915/gem_exec_basic.c    |   2 +-
 tests/i915/gem_gpgpu_fill.c    |   2 +-
 tests/i915/gem_media_fill.c    |   2 +-
 7 files changed, 37 insertions(+), 251 deletions(-)

diff --git a/lib/i915/gem_create.c b/lib/i915/gem_create.c
index 530877cc..b2e8d559 100644
--- a/lib/i915/gem_create.c
+++ b/lib/i915/gem_create.c
@@ -51,13 +51,13 @@ uint32_t gem_create(int fd, uint64_t size)
 int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
 		     struct i915_user_extension *ext)
 {
-	struct local_drm_i915_gem_create_ext create = {
+	struct drm_i915_gem_create_ext create = {
 		.size = *size,
 		.extensions = to_user_pointer(ext),
 	};
 	int err = 0;
 
-	if (igt_ioctl(fd, LOCAL_DRM_IOCTL_I915_GEM_CREATE_EXT, &create) == 0) {
+	if (igt_ioctl(fd, DRM_IOCTL_I915_GEM_CREATE_EXT, &create) == 0) {
 		*handle = create.handle;
 		*size = create.size;
 	} else {
diff --git a/lib/i915/gem_create.h b/lib/i915/gem_create.h
index 5a07c1c8..c2b531b4 100644
--- a/lib/i915/gem_create.h
+++ b/lib/i915/gem_create.h
@@ -10,112 +10,6 @@
 
 #include "i915_drm.h"
 
-/**
- * struct drm_i915_gem_create_ext - Existing gem_create behaviour, with added
- * extension support using struct i915_user_extension.
- *
- * Note that in the future we want to have our buffer flags here, at least for
- * the stuff that is immutable. Previously we would have two ioctls, one to
- * create the object with gem_create, and another to apply various parameters,
- * however this creates some ambiguity for the params which are considered
- * immutable. Also in general we're phasing out the various SET/GET ioctls.
- */
-struct local_drm_i915_gem_create_ext {
-	/**
-	 * @size: Requested size for the object.
-	 *
-	 * The (page-aligned) allocated size for the object will be returned.
-	 *
-	 * Note that for some devices we have might have further minimum
-	 * page-size restrictions(larger than 4K), like for device local-memory.
-	 * However in general the final size here should always reflect any
-	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
-	 * extension to place the object in device local-memory.
-	 */
-	__u64 size;
-	/**
-	 * @handle: Returned handle for the object.
-	 *
-	 * Object handles are nonzero.
-	 */
-	__u32 handle;
-	/** @flags: MBZ */
-	__u32 flags;
-	/**
-	 * @extensions: The chain of extensions to apply to this object.
-	 *
-	 * This will be useful in the future when we need to support several
-	 * different extensions, and we need to apply more than one when
-	 * creating the object. See struct i915_user_extension.
-	 *
-	 * If we don't supply any extensions then we get the same old gem_create
-	 * behaviour.
-	 *
-	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
-	 * struct drm_i915_gem_create_ext_memory_regions.
-	 */
-#define LOCAL_I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
-	__u64 extensions;
-};
-
-/**
- * struct drm_i915_gem_create_ext_memory_regions - The
- * I915_GEM_CREATE_EXT_MEMORY_REGIONS extension.
- *
- * Set the object with the desired set of placements/regions in priority
- * order. Each entry must be unique and supported by the device.
- *
- * This is provided as an array of struct drm_i915_gem_memory_class_instance, or
- * an equivalent layout of class:instance pair encodings. See struct
- * drm_i915_query_memory_regions and DRM_I915_QUERY_MEMORY_REGIONS for how to
- * query the supported regions for a device.
- *
- * As an example, on discrete devices, if we wish to set the placement as
- * device local-memory we can do something like:
- *
- * .. code-block:: C
- *
- *	struct drm_i915_gem_memory_class_instance region_lmem = {
- *              .memory_class = I915_MEMORY_CLASS_DEVICE,
- *              .memory_instance = 0,
- *      };
- *      struct drm_i915_gem_create_ext_memory_regions regions = {
- *              .base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
- *              .regions = (uintptr_t)&region_lmem,
- *              .num_regions = 1,
- *      };
- *      struct drm_i915_gem_create_ext create_ext = {
- *              .size = 16 * PAGE_SIZE,
- *              .extensions = (uintptr_t)&regions,
- *      };
- *
- *      int err = ioctl(fd, DRM_IOCTL_I915_GEM_CREATE_EXT, &create_ext);
- *      if (err) ...
- *
- * At which point we get the object handle in &drm_i915_gem_create_ext.handle,
- * along with the final object size in &drm_i915_gem_create_ext.size, which
- * should account for any rounding up, if required.
- */
-struct local_drm_i915_gem_create_ext_memory_regions {
-	/** @base: Extension link. See struct i915_user_extension. */
-	struct i915_user_extension base;
-
-	/** @pad: MBZ */
-	__u32 pad;
-	/** @num_regions: Number of elements in the @regions array. */
-	__u32 num_regions;
-	/**
-	 * @regions: The regions/placements array.
-	 *
-	 * An array of struct drm_i915_gem_memory_class_instance.
-	 */
-	__u64 regions;
-};
-
-#define LOCAL_DRM_I915_GEM_CREATE_EXT 0x3c
-#define LOCAL_DRM_IOCTL_I915_GEM_CREATE_EXT	DRM_IOWR(DRM_COMMAND_BASE + LOCAL_DRM_I915_GEM_CREATE_EXT, \
-						struct local_drm_i915_gem_create_ext)
-
 int __gem_create(int fd, uint64_t *size, uint32_t *handle);
 uint32_t gem_create(int fd, uint64_t size);
 int __gem_create_ext(int fd, uint64_t *size, uint32_t *handle,
diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index 5452dd8e..412367e4 100644
--- a/lib/i915/intel_memory_region.c
+++ b/lib/i915/intel_memory_region.c
@@ -49,7 +49,7 @@ const char *get_memory_region_name(uint32_t region)
 {
 	uint16_t class = MEMORY_TYPE_FROM_REGION(region);
 
-	if (class == LOCAL_I915_MEMORY_CLASS_SYSTEM)
+	if (class == I915_MEMORY_CLASS_SYSTEM)
 		return "smem";
 
 	igt_assert_f(false, "Unknown memory region");
@@ -116,15 +116,15 @@ static uint64_t __get_available_smem(int fd)
  *
  * Returns: Filled struct with available memory regions.
  */
-struct local_drm_i915_query_memory_regions *gem_get_query_memory_regions(int fd)
+struct drm_i915_query_memory_regions *gem_get_query_memory_regions(int fd)
 {
-	struct local_drm_i915_query_memory_regions *query_info;
+	struct drm_i915_query_memory_regions *query_info;
 
-	query_info = calloc(1, sizeof(struct local_drm_i915_query_memory_regions)
-			    + sizeof(struct local_drm_i915_memory_region_info));
+	query_info = calloc(1, sizeof(struct drm_i915_query_memory_regions)
+			    + sizeof(struct drm_i915_memory_region_info));
 
 	query_info->num_regions = 1;
-	query_info->regions[0].region.memory_class = LOCAL_I915_MEMORY_CLASS_SYSTEM;
+	query_info->regions[0].region.memory_class = I915_MEMORY_CLASS_SYSTEM;
 	query_info->regions[0].probed_size = intel_get_total_ram_mb() << 20;
 	query_info->regions[0].unallocated_size = __get_available_smem(fd);
 
@@ -134,7 +134,7 @@ struct local_drm_i915_query_memory_regions *gem_get_query_memory_regions(int fd)
 /* A version of gem_create_in_memory_region_list which can be allowed to
    fail so that the object creation can be retried */
 int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t size,
-				       struct local_drm_i915_gem_memory_class_instance *mem_regions,
+				       struct drm_i915_gem_memory_class_instance *mem_regions,
 				       int num_regions)
 {
 	/* a temporary solution, to be removed when these arguments will be used */
@@ -151,7 +151,7 @@ int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t size,
  * @num_regions: @mem_regions length
  */
 uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
-					  struct local_drm_i915_gem_memory_class_instance *mem_regions,
+					  struct drm_i915_gem_memory_class_instance *mem_regions,
 					  int num_regions)
 {
 	uint32_t handle;
@@ -161,7 +161,7 @@ uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
 	return handle;
 }
 
-static bool __region_belongs_to_regions_type(struct local_drm_i915_gem_memory_class_instance region,
+static bool __region_belongs_to_regions_type(struct drm_i915_gem_memory_class_instance region,
 					     uint32_t *mem_regions_type,
 					     int num_regions)
 {
@@ -172,11 +172,11 @@ static bool __region_belongs_to_regions_type(struct local_drm_i915_gem_memory_cl
 }
 
 struct igt_collection *
-__get_memory_region_set(struct local_drm_i915_query_memory_regions *regions,
+__get_memory_region_set(struct drm_i915_query_memory_regions *regions,
 			uint32_t *mem_regions_type,
 			int num_regions)
 {
-	struct local_drm_i915_gem_memory_class_instance region;
+	struct drm_i915_gem_memory_class_instance region;
 	struct igt_collection *set;
 	int count = 0, pos = 0;
 
@@ -252,7 +252,7 @@ char *memregion_dynamic_subtest_name(struct igt_collection *set)
  *
  * Outputs memory regions and their sizes.
  */
-void intel_dump_gpu_meminfo(struct local_drm_i915_query_memory_regions *info)
+void intel_dump_gpu_meminfo(struct drm_i915_query_memory_regions *info)
 {
 	int i;
 
@@ -279,7 +279,7 @@ void intel_dump_gpu_meminfo(struct local_drm_i915_query_memory_regions *info)
  *
  * Returns: number of regions for type @memory_class
  */
-uint32_t gpu_meminfo_region_count(struct local_drm_i915_query_memory_regions *info,
+uint32_t gpu_meminfo_region_count(struct drm_i915_query_memory_regions *info,
 				  uint16_t memory_class)
 {
 	uint32_t num = 0;
@@ -302,7 +302,7 @@ uint32_t gpu_meminfo_region_count(struct local_drm_i915_query_memory_regions *in
  * Returns: total size of all regions which are type @memory_class, -1 when the
  * size of at least one region is unknown
  */
-uint64_t gpu_meminfo_region_total_size(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_total_size(struct drm_i915_query_memory_regions *info,
 				       uint16_t memory_class)
 {
 	uint64_t total = 0;
@@ -329,7 +329,7 @@ uint64_t gpu_meminfo_region_total_size(struct local_drm_i915_query_memory_region
  * Returns: available size of all regions which are type @memory_class, -1 when
  * the size of at least one region cannot be estimated
  */
-uint64_t gpu_meminfo_region_total_available(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_total_available(struct drm_i915_query_memory_regions *info,
 					    uint16_t memory_class)
 {
 	uint64_t avail = 0;
@@ -357,7 +357,7 @@ uint64_t gpu_meminfo_region_total_available(struct local_drm_i915_query_memory_r
  * Returns: available size of @memory_instance which type is @memory_class, -1
  * when the size is unknown
  */
-uint64_t gpu_meminfo_region_size(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_size(struct drm_i915_query_memory_regions *info,
 				 uint16_t memory_class,
 				 uint16_t memory_instance)
 {
@@ -382,7 +382,7 @@ uint64_t gpu_meminfo_region_size(struct local_drm_i915_query_memory_regions *inf
  * Returns: available size of @memory_instance region which type is
  * @memory_class, -1 when the size cannot be estimated
  */
-uint64_t gpu_meminfo_region_available(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_available(struct drm_i915_query_memory_regions *info,
 				      uint16_t memory_class,
 				      uint16_t memory_instance)
 {
diff --git a/lib/i915/intel_memory_region.h b/lib/i915/intel_memory_region.h
index b8ea22b5..0ddc9f98 100644
--- a/lib/i915/intel_memory_region.h
+++ b/lib/i915/intel_memory_region.h
@@ -25,7 +25,7 @@
 #ifndef INTEL_MEMORY_REGION_H
 #define INTEL_MEMORY_REGION_H
 
-#define I915_SYSTEM_MEMORY LOCAL_I915_MEMORY_CLASS_SYSTEM
+#define I915_SYSTEM_MEMORY I915_MEMORY_CLASS_SYSTEM
 
 #define INTEL_MEMORY_REGION_ID(type, instance) ((type) << 16u | (instance))
 #define MEMORY_TYPE_FROM_REGION(r) ((r) >> 16u)
@@ -35,130 +35,22 @@
 	(MEMORY_TYPE_FROM_REGION(region) == type)
 
 #define IS_SYSTEM_MEMORY_REGION(region) \
-	IS_MEMORY_REGION_TYPE(region, LOCAL_I915_MEMORY_CLASS_SYSTEM)
+	IS_MEMORY_REGION_TYPE(region, I915_MEMORY_CLASS_SYSTEM)
 
-#define REGION_SMEM    INTEL_MEMORY_REGION_ID(LOCAL_I915_MEMORY_CLASS_SYSTEM, 0)
-
-/**
- * enum drm_i915_gem_memory_class - Supported memory classes
- */
-enum local_drm_i915_gem_memory_class {
-	/** @I915_MEMORY_CLASS_SYSTEM: System memory */
-	LOCAL_I915_MEMORY_CLASS_SYSTEM = 0,
-	/** @I915_MEMORY_CLASS_DEVICE: Device local-memory */
-	LOCAL_I915_MEMORY_CLASS_DEVICE,
-};
-
-/**
- * struct drm_i915_gem_memory_class_instance - Identify particular memory region
- */
-struct local_drm_i915_gem_memory_class_instance {
-	/** @memory_class: See enum drm_i915_gem_memory_class */
-	__u16 memory_class;
-
-	/** @memory_instance: Which instance */
-	__u16 memory_instance;
-};
-
-/**
- * struct drm_i915_memory_region_info - Describes one region as known to the
- * driver.
- *
- * Note that we reserve some stuff here for potential future work. As an example
- * we might want expose the capabilities(see @caps) for a given region, which
- * could include things like if the region is CPU mappable/accessible, what are
- * the supported mapping types etc.
- *
- * Note this is using both struct drm_i915_query_item and struct drm_i915_query.
- * For this new query we are adding the new query id DRM_I915_QUERY_MEMORY_REGIONS
- * at &drm_i915_query_item.query_id.
- */
-struct local_drm_i915_memory_region_info {
-	/** @region: The class:instance pair encoding */
-	struct local_drm_i915_gem_memory_class_instance region;
-
-	/** @pad: MBZ */
-	__u32 pad;
-
-	/** @caps: MBZ */
-	__u64 caps;
-
-	/** @probed_size: Memory probed by the driver (-1 = unknown) */
-	__u64 probed_size;
-
-	/** @unallocated_size: Estimate of memory remaining (-1 = unknown) */
-	__u64 unallocated_size;
-};
-
-/**
- * struct drm_i915_query_memory_regions
- *
- * The region info query enumerates all regions known to the driver by filling
- * in an array of struct drm_i915_memory_region_info structures.
- *
- * Example for getting the list of supported regions:
- *
- * .. code-block:: C
- *
- *	struct drm_i915_query_memory_regions *info;
- *	struct drm_i915_query_item item = {
- *		.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
- *	};
- *	struct drm_i915_query query = {
- *		.num_items = 1,
- *		.items_ptr = (uintptr_t)&item,
- *	};
- *	int err, i;
- *
- *	// First query the size of the blob we need, this needs to be large
- *	// enough to hold our array of regions. The kernel will fill out the
- *	// item.length for us, which is the number of bytes we need.
- *	err = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);
- *	if (err) ...
- *
- *	info = calloc(1, item.length);
- *	// Now that we allocated the required number of bytes, we call the ioctl
- *	// again, this time with the data_ptr pointing to our newly allocated
- *	// blob, which the kernel can then populate with the all the region info.
- *	item.data_ptr = (uintptr_t)&info,
- *
- *	err = ioctl(fd, DRM_IOCTL_I915_QUERY, &query);
- *	if (err) ...
- *
- *	// We can now access each region in the array
- *	for (i = 0; i < info->num_regions; i++) {
- *		struct drm_i915_memory_region_info mr = info->regions[i];
- *		u16 class = mr.region.class;
- *		u16 instance = mr.region.instance;
- *
- *		....
- *	}
- *
- *	free(info);
- */
-struct local_drm_i915_query_memory_regions {
-	/** @num_regions: Number of supported regions */
-	__u32 num_regions;
-
-	/** @pad: MBZ */
-	__u32 pad;
-
-	/** @regions: Info about each supported region */
-	struct local_drm_i915_memory_region_info regions[];
-};
+#define REGION_SMEM    INTEL_MEMORY_REGION_ID(I915_MEMORY_CLASS_SYSTEM, 0)
 
 const char *get_memory_region_name(uint32_t region);
 uint32_t gem_get_batch_size(int fd, uint8_t mem_region_type);
 
-struct local_drm_i915_query_memory_regions *gem_get_query_memory_regions(int fd);
+struct drm_i915_query_memory_regions *gem_get_query_memory_regions(int fd);
 
 
 int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t size,
-				       struct local_drm_i915_gem_memory_class_instance *mem_regions,
+				       struct drm_i915_gem_memory_class_instance *mem_regions,
 				       int num_regions);
 
 uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
-					  struct local_drm_i915_gem_memory_class_instance *mem_regions,
+					  struct drm_i915_gem_memory_class_instance *mem_regions,
 					  int num_regions);
 
 /*
@@ -168,7 +60,7 @@ uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
  */
 #define __gem_create_in_memory_regions(fd, handle, size, regions...) ({ \
 	unsigned int arr__[] = { regions }; \
-	struct local_drm_i915_gem_memory_class_instance arr_query__[ARRAY_SIZE(arr__)]; \
+	struct drm_i915_gem_memory_class_instance arr_query__[ARRAY_SIZE(arr__)]; \
 	for (int i__  = 0; i__ < ARRAY_SIZE(arr_query__); ++i__) { \
 		arr_query__[i__].memory_class = MEMORY_TYPE_FROM_REGION(arr__[i__]);  \
 		arr_query__[i__].memory_instance = MEMORY_INSTANCE_FROM_REGION(arr__[i__]);  \
@@ -177,7 +69,7 @@ uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
 })
 #define gem_create_in_memory_regions(fd, size, regions...) ({ \
 	unsigned int arr__[] = { regions }; \
-	struct local_drm_i915_gem_memory_class_instance arr_query__[ARRAY_SIZE(arr__)]; \
+	struct drm_i915_gem_memory_class_instance arr_query__[ARRAY_SIZE(arr__)]; \
 	for (int i__  = 0; i__ < ARRAY_SIZE(arr_query__); ++i__) { \
 		arr_query__[i__].memory_class = MEMORY_TYPE_FROM_REGION(arr__[i__]);  \
 		arr_query__[i__].memory_instance = MEMORY_INSTANCE_FROM_REGION(arr__[i__]);  \
@@ -186,7 +78,7 @@ uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
 })
 
 struct igt_collection *
-__get_memory_region_set(struct local_drm_i915_query_memory_regions *regions,
+__get_memory_region_set(struct drm_i915_query_memory_regions *regions,
 			uint32_t *mem_regions_type,
 			int num_regions);
 
@@ -201,19 +93,19 @@ __get_memory_region_set(struct local_drm_i915_query_memory_regions *regions,
 
 char *memregion_dynamic_subtest_name(struct igt_collection *set);
 
-void intel_dump_gpu_meminfo(struct local_drm_i915_query_memory_regions *info);
+void intel_dump_gpu_meminfo(struct drm_i915_query_memory_regions *info);
 
-uint32_t gpu_meminfo_region_count(struct local_drm_i915_query_memory_regions *info,
+uint32_t gpu_meminfo_region_count(struct drm_i915_query_memory_regions *info,
 				  uint16_t region_class);
-uint64_t gpu_meminfo_region_total_size(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_total_size(struct drm_i915_query_memory_regions *info,
 				       uint16_t region_class);
-uint64_t gpu_meminfo_region_total_available(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_total_available(struct drm_i915_query_memory_regions *info,
 					    uint16_t region_type);
 
-uint64_t gpu_meminfo_region_size(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_size(struct drm_i915_query_memory_regions *info,
 				 uint16_t memory_class,
 				 uint16_t memory_instance);
-uint64_t gpu_meminfo_region_available(struct local_drm_i915_query_memory_regions *info,
+uint64_t gpu_meminfo_region_available(struct drm_i915_query_memory_regions *info,
 				      uint16_t memory_class,
 				      uint16_t memory_instance);
 
diff --git a/tests/i915/gem_exec_basic.c b/tests/i915/gem_exec_basic.c
index d1569781..8bc4dc52 100644
--- a/tests/i915/gem_exec_basic.c
+++ b/tests/i915/gem_exec_basic.c
@@ -42,7 +42,7 @@ static uint32_t batch_create(int fd, uint32_t batch_size, uint32_t region)
 igt_main
 {
 	const struct intel_execution_engine2 *e;
-	struct local_drm_i915_query_memory_regions *query_info;
+	struct drm_i915_query_memory_regions *query_info;
 	struct igt_collection *regions, *set;
 	uint32_t batch_size;
 	int fd = -1;
diff --git a/tests/i915/gem_gpgpu_fill.c b/tests/i915/gem_gpgpu_fill.c
index a6da3bce..1fcd42e2 100644
--- a/tests/i915/gem_gpgpu_fill.c
+++ b/tests/i915/gem_gpgpu_fill.c
@@ -133,7 +133,7 @@ igt_main
 {
 	data_t data = {0, };
 	igt_fillfunc_t fill_fn = NULL;
-	struct local_drm_i915_query_memory_regions *region_info;
+	struct drm_i915_query_memory_regions *region_info;
 	struct igt_collection *region_set;
 
 	igt_fixture {
diff --git a/tests/i915/gem_media_fill.c b/tests/i915/gem_media_fill.c
index bbd2110f..28c18e79 100644
--- a/tests/i915/gem_media_fill.c
+++ b/tests/i915/gem_media_fill.c
@@ -136,7 +136,7 @@ igt_main
 {
 	data_t data = {0, };
 	igt_fillfunc_t fill_fn = NULL;
-	struct local_drm_i915_query_memory_regions *query_info;
+	struct drm_i915_query_memory_regions *query_info;
 	struct igt_collection *set, *region_set;
 
 	igt_fixture {
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

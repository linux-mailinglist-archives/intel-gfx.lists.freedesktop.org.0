Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B187B4BDA24
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D082610E673;
	Mon, 21 Feb 2022 14:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3881810E344;
 Mon, 21 Feb 2022 14:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645453004; x=1676989004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Su0uNhfUgunf+Un+BfUA8TY3aGm8dX1AnYFbMmLyLv4=;
 b=ngBExQP0lXWUveZXykzx0o/KEzmmk+cfQf9kUHPIxYxMPOfTzuzI0LdL
 OYTqlIZb41zX3qUk2q/s6FVOeNJp5j3W3tz3dfOW/biGOweEBjGZ+hhcS
 3rjqojwKXTsiu6BMncwOYzWpWLh1tuy7RKd3vytvogm1v0+1rIxiH6fBQ
 q9mcOdWeUWrGAesrEYeWpLijsBIFX/yTBwRbo/0E7GpH4RyWW7RJdKNVC
 juUaaXJN6jQj8BWH4XWXjbloNKNPXODzFgprx7/92KJnkFbBv0sHScqM7
 INDmWtAVDlUyghyGI78pnDJjsDE6vWitBPkmE0d7Yt0iMDezNJDBwF4ER A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="251467154"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="251467154"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="606400536"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:40 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:16:18 +0000
Message-Id: <20220221141620.2490914-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221141620.2490914-1-matthew.auld@intel.com>
References: <20220221141620.2490914-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 4/6] lib/i915: add
 gem_create_with_cpu_access_in_memory_regions
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Most users shouldn't care about such an interface, but where required,
this should be useful to aid in setting NEEDS_CPU_ACCESS for a given BO.
Underneath we try to smooth over needing to provide an explicit SMEM
region, or if this is SMEM-only, we don't want the kernel to throw an
error.

Put it to use in gem_exec_capture, where a proper hint is now required
by the kernel on DG2+, for objects marked with EXEC_OBJECT_CAPTURE, that
can also be placed in LMEM.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 lib/i915/intel_memory_region.c | 10 +++++---
 lib/i915/intel_memory_region.h | 46 +++++++++++++++++++++++++++++++---
 tests/i915/gem_exec_capture.c  |  6 ++---
 tests/i915/gem_lmem_swapping.c |  2 +-
 4 files changed, 52 insertions(+), 12 deletions(-)

diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index f0c8bc7c..4893c5ba 100644
--- a/lib/i915/intel_memory_region.c
+++ b/lib/i915/intel_memory_region.c
@@ -197,7 +197,7 @@ bool gem_has_lmem(int fd)
 
 /* A version of gem_create_in_memory_region_list which can be allowed to
    fail so that the object creation can be retried */
-int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t *size,
+int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t *size, uint32_t flags,
 				       struct drm_i915_gem_memory_class_instance *mem_regions,
 				       int num_regions)
 {
@@ -208,7 +208,9 @@ int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t *size,
 	};
 	int ret;
 
-	ret = __gem_create_ext(fd, size, 0, handle, &ext_regions.base);
+	ret = __gem_create_ext(fd, size, flags, handle, &ext_regions.base);
+	if (flags && ret == -EINVAL)
+		ret = __gem_create_ext(fd, size, 0, handle, &ext_regions.base);
 
 	/*
 	 * Provide fallback for stable kernels if region passed in the array
@@ -231,12 +233,12 @@ int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t *size,
  * @mem_regions: memory regions array (priority list)
  * @num_regions: @mem_regions length
  */
-uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
+uint32_t gem_create_in_memory_region_list(int fd, uint64_t size, uint32_t flags,
 					  struct drm_i915_gem_memory_class_instance *mem_regions,
 					  int num_regions)
 {
 	uint32_t handle;
-	int ret = __gem_create_in_memory_region_list(fd, &handle, &size,
+	int ret = __gem_create_in_memory_region_list(fd, &handle, &size, flags,
 						     mem_regions, num_regions);
 	igt_assert_eq(ret, 0);
 	return handle;
diff --git a/lib/i915/intel_memory_region.h b/lib/i915/intel_memory_region.h
index 936e7d1c..7cc119ec 100644
--- a/lib/i915/intel_memory_region.h
+++ b/lib/i915/intel_memory_region.h
@@ -21,6 +21,7 @@
  * IN THE SOFTWARE.
  */
 #include "igt_collection.h"
+#include "i915_drm_local.h"
 
 #ifndef INTEL_MEMORY_REGION_H
 #define INTEL_MEMORY_REGION_H
@@ -64,11 +65,11 @@ bool gem_has_lmem(int fd);
 
 struct drm_i915_gem_memory_class_instance;
 
-int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t *size,
+int __gem_create_in_memory_region_list(int fd, uint32_t *handle, uint64_t *size, uint32_t flags,
 				       struct drm_i915_gem_memory_class_instance *mem_regions,
 				       int num_regions);
 
-uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
+uint32_t gem_create_in_memory_region_list(int fd, uint64_t size, uint32_t flags,
 					  struct drm_i915_gem_memory_class_instance *mem_regions,
 					  int num_regions);
 
@@ -84,7 +85,7 @@ uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
 		arr_query__[i__].memory_class = MEMORY_TYPE_FROM_REGION(arr__[i__]);  \
 		arr_query__[i__].memory_instance = MEMORY_INSTANCE_FROM_REGION(arr__[i__]);  \
 	} \
-	__gem_create_in_memory_region_list(fd, handle, size, arr_query__, ARRAY_SIZE(arr_query__)); \
+	__gem_create_in_memory_region_list(fd, handle, size, 0, arr_query__, ARRAY_SIZE(arr_query__)); \
 })
 #define gem_create_in_memory_regions(fd, size, regions...) ({ \
 	unsigned int arr__[] = { regions }; \
@@ -93,7 +94,44 @@ uint32_t gem_create_in_memory_region_list(int fd, uint64_t size,
 		arr_query__[i__].memory_class = MEMORY_TYPE_FROM_REGION(arr__[i__]);  \
 		arr_query__[i__].memory_instance = MEMORY_INSTANCE_FROM_REGION(arr__[i__]);  \
 	} \
-	gem_create_in_memory_region_list(fd, size, arr_query__, ARRAY_SIZE(arr_query__)); \
+	gem_create_in_memory_region_list(fd, size, 0, arr_query__, ARRAY_SIZE(arr_query__)); \
+})
+
+/*
+ * Create an object that requires CPU access. This only becomes interesting on
+ * platforms that have a small BAR for LMEM CPU access. Without this the object
+ * might need to be migrated when CPU faulting the object, or if that is not
+ * possible we hit SIGBUS. Most users should be fine with this. If enabled the
+ * kernel will never allocate this object in the non-CPU visible portion of
+ * LMEM.
+ *
+ * Underneath this just enables the I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS
+ * flag, if we also have an LMEM placement. Also since the kernel requires SMEM
+ * as a potential placement, we automatically attach that as a possible
+ * placement, if not already provided. If this happens to be an SMEM-only
+ * placement then we don't supply the flag, and instead just treat as normal
+ * allocation.
+ */
+#define gem_create_with_cpu_access_in_memory_regions(fd, size, regions...) ({ \
+	unsigned int arr__[] = { regions }; \
+	struct drm_i915_gem_memory_class_instance arr_query__[ARRAY_SIZE(arr__) + 1]; \
+	int i__, arr_query_size__ = ARRAY_SIZE(arr__); \
+	uint32_t ext_flags__ = 0; \
+	bool ext_found_smem__ = false; \
+	for (i__  = 0; i__ < arr_query_size__; ++i__) { \
+		arr_query__[i__].memory_class = MEMORY_TYPE_FROM_REGION(arr__[i__]);  \
+		if (arr_query__[i__].memory_class == I915_MEMORY_CLASS_DEVICE) \
+			ext_flags__ = I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS; \
+		else \
+			ext_found_smem__ = true; \
+		arr_query__[i__].memory_instance = MEMORY_INSTANCE_FROM_REGION(arr__[i__]);  \
+	} \
+	if (ext_flags__ && !ext_found_smem__) { \
+		arr_query__[i__].memory_class = I915_MEMORY_CLASS_SYSTEM; \
+		arr_query__[i__].memory_instance = 0; \
+		arr_query_size__++; \
+	} \
+	gem_create_in_memory_region_list(fd, size, ext_flags__, arr_query__, arr_query_size__); \
 })
 
 struct igt_collection *
diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 60f8df04..24ba6036 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -268,7 +268,7 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	saved_engine = configure_hangs(fd, e, ctx->id);
 
 	memset(obj, 0, sizeof(obj));
-	obj[SCRATCH].handle = gem_create_in_memory_regions(fd, 4096, region);
+	obj[SCRATCH].handle = gem_create_with_cpu_access_in_memory_regions(fd, 4096, region);
 	obj[SCRATCH].flags = EXEC_OBJECT_WRITE;
 	obj[CAPTURE].handle = target;
 	obj[CAPTURE].flags = EXEC_OBJECT_CAPTURE;
@@ -387,9 +387,9 @@ static void capture(int fd, int dir, const intel_ctx_t *ctx,
 		    const struct intel_execution_engine2 *e, uint32_t region)
 {
 	uint32_t handle;
-	uint64_t ahnd, obj_size = 4096;
+	uint64_t ahnd, obj_size = 16 * 4096;
 
-	igt_assert_eq(__gem_create_in_memory_regions(fd, &handle, &obj_size, region), 0);
+	handle = gem_create_with_cpu_access_in_memory_regions(fd, obj_size, region);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
 	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size, region);
diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 39f9e1f5..18b66f09 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -80,7 +80,7 @@ static uint32_t create_bo(int i915,
 	int ret;
 
 retry:
-	ret = __gem_create_in_memory_region_list(i915, &handle, &size, region, 1);
+	ret = __gem_create_in_memory_region_list(i915, &handle, &size, 0, region, 1);
 	if (do_oom_test && ret == -ENOMEM)
 		goto retry;
 	igt_assert_eq(ret, 0);
-- 
2.34.1


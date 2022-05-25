Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3107534327
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF1B10ECAC;
	Wed, 25 May 2022 18:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5970810EC4E;
 Wed, 25 May 2022 18:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653503886; x=1685039886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NfWqiAYQ/pMGx2KuZVdb/fCLVECphQqYgQOKJvQ8Iwg=;
 b=b2Kkdffw8cEdrq5obKf402cAhvbkkHNjaoatJ9l4kZVA2NRSqBNo4HYj
 2LFyJ1CyO4/i4nnjFg1GFd0rbs+Nwq4BQm1ozqq86mH7XjvC1NVOcMYQN
 zKmLA6JNiJO+lcdbDs8N91zL70Knq5ecS/2xH6mlRm0Mr4bEPhgS0YsiT
 GNEcUztYPNDOewbcudJ6OccOgasFkLUuxy44ao6X76iHQR9TzppUJPq1B
 FpKKkuj+/yLUExDrKsaIviR3lsAbTuQ9sckvdCewI54mpa019C9BnMnXA
 rsSO5ifyEU7f7NQqPSLk+tQGo+ZBi2C13cM0LRDembzv3JLh65xqdPpKn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="336954768"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336954768"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="526989508"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:49 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 25 May 2022 19:36:56 +0100
Message-Id: <20220525183702.490989-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220525183702.490989-1-matthew.auld@intel.com>
References: <20220525183702.490989-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/9] tests/i915/gem_create: exercise
 NEEDS_CPU_ACCESS
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

Add some basic tests for this new flag.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 tests/i915/gem_create.c | 309 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 308 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
index f8ae7804..5cfbd611 100644
--- a/tests/i915/gem_create.c
+++ b/tests/i915/gem_create.c
@@ -43,6 +43,8 @@
 #include <getopt.h>
 #include <pthread.h>
 #include <stdatomic.h>
+#include <setjmp.h>
+#include <signal.h>
 
 #include "drm.h"
 #include "drmtest.h"
@@ -317,8 +319,8 @@ static void create_ext_placement_sanity_check(int fd)
 		.memory_class = -1,
 		.memory_instance = -1,
 	};
+	uint32_t handle, create_ext_supported_flags;
 	uint64_t size;
-	uint32_t handle;
 	int i;
 
 	regions = gem_get_query_memory_regions(fd);
@@ -334,6 +336,11 @@ static void create_ext_placement_sanity_check(int fd)
 	gem_close(fd, handle);
 
 	/* Try some uncreative invalid combinations */
+	create_ext_supported_flags =
+		I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS;
+	igt_assert_neq(__gem_create_ext(fd, &size, ~create_ext_supported_flags,
+					&handle, 0), 0);
+
 	setparam_region.regions = to_user_pointer(&region_smem);
 	setparam_region.num_regions = 0;
 	size = PAGE_SIZE;
@@ -480,6 +487,295 @@ static void create_ext_placement_each(int fd)
 	free(regions);
 }
 
+static bool supports_needs_cpu_access(int fd)
+{
+	struct drm_i915_gem_memory_class_instance regions[] = {
+		{ I915_MEMORY_CLASS_DEVICE, },
+		{ I915_MEMORY_CLASS_SYSTEM, },
+	};
+	struct drm_i915_gem_create_ext_memory_regions setparam_region = {
+		.base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
+		.regions = to_user_pointer(&regions),
+		.num_regions = ARRAY_SIZE(regions),
+	};
+	uint64_t size = PAGE_SIZE;
+	uint32_t handle;
+	int ret;
+
+	ret = __gem_create_ext(fd, &size,
+			       I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS,
+			       &handle, &setparam_region.base);
+	if (!ret) {
+		gem_close(fd, handle);
+		igt_assert(gem_has_lmem(fd)); /* Should be dgpu only */
+	}
+
+	return ret == 0;
+}
+
+static uint32_t batch_create_size(int fd, uint64_t size)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(fd, size);
+	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static int upload(int fd, uint32_t handle)
+{
+	struct drm_i915_gem_exec_object2 exec[2] = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&exec),
+		.buffer_count = 2,
+	};
+
+	/*
+	 * To be reasonably sure that we are not being swindled, let's make
+	 * sure to 'touch' the pages from the GPU first to ensure the object is
+	 * for sure placed in one of requested regions.
+	 */
+	exec[0].handle = handle;
+	exec[1].handle = batch_create_size(fd, PAGE_SIZE);
+
+	return __gem_execbuf(fd, &execbuf);
+}
+
+static int alloc_lmem(int fd, uint32_t *handle,
+		      struct drm_i915_gem_memory_class_instance ci,
+		      uint64_t size, bool cpu_access, bool do_upload)
+{
+	struct drm_i915_gem_memory_class_instance regions[] = {
+		ci, { I915_MEMORY_CLASS_SYSTEM, },
+	};
+	struct drm_i915_gem_create_ext_memory_regions setparam_region = {
+		.base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
+		.regions = to_user_pointer(&regions),
+	};
+	uint32_t flags;
+
+	igt_assert_eq(ci.memory_class, I915_MEMORY_CLASS_DEVICE);
+
+	flags = 0;
+	setparam_region.num_regions = 1;
+	if (cpu_access) {
+		flags = I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS,
+		setparam_region.num_regions = 2;
+	}
+
+	*handle = gem_create_ext(fd, size, flags, &setparam_region.base);
+
+	if (do_upload)
+		return upload(fd, *handle);
+
+	return 0;
+}
+
+static void create_ext_cpu_access_sanity_check(int fd)
+{
+	struct drm_i915_gem_create_ext_memory_regions setparam_region = {
+		.base = { .name = I915_GEM_CREATE_EXT_MEMORY_REGIONS },
+	};
+	struct drm_i915_query_memory_regions *regions;
+	uint64_t size = PAGE_SIZE;
+	uint32_t handle;
+	int i;
+
+	/*
+	 * The ABI is that FLAG_NEEDS_CPU_ACCESS can only be applied to LMEM +
+	 * SMEM objects. Make sure the kernel follows that, while also checking
+	 * the basic CPU faulting behavour.
+	 */
+
+	/* Implicit placement; should fail */
+	igt_assert_eq(__gem_create_ext(fd, &size,
+				       I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS,
+				       &handle, NULL), -EINVAL);
+
+	regions = gem_get_query_memory_regions(fd);
+	igt_assert(regions);
+	igt_assert(regions->num_regions);
+
+	for (i = 0; i < regions->num_regions; i++) {
+		struct drm_i915_gem_memory_class_instance ci_regions[2] = {
+			regions->regions[i].region,
+			{ I915_MEMORY_CLASS_SYSTEM, },
+		};
+		uint32_t *ptr;
+
+		setparam_region.regions = to_user_pointer(ci_regions);
+		setparam_region.num_regions = 1;
+
+		/* Single explicit placement; should fail */
+		igt_assert_eq(__gem_create_ext(fd, &size,
+					       I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS,
+					       &handle, &setparam_region.base),
+			      -EINVAL);
+
+		if (ci_regions[0].memory_class == I915_MEMORY_CLASS_SYSTEM)
+			continue;
+
+		/*
+		 * Now combine with system memory; should pass. We should also
+		 * be able to fault it.
+		 */
+		setparam_region.num_regions = 2;
+		igt_assert_eq(__gem_create_ext(fd, &size,
+					       I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS,
+					       &handle, &setparam_region.base),
+			      0);
+		upload(fd, handle);
+		ptr = gem_mmap_offset__fixed(fd, handle, 0, size,
+					     PROT_READ | PROT_WRITE);
+		ptr[0] = 0xdeadbeaf;
+		gem_close(fd, handle);
+
+		/*
+		 * It should also work just fine without the flag, where in the
+		 * worst case we need to migrate it when faulting it.
+		 */
+		igt_assert_eq(__gem_create_ext(fd, &size,
+					       0,
+					       &handle, &setparam_region.base),
+			      0);
+		upload(fd, handle);
+		ptr = gem_mmap_offset__fixed(fd, handle, 0, size,
+					     PROT_READ | PROT_WRITE);
+		ptr[0] = 0xdeadbeaf;
+		gem_close(fd, handle);
+	}
+
+	free(regions);
+}
+
+static jmp_buf jmp;
+
+__noreturn static void sigtrap(int sig)
+{
+	siglongjmp(jmp, sig);
+}
+
+static void trap_sigbus(uint32_t *ptr)
+{
+	sighandler_t old_sigbus;
+
+	old_sigbus = signal(SIGBUS, sigtrap);
+	switch (sigsetjmp(jmp, SIGBUS)) {
+	case SIGBUS:
+		break;
+	case 0:
+		*ptr = 0xdeadbeaf;
+	default:
+		igt_assert(!"reached");
+		break;
+	}
+	signal(SIGBUS, old_sigbus);
+}
+
+/**
+ * XXX: Remove this once we can safely sync the uapi header with the kernel.
+ * Should be source compatible either way though.
+ */
+#define probed_cpu_visible_size rsvd1[0]
+static void create_ext_cpu_access_big(int fd)
+{
+	struct drm_i915_query_memory_regions *regions;
+	int i;
+
+	/*
+	 * Sanity check that we can still CPU map an overly large object, even
+	 * if it happens to be larger the CPU visible portion of LMEM. Also
+	 * check that an overly large allocation, which can't be spilled into
+	 * system memory does indeed fail.
+	 */
+
+	regions = gem_get_query_memory_regions(fd);
+	igt_assert(regions);
+	igt_assert(regions->num_regions);
+
+	for (i = 0; i < regions->num_regions; i++) {
+		struct drm_i915_memory_region_info qmr = regions->regions[i];
+		struct drm_i915_gem_memory_class_instance ci = qmr.region;
+		uint64_t size, visible_size, lmem_size;
+		uint32_t handle;
+		uint32_t *ptr;
+
+		if (ci.memory_class == I915_MEMORY_CLASS_SYSTEM)
+			continue;
+
+		lmem_size = qmr.probed_size;
+		visible_size = qmr.probed_cpu_visible_size;
+		igt_assert_neq(visible_size, 0);
+
+		if (visible_size <= (0.70 * lmem_size)) {
+			/*
+			 * Too big. We should still be able to allocate it just
+			 * fine, but faulting should result in tears.
+			 */
+			size = visible_size;
+			igt_assert_eq(alloc_lmem(fd, &handle, ci, size, false, true), 0);
+			ptr = gem_mmap_offset__fixed(fd, handle, 0, size,
+						     PROT_READ | PROT_WRITE);
+			trap_sigbus(ptr);
+			gem_close(fd, handle);
+
+			/*
+			 * Too big again, but this time we can spill to system
+			 * memory when faulting the object.
+			 */
+			size = visible_size;
+			igt_assert_eq(alloc_lmem(fd, &handle, ci, size, true, true), 0);
+			ptr = gem_mmap_offset__fixed(fd, handle, 0, size,
+						     PROT_READ | PROT_WRITE);
+			ptr[0] = 0xdeadbeaf;
+			gem_close(fd, handle);
+
+			/*
+			 * Let's also move the upload to after faulting the
+			 * pages. The current behaviour is that the pages are
+			 * only allocated in device memory when initially
+			 * touched by the GPU. With this in mind we should also
+			 * make sure that the pages are indeed migrated, as
+			 * expected.
+			 */
+			size = visible_size;
+			igt_assert_eq(alloc_lmem(fd, &handle, ci, size, false, false), 0);
+			ptr = gem_mmap_offset__fixed(fd, handle, 0, size,
+						     PROT_READ | PROT_WRITE);
+			ptr[0] = 0xdeadbeaf; /* temp system memory */
+			igt_assert_eq(upload(fd, handle), 0);
+			trap_sigbus(ptr); /* non-mappable device memory */
+			gem_close(fd, handle);
+		}
+
+		/*
+		 * Should fit. We likely need to migrate to the mappable portion
+		 * on fault though, if this device has a small BAR, given how
+		 * large the initial allocation is.
+		 */
+		size = visible_size >> 1;
+		igt_assert_eq(alloc_lmem(fd, &handle, ci, size, false, true), 0);
+		ptr = gem_mmap_offset__fixed(fd, handle, 0, size,
+					     PROT_READ | PROT_WRITE);
+		ptr[0] = 0xdeadbeaf;
+		gem_close(fd, handle);
+
+		/*
+		 * And then with the CPU_ACCESS flag enabled; should also be no
+		 * surprises here.
+		 */
+		igt_assert_eq(alloc_lmem(fd, &handle, ci, size, true, true), 0);
+		ptr = gem_mmap_offset__fixed(fd, handle, 0, size,
+					     PROT_READ | PROT_WRITE);
+		ptr[0] = 0xdeadbeaf;
+		gem_close(fd, handle);
+	}
+
+	free(regions);
+}
+
 igt_main
 {
 	int fd = -1;
@@ -531,4 +827,15 @@ igt_main
 	igt_subtest("create-ext-placement-all")
 		create_ext_placement_all(fd);
 
+	igt_describe("Verify the basic functionally and expected ABI contract around I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS");
+	igt_subtest("create-ext-cpu-access-sanity-check") {
+		igt_require(supports_needs_cpu_access(fd));
+		create_ext_cpu_access_sanity_check(fd);
+	}
+
+	igt_describe("Verify the extreme cases with very large objects and I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS");
+	igt_subtest("create-ext-cpu-access-big") {
+		igt_require(supports_needs_cpu_access(fd));
+		create_ext_cpu_access_big(fd);
+	}
 }
-- 
2.34.3


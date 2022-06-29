Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F2F560A0A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 21:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAB910EC65;
	Wed, 29 Jun 2022 19:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E4F10EC4B;
 Wed, 29 Jun 2022 19:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656529872; x=1688065872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I9/q0/wN9fLoA5X4ltpLiFzBB05RC2mm4NrLgHfuIUI=;
 b=EtHYIi8Aaud89OZ+NRqecr+cPP7OP/k2jyfF+Z+y4q9m4HhAJrcVcfh8
 z8VLfmctoLEBaubW8fOdVf8pSdSE4UVr7dG1P3SIfq2ZTB2mro9cEaN74
 ffVGfAgyC42vTyHiHpxttmueay/OnGGcwf4zihSIx8V79wxs8y374c2ds
 5s7oXdG4Br0l06vlDWwZUOlwpnYLZGZpOT4Yj9kodxJi+9DBvTZ62p4B0
 9GtQrSu66gaQf6ccmG7kIciZBz9YcbUXenkkvb2rJKoUv2V/ByNLatuWH
 gAW9OieKU/a472PPBkWnWyyosA+zuySTVMlT7vbI/erxVZxHCjO13cH7i Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368439089"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368439089"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:13 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733297115"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:12 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 29 Jun 2022 20:06:52 +0100
Message-Id: <20220629190658.395463-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629190658.395463-1-matthew.auld@intel.com>
References: <20220629190658.395463-1-matthew.auld@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add some basic tests for this new flag.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_create.c | 309 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 308 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
index 7198c6ed..1b694c6a 100644
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
2.36.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9982D8562
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Dec 2020 10:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718096E5A5;
	Sat, 12 Dec 2020 09:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDD86E5A5;
 Sat, 12 Dec 2020 09:44:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23301825-1500050 
 for multiple; Sat, 12 Dec 2020 09:43:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 12 Dec 2020 09:43:54 +0000
Message-Id: <20201212094354.3023502-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to find the correct aperture size for the test, we want to pass
the test's device into the query.

Reported-by: Bruce Chang <yu.bruce.chang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Bruce Chang <yu.bruce.chang@intel.com>
---
 lib/i915/gem_mman.c                | 108 +++++++++++++++++++++++++++
 lib/i915/gem_mman.h                |   6 ++
 lib/ioctl_wrappers.c               | 116 -----------------------------
 lib/ioctl_wrappers.h               |   5 --
 tests/i915/gem_concurrent_all.c    |  12 +--
 tests/i915/gem_mmap.c              |   4 +-
 tests/i915/gem_mmap_gtt.c          |  10 +--
 tests/i915/gem_pwrite.c            |   6 +-
 tests/i915/gem_shrink.c            |   2 +-
 tests/i915/gem_tiled_fence_blits.c |   2 +-
 tests/i915/i915_pm_rpm.c           |   4 +-
 tests/kms_big_fb.c                 |   2 +-
 tests/kms_flip.c                   |   2 +-
 tests/prime_mmap.c                 |   4 +-
 14 files changed, 138 insertions(+), 145 deletions(-)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index 93bef2bfc..703c6a5c1 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -27,7 +27,9 @@
 #include <errno.h>
 
 #include "igt_core.h"
+#include "igt_device.h"
 #include "ioctl_wrappers.h"
+#include "intel_chipset.h"
 
 #include "gem_mman.h"
 
@@ -551,3 +553,109 @@ const struct mmap_offset mmap_offset_types[] = {
 	{ "uc", I915_MMAP_OFFSET_UC, I915_GEM_DOMAIN_WC },
 	{},
 };
+
+/**
+ * gem_available_aperture_size:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the available gpu aperture size
+ * usable in a batchbuffer.
+ *
+ * Returns: The available gtt address space size.
+ */
+uint64_t gem_available_aperture_size(int fd)
+{
+	struct drm_i915_gem_get_aperture aperture = {
+		aperture.aper_available_size = 256*1024*1024,
+	};
+
+	ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
+	errno = 0;
+
+	return aperture.aper_available_size;
+}
+
+/**
+ * gem_aperture_size:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the total gpu aperture size.
+ *
+ * Returns: The total gtt address space size.
+ */
+uint64_t gem_aperture_size(int fd)
+{
+	struct drm_i915_gem_context_param p = {
+		.param = 0x3
+	};
+
+	if (__gem_context_get_param(fd, &p))
+		p.value = gem_global_aperture_size(fd);
+
+	return p.value;
+}
+
+/**
+ * gem_mappable_aperture_size:
+ *
+ * Feature test macro to query the kernel for the mappable gpu aperture size.
+ * This is the area available for GTT memory mappings.
+ *
+ * Returns: The mappable gtt address space size.
+ */
+uint64_t gem_mappable_aperture_size(int fd)
+{
+	struct pci_device *pci_dev = igt_device_get_pci_device(fd);
+	int bar;
+
+	if (intel_gen(pci_dev->device_id) < 3)
+		bar = 0;
+	else
+		bar = 2;
+
+	return pci_dev->regions[bar].size;
+}
+
+/**
+ * gem_global_aperture_size:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the global gpu aperture size.
+ * This is the area available for the kernel to perform address translations.
+ *
+ * Returns: The gtt address space size.
+ */
+uint64_t gem_global_aperture_size(int fd)
+{
+	struct drm_i915_gem_get_aperture aperture = {
+		aperture.aper_size = 256*1024*1024
+	};
+
+	ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
+	errno = 0;
+
+	return aperture.aper_size;
+}
+
+/**
+ * gem_available_fences:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query the kernel for the number of available fences
+ * usable in a batchbuffer. Only relevant for pre-gen4.
+ *
+ * Returns: The number of available fences.
+ */
+int gem_available_fences(int fd)
+{
+	int num_fences = 0;
+	struct drm_i915_getparam gp = {
+		gp.param = I915_PARAM_NUM_FENCES_AVAIL,
+		gp.value = &num_fences,
+	};
+
+	ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp, sizeof(gp));
+	errno = 0;
+
+	return num_fences;
+}
diff --git a/lib/i915/gem_mman.h b/lib/i915/gem_mman.h
index 2c4a7a00b..ec2899ffe 100644
--- a/lib/i915/gem_mman.h
+++ b/lib/i915/gem_mman.h
@@ -109,5 +109,11 @@ bool gem_has_mmap_offset_type(int fd, const struct mmap_offset *t);
 	     (__t)++) \
 		for_each_if(gem_has_mmap_offset_type((fd), (__t)))
 
+uint64_t gem_available_aperture_size(int fd);
+uint64_t gem_aperture_size(int fd);
+uint64_t gem_global_aperture_size(int fd);
+uint64_t gem_mappable_aperture_size(int fd);
+int gem_available_fences(int fd);
+
 #endif /* GEM_MMAN_H */
 
diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
index 06431ce6c..a928f894f 100644
--- a/lib/ioctl_wrappers.c
+++ b/lib/ioctl_wrappers.c
@@ -782,31 +782,6 @@ bool gem_engine_reset_enabled(int fd)
 	return gem_gpu_reset_type(fd) > 1;
 }
 
-/**
- * gem_available_fences:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the number of available fences
- * usable in a batchbuffer. Only relevant for pre-gen4.
- *
- * Returns: The number of available fences.
- */
-int gem_available_fences(int fd)
-{
-	int num_fences;
-	struct drm_i915_getparam gp;
-
-	memset(&gp, 0, sizeof(gp));
-	gp.param = I915_PARAM_NUM_FENCES_AVAIL;
-	gp.value = &num_fences;
-
-	num_fences = 0;
-	ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp, sizeof(gp));
-	errno = 0;
-
-	return num_fences;
-}
-
 bool gem_has_llc(int fd)
 {
 	int has_llc;
@@ -929,97 +904,6 @@ uint64_t gem_total_stolen_size(int fd)
 	return aperture.stolen_total_size;
 }
 
-/**
- * gem_available_aperture_size:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the available gpu aperture size
- * usable in a batchbuffer.
- *
- * Returns: The available gtt address space size.
- */
-uint64_t gem_available_aperture_size(int fd)
-{
-	struct drm_i915_gem_get_aperture aperture;
-
-	memset(&aperture, 0, sizeof(aperture));
-	aperture.aper_size = 256*1024*1024;
-	do_ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
-
-	return aperture.aper_available_size;
-}
-
-/**
- * gem_aperture_size:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the total gpu aperture size.
- *
- * Returns: The total gtt address space size.
- */
-uint64_t gem_aperture_size(int fd)
-{
-	uint64_t aperture_size = 0;
-	struct drm_i915_gem_context_param p;
-
-	memset(&p, 0, sizeof(p));
-	p.param = 0x3;
-	if (__gem_context_get_param(fd, &p) == 0) {
-		aperture_size = p.value;
-	} else {
-		struct drm_i915_gem_get_aperture aperture;
-
-		memset(&aperture, 0, sizeof(aperture));
-		aperture.aper_size = 256*1024*1024;
-
-		do_ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
-		aperture_size =  aperture.aper_size;
-	}
-
-	return aperture_size;
-}
-
-/**
- * gem_mappable_aperture_size:
- *
- * Feature test macro to query the kernel for the mappable gpu aperture size.
- * This is the area available for GTT memory mappings.
- *
- * Returns: The mappable gtt address space size.
- */
-uint64_t gem_mappable_aperture_size(void)
-{
-	struct pci_device *pci_dev = intel_get_pci_device();
-	int bar;
-
-	if (intel_gen(pci_dev->device_id) < 3)
-		bar = 0;
-	else
-		bar = 2;
-
-	return pci_dev->regions[bar].size;
-}
-
-/**
- * gem_global_aperture_size:
- * @fd: open i915 drm file descriptor
- *
- * Feature test macro to query the kernel for the global gpu aperture size.
- * This is the area available for the kernel to perform address translations.
- *
- * Returns: The gtt address space size.
- */
-uint64_t gem_global_aperture_size(int fd)
-{
-	struct drm_i915_gem_get_aperture aperture;
-
-	memset(&aperture, 0, sizeof(aperture));
-	aperture.aper_size = 256*1024*1024;
-	do_ioctl(fd, DRM_IOCTL_I915_GEM_GET_APERTURE, &aperture);
-
-	return aperture.aper_size;
-}
-
 /**
  * gem_has_softpin:
  * @fd: open i915 drm file descriptor
diff --git a/lib/ioctl_wrappers.h b/lib/ioctl_wrappers.h
index b76bea564..07879ae96 100644
--- a/lib/ioctl_wrappers.h
+++ b/lib/ioctl_wrappers.h
@@ -117,12 +117,7 @@ bool gem_uses_full_ppgtt(int fd);
 int gem_gpu_reset_type(int fd);
 bool gem_gpu_reset_enabled(int fd);
 bool gem_engine_reset_enabled(int fd);
-int gem_available_fences(int fd);
 uint64_t gem_total_stolen_size(int fd);
-uint64_t gem_available_aperture_size(int fd);
-uint64_t gem_aperture_size(int fd);
-uint64_t gem_global_aperture_size(int fd);
-uint64_t gem_mappable_aperture_size(void);
 bool gem_has_softpin(int fd);
 bool gem_has_exec_fence(int fd);
 
diff --git a/tests/i915/gem_concurrent_all.c b/tests/i915/gem_concurrent_all.c
index 9ea94125e..da850a104 100644
--- a/tests/i915/gem_concurrent_all.c
+++ b/tests/i915/gem_concurrent_all.c
@@ -1828,7 +1828,7 @@ igt_main
 				 c->name, s->name, "small");
 			igt_subtest_group {
 				igt_fixture {
-					count = num_buffers(gem_mappable_aperture_size()/4,
+					count = num_buffers(gem_mappable_aperture_size(fd)/4,
 							    s, c, CHECK_RAM);
 				}
 				run_modes(name, c, modes, s, count);
@@ -1839,7 +1839,7 @@ igt_main
 				 c->name, s->name, "thrash");
 			igt_subtest_group {
 				igt_fixture {
-					count = num_buffers(gem_mappable_aperture_size(),
+					count = num_buffers(gem_mappable_aperture_size(fd),
 							    s, c, CHECK_RAM);
 				}
 				run_modes(name, c, modes, s, count);
@@ -1871,7 +1871,7 @@ igt_main
 				 c->name, s->name, "shrink");
 			igt_subtest_group {
 				igt_fixture {
-					count = num_buffers(gem_mappable_aperture_size(),
+					count = num_buffers(gem_mappable_aperture_size(fd),
 							    s, c, CHECK_RAM);
 
 					igt_fork_shrink_helper(fd);
@@ -1887,8 +1887,8 @@ igt_main
 				 c->name, s->name, "swap");
 			igt_subtest_group {
 				igt_fixture {
-					if (intel_get_avail_ram_mb() > gem_mappable_aperture_size()/(1024*1024)) {
-						pin_sz = intel_get_avail_ram_mb() - gem_mappable_aperture_size()/(1024*1024);
+					if (intel_get_avail_ram_mb() > gem_mappable_aperture_size(fd)/(1024*1024)) {
+						pin_sz = intel_get_avail_ram_mb() - gem_mappable_aperture_size(fd)/(1024*1024);
 
 						igt_debug("Pinning %lld MiB\n", (long long)pin_sz);
 						pin_sz *= 1024 * 1024;
@@ -1902,7 +1902,7 @@ igt_main
 						igt_require(pinned);
 					}
 
-					count = num_buffers(gem_mappable_aperture_size(),
+					count = num_buffers(gem_mappable_aperture_size(fd),
 							    s, c, CHECK_RAM | CHECK_SWAP);
 				}
 				run_modes(name, c, modes, s, count);
diff --git a/tests/i915/gem_mmap.c b/tests/i915/gem_mmap.c
index 8bad9b14e..60a64c134 100644
--- a/tests/i915/gem_mmap.c
+++ b/tests/i915/gem_mmap.c
@@ -53,10 +53,10 @@ test_huge_bo(int huge)
 
 	switch (huge) {
 	case -1:
-		huge_object_size = gem_mappable_aperture_size() / 2;
+		huge_object_size = gem_mappable_aperture_size(fd) / 2;
 		break;
 	case 0:
-		huge_object_size = gem_mappable_aperture_size() + PAGE_SIZE;
+		huge_object_size = gem_mappable_aperture_size(fd) + PAGE_SIZE;
 		break;
 	case 1:
 		huge_object_size = gem_aperture_size(fd) + PAGE_SIZE;
diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
index 61fbc5bc7..528a7c726 100644
--- a/tests/i915/gem_mmap_gtt.c
+++ b/tests/i915/gem_mmap_gtt.c
@@ -905,7 +905,7 @@ test_huge_bo(int fd, int huge, int tiling)
 
 	switch (huge) {
 	case -1:
-		size = gem_mappable_aperture_size() / 2;
+		size = gem_mappable_aperture_size(fd) / 2;
 
 		/* Power of two fence size, natural fence
 		 * alignment, and the guard page at the end
@@ -920,7 +920,7 @@ test_huge_bo(int fd, int huge, int tiling)
 			size /= 2;
 		break;
 	case 0:
-		size = gem_mappable_aperture_size() + PAGE_SIZE;
+		size = gem_mappable_aperture_size(fd) + PAGE_SIZE;
 		break;
 	default:
 		size = gem_global_aperture_size(fd) + PAGE_SIZE;
@@ -1001,13 +1001,13 @@ test_huge_copy(int fd, int huge, int tiling_a, int tiling_b, int ncpus)
 
 	switch (huge) {
 	case -2:
-		huge_object_size = gem_mappable_aperture_size() / 4;
+		huge_object_size = gem_mappable_aperture_size(fd) / 4;
 		break;
 	case -1:
-		huge_object_size = gem_mappable_aperture_size() / 2;
+		huge_object_size = gem_mappable_aperture_size(fd) / 2;
 		break;
 	case 0:
-		huge_object_size = gem_mappable_aperture_size() + PAGE_SIZE;
+		huge_object_size = gem_mappable_aperture_size(fd) + PAGE_SIZE;
 		break;
 	case 1:
 		huge_object_size = gem_global_aperture_size(fd) + PAGE_SIZE;
diff --git a/tests/i915/gem_pwrite.c b/tests/i915/gem_pwrite.c
index d2dcc95e8..f76d2bc70 100644
--- a/tests/i915/gem_pwrite.c
+++ b/tests/i915/gem_pwrite.c
@@ -130,7 +130,7 @@ static void test_big_cpu(int fd, int scale, unsigned flags)
 
 	switch (scale) {
 	case 0:
-		size = gem_mappable_aperture_size() + 4096;
+		size = gem_mappable_aperture_size(fd) + 4096;
 		break;
 	case 1:
 		size = gem_global_aperture_size(fd) + 4096;
@@ -192,7 +192,7 @@ static void test_big_gtt(int fd, int scale, unsigned flags)
 	igt_require(gem_mmap__has_wc(fd));
 	switch (scale) {
 	case 0:
-		size = gem_mappable_aperture_size() + 4096;
+		size = gem_mappable_aperture_size(fd) + 4096;
 		break;
 	case 1:
 		size = gem_global_aperture_size(fd) + 4096;
@@ -257,7 +257,7 @@ static void test_random(int fd)
 	gem_require_mmap_wc(fd);
 
 	size = min(intel_get_total_ram_mb() / 2,
-		    gem_mappable_aperture_size() + 4096);
+		    gem_mappable_aperture_size(fd) + 4096);
 	intel_require_memory(1, size, CHECK_RAM);
 
 	handle = gem_create(fd, size);
diff --git a/tests/i915/gem_shrink.c b/tests/i915/gem_shrink.c
index dba62c8fa..023db8c56 100644
--- a/tests/i915/gem_shrink.c
+++ b/tests/i915/gem_shrink.c
@@ -439,7 +439,7 @@ igt_main
 		 * we expect the shrinker to start purging objects,
 		 * and possibly fail.
 		 */
-		alloc_size = gem_mappable_aperture_size() / 2;
+		alloc_size = gem_mappable_aperture_size(fd) / 2;
 		num_processes = 1 + (mem_size / (alloc_size >> 20));
 
 		igt_info("Using %d processes and %'lluMiB per process\n",
diff --git a/tests/i915/gem_tiled_fence_blits.c b/tests/i915/gem_tiled_fence_blits.c
index 0a633d91b..28beea898 100644
--- a/tests/i915/gem_tiled_fence_blits.c
+++ b/tests/i915/gem_tiled_fence_blits.c
@@ -225,7 +225,7 @@ igt_main
 		gem_require_blitter(fd);
 		gem_require_mappable_ggtt(fd);
 
-		count = gem_mappable_aperture_size(); /* thrash fences! */
+		count = gem_mappable_aperture_size(fd); /* thrash fences! */
 		if (count >> 32)
 			count = MAX_32b;
 		count = 3 + count / (1024 * 1024);
diff --git a/tests/i915/i915_pm_rpm.c b/tests/i915/i915_pm_rpm.c
index 6d46c320c..6321dd403 100644
--- a/tests/i915/i915_pm_rpm.c
+++ b/tests/i915/i915_pm_rpm.c
@@ -1419,7 +1419,7 @@ static void gem_evict_pwrite_subtest(void)
 	unsigned int num_trash_bos, n;
 	uint32_t buf;
 
-	num_trash_bos = gem_mappable_aperture_size() / (1024*1024) + 1;
+	num_trash_bos = gem_mappable_aperture_size(drm_fd) / (1024*1024) + 1;
 	trash_bos = malloc(num_trash_bos * sizeof(*trash_bos));
 	igt_assert(trash_bos);
 
@@ -1463,7 +1463,7 @@ static bool device_in_pci_d3(void)
 	uint16_t val;
 	int rc;
 
-	rc = pci_device_cfg_read_u16(intel_get_pci_device(), &val, 0xd4);
+	rc = pci_device_cfg_read_u16(igt_device_get_pci_device(drm_fd), &val, 0xd4);
 	igt_assert_eq(rc, 0);
 
 	igt_debug("%s: PCI D3 state=%d\n", __func__, val & 0x3);
diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
index 02e9915ba..8794ace08 100644
--- a/tests/kms_big_fb.c
+++ b/tests/kms_big_fb.c
@@ -645,7 +645,7 @@ igt_main
 
 		data.ram_size = intel_get_total_ram_mb() << 20;
 		data.aper_size = gem_aperture_size(data.drm_fd);
-		data.mappable_size = gem_mappable_aperture_size();
+		data.mappable_size = gem_mappable_aperture_size(data.drm_fd);
 
 		igt_info("RAM: %"PRIu64" MiB, GPU address space: %"PRId64" MiB, GGTT mappable size: %"PRId64" MiB\n",
 			 data.ram_size >> 20, data.aper_size >> 20,
diff --git a/tests/kms_flip.c b/tests/kms_flip.c
index 51b9ac950..0f0565cf6 100755
--- a/tests/kms_flip.c
+++ b/tests/kms_flip.c
@@ -1282,7 +1282,7 @@ static void __run_test_on_crtc_set(struct test_output *o, int *crtc_idxs,
 	/* 256 MB is usually the maximum mappable aperture,
 	 * (make it 4x times that to ensure failure) */
 	if (o->flags & TEST_BO_TOOBIG) {
-		bo_size = 4*gem_mappable_aperture_size();
+		bo_size = 4*gem_mappable_aperture_size(drm_fd);
 		igt_require(bo_size < gem_global_aperture_size(drm_fd));
 	}
 
diff --git a/tests/prime_mmap.c b/tests/prime_mmap.c
index 143342410..7c43ced85 100644
--- a/tests/prime_mmap.c
+++ b/tests/prime_mmap.c
@@ -447,8 +447,8 @@ test_aperture_limit(void)
 	char *ptr1, *ptr2;
 	uint32_t handle1, handle2;
 	/* Two buffers the sum of which > mappable aperture */
-	uint64_t size1 = (gem_mappable_aperture_size() * 7) / 8;
-	uint64_t size2 = (gem_mappable_aperture_size() * 3) / 8;
+	uint64_t size1 = (gem_mappable_aperture_size(fd) * 7) / 8;
+	uint64_t size2 = (gem_mappable_aperture_size(fd) * 3) / 8;
 
 	handle1 = gem_create(fd, size1);
 	fill_bo(handle1, BO_SIZE);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

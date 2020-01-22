Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8513D1459CC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 17:27:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A153A6F5E0;
	Wed, 22 Jan 2020 16:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 756C56F5DF;
 Wed, 22 Jan 2020 16:27:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 08:27:03 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="220363791"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 08:27:01 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 Jan 2020 17:26:51 +0100
Message-Id: <20200122162651.1111-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t] tests/gem_userptr_blits: Enhance
 invalid mapping exercise
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Working with a userptr GEM object backed by any type of mapping to
another GEM object, not only GTT mapping currently examined bu the
test, may cause a currently unavoidable lockdep splat inside the i915
driver.  Then, such operations are expected to fail in advance to
prevent from that badness to happen.

Extend the scope of the test by adding subtests which exercise other,
non-GTT mapping types.  Moreover, also succeed if a failure happens
as soon as a userptr object is created on top of an invalid mapping.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_userptr_blits.c | 87 +++++++++++++++++++++++-----------
 1 file changed, 59 insertions(+), 28 deletions(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index a8d3783f..69e5bd1f 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -60,6 +60,7 @@
 
 #include "drm.h"
 #include "i915_drm.h"
+#include "i915/gem_mman.h"
 
 #include "intel_bufmgr.h"
 
@@ -577,11 +578,11 @@ static int test_invalid_null_pointer(int fd)
 	return 0;
 }
 
-static int test_invalid_gtt_mapping(int fd)
+static int test_invalid_mapping(int fd, uint64_t flags)
 {
-	struct drm_i915_gem_mmap_gtt arg;
+	struct drm_i915_gem_mmap_offset arg;
 	uint32_t handle;
-	char *gtt, *map;
+	char *offset, *map;
 
 	/* Anonymous mapping to find a hole */
 	map = mmap(NULL, sizeof(linear) + 2 * PAGE_SIZE,
@@ -602,39 +603,46 @@ static int test_invalid_gtt_mapping(int fd)
 	igt_assert_eq(copy(fd, handle, handle), 0);
 	gem_close(fd, handle);
 
-	/* GTT mapping */
+	/* object mapping */
 	memset(&arg, 0, sizeof(arg));
 	arg.handle = create_bo(fd, 0);
-	do_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_GTT, &arg);
-	gtt = mmap(map + PAGE_SIZE, sizeof(linear),
-		   PROT_READ | PROT_WRITE,
-		   MAP_SHARED | MAP_FIXED,
-		   fd, arg.offset);
-	igt_assert(gtt == map + PAGE_SIZE);
+	arg.flags = flags;
+	do_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET, &arg);
+	offset = mmap(map + PAGE_SIZE, sizeof(linear), PROT_READ | PROT_WRITE,
+		      MAP_SHARED | MAP_FIXED, fd, arg.offset);
+	igt_assert(offset == map + PAGE_SIZE);
 	gem_close(fd, arg.handle);
-	igt_assert(((unsigned long)gtt & (PAGE_SIZE - 1)) == 0);
+	igt_assert(((unsigned long)offset & (PAGE_SIZE - 1)) == 0);
 	igt_assert((sizeof(linear) & (PAGE_SIZE - 1)) == 0);
 
-	gem_userptr(fd, gtt, sizeof(linear), 0, userptr_flags, &handle);
-	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
-	gem_close(fd, handle);
+	if (!__gem_userptr(fd, offset, sizeof(linear), 0, userptr_flags,
+	    &handle)) {
+		igt_assert_eq(copy(fd, handle, handle), -EFAULT);
+		gem_close(fd, handle);
+	}
 
-	gem_userptr(fd, gtt, PAGE_SIZE, 0, userptr_flags, &handle);
-	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
-	gem_close(fd, handle);
+	if (!__gem_userptr(fd, offset, PAGE_SIZE, 0, userptr_flags, &handle)) {
+		igt_assert_eq(copy(fd, handle, handle), -EFAULT);
+		gem_close(fd, handle);
+	}
 
-	gem_userptr(fd, gtt + sizeof(linear) - PAGE_SIZE, PAGE_SIZE, 0, userptr_flags, &handle);
-	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
-	gem_close(fd, handle);
+	if (!__gem_userptr(fd, offset + sizeof(linear) - PAGE_SIZE, PAGE_SIZE,
+	    0, userptr_flags, &handle)) {
+		igt_assert_eq(copy(fd, handle, handle), -EFAULT);
+		gem_close(fd, handle);
+	}
 
 	/* boundaries */
-	gem_userptr(fd, map, 2*PAGE_SIZE, 0, userptr_flags, &handle);
-	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
-	gem_close(fd, handle);
+	if (!__gem_userptr(fd, map, 2 * PAGE_SIZE, 0, userptr_flags, &handle)) {
+		igt_assert_eq(copy(fd, handle, handle), -EFAULT);
+		gem_close(fd, handle);
+	}
 
-	gem_userptr(fd, map + sizeof(linear), 2*PAGE_SIZE, 0, userptr_flags, &handle);
-	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
-	gem_close(fd, handle);
+	if (!__gem_userptr(fd, map + sizeof(linear), 2 * PAGE_SIZE, 0,
+	    userptr_flags, &handle)) {
+		igt_assert_eq(copy(fd, handle, handle), -EFAULT);
+		gem_close(fd, handle);
+	}
 
 	munmap(map, sizeof(linear) + 2*PAGE_SIZE);
 
@@ -2009,8 +2017,31 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		igt_subtest("invalid-null-pointer")
 			test_invalid_null_pointer(fd);
 
-		igt_subtest("invalid-gtt-mapping")
-			test_invalid_gtt_mapping(fd);
+		igt_describe("Verify userptr on top of GTT mapping to GEM object will fail");
+		igt_subtest("invalid-gtt-mapping") {
+			gem_require_mappable_ggtt(fd);
+			test_invalid_mapping(fd, I915_MMAP_OFFSET_GTT);
+		}
+		igt_subtest_group {
+			igt_fixture
+				igt_require(gem_has_mmap_offset(fd));
+
+			igt_describe("Verify userptr on top of CPU mapping to GEM object will fail");
+			igt_subtest("invalid-wb-mapping")
+				test_invalid_mapping(fd, I915_MMAP_OFFSET_WB);
+
+			igt_subtest_group {
+				igt_fixture
+					igt_require(gem_mmap_offset__has_wc(fd));
+
+				igt_describe("Verify userptr on top of coherent mapping to GEM object will fail");
+				igt_subtest("invalid-wc-mapping")
+					test_invalid_mapping(fd, I915_MMAP_OFFSET_WC);
+				igt_describe("Verify userptr on top of uncached mapping to GEM object will fail");
+				igt_subtest("invalid-uc-mapping")
+					test_invalid_mapping(fd, I915_MMAP_OFFSET_UC);
+			}
+		}
 
 		igt_subtest("forked-access")
 			test_forked_access(fd);
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

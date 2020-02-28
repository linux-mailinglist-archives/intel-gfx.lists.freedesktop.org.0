Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FE417333B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:47:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470DD6EE7A;
	Fri, 28 Feb 2020 08:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3146EE7A;
 Fri, 28 Feb 2020 08:47:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 00:47:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232171837"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 00:47:26 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Feb 2020 09:46:35 +0100
Message-Id: <20200228084636.30045-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200228084636.30045-1-janusz.krzysztofik@linux.intel.com>
References: <20200228084636.30045-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v4 1/2] tests/gem_userptr_blits:
 Exercise new invalid mapping types
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

Attempts to create a userptr object on top of a GTT mapping to another
GEM object are currently expected to succeed.  However, attempts to pin
the object pages in memory are expected to fail with -EFAULT.  There is
a subtests that already exercises that behavior.

Having a closer look at the driver behavior we can see that the very
first operation which tries to set the object pages fails with -EAGAIN.
Moreover, if I915_USERPTR_UNSYNCHRONIZED flag has been used by object
creation, MMU notifier is activated for the object.  Consecutive
attempts may also fail with -EAGAIN while the driver tries to acquire
the pages in background, with the MMU notifier still possibly active,
but then the background attempt to pin the pages in memory finally
fails, the notifier is deactivated, and all following set pages
operations fail with -EFAULT.

That behavior can be observed not only for userptr objects created on
top of GTT mappings, but also on new mapping types introduced by
MMAP_GTT API v4 aka MMAP_OFFSET.

Extend the scope of the subtest by converting it to a set of dynamic
subtests which exercise each MMAP_OFFSET mapping type supported by
hardware.  Moreover, since the driver detailed behavior depends on the
I915_USERPTR_UNSYNCHRONIZED flag being requested or not by object
creation, move the subtest to a section where the state of the flag,
which now defaults to being set, is set explicitly.  Also, rename the
subtest to reflect that change.

v2: For as long as the lockdep loop issue is not fixed, don't succeed
    if a preventive failure occurs but skip (Chris),
  - otherwise, warn about possible risk,
  - put a FIXME placeholder until we learn how to anger lockdep.
v3: Use dynamic subtests, with skips handled at mmap-offset attempt
    performed by the test anyway (Chris),
  - for better clarity of the patch, drop cosmetic only changes,
  - use more concise wording in subtest description.
v4: Separate problematic lockdep loop trigger attempts from this patch
    to a follow up one, reword commit message and description,
  - move the subtest to "unsynchronized" section,
  - rebase on top of "lib/i915: Restrict mmap types to GTT if no
    MMAP_OFFSET support".

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Antonio Argenziano <antonio.argenziano@intel.com>
---
 tests/i915/gem_userptr_blits.c | 38 +++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index cd1a3af27..08015586a 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -577,11 +577,11 @@ static int test_invalid_null_pointer(int fd)
 	return 0;
 }
 
-static int test_invalid_gtt_mapping(int fd)
+static int test_invalid_mapping(int fd, const struct mmap_offset *t)
 {
-	struct drm_i915_gem_mmap_gtt arg;
+	struct drm_i915_gem_mmap_offset arg;
 	uint32_t handle;
-	char *gtt, *map;
+	char *ptr, *map;
 
 	/* Anonymous mapping to find a hole */
 	map = mmap(NULL, sizeof(linear) + 2 * PAGE_SIZE,
@@ -602,28 +602,29 @@ static int test_invalid_gtt_mapping(int fd)
 	igt_assert_eq(copy(fd, handle, handle), 0);
 	gem_close(fd, handle);
 
-	/* GTT mapping */
+	/* mmap-offset mapping */
 	memset(&arg, 0, sizeof(arg));
 	arg.handle = create_bo(fd, 0);
-	do_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_GTT, &arg);
-	gtt = mmap(map + PAGE_SIZE, sizeof(linear),
-		   PROT_READ | PROT_WRITE,
-		   MAP_SHARED | MAP_FIXED,
-		   fd, arg.offset);
-	igt_assert(gtt == map + PAGE_SIZE);
+	arg.flags = t->type;
+	igt_skip_on_f(igt_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET, &arg),
+		      "HW & kernel support for mmap_offset(%s)\n", t->name);
+	ptr = mmap(map + PAGE_SIZE, sizeof(linear), PROT_READ | PROT_WRITE,
+		   MAP_SHARED | MAP_FIXED, fd, arg.offset);
+	igt_assert(ptr == map + PAGE_SIZE);
 	gem_close(fd, arg.handle);
-	igt_assert(((unsigned long)gtt & (PAGE_SIZE - 1)) == 0);
+	igt_assert(((unsigned long)ptr & (PAGE_SIZE - 1)) == 0);
 	igt_assert((sizeof(linear) & (PAGE_SIZE - 1)) == 0);
 
-	gem_userptr(fd, gtt, sizeof(linear), 0, userptr_flags, &handle);
+	gem_userptr(fd, ptr, sizeof(linear), 0, userptr_flags, &handle);
 	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
 	gem_close(fd, handle);
 
-	gem_userptr(fd, gtt, PAGE_SIZE, 0, userptr_flags, &handle);
+	gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags, &handle);
 	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
 	gem_close(fd, handle);
 
-	gem_userptr(fd, gtt + sizeof(linear) - PAGE_SIZE, PAGE_SIZE, 0, userptr_flags, &handle);
+	gem_userptr(fd, ptr + sizeof(linear) - PAGE_SIZE, PAGE_SIZE, 0,
+		    userptr_flags, &handle);
 	igt_assert_eq(copy(fd, handle, handle), -EFAULT);
 	gem_close(fd, handle);
 
@@ -2039,9 +2040,6 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		igt_subtest("invalid-null-pointer")
 			test_invalid_null_pointer(fd);
 
-		igt_subtest("invalid-gtt-mapping")
-			test_invalid_gtt_mapping(fd);
-
 		igt_subtest("forked-access")
 			test_forked_access(fd);
 
@@ -2062,6 +2060,12 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 			igt_require(has_userptr(fd));
 		}
 
+		igt_describe("Verify unsynchronized userptr on mmap-offset mappings fails");
+		igt_subtest_with_dynamic("invalid-mmap-offset-unsync")
+			for_each_mmap_offset_type(fd, t)
+				igt_dynamic_f("%s", t->name)
+					test_invalid_mapping(fd, t);
+
 		igt_subtest("create-destroy-unsync")
 			test_create_destroy(fd, 5);
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

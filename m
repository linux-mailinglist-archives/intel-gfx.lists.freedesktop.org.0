Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 169A517333A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9566EE78;
	Fri, 28 Feb 2020 08:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94D76EE79;
 Fri, 28 Feb 2020 08:47:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 00:47:29 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232171848"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 00:47:27 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Feb 2020 09:46:36 +0100
Message-Id: <20200228084636.30045-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200228084636.30045-1-janusz.krzysztofik@linux.intel.com>
References: <20200228084636.30045-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v4 2/2] tests/gem_userptr_blits: Try
 to anger lockdep with invalid mappings
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

A currently unavoidable lockdep loop related to userptr MMU notifier
exists inside the i915 driver.  For as long as that issue is not
resolved, operations which are believed to potentially result in the
loop being triggered are expected to fail early to prevent from that
badness to happen.

The lockdep loop occurrence is believed to be possible for a userptr
object created on top of any type of mmap-offset mapping.  For that to
happen, userptr MMU notifier, which is the source of the lockdep issue,
must be activated for the object.  That is possible only if the object
has been created without I915_USERPTR_UNSYNCHRONIZED flag.

Attempts to create a userptr object on top of a mmap-offset mapping to
another GEM object currently always succeed.  However, the very first
operation which tries to set the object pages fails with -EAGAIN.  If
I915_USERPTR_UNSYNCHRONIZED flag has been used by object creation, MMU
notifier is activated for the object.  Consecutive attempts may also
fail with -EAGAIN while the driver tries to acquire the pages in
background, with the MMU notifier still possibly active, but meanwhile,
the background attempt to pin the pages in memory finally fails, the
notifier is deactivated, and all following set pages operations fail
with -EFAULT.

There is a subtests which already exercises the driver behavior for
userptr objects created on top of mmap-offset mappings.  However, the
exercise is performed on userptr objects created only with the
I915_USERPTR_UNSYNCHRONIZED flag set, then, the MMU notifier is never
activated.

Clone the subtest to a "-sync" variant so objects created without the
I915_USERPTR_UNSYNCHRONIZED flag are also exercised.  In that case, try
to anger lockdep, but since that seems hardly possible, also display a
warning for as long as we believe the lockdep splat is possible in that
scenario.  Also, don't fail but skip should the driver ever refuse to
create synchronized userptr objects on top of invalid mappings.

v2: For as long as the lockdep loop issue is not fixed, don't succeed
    if a preventive failure occurs but skip (Chris),
  - otherwise, warn about possible risk,
  - put a FIXME placeholder until we learn how to anger lockdep.
v3: Use dynamic subtests, with skips handled at mmap-offset attempt
    performed by the test anyway (Chris),
  - for better clarity of the patch, drop cosmetic only changes,
  - use more concise wording in subtest description.
v4: Limit the scope to lockdep loop trigger attempts, separate from
    changes aimed at extending subtest coverage over new mapping types,
  - as lockdep loop can happen only for userptr objects created without
    I915_USERPTR_UNSYNCHRONIZED flag, introduce a new "-sync" variant
    of the subtest which examines userptr objects created with the flag
    not set,
  - move lockdep loop trigger attempt to a separate function and call
    it only when the I915_USERPTR_UNSYNCHRONIZED flag is not set,
  - actually try to anger lockdep using gem_set_tiling() (Chris).

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_userptr_blits.c | 53 ++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 08015586a..c1496f245 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -577,6 +577,49 @@ static int test_invalid_null_pointer(int fd)
 	return 0;
 }
 
+static void anger_lockdep(int fd, uint32_t parent_handle,
+			  uint64_t parent_offset, const struct mmap_offset *t)
+{
+	struct drm_i915_gem_set_domain set_domain;
+	void *ptr;
+	uint32_t handle;
+
+	/* create the map */
+	ptr = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
+		   MAP_SHARED | MAP_FIXED, fd, parent_offset);
+	igt_assert(ptr != MAP_FAILED);
+	igt_assert(((unsigned long)ptr & (PAGE_SIZE - 1)) == 0);
+
+	/* create userptr */
+	igt_skip_on_f(__gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags,
+				    &handle),
+		      "userptr on mmap-offset(%s) banned, lockdep loop prevention\n",
+		      t->name);
+
+	/* FIXME: learn how to actually anger lockdep reproducibly */
+	igt_warn("userptr on mmap_offset(%s) succeeded, risk of lockdep loop exists\n",
+		 t->name);
+
+	memset(&set_domain, 0, sizeof(set_domain));
+	set_domain.handle = handle;
+	set_domain.read_domains = I915_GEM_DOMAIN_GTT;
+	set_domain.write_domain = I915_GEM_DOMAIN_GTT;
+
+	if (gem_available_fences(fd)) {
+		/* set object pages once so the MMU notifier is activated */
+		igt_assert(ioctl(fd, DRM_IOCTL_I915_GEM_SET_DOMAIN, &set_domain)
+			   && errno == EAGAIN);
+		/* immediately try to trigger the notifier (likely too late) */
+		gem_set_tiling(fd, parent_handle, I915_TILING_Y, 512 * 4);
+	} else {
+		; /* FIXME: find another way to invalidate parent pages */
+	}
+
+	/* cleanup */
+	gem_close(fd, handle);
+	munmap(ptr, sizeof(linear));
+}
+
 static int test_invalid_mapping(int fd, const struct mmap_offset *t)
 {
 	struct drm_i915_gem_mmap_offset arg;
@@ -608,6 +651,10 @@ static int test_invalid_mapping(int fd, const struct mmap_offset *t)
 	arg.flags = t->type;
 	igt_skip_on_f(igt_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET, &arg),
 		      "HW & kernel support for mmap_offset(%s)\n", t->name);
+
+	if (!(userptr_flags & LOCAL_I915_USERPTR_UNSYNCHRONIZED))
+		anger_lockdep(fd, arg.handle, arg.offset, t);
+
 	ptr = mmap(map + PAGE_SIZE, sizeof(linear), PROT_READ | PROT_WRITE,
 		   MAP_SHARED | MAP_FIXED, fd, arg.offset);
 	igt_assert(ptr == map + PAGE_SIZE);
@@ -2161,6 +2208,12 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 				count = intel_get_total_ram_mb() * 3 / 4;
 		}
 
+		igt_describe("Verify synchronized userptr on mmap-offset mappings fails");
+		igt_subtest_with_dynamic("invalid-mmap-offset-sync")
+			for_each_mmap_offset_type(fd, t)
+				igt_dynamic_f("%s", t->name)
+					test_invalid_mapping(fd, t);
+
 		igt_subtest("process-exit")
 			test_process_exit(fd, 0);
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

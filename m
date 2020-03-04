Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02E0178DEC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 10:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8766EB05;
	Wed,  4 Mar 2020 09:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0C36EB09;
 Wed,  4 Mar 2020 09:58:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:58:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="240408677"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:58:52 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  4 Mar 2020 10:58:41 +0100
Message-Id: <20200304095841.8781-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200304095841.8781-1-janusz.krzysztofik@linux.intel.com>
References: <20200304095841.8781-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 3/3] tests/gem_userptr_blits: Add
 active variant of mmap-offset-invalidate
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a variant that also attaches a igt_spin_t to the userptr, waits for
it to start executing, call igt_spin_set_timeout and then do the munmap.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_userptr_blits.c | 33 ++++++++++++++++++++++++++++-----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 95e90c40a..68fc6aee4 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -797,10 +797,13 @@ static int test_map_fixed_invalidate(int fd, uint32_t flags)
 	return 0;
 }
 
-static void test_mmap_offset_invalidate(int fd, const struct mmap_offset *t)
+static void test_mmap_offset_invalidate(int fd, const struct mmap_offset *t,
+					int flags)
+#define MMOI_ACTIVE	0x1
 {
 	void *ptr, *map;
 	uint32_t handle;
+	igt_spin_t *spin;
 
 	/* check if mmap_offset type is supported by hardware, skip if not */
 	handle = gem_create(fd, PAGE_SIZE);
@@ -823,13 +826,26 @@ static void test_mmap_offset_invalidate(int fd, const struct mmap_offset *t)
 		      t->name);
 	igt_assert(map);
 
-	/* set object pages in order to activate MMU notifier for it */
-	gem_set_domain(fd, handle, I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
+	/* activate MMU notifier for the object */
+	if (flags & MMOI_ACTIVE) {
+		/* attach a time limited dummy load to the object */
+		spin = igt_spin_new(fd, .dependency = handle);
+		usleep(USEC_PER_SEC/MSEC_PER_SEC);
+		igt_spin_set_timeout(spin, NSEC_PER_SEC);
+	} else {
+		/* just set object pages */
+		gem_set_domain(fd, handle, I915_GEM_DOMAIN_GTT,
+					   I915_GEM_DOMAIN_GTT);
+	}
 
 	/* trigger the notifier */
+	igt_set_timeout(3, "deadlock");
 	munmap(ptr, PAGE_SIZE);
+	igt_reset_timeout();
 
 	/* cleanup */
+	if (flags & MMOI_ACTIVE)
+		igt_spin_free(fd, spin);
 	munmap(map, PAGE_SIZE);
 	gem_close(fd, handle);
 }
@@ -2207,11 +2223,18 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 			}
 		}
 
-		igt_describe("Invalidate pages of userptr with mmap-offset on top");
+		igt_describe("Invalidate pages of idle userptr with mmap-offset on top");
 		igt_subtest_with_dynamic("mmap-offset-invalidate")
 			for_each_mmap_offset_type(fd, t)
 				igt_dynamic_f("%s", t->name)
-					test_mmap_offset_invalidate(fd, t);
+					test_mmap_offset_invalidate(fd, t, 0);
+
+		igt_describe("Invalidate pages of active userptr with mmap-offset on top");
+		igt_subtest_with_dynamic("mmap-offset-invalidate-active")
+			for_each_mmap_offset_type(fd, t)
+				igt_dynamic_f("%s", t->name)
+					test_mmap_offset_invalidate(fd, t,
+								   MMOI_ACTIVE);
 
 		igt_subtest("coherency-sync")
 			test_coherency(fd, count);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

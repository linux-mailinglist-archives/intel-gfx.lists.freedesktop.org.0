Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F012E2F9354
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Jan 2021 16:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE2889EBD;
	Sun, 17 Jan 2021 15:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D565089EAC;
 Sun, 17 Jan 2021 15:16:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23621808-1500050 
 for multiple; Sun, 17 Jan 2021 15:16:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 17 Jan 2021 15:16:26 +0000
Message-Id: <20210117151626.279283-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_userptr_blits: Quick
 verification of set-cache-level API
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

Mesa uses set-cache-level on userptr, so verify it doesn't arbitrary
fail.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_userptr_blits.c | 41 ++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 559360020..1f6a2e355 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -2219,6 +2219,44 @@ static void test_sd_probe(int i915)
 	}
 }
 
+static void test_set_caching(int i915)
+{
+	const int levels[] = {
+		I915_CACHING_NONE,
+		I915_CACHING_CACHED,
+	};
+	uint32_t handle;
+	void *page;
+
+	page = mmap(NULL, 4096, PROT_READ | PROT_WRITE,
+		    MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
+
+	/*
+	 * A userptr is regular GEM object, mapping system pages from the user
+	 * into the GPU. The GPU knows no difference in the pages, and may use
+	 * the regular PTE cache levels. As does mesa.
+	 *
+	 * We could try and detect the different effects of cache levels, but
+	 * for the moment trust that set-cache-level works and reduces the
+	 * problem to other tests.
+	 */
+
+	for (int idx = 0; idx < ARRAY_SIZE(levels); idx++) {
+		gem_userptr(i915, page, 4096, 0, 0, &handle);
+		igt_assert_eq(__gem_set_caching(i915, handle, levels[idx]), 0);
+		gem_close(i915, handle);
+	}
+
+	gem_userptr(i915, page, 4096, 0, 0, &handle);
+	for (int idx = 0; idx < ARRAY_SIZE(levels); idx++)
+		igt_assert_eq(__gem_set_caching(i915, handle, levels[idx]), 0);
+	for (int idx = 0; idx < ARRAY_SIZE(levels); idx++)
+		igt_assert_eq(__gem_set_caching(i915, handle, levels[idx]), 0);
+	gem_close(i915, handle);
+
+	munmap(page, 4096);
+}
+
 struct ufd_thread {
 	uint32_t *page;
 	int i915;
@@ -2416,6 +2454,9 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
 		igt_subtest("sd-probe")
 			test_sd_probe(fd);
 
+		igt_subtest("set-cache-level")
+			test_set_caching(fd);
+
 		igt_subtest("userfault")
 			test_userfault(fd);
 
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

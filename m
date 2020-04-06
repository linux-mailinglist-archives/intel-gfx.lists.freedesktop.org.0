Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DB819F2B2
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 11:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5278189D8E;
	Mon,  6 Apr 2020 09:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00CCC89D8E;
 Mon,  6 Apr 2020 09:37:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20813071-1500050 
 for multiple; Mon, 06 Apr 2020 10:37:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 10:37:26 +0100
Message-Id: <20200406093726.1640834-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_tiled_fence_blits: Trim workload
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

Similar to gem_tiled_blits and gem_linear_blits, we only need to just
force the system to be thrashing the GTT for the test to be effective,
so trim the working set to just a be one element larger than could fit,
and parallelise the checking across multiple cpus.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1586
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_tiled_fence_blits.c | 37 ++++++++++++------------------
 1 file changed, 15 insertions(+), 22 deletions(-)

diff --git a/tests/i915/gem_tiled_fence_blits.c b/tests/i915/gem_tiled_fence_blits.c
index 62fd13285..9de099485 100644
--- a/tests/i915/gem_tiled_fence_blits.c
+++ b/tests/i915/gem_tiled_fence_blits.c
@@ -156,7 +156,6 @@ static void run_test(int fd, int count)
 		eb.flags = I915_EXEC_BLT;
 
 	count |= 1;
-	igt_info("Using %d 1MiB buffers\n", count);
 
 	bo = malloc(count * (sizeof(*bo) + sizeof(*bo_start_val)));
 	igt_assert(bo);
@@ -168,19 +167,6 @@ static void run_test(int fd, int count)
 		start += width * height;
 	}
 
-	for (int dst = 0; dst < count; dst++) {
-		int src = count - dst - 1;
-
-		if (src == dst)
-			continue;
-
-		reloc[0].target_handle = obj[0].handle = bo[dst];
-		reloc[1].target_handle = obj[1].handle = bo[src];
-
-		gem_execbuf(fd, &eb);
-		bo_start_val[dst] = bo_start_val[src];
-	}
-
 	for (int i = 0; i < count * 4; i++) {
 		int src = random() % count;
 		int dst = random() % count;
@@ -208,6 +194,8 @@ static void run_test(int fd, int count)
 
 igt_main
 {
+	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
+	uint64_t count = 0;
 	int fd;
 
 	igt_fixture {
@@ -215,20 +203,25 @@ igt_main
 		igt_require_gem(fd);
 		gem_require_blitter(fd);
 		gem_require_mappable_ggtt(fd);
+
+		count = gem_aperture_size(fd);
+		if (count >> 32)
+			count = MAX_32b;
+		count = 3 + count / (1024 * 1024);
+		igt_require(count > 1);
+		intel_require_memory(count, 1024 * 1024 , CHECK_RAM);
+
+		igt_debug("Using %'"PRIu64" 1MiB buffers\n", count);
+		count = (count + ncpus - 1) / ncpus;
 	}
 
 	igt_subtest("basic")
 		run_test (fd, 2);
 
 	igt_subtest("normal") {
-		uint64_t count;
-
-		count = gem_aperture_size(fd);
-		if (count >> 32)
-			count = MAX_32b;
-		count = 3 * count / bo_size / 2;
-		intel_require_memory(count, bo_size, CHECK_RAM);
-		run_test(fd, count);
+		igt_fork(child, ncpus)
+			run_test(fd, count);
+		igt_waitchildren();
 	}
 
 	igt_fixture
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE591BE1F8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 17:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFD56F38A;
	Wed, 29 Apr 2020 15:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0766F38A;
 Wed, 29 Apr 2020 15:05:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21059772-1500050 
 for multiple; Wed, 29 Apr 2020 16:05:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 16:05:00 +0100
Message-Id: <20200429150500.588743-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429145113.588577-1-chris@chris-wilson.co.uk>
References: <20200429145113.588577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] perf: Flush the work between rounds of
 gen8-unprivileged-single-ctx-counter
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

Wait until the GPU is idle before starting a fresh round of probing
gen8-unprivileged-single-ctx-counter. This avoids building up a huge
backlog of render copies, hogging buffers and stale contexts, and
invoking the oomkiller.

v2: Release everything before starting again.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 tests/perf.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/tests/perf.c b/tests/perf.c
index 74fc8fd87..7bde46af8 100644
--- a/tests/perf.c
+++ b/tests/perf.c
@@ -3762,19 +3762,9 @@ gen8_test_single_ctx_render_target_writes_a_counter(void)
 			igt_assert_eq(ret, 0);
 
 			ret = memcmp(src[0].bo->virtual, dst[0].bo->virtual, 4 * width * height);
-			if (ret != 0) {
-				accumulator_print(&accumulator, "total");
-				/* This needs to be investigated... From time
-				 * to time, the work we kick off doesn't seem
-				 * to happen. WTH?? */
-				exit(EAGAIN);
-			}
-
 			drm_intel_bo_unmap(src[0].bo);
 			drm_intel_bo_unmap(dst[0].bo);
 
-			igt_assert_eq(accumulator.deltas[2 + 26], width * height);
-
 			for (int i = 0; i < ARRAY_SIZE(src); i++) {
 				drm_intel_bo_unreference(src[i].bo);
 				drm_intel_bo_unreference(dst[i].bo);
@@ -3787,6 +3777,17 @@ gen8_test_single_ctx_render_target_writes_a_counter(void)
 			drm_intel_gem_context_destroy(context1);
 			drm_intel_bufmgr_destroy(bufmgr);
 			__perf_close(stream_fd);
+			gem_quiescent_gpu(drm_fd);
+
+			if (ret != 0) {
+				accumulator_print(&accumulator, "total");
+				/* This needs to be investigated... From time
+				 * to time, the work we kick off doesn't seem
+				 * to happen. WTH?? */
+				exit(EAGAIN);
+			}
+
+			igt_assert_eq(accumulator.deltas[2 + 26], width * height);
 		}
 
 		child_ret = igt_wait_helper(&child);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

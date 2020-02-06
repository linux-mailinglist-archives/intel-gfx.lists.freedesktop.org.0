Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E2915418C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 11:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DEC76EA17;
	Thu,  6 Feb 2020 10:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF5A6FA15;
 Thu,  6 Feb 2020 10:06:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20133632-1500050 
 for multiple; Thu, 06 Feb 2020 10:06:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 10:06:39 +0000
Message-Id: <20200206100639.2386558-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206100639.2386558-1-chris@chris-wilson.co.uk>
References: <20200206100639.2386558-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_sseu: Extend the mmapped
 parameters test
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The current implementation of the test only maps the arguments in gtt,
but we have similar problems arising from any of our own custom
pagefault handlers.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Antonio Argenziano <antonio.argenziano@intel.com>
Cc: Dixit Ashutosh <ashutosh.dixit@intel.com>
---
 tests/i915/gem_ctx_sseu.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/tests/i915/gem_ctx_sseu.c b/tests/i915/gem_ctx_sseu.c
index 38dc584bc..d558c8baa 100644
--- a/tests/i915/gem_ctx_sseu.c
+++ b/tests/i915/gem_ctx_sseu.c
@@ -364,7 +364,7 @@ test_invalid_args(int fd)
  * Verify that ggtt mapped area can be used as the sseu pointer.
  */
 static void
-test_ggtt_args(int fd)
+test_mmapped_args(int fd, const struct mmap_offset *t)
 {
 	struct drm_i915_gem_context_param_sseu *sseu;
 	struct drm_i915_gem_context_param arg = {
@@ -372,17 +372,19 @@ test_ggtt_args(int fd)
 		.ctx_id = gem_context_create(fd),
 		.size = sizeof(*sseu),
 	};
+	void *ptr;
 	uint32_t bo;
 
 	bo = gem_create(fd, 4096);
-	arg.value = to_user_pointer(gem_mmap__gtt(fd, bo, 4096,
-						  PROT_READ | PROT_WRITE));
+	ptr = __gem_mmap_offset(fd, bo, 0, 4096, PROT_WRITE, t->type);
+	gem_close(fd, bo);
+	igt_require(ptr);
 
+	arg.value = to_user_pointer(ptr);
 	igt_assert_eq(__gem_context_get_param(fd, &arg), 0);
 	igt_assert_eq(__gem_context_set_param(fd, &arg), 0);
 
 	munmap((void *)(uintptr_t)arg.value, 4096);
-	gem_close(fd, bo);
 	gem_context_destroy(fd, arg.ctx_id);
 }
 
@@ -528,8 +530,12 @@ igt_main
 		igt_subtest("invalid-sseu")
 			test_invalid_sseu(fd);
 
-		igt_subtest("ggtt-args")
-			test_ggtt_args(fd);
+		igt_subtest_with_dynamic("mmap-args") {
+			for_each_mmap_offset_type(t) {
+				igt_dynamic_f("%s", t->name)
+					test_mmapped_args(fd, t);
+			}
+		}
 
 		igt_subtest("engines")
 			test_engines(fd);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

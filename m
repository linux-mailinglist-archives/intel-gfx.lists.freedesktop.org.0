Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396A6250022
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 16:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5524E6E28E;
	Mon, 24 Aug 2020 14:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792A96E286;
 Mon, 24 Aug 2020 14:49:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22223725-1500050 
 for multiple; Mon, 24 Aug 2020 15:49:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Aug 2020 15:49:51 +0100
Message-Id: <20200824144951.146547-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Set
 preempt_timeout_ms for fast hang tests
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

Reduce the preemption timeout to 150ms (from infinity for tgl! tsk,
tsk) so that the preemption hang tests run quicker.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_schedule.c | 37 ++++++++++++++++++++++++----------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index 488d93511..e316cf4d7 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -1235,9 +1235,18 @@ static void promotion(int fd, unsigned ring)
 	igt_assert_eq_u32(result_read, ctx[NOISE]);
 }
 
+static bool set_preempt_timeout(int i915,
+				const struct intel_execution_engine2 *e,
+				int timeout_ms)
+{
+	return gem_engine_property_printf(i915, e->name,
+					  "preempt_timeout_ms",
+					  "%d", timeout_ms) > 0;
+}
+
 #define NEW_CTX (0x1 << 0)
 #define HANG_LP (0x1 << 1)
-static void preempt(int fd, unsigned ring, unsigned flags)
+static void preempt(int fd, const struct intel_execution_engine2 *e, unsigned flags)
 {
 	uint32_t result = gem_create(fd, 4096);
 	uint32_t result_read;
@@ -1245,6 +1254,9 @@ static void preempt(int fd, unsigned ring, unsigned flags)
 	uint32_t ctx[2];
 	igt_hang_t hang;
 
+	/* Set a fast timeout to speed the test up (if available) */
+	set_preempt_timeout(fd, e, 150);
+
 	ctx[LO] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[LO], MIN_PRIO);
 
@@ -1252,7 +1264,7 @@ static void preempt(int fd, unsigned ring, unsigned flags)
 	gem_context_set_priority(fd, ctx[HI], MAX_PRIO);
 
 	if (flags & HANG_LP)
-		hang = igt_hang_ctx(fd, ctx[LO], ring, 0);
+		hang = igt_hang_ctx(fd, ctx[LO], e->flags, 0);
 
 	for (int n = 0; n < ARRAY_SIZE(spin); n++) {
 		if (flags & NEW_CTX) {
@@ -1262,10 +1274,10 @@ static void preempt(int fd, unsigned ring, unsigned flags)
 		}
 		spin[n] = __igt_spin_new(fd,
 					 .ctx = ctx[LO],
-					 .engine = ring);
+					 .engine = e->flags);
 		igt_debug("spin[%d].handle=%d\n", n, spin[n]->handle);
 
-		store_dword(fd, ctx[HI], ring, result, 0, n + 1, I915_GEM_DOMAIN_RENDER);
+		store_dword(fd, ctx[HI], e->flags, result, 0, n + 1, I915_GEM_DOMAIN_RENDER);
 
 		result_read = __sync_read_u32(fd, result, 0);
 		igt_assert_eq_u32(result_read, n + 1);
@@ -1601,12 +1613,15 @@ static void preempt_self(int fd, unsigned ring)
 	gem_close(fd, result);
 }
 
-static void preemptive_hang(int fd, unsigned ring)
+static void preemptive_hang(int fd, const struct intel_execution_engine2 *e)
 {
 	igt_spin_t *spin[MAX_ELSP_QLEN];
 	igt_hang_t hang;
 	uint32_t ctx[2];
 
+	/* Set a fast timeout to speed the test up (if available) */
+	set_preempt_timeout(fd, e, 150);
+
 	ctx[HI] = gem_context_clone_with_engines(fd, 0);
 	gem_context_set_priority(fd, ctx[HI], MAX_PRIO);
 
@@ -1616,12 +1631,12 @@ static void preemptive_hang(int fd, unsigned ring)
 
 		spin[n] = __igt_spin_new(fd,
 					 .ctx = ctx[LO],
-					 .engine = ring);
+					 .engine = e->flags);
 
 		gem_context_destroy(fd, ctx[LO]);
 	}
 
-	hang = igt_hang_ctx(fd, ctx[HI], ring, 0);
+	hang = igt_hang_ctx(fd, ctx[HI], e->flags, 0);
 	igt_post_hang_ring(fd, hang);
 
 	for (int n = 0; n < ARRAY_SIZE(spin); n++) {
@@ -2603,10 +2618,10 @@ igt_main
 			}
 
 			test_each_engine_store("preempt", fd, e)
-				preempt(fd, e->flags, 0);
+				preempt(fd, e, 0);
 
 			test_each_engine_store("preempt-contexts", fd, e)
-				preempt(fd, e->flags, NEW_CTX);
+				preempt(fd, e, NEW_CTX);
 
 			test_each_engine_store("preempt-self", fd, e)
 				preempt_self(fd, e->flags);
@@ -2640,10 +2655,10 @@ igt_main
 				}
 
 				test_each_engine_store("preempt-hang", fd, e)
-					preempt(fd, e->flags, NEW_CTX | HANG_LP);
+					preempt(fd, e, NEW_CTX | HANG_LP);
 
 				test_each_engine_store("preemptive-hang", fd, e)
-					preemptive_hang(fd, e->flags);
+					preemptive_hang(fd, e);
 
 				igt_fixture {
 					igt_disallow_hang(fd, hang);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

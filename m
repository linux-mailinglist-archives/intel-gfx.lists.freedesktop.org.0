Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 993D528DF11
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EF96EA43;
	Wed, 14 Oct 2020 10:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16AE6EA39;
 Wed, 14 Oct 2020 10:40:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711492-1500050 
 for multiple; Wed, 14 Oct 2020 11:40:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:40:33 +0100
Message-Id: <20201014104038.2554985-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 05/10] i915/gem_exec_balancer: Check
 interactions between bonds and userptr
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_balancer.c | 46 +++++++++++++++++++++++-----------
 1 file changed, 31 insertions(+), 15 deletions(-)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 0c334b91b..adba776e7 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -34,6 +34,10 @@
 
 IGT_TEST_DESCRIPTION("Exercise in-kernel load-balancing");
 
+#define CORK		(1ul << 0)
+#define VIRTUAL_ENGINE	(1ul << 1)
+#define USERPTR		(1ul << 2)
+
 #define MI_SEMAPHORE_WAIT		(0x1c << 23)
 #define   MI_SEMAPHORE_POLL             (1 << 15)
 #define   MI_SEMAPHORE_SAD_GT_SDD       (0 << 12)
@@ -578,7 +582,6 @@ static void individual(int i915)
 }
 
 static void bonded(int i915, unsigned int flags)
-#define CORK 0x1
 {
 	I915_DEFINE_CONTEXT_ENGINES_BOND(bonds[16], 1);
 	struct i915_engine_class_instance *master_engines;
@@ -660,13 +663,15 @@ static void bonded(int i915, unsigned int flags)
 				plug = __igt_spin_new(i915,
 						      .ctx = master,
 						      .engine = bond,
-						      .dependency = igt_cork_plug(&cork, i915));
+						      .dependency = igt_cork_plug(&cork, i915),
+						      .flags = (flags & USERPTR ? IGT_SPIN_USERPTR : 0));
 			}
 
 			spin = __igt_spin_new(i915,
 					      .ctx = master,
 					      .engine = bond,
-					      .flags = IGT_SPIN_FENCE_OUT);
+					      .flags = IGT_SPIN_FENCE_OUT |
+					      (flags & USERPTR ? IGT_SPIN_USERPTR : 0));
 
 			eb = spin->execbuf;
 			eb.rsvd1 = ctx;
@@ -717,8 +722,6 @@ static void bonded(int i915, unsigned int flags)
 	gem_context_destroy(i915, master);
 }
 
-#define VIRTUAL_ENGINE (1u << 0)
-
 static unsigned int offset_in_page(void *addr)
 {
 	return (uintptr_t)addr & 4095;
@@ -1057,7 +1060,8 @@ static void bonded_chain(int i915)
 
 static void __bonded_sema(int i915, uint32_t ctx,
 			  const struct i915_engine_class_instance *siblings,
-			  unsigned int count)
+			  unsigned int count,
+			  unsigned long flags)
 {
 	const int priorities[] = { -1023, 0, 1023 };
 	struct drm_i915_gem_exec_object2 batch = {
@@ -1074,7 +1078,8 @@ static void __bonded_sema(int i915, uint32_t ctx,
 		/* A: spin forever on seperate render engine */
 		spin = igt_spin_new(i915,
 				    .flags = (IGT_SPIN_POLL_RUN |
-					      IGT_SPIN_FENCE_OUT));
+					      IGT_SPIN_FENCE_OUT |
+					      (flags & USERPTR ? IGT_SPIN_USERPTR : 0)));
 		igt_spin_busywait_until_started(spin);
 
 		/*
@@ -1128,7 +1133,7 @@ static void __bonded_sema(int i915, uint32_t ctx,
 	gem_close(i915, batch.handle);
 }
 
-static void bonded_semaphore(int i915)
+static void bonded_semaphore(int i915, unsigned long flags)
 {
 	uint32_t ctx;
 
@@ -1149,7 +1154,7 @@ static void bonded_semaphore(int i915)
 
 		siblings = list_engines(i915, 1u << class, &count);
 		if (count > 1)
-			__bonded_sema(i915, ctx, siblings, count);
+			__bonded_sema(i915, ctx, siblings, count, flags);
 		free(siblings);
 	}
 
@@ -1839,7 +1844,7 @@ static void __bonded_early(int i915, uint32_t ctx,
 	spin = igt_spin_new(i915,
 			    .ctx = ctx,
 			    .engine = (flags & VIRTUAL_ENGINE) ? 0 : 1,
-			    .flags = IGT_SPIN_NO_PREEMPTION);
+			    .flags = IGT_SPIN_NO_PREEMPTION | (flags & USERPTR ? IGT_SPIN_USERPTR : 0));
 
 	/* B: runs after A on engine 1 */
 	execbuf.flags = I915_EXEC_FENCE_OUT;
@@ -1882,7 +1887,7 @@ static void __bonded_early(int i915, uint32_t ctx,
 	igt_spin_free(i915, spin);
 }
 
-static void bonded_early(int i915)
+static void bonded_early(int i915, unsigned long flags)
 {
 	uint32_t ctx;
 
@@ -1909,8 +1914,8 @@ static void bonded_early(int i915)
 
 		siblings = list_engines(i915, 1u << class, &count);
 		if (count > 1) {
-			__bonded_early(i915, ctx, siblings, count, 0);
-			__bonded_early(i915, ctx, siblings, count, VIRTUAL_ENGINE);
+			__bonded_early(i915, ctx, siblings, count, flags);
+			__bonded_early(i915, ctx, siblings, count, flags | VIRTUAL_ENGINE);
 		}
 		free(siblings);
 	}
@@ -2882,7 +2887,16 @@ igt_main
 			bonded(i915, CORK);
 
 		igt_subtest("bonded-early")
-			bonded_early(i915);
+			bonded_early(i915, 0);
+
+		igt_subtest("u-bonded-imm")
+			bonded(i915, USERPTR);
+
+		igt_subtest("u-bonded-cork")
+			bonded(i915, CORK | USERPTR);
+
+		igt_subtest("u-bonded-early")
+			bonded_early(i915, USERPTR);
 	}
 
 	igt_subtest("bonded-slice")
@@ -2892,7 +2906,9 @@ igt_main
 		bonded_chain(i915);
 
 	igt_subtest("bonded-semaphore")
-		bonded_semaphore(i915);
+		bonded_semaphore(i915, 0);
+	igt_subtest("u-bonded-semaphore")
+		bonded_semaphore(i915, USERPTR);
 
 	igt_subtest("bonded-pair")
 		bonded_runner(i915, __bonded_pair);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

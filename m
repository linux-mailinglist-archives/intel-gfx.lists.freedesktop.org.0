Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C9318B9A9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 15:45:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFD16EA1F;
	Thu, 19 Mar 2020 14:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B66E96EA1E;
 Thu, 19 Mar 2020 14:45:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20618553-1500050 
 for multiple; Thu, 19 Mar 2020 14:44:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 14:44:53 +0000
Message-Id: <20200319144453.1131507-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_vm_create: Update of active VM
 disallowed
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

Allow the kernel the rights to reject updating an active VM with -EBUSY.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_param.c | 13 +++++++------
 tests/i915/gem_vm_create.c | 11 ++++++++++-
 2 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/tests/i915/gem_ctx_param.c b/tests/i915/gem_ctx_param.c
index 179992875..b2940abc2 100644
--- a/tests/i915/gem_ctx_param.c
+++ b/tests/i915/gem_ctx_param.c
@@ -211,13 +211,14 @@ static void test_vm(int i915)
 	gem_execbuf(i915, &eb);
 	igt_assert_eq_u64(batch.offset, nonzero_offset);
 
+	/* Note: changing an active ctx->vm may be verboten */
 	arg.ctx_id = child;
-	gem_context_set_param(i915, &arg);
-
-	eb.rsvd1 = child;
-	batch.offset = 0;
-	gem_execbuf(i915, &eb);
-	igt_assert_eq_u64(batch.offset, nonzero_offset);
+	if (__gem_context_set_param(i915, &arg) != -EBUSY) {
+		eb.rsvd1 = child;
+		batch.offset = 0;
+		gem_execbuf(i915, &eb);
+		igt_assert_eq_u64(batch.offset, nonzero_offset);
+	}
 
 	gem_context_destroy(i915, child);
 	gem_context_destroy(i915, parent);
diff --git a/tests/i915/gem_vm_create.c b/tests/i915/gem_vm_create.c
index e14b07b5f..a6d2dd91b 100644
--- a/tests/i915/gem_vm_create.c
+++ b/tests/i915/gem_vm_create.c
@@ -164,6 +164,7 @@ static void check_same_vm(int i915, uint32_t ctx_a, uint32_t ctx_b)
 	eb.rsvd1 = ctx_a;
 	gem_execbuf(i915, &eb);
 	igt_assert_eq_u64(batch.offset, 48 << 20);
+	gem_sync(i915, batch.handle); /* be still */
 
 	/* An already active VMA will try to keep its offset */
 	batch.offset = 0;
@@ -224,6 +225,7 @@ static void execbuf(int i915)
 	batch.offset = 48 << 20;
 	gem_execbuf(i915, &eb);
 	igt_assert_eq_u64(batch.offset, 48 << 20);
+	gem_sync(i915, batch.handle);
 
 	arg.value = gem_vm_create(i915);
 	gem_context_set_param(i915, &arg);
@@ -231,6 +233,8 @@ static void execbuf(int i915)
 	igt_assert_eq_u64(batch.offset, 48 << 20);
 	gem_vm_destroy(i915, arg.value);
 
+	gem_sync(i915, batch.handle); /* be idle! */
+
 	arg.value = gem_vm_create(i915);
 	gem_context_set_param(i915, &arg);
 	batch.offset = 0;
@@ -354,13 +358,18 @@ static void async_destroy(int i915)
 		.param = I915_CONTEXT_PARAM_VM,
 	};
 	igt_spin_t *spin[2];
+	int err;
 
 	spin[0] = igt_spin_new(i915,
 			       .ctx = arg.ctx_id,
 			       .flags = IGT_SPIN_POLL_RUN);
 	igt_spin_busywait_until_started(spin[0]);
 
-	gem_context_set_param(i915, &arg);
+	err = __gem_context_set_param(i915, &arg);
+	if (err == -EBUSY) /* update while busy may be verboten, let it ride. */
+		err = 0;
+	igt_assert_eq(err, 0);
+
 	spin[1] = __igt_spin_new(i915, .ctx = arg.ctx_id);
 
 	igt_spin_end(spin[0]);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

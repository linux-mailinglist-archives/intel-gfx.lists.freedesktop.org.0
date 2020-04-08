Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 743C41A2AA9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 22:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF93B6EB01;
	Wed,  8 Apr 2020 20:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B976EAFF;
 Wed,  8 Apr 2020 20:51:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20844005-1500050 
 for multiple; Wed, 08 Apr 2020 21:50:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 21:50:56 +0100
Message-Id: <20200408205056.2113025-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Show the actual error from
 submitting the rendercopy
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/gpu_cmds.c        | 13 ++++++-------
 lib/rendercopy_gen4.c | 13 ++++++-------
 lib/rendercopy_gen6.c | 13 ++++++-------
 lib/rendercopy_gen7.c | 13 ++++++-------
 lib/rendercopy_gen8.c | 13 ++++++-------
 lib/rendercopy_gen9.c | 13 ++++++-------
 6 files changed, 36 insertions(+), 42 deletions(-)

diff --git a/lib/gpu_cmds.c b/lib/gpu_cmds.c
index 79412725a..dc0ae96c6 100644
--- a/lib/gpu_cmds.c
+++ b/lib/gpu_cmds.c
@@ -39,13 +39,12 @@ gen7_render_flush(struct intel_batchbuffer *batch, uint32_t batch_end)
 void
 gen7_render_context_flush(struct intel_batchbuffer *batch, uint32_t batch_end)
 {
-	int ret;
-
-	ret = drm_intel_bo_subdata(batch->bo, 0, 4096, batch->buffer);
-	if (ret == 0)
-		ret = drm_intel_gem_bo_context_exec(batch->bo, batch->ctx,
-				batch_end, 0);
-	igt_assert(ret == 0);
+	igt_assert_eq(drm_intel_bo_subdata(batch->bo,
+					   0, 4096, batch->buffer),
+		      0);
+	igt_assert_eq(drm_intel_gem_bo_context_exec(batch->bo, batch->ctx,
+						    batch_end, 0),
+		      0);
 }
 
 uint32_t
diff --git a/lib/rendercopy_gen4.c b/lib/rendercopy_gen4.c
index d07b8e488..413e33578 100644
--- a/lib/rendercopy_gen4.c
+++ b/lib/rendercopy_gen4.c
@@ -124,13 +124,12 @@ static void
 gen4_render_flush(struct intel_batchbuffer *batch,
 		  drm_intel_context *context, uint32_t batch_end)
 {
-	int ret;
-
-	ret = drm_intel_bo_subdata(batch->bo, 0, 4096, batch->buffer);
-	if (ret == 0)
-		ret = drm_intel_gem_bo_context_exec(batch->bo, context,
-						    batch_end, 0);
-	assert(ret == 0);
+	igt_assert_eq(drm_intel_bo_subdata(batch->bo,
+					   0, 4096, batch->buffer),
+		      0);
+	igt_assert_eq(drm_intel_gem_bo_context_exec(batch->bo, context,
+						    batch_end, 0),
+		      0);
 }
 
 static uint32_t
diff --git a/lib/rendercopy_gen6.c b/lib/rendercopy_gen6.c
index 870347748..16cbb679b 100644
--- a/lib/rendercopy_gen6.c
+++ b/lib/rendercopy_gen6.c
@@ -62,13 +62,12 @@ static void
 gen6_render_flush(struct intel_batchbuffer *batch,
 		  drm_intel_context *context, uint32_t batch_end)
 {
-	int ret;
-
-	ret = drm_intel_bo_subdata(batch->bo, 0, 4096, batch->buffer);
-	if (ret == 0)
-		ret = drm_intel_gem_bo_context_exec(batch->bo, context,
-						    batch_end, 0);
-	igt_assert(ret == 0);
+	igt_assert_eq(drm_intel_bo_subdata(batch->bo,
+					   0, 4096, batch->buffer),
+		      0);
+	igt_assert_eq(drm_intel_gem_bo_context_exec(batch->bo,
+						    context, batch_end, 0),
+		      0);
 }
 
 static uint32_t
diff --git a/lib/rendercopy_gen7.c b/lib/rendercopy_gen7.c
index b88b75e98..93b4da720 100644
--- a/lib/rendercopy_gen7.c
+++ b/lib/rendercopy_gen7.c
@@ -36,13 +36,12 @@ static void
 gen7_render_flush(struct intel_batchbuffer *batch,
 		  drm_intel_context *context, uint32_t batch_end)
 {
-	int ret;
-
-	ret = drm_intel_bo_subdata(batch->bo, 0, 4096, batch->buffer);
-	if (ret == 0)
-		ret = drm_intel_gem_bo_context_exec(batch->bo, context,
-						    batch_end, 0);
-	igt_assert(ret == 0);
+	igt_assert_eq(drm_intel_bo_subdata(batch->bo,
+					   0, 4096, batch->buffer),
+		      0);
+	igt_assert_eq(drm_intel_gem_bo_context_exec(batch->bo, context,
+						    batch_end, 0),
+		      0);
 }
 
 static uint32_t
diff --git a/lib/rendercopy_gen8.c b/lib/rendercopy_gen8.c
index bace64a7a..75005d0b9 100644
--- a/lib/rendercopy_gen8.c
+++ b/lib/rendercopy_gen8.c
@@ -132,13 +132,12 @@ static void
 gen6_render_flush(struct intel_batchbuffer *batch,
 		  drm_intel_context *context, uint32_t batch_end)
 {
-	int ret;
-
-	ret = drm_intel_bo_subdata(batch->bo, 0, 4096, batch->buffer);
-	if (ret == 0)
-		ret = drm_intel_gem_bo_context_exec(batch->bo, context,
-						    batch_end, 0);
-	igt_assert(ret == 0);
+	igt_assert_eq(drm_intel_bo_subdata(batch->bo,
+					   0, 4096, batch->buffer),
+		      0);
+	igt_assert_eq(drm_intel_gem_bo_context_exec(batch->bo, context,
+						    batch_end, 0),
+		      0);
 }
 
 /* Mostly copy+paste from gen6, except height, width, pitch moved */
diff --git a/lib/rendercopy_gen9.c b/lib/rendercopy_gen9.c
index f364c2b9e..85ae4cabc 100644
--- a/lib/rendercopy_gen9.c
+++ b/lib/rendercopy_gen9.c
@@ -182,13 +182,12 @@ static void
 gen6_render_flush(struct intel_batchbuffer *batch,
 		  drm_intel_context *context, uint32_t batch_end)
 {
-	int ret;
-
-	ret = drm_intel_bo_subdata(batch->bo, 0, 4096, batch->buffer);
-	if (ret == 0)
-		ret = drm_intel_gem_bo_context_exec(batch->bo, context,
-						    batch_end, 0);
-	assert(ret == 0);
+	igt_assert_eq(drm_intel_bo_subdata(batch->bo,
+					   0, 4096, batch->buffer),
+		      0);
+	igt_assert_eq(drm_intel_gem_bo_context_exec(batch->bo,
+						    context, batch_end, 0),
+		      0);
 }
 
 /* Mostly copy+paste from gen6, except height, width, pitch moved */
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

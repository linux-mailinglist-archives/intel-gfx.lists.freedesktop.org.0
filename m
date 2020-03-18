Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F269189D3A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 14:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE486E29A;
	Wed, 18 Mar 2020 13:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 963776E29A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 13:43:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20603335-1500050 
 for multiple; Wed, 18 Mar 2020 13:43:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 13:43:44 +0000
Message-Id: <20200318134344.11601-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Prefer '%ps' for printing function
 symbol names
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

%pS includes the offset, which is useful for return addresses but noise
when we are pretty printing a known (and expected) function entry point.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_sw_fence.c          | 2 +-
 drivers/gpu/drm/i915/selftests/i915_active.c  | 2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index a3d38e089b6e..7daf81f55c90 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -421,7 +421,7 @@ static void timer_i915_sw_fence_wake(struct timer_list *t)
 	if (!fence)
 		return;
 
-	pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%pS)\n",
+	pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%ps)\n",
 		  cb->dma->ops->get_driver_name(cb->dma),
 		  cb->dma->ops->get_timeline_name(cb->dma),
 		  cb->dma->seqno,
diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index 68bbb1580162..54080fb4af4b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -277,7 +277,7 @@ static struct intel_engine_cs *node_to_barrier(struct active_node *it)
 
 void i915_active_print(struct i915_active *ref, struct drm_printer *m)
 {
-	drm_printf(m, "active %pS:%pS\n", ref->active, ref->retire);
+	drm_printf(m, "active %ps:%ps\n", ref->active, ref->retire);
 	drm_printf(m, "\tcount: %d\n", atomic_read(&ref->count));
 	drm_printf(m, "\tpreallocated barriers? %s\n",
 		   yesno(!llist_empty(&ref->preallocated_barriers)));
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index f89d9c42f1fa..7ac9616de9d8 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1233,7 +1233,7 @@ static int live_parallel_engines(void *arg)
 		struct igt_live_test t;
 		unsigned int idx;
 
-		snprintf(name, sizeof(name), "%pS", fn);
+		snprintf(name, sizeof(name), "%ps", fn);
 		err = igt_live_test_begin(&t, i915, __func__, name);
 		if (err)
 			break;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

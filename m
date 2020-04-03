Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3F919DF6D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 22:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DB689996;
	Fri,  3 Apr 2020 20:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B10A89996
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 20:33:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20793904-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 21:33:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Apr 2020 21:33:03 +0100
Message-Id: <20200403203303.10903-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Free request pool from virtual engines
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

While extremely unlikely to be populated, we could capture a request on
the virtual engine which we should free along with the virtual engine.

Fixes: 43acd6516ca9 ("drm/i915: Keep a per-engine request pool")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h    |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 13 +++++++++----
 drivers/gpu/drm/i915/gt/intel_lrc.c       |  2 ++
 3 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index b469de0dd9b6..d9ee64e2ef79 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -199,6 +199,8 @@ void intel_engine_cleanup(struct intel_engine_cs *engine);
 int intel_engines_init_mmio(struct intel_gt *gt);
 int intel_engines_init(struct intel_gt *gt);
 
+void intel_engine_free_request_pool(struct intel_engine_cs *engine);
+
 void intel_engines_release(struct intel_gt *gt);
 void intel_engines_free(struct intel_gt *gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 5f45c8274203..977e23fac5ce 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -426,6 +426,14 @@ void intel_engines_release(struct intel_gt *gt)
 	}
 }
 
+void intel_engine_free_request_pool(struct intel_engine_cs *engine)
+{
+	if (!engine->request_pool)
+		return;
+
+	kmem_cache_free(i915_request_slab_cache(), engine->request_pool);
+}
+
 void intel_engines_free(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
@@ -435,10 +443,7 @@ void intel_engines_free(struct intel_gt *gt)
 	rcu_barrier();
 
 	for_each_engine(engine, gt, id) {
-		if (engine->request_pool)
-			kmem_cache_free(i915_request_slab_cache(),
-					engine->request_pool);
-
+		intel_engine_free_request_pool(engine);
 		kfree(engine);
 		gt->engine[id] = NULL;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f028114714cd..19ffc7763683 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4931,6 +4931,8 @@ static void virtual_context_destroy(struct kref *kref)
 		__execlists_context_fini(&ve->context);
 	intel_context_fini(&ve->context);
 
+	intel_engine_free_request_pool(&ve->base);
+
 	kfree(ve->bonds);
 	kfree(ve);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD5412D57D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 02:33:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9A66E092;
	Tue, 31 Dec 2019 01:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE5B6E0A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 01:33:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19730575-1500050 
 for multiple; Tue, 31 Dec 2019 01:33:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 01:33:08 +0000
Message-Id: <20191231013309.3998505-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
References: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Discard stale context state
 from across idling
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Before we idle, on parking, we switch to the kernel context such that we
have a scratch context loaded while the GPU idle, protecting any
precious user state. Be paranoid and assume that the idle state may have
been trashed, and reset the kernel_context image after idling.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 8 --------
 drivers/gpu/drm/i915/gt/mock_engine.c     | 5 +++++
 3 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index cd82f0baef49..1b9f73948f22 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -20,6 +20,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 {
 	struct intel_engine_cs *engine =
 		container_of(wf, typeof(*engine), wakeref);
+	struct intel_context *ce;
 	void *map;
 
 	ENGINE_TRACE(engine, "\n");
@@ -34,6 +35,11 @@ static int __engine_unpark(struct intel_wakeref *wf)
 	if (!IS_ERR_OR_NULL(map))
 		engine->pinned_default_state = map;
 
+	/* Discard stale context state from across idling */
+	ce = engine->kernel_context;
+	if (ce)
+		ce->ops->reset(ce);
+
 	if (engine->unpark)
 		engine->unpark(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 9b220c930ebc..d1c2f034296a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -213,16 +213,8 @@ int intel_gt_resume(struct intel_gt *gt)
 	intel_llc_enable(&gt->llc);
 
 	for_each_engine(engine, gt, id) {
-		struct intel_context *ce;
-
 		intel_engine_pm_get(engine);
 
-		ce = engine->kernel_context;
-		if (ce) {
-			GEM_BUG_ON(!intel_context_is_pinned(ce));
-			ce->ops->reset(ce);
-		}
-
 		engine->serial++; /* kernel context lost */
 		err = engine->resume(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 4e1eafa94be9..d0e68ce9aa51 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -152,6 +152,10 @@ static int mock_context_pin(struct intel_context *ce)
 	return intel_context_active_acquire(ce);
 }
 
+static void mock_context_reset(struct intel_context *ce)
+{
+}
+
 static const struct intel_context_ops mock_context_ops = {
 	.alloc = mock_context_alloc,
 
@@ -161,6 +165,7 @@ static const struct intel_context_ops mock_context_ops = {
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
 
+	.reset = mock_context_reset,
 	.destroy = mock_context_destroy,
 };
 
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B05A12675B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 17:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334AC6E379;
	Thu, 19 Dec 2019 16:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43A389D8D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 16:46:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19636029-1500050 
 for multiple; Thu, 19 Dec 2019 16:45:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 16:45:51 +0000
Message-Id: <20191219164551.9402-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only disable powergating around
 rcs activity
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

References: https://gitlab.freedesktop.org/drm/intel/issues/846
Cc: Imre Deak <imre.deak@intel.com>
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c |  4 ++
 drivers/gpu/drm/i915/gt/intel_rc6.c       | 46 +++++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_rc6.h       |  3 ++
 drivers/gpu/drm/i915/gt/intel_rc6_types.h |  6 +++
 4 files changed, 52 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 8fb7b34fc5a6..1886d604f1ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -36,6 +36,8 @@ static int __engine_unpark(struct intel_wakeref *wf)
 	if (engine->unpark)
 		engine->unpark(engine);
 
+	intel_rc6_unpark_engine(&engine->gt->rc6, engine);
+
 	intel_engine_unpark_heartbeat(engine);
 	return 0;
 }
@@ -232,6 +234,8 @@ static int __engine_park(struct intel_wakeref *wf)
 	intel_engine_disarm_breadcrumbs(engine);
 	intel_engine_pool_park(&engine->pool);
 
+	intel_rc6_park_engine(&engine->gt->rc6, engine);
+
 	/* Must be reset upon idling, or we may miss the busy wakeup. */
 	GEM_BUG_ON(engine->execlists.queue_priority_hint != INT_MIN);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 9e303c29d6e3..7024c34917a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -175,13 +175,7 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
 		GEN6_RC_CTL_RC6_ENABLE |
 		rc6_mode;
 
-	/*
-	 * WaRsDisableCoarsePowerGating:skl,cnl
-	 *   - Render/Media PG need to be disabled with RC6.
-	 */
-	if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)))
-		set(uncore, GEN9_PG_ENABLE,
-		    GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
+	rc6->engines[RENDER_CLASS].pg_enable = GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE;
 }
 
 static void gen8_rc6_enable(struct intel_rc6 *rc6)
@@ -601,6 +595,44 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
 	set(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
 }
 
+void intel_rc6_unpark_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine)
+{
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+	struct intel_pg_engine *e = &rc6->engines[engine->class];
+
+	if (!rc6->enabled)
+		return;
+
+	if (!e->pg_enable)
+		return;
+
+	spin_lock_irq(&uncore->lock);
+	if (!e->active++) {
+		rc6->pg_enable &= ~e->pg_enable;
+		set(uncore, GEN9_PG_ENABLE, rc6->pg_enable);
+	}
+	spin_unlock_irq(&uncore->lock);
+}
+
+void intel_rc6_park_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine)
+{
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+	struct intel_pg_engine *e = &rc6->engines[engine->class];
+
+	if (!rc6->enabled)
+		return;
+
+	if (!e->pg_enable)
+		return;
+
+	spin_lock_irq(&uncore->lock);
+	if (e->active > 0 && !--e->active) {
+		rc6->pg_enable |= e->pg_enable;
+		set(uncore, GEN9_PG_ENABLE, rc6->pg_enable);
+	}
+	spin_unlock_irq(&uncore->lock);
+}
+
 void intel_rc6_park(struct intel_rc6 *rc6)
 {
 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
index 9f0f23fca8af..d4e422038866 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
@@ -18,6 +18,9 @@ void intel_rc6_fini(struct intel_rc6 *rc6);
 void intel_rc6_unpark(struct intel_rc6 *rc6);
 void intel_rc6_park(struct intel_rc6 *rc6);
 
+void intel_rc6_unpark_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine);
+void intel_rc6_park_engine(struct intel_rc6 *rc6, struct intel_engine_cs *engine);
+
 void intel_rc6_sanitize(struct intel_rc6 *rc6);
 void intel_rc6_enable(struct intel_rc6 *rc6);
 void intel_rc6_disable(struct intel_rc6 *rc6);
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index bfbb623f7a4f..e6fce9e7b34e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
@@ -22,6 +22,12 @@ struct intel_rc6 {
 
 	struct drm_i915_gem_object *pctx;
 
+	u32 pg_enable;
+	struct intel_pg_engine {
+		unsigned int active;
+		u32 pg_enable;
+	} engines[4];
+
 	bool supported : 1;
 	bool enabled : 1;
 	bool manual : 1;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

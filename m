Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC6F14E946
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 08:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9C256FA95;
	Fri, 31 Jan 2020 07:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B0E26FA91
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 07:57:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20068049-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 07:57:17 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 07:57:15 +0000
Message-Id: <20200131075716.2212299-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
References: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915: extract engine WA programming to
 common resume function
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

The workarounds are a common "feature" across gens and submission
mechanisms and we already call the other WA related functions from
common engine ones (<setup/cleanup>_common), so it makes sense to
do the same with WA application. Medium-term, This will help us
reduce the duplication once the GuC resume function is added, but short
term it will also allow us to use the workaround lists for pre-gen8
engine workarounds.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h    |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c       |  3 ---
 drivers/gpu/drm/i915/gt/intel_reset.c     |  4 ++--
 5 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 5df003061e44..b36ec1fddc3d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -192,6 +192,8 @@ void intel_engines_free(struct intel_gt *gt);
 int intel_engine_init_common(struct intel_engine_cs *engine);
 void intel_engine_cleanup_common(struct intel_engine_cs *engine);
 
+int intel_engine_resume(struct intel_engine_cs *engine);
+
 int intel_ring_submission_setup(struct intel_engine_cs *engine);
 
 int intel_engine_stop_cs(struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 86af5edd6933..b1c7b1ed6149 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -841,6 +841,20 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 	intel_wa_list_free(&engine->whitelist);
 }
 
+/**
+ * intel_engine_resume - re-initializes the HW state of the engine
+ * @engine: Engine to resume.
+ *
+ * Returns zero on success or an error code on failure.
+ */
+int intel_engine_resume(struct intel_engine_cs *engine)
+{
+	intel_engine_apply_workarounds(engine);
+	intel_engine_apply_whitelist(engine);
+
+	return engine->resume(engine);
+}
+
 u64 intel_engine_get_active_head(const struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *i915 = engine->i915;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index d1c2f034296a..8b653c0f5e5f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -216,7 +216,7 @@ int intel_gt_resume(struct intel_gt *gt)
 		intel_engine_pm_get(engine);
 
 		engine->serial++; /* kernel context lost */
-		err = engine->resume(engine);
+		err = intel_engine_resume(engine);
 
 		intel_engine_pm_put(engine);
 		if (err) {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 5906fc7df2a4..c196fb90c59f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3435,9 +3435,6 @@ static bool unexpected_starting_state(struct intel_engine_cs *engine)
 
 static int execlists_resume(struct intel_engine_cs *engine)
 {
-	intel_engine_apply_workarounds(engine);
-	intel_engine_apply_whitelist(engine);
-
 	intel_mocs_init_engine(engine);
 
 	intel_engine_reset_breadcrumbs(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index d77a1a32da78..a8317e046f81 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -986,7 +986,7 @@ static int resume(struct intel_gt *gt)
 	int ret;
 
 	for_each_engine(engine, gt, id) {
-		ret = engine->resume(engine);
+		ret = intel_engine_resume(engine);
 		if (ret)
 			return ret;
 	}
@@ -1161,7 +1161,7 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	 * have been reset to their default values. Follow the init_ring
 	 * process to program RING_MODE, HWSP and re-enable submission.
 	 */
-	ret = engine->resume(engine);
+	ret = intel_engine_resume(engine);
 
 out:
 	intel_engine_cancel_stop_cs(engine);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

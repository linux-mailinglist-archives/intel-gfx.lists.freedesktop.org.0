Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD30E300C72
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 20:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B806EA46;
	Fri, 22 Jan 2021 19:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF0F6EA39
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23675685-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 19:29:06 +0000
Message-Id: <20210122192913.4518-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210122192913.4518-1-chris@chris-wilson.co.uk>
References: <20210122192913.4518-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 03/10] drm/i915/gt: Remove repeated words from
 comments
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

Checkpatch spotted a few repeated words in the comment, genuine
mistakes.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c                 | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset_types.h          | 2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c          | 2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c         | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 3e680bfa9d13..304d4b8e08e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3108,7 +3108,7 @@ static void execlists_release(struct intel_engine_cs *engine)
 static void
 logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 {
-	/* Default vfuncs which can be overriden by each engine. */
+	/* Default vfuncs which can be overridden by each engine. */
 
 	engine->resume = execlists_resume;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index eece0844fbe9..dac07d66f658 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -92,7 +92,7 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
 }
 
 /*
- * Certain Gen5 chipsets require require idling the GPU before
+ * Certain Gen5 chipsets require idling the GPU before
  * unmapping anything from the GTT when VT-d is enabled.
  */
 static bool needs_idle_maps(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/gt/intel_reset_types.h b/drivers/gpu/drm/i915/gt/intel_reset_types.h
index add6b86d9d03..9312b29f5a97 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset_types.h
@@ -32,7 +32,7 @@ struct intel_reset {
 	 *
 	 * #I915_WEDGED_ON_INIT - If we fail to initialize the GPU we can no
 	 * longer use the GPU - similar to #I915_WEDGED bit. The difference in
-	 * in the way we're handling "forced" unwedged (e.g. through debugfs),
+	 * the way we're handling "forced" unwedged (e.g. through debugfs),
 	 * which is not allowed in case we failed to initialize.
 	 *
 	 * #I915_WEDGED_ON_FINI - Similar to #I915_WEDGED_ON_INIT, except we
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e51e6977016a..8abfd6ad9718 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -280,7 +280,7 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
 
 	/* Use Force Non-Coherent whenever executing a 3D context. This is a
-	 * workaround for for a possible hang in the unlikely event a TLB
+	 * workaround for a possible hang in the unlikely event a TLB
 	 * invalidation occurs during a PSD flush.
 	 */
 	/* WaForceEnableNonCoherent:bdw,chv */
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 4f2853a83075..6cfa9a89d891 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2864,7 +2864,7 @@ static int __live_preempt_ring(struct intel_engine_cs *engine,
 	err = wait_for_submit(engine, rq, HZ / 2);
 	i915_request_put(rq);
 	if (err) {
-		pr_err("%s: preemption request was not submited\n",
+		pr_err("%s: preemption request was not submitted\n",
 		       engine->name);
 		err = -ETIME;
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

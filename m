Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2115310EF6
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 18:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FBCF6F4B2;
	Fri,  5 Feb 2021 17:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 229B76F49F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 17:44:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23801153-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Feb 2021 17:43:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 17:43:58 +0000
Message-Id: <20210205174358.28465-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210205174358.28465-1-chris@chris-wilson.co.uk>
References: <20210205174358.28465-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Pull all execlists scheduler
 initialisation together
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

Put all the scheduler initialisation code for execlists into a common
routine. This is to reduce code movement later.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 26 ++++++++++++-------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 9d24d91f5ae7..3a01b66939a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2917,7 +2917,7 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
 	}
 }
 
-int intel_execlists_submission_setup(struct intel_engine_cs *engine)
+static void init_execlists(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct drm_i915_private *i915 = engine->i915;
@@ -2925,17 +2925,10 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	u32 base = engine->mmio_base;
 
 	tasklet_setup(&engine->execlists.tasklet, execlists_submission_tasklet);
+
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
-	logical_ring_default_vfuncs(engine);
-	logical_ring_default_irqs(engine);
-
-	if (engine->class == RENDER_CLASS)
-		rcs_submission_override(engine);
-
-	lrc_init_wa_ctx(engine);
-
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
 		execlists->submit_reg = uncore->regs +
 			i915_mmio_reg_offset(RING_EXECLIST_SQ_CONTENTS(base));
@@ -2958,10 +2951,23 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 		execlists->csb_size = GEN11_CSB_ENTRIES;
 
 	engine->context_tag = GENMASK(BITS_PER_LONG - 2, 0);
-	if (INTEL_GEN(engine->i915) >= 11) {
+	if (INTEL_GEN(i915) >= 11) {
 		execlists->ccid |= engine->instance << (GEN11_ENGINE_INSTANCE_SHIFT - 32);
 		execlists->ccid |= engine->class << (GEN11_ENGINE_CLASS_SHIFT - 32);
 	}
+}
+
+int intel_execlists_submission_setup(struct intel_engine_cs *engine)
+{
+	logical_ring_default_vfuncs(engine);
+	logical_ring_default_irqs(engine);
+
+	if (engine->class == RENDER_CLASS)
+		rcs_submission_override(engine);
+
+	init_execlists(engine);
+
+	lrc_init_wa_ctx(engine);
 
 	/* Finally, take ownership and responsibility for cleanup! */
 	engine->sanitize = execlists_sanitize;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

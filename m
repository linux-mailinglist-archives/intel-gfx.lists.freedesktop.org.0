Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D37B31E9F2C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B94F6E186;
	Mon,  1 Jun 2020 07:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA6C6E175
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356603-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:13 +0100
Message-Id: <20200601072446.19548-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/36] drm/i915/gt: Move legacy context wa to
 intel_workarounds
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the central mechanism for recording and verifying that we restore
the w/a for the older devices as well.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 28 -----------------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 31 +++++++++++++++++++
 2 files changed, 31 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 96881cd8b17b..d9c1701061b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -429,32 +429,6 @@ static void reset_finish(struct intel_engine_cs *engine)
 {
 }
 
-static int rcs_resume(struct intel_engine_cs *engine)
-{
-	struct drm_i915_private *i915 = engine->i915;
-	struct intel_uncore *uncore = engine->uncore;
-
-	/*
-	 * Disable CONSTANT_BUFFER before it is loaded from the context
-	 * image. For as it is loaded, it is executed and the stored
-	 * address may no longer be valid, leading to a GPU hang.
-	 *
-	 * This imposes the requirement that userspace reload their
-	 * CONSTANT_BUFFER on every batch, fortunately a requirement
-	 * they are already accustomed to from before contexts were
-	 * enabled.
-	 */
-	if (IS_GEN(i915, 4))
-		intel_uncore_write(uncore, ECOSKPD,
-			   _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE));
-
-	if (IS_GEN_RANGE(i915, 6, 7))
-		intel_uncore_write(uncore, INSTPM,
-				   _MASKED_BIT_ENABLE(INSTPM_FORCE_ORDERING));
-
-	return xcs_resume(engine);
-}
-
 static void reset_cancel(struct intel_engine_cs *engine)
 {
 	struct i915_request *request;
@@ -1139,8 +1113,6 @@ static void setup_rcs(struct intel_engine_cs *engine)
 
 	if (IS_HASWELL(i915))
 		engine->emit_bb_start = hsw_emit_bb_start;
-
-	engine->resume = rcs_resume;
 }
 
 static void setup_vcs(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index fa1e15657663..94d66a9d760d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -199,6 +199,18 @@ wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 #define WA_SET_FIELD_MASKED(addr, mask, value) \
 	wa_write_masked_or(wal, (addr), 0, _MASKED_FIELD((mask), (value)))
 
+static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
+				      struct i915_wa_list *wal)
+{
+	WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);
+}
+
+static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
+				      struct i915_wa_list *wal)
+{
+	WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);
+}
+
 static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
@@ -638,6 +650,10 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 		chv_ctx_workarounds_init(engine, wal);
 	else if (IS_BROADWELL(i915))
 		bdw_ctx_workarounds_init(engine, wal);
+	else if (IS_GEN(i915, 7))
+		gen7_ctx_workarounds_init(engine, wal);
+	else if (IS_GEN(i915, 6))
+		gen6_ctx_workarounds_init(engine, wal);
 	else if (INTEL_GEN(i915) < 8)
 		return;
 	else
@@ -1583,6 +1599,21 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
 		       /* XXX bit doesn't stick on Broadwater */
 		       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH);
+
+	if (IS_GEN(i915, 4))
+		/*
+		 * Disable CONSTANT_BUFFER before it is loaded from the context
+		 * image. For as it is loaded, it is executed and the stored
+		 * address may no longer be valid, leading to a GPU hang.
+		 *
+		 * This imposes the requirement that userspace reload their
+		 * CONSTANT_BUFFER on every batch, fortunately a requirement
+		 * they are already accustomed to from before contexts were
+		 * enabled.
+		 */
+		wa_add(wal, ECOSKPD,
+		       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
+		       0 /* XXX bit doesn't stick on Broadwater */);
 }
 
 static void
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

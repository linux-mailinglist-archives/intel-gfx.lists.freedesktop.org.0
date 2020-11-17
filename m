Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 560792B5DC8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 12:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A17E56E194;
	Tue, 17 Nov 2020 11:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3836E17E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 11:01:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23015797-1500050 
 for multiple; Tue, 17 Nov 2020 11:01:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:01:25 +0000
Message-Id: <20201117110132.22267-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/gt: Lock
 intel_engine_apply_whitelist with uncore->lock
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Refactor intel_engine_apply_whitelist into locked and unlocked versions
so that a caller who already has the lock can apply whitelist.

v2: Fix sparse warning
v3: (Chris)
- Drop prefix and suffix for static function
- Use longest to shortest line ordering for variable declaration

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Chris Wilson <chris.p.wilson@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 44 +++++++++++++++------
 1 file changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index adc9a8ea410a..c49083957074 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1339,7 +1339,8 @@ void intel_gt_init_workarounds(struct drm_i915_private *i915)
 }
 
 static enum forcewake_domains
-wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
+wal_get_fw(struct intel_uncore *uncore, const struct i915_wa_list *wal,
+	   unsigned int op)
 {
 	enum forcewake_domains fw = 0;
 	struct i915_wa *wa;
@@ -1348,8 +1349,7 @@ wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
 		fw |= intel_uncore_forcewake_for_reg(uncore,
 						     wa->reg,
-						     FW_REG_READ |
-						     FW_REG_WRITE);
+						     op);
 
 	return fw;
 }
@@ -1379,7 +1379,7 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 	if (!wal->count)
 		return;
 
-	fw = wal_get_fw_for_rmw(uncore, wal);
+	fw = wal_get_fw(uncore, wal, FW_REG_READ | FW_REG_WRITE);
 
 	spin_lock_irqsave(&uncore->lock, flags);
 	intel_uncore_forcewake_get__locked(uncore, fw);
@@ -1705,27 +1705,45 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 	wa_init_finish(w);
 }
 
-void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
+static void __engine_apply_whitelist(struct intel_engine_cs *engine)
 {
 	const struct i915_wa_list *wal = &engine->whitelist;
 	struct intel_uncore *uncore = engine->uncore;
 	const u32 base = engine->mmio_base;
+	enum forcewake_domains fw;
 	struct i915_wa *wa;
 	unsigned int i;
 
-	if (!wal->count)
-		return;
+	lockdep_assert_held(&uncore->lock);
+
+	fw = wal_get_fw(uncore, wal, FW_REG_WRITE);
+	intel_uncore_forcewake_get__locked(uncore, fw);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
-		intel_uncore_write(uncore,
-				   RING_FORCE_TO_NONPRIV(base, i),
-				   i915_mmio_reg_offset(wa->reg));
+		intel_uncore_write_fw(uncore,
+				      RING_FORCE_TO_NONPRIV(base, i),
+				      i915_mmio_reg_offset(wa->reg));
 
 	/* And clear the rest just in case of garbage */
 	for (; i < RING_MAX_NONPRIV_SLOTS; i++)
-		intel_uncore_write(uncore,
-				   RING_FORCE_TO_NONPRIV(base, i),
-				   i915_mmio_reg_offset(RING_NOPID(base)));
+		intel_uncore_write_fw(uncore,
+				      RING_FORCE_TO_NONPRIV(base, i),
+				      i915_mmio_reg_offset(RING_NOPID(base)));
+
+	intel_uncore_forcewake_put__locked(uncore, fw);
+}
+
+void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
+{
+	const struct i915_wa_list *wal = &engine->whitelist;
+	unsigned long flags;
+
+	if (!wal->count)
+		return;
+
+	spin_lock_irqsave(&engine->uncore->lock, flags);
+	__engine_apply_whitelist(engine);
+	spin_unlock_irqrestore(&engine->uncore->lock, flags);
 }
 
 static void
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

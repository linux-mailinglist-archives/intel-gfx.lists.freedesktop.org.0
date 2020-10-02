Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E05F6281F06
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 01:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80EBB6E9E9;
	Fri,  2 Oct 2020 23:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699CD6E9E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 23:28:02 +0000 (UTC)
IronPort-SDR: ULV5F5nKTAxVdLz3sJxKP5jX5gn9nR7MeuSNuk7wxLeeu7qm5kGxmlXwkbY5zV8FeWwA3tsSW8
 Nexx0jtd8yRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="163969277"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="163969277"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
IronPort-SDR: yHsSfpuDJk+2b9RUi8AvtkqajW1ib+5RUWlnigdCx9A71LMCbMvBzsMRIzHCNIS+oewGMrFI0v
 uy8yMrtxPpog==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="325972368"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Fri,  2 Oct 2020 16:27:57 -0700
Message-Id: <20201002232801.51936-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
References: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Lock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Refactor intel_engine_apply_whitelist into locked and unlocked versions
so that a caller who already has the lock can apply whitelist.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 44 +++++++++++++++------
 1 file changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6c580d0d9ea8..b7db34dc9687 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1295,7 +1295,8 @@ void intel_gt_init_workarounds(struct drm_i915_private *i915)
 }
 
 static enum forcewake_domains
-wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
+wal_get_fw(struct intel_uncore *uncore, const struct i915_wa_list *wal,
+	   unsigned int op)
 {
 	enum forcewake_domains fw = 0;
 	struct i915_wa *wa;
@@ -1304,8 +1305,7 @@ wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
 		fw |= intel_uncore_forcewake_for_reg(uncore,
 						     wa->reg,
-						     FW_REG_READ |
-						     FW_REG_WRITE);
+						     op);
 
 	return fw;
 }
@@ -1335,7 +1335,7 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 	if (!wal->count)
 		return;
 
-	fw = wal_get_fw_for_rmw(uncore, wal);
+	fw = wal_get_fw(uncore, wal, FW_REG_READ | FW_REG_WRITE);
 
 	spin_lock_irqsave(&uncore->lock, flags);
 	intel_uncore_forcewake_get__locked(uncore, fw);
@@ -1645,27 +1645,45 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 	wa_init_finish(w);
 }
 
-void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
+void intel_engine_apply_whitelist_locked(struct intel_engine_cs *engine)
 {
 	const struct i915_wa_list *wal = &engine->whitelist;
 	struct intel_uncore *uncore = engine->uncore;
 	const u32 base = engine->mmio_base;
 	struct i915_wa *wa;
 	unsigned int i;
+	enum forcewake_domains fw;
 
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
+	unsigned long flags;
+	const struct i915_wa_list *wal = &engine->whitelist;
+
+	if (!wal->count)
+		return;
+
+	spin_lock_irqsave(&engine->uncore->lock, flags);
+	intel_engine_apply_whitelist_locked(engine);
+	spin_unlock_irqrestore(&engine->uncore->lock, flags);
 }
 
 static void
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

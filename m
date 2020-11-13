Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC8F2B2344
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 19:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FEBB6E598;
	Fri, 13 Nov 2020 18:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A756E598
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 18:04:25 +0000 (UTC)
IronPort-SDR: ZnSy/cEjmNUQVQxCwvU1lDuRl+djwf49/E8icJgnwvJ/O2w15fvccIiY7NEb+6lFDV5CmONCQ6
 jzAUpexS4CEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167931875"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="167931875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 10:04:00 -0800
IronPort-SDR: neqdk+DzYg9FJhuVG3aKpIxG8D+CUYcSBJtg9RWhecMvR0v9qSSVj69OQnroX5W8bdTsI61/TN
 MgSMkT51wMbQ==
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="474752361"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 10:03:59 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 10:03:54 -0800
Message-Id: <20201113180359.54410-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201113180359.54410-1-umesh.nerlige.ramappa@intel.com>
References: <20201113180359.54410-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/gt: Lock
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
index fed9503a7c4e..fa8c9d86847d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1337,7 +1337,8 @@ void intel_gt_init_workarounds(struct drm_i915_private *i915)
 }
 
 static enum forcewake_domains
-wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
+wal_get_fw(struct intel_uncore *uncore, const struct i915_wa_list *wal,
+	   unsigned int op)
 {
 	enum forcewake_domains fw = 0;
 	struct i915_wa *wa;
@@ -1346,8 +1347,7 @@ wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
 		fw |= intel_uncore_forcewake_for_reg(uncore,
 						     wa->reg,
-						     FW_REG_READ |
-						     FW_REG_WRITE);
+						     op);
 
 	return fw;
 }
@@ -1377,7 +1377,7 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
 	if (!wal->count)
 		return;
 
-	fw = wal_get_fw_for_rmw(uncore, wal);
+	fw = wal_get_fw(uncore, wal, FW_REG_READ | FW_REG_WRITE);
 
 	spin_lock_irqsave(&uncore->lock, flags);
 	intel_uncore_forcewake_get__locked(uncore, fw);
@@ -1703,27 +1703,45 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
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

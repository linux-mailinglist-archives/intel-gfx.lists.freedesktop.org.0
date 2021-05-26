Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16301391412
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 11:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E9376EC40;
	Wed, 26 May 2021 09:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349066EC27;
 Wed, 26 May 2021 09:49:14 +0000 (UTC)
IronPort-SDR: nEAolHw7hAnDzLqVZ+tHR0V4o+W+r3CyD/yG6S913PUOlwmk9ienyiFOEVpQSs0EKjEVe4bYdw
 lLk77VYKCfqA==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="189546949"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="189546949"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 02:49:13 -0700
IronPort-SDR: ki22+RwFn0SeV4EEbqoytTi1fielwA6TPWE9Kyzilf9zngIkeV7oh6OAlS/+8xeIbSdXiZ3Ar0
 lP5sNBzOmIlA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="547135999"
Received: from sjmeneze-mobl2.amr.corp.intel.com (HELO aswarup-mobl.intel.com)
 ([10.251.6.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 02:49:12 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 02:48:52 -0700
Message-Id: <20210526094852.286424-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210526094852.286424-1-aditya.swarup@intel.com>
References: <20210526094852.286424-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Add Wa_14010733141
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The WA requires the following procedure for VDBox SFC reset:

If (MFX-SFC usage is 1) {
	1.Issue a MFX-SFC forced lock
	2.Wait for MFX-SFC forced lock ack
	3.Check the MFX-SFC usage bit
	If (MFX-SFC usage bit is 1)
		Reset VDBOX and SFC
	else
		Reset VDBOX
	Release the force lock MFX-SFC
}
else if(HCP+SFC usage is 1) {
	1.Issue a VE-SFC forced lock
	2.Wait for SFC forced lock ack
	3.Check the VE-SFC usage bit
	If (VE-SFC usage bit is 1)
		Reset VDBOX
	else
		Reset VDBOX and SFC
	Release the force lock VE-SFC.
}
else
	Reset VDBOX

- Restructure: the changes to the original code flow should stay
  relatively minimal; we only need to do an extra HCP check after the
  usual VD-MFX check and, if true, switch the register/bit we're
  performing the lock on.(MattR)

v2:
- Assign unlock mask using paired_engine->mask instead of using
  BIT(paired_vecs->id). (Daniele)

Bspec: 52890, 53509

Co-developed-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 194 +++++++++++++++++---------
 drivers/gpu/drm/i915/i915_reg.h       |   6 +
 2 files changed, 137 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index d5094be6d90f..8091846d955b 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -338,15 +338,69 @@ static int gen6_reset_engines(struct intel_gt *gt,
 	return gen6_hw_domain_reset(gt, hw_mask);
 }
 
-static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
+static struct intel_engine_cs *find_sfc_paired_vecs_engine(struct intel_engine_cs *engine)
+{
+	int vecs_id;
+
+	GEM_BUG_ON(engine->class != VIDEO_DECODE_CLASS);
+
+	vecs_id = _VECS((engine->instance) / 2);
+
+	return engine->gt->engine[vecs_id];
+}
+
+struct sfc_lock_data {
+	i915_reg_t lock_reg;
+	i915_reg_t ack_reg;
+	i915_reg_t usage_reg;
+	u32 lock_bit;
+	u32 ack_bit;
+	u32 usage_bit;
+	u32 reset_bit;
+};
+
+static void get_sfc_forced_lock_data(struct intel_engine_cs *engine,
+				     struct sfc_lock_data *sfc_lock)
+{
+	switch (engine->class) {
+	default:
+		MISSING_CASE(engine->class);
+		fallthrough;
+	case VIDEO_DECODE_CLASS:
+		sfc_lock->lock_reg = GEN11_VCS_SFC_FORCED_LOCK(engine);
+		sfc_lock->lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;
+
+		sfc_lock->ack_reg = GEN11_VCS_SFC_LOCK_STATUS(engine);
+		sfc_lock->ack_bit  = GEN11_VCS_SFC_LOCK_ACK_BIT;
+
+		sfc_lock->usage_reg = GEN11_VCS_SFC_LOCK_STATUS(engine);
+		sfc_lock->usage_bit = GEN11_VCS_SFC_USAGE_BIT;
+		sfc_lock->reset_bit = GEN11_VCS_SFC_RESET_BIT(engine->instance);
+
+		break;
+	case VIDEO_ENHANCEMENT_CLASS:
+		sfc_lock->lock_reg = GEN11_VECS_SFC_FORCED_LOCK(engine);
+		sfc_lock->lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;
+
+		sfc_lock->ack_reg = GEN11_VECS_SFC_LOCK_ACK(engine);
+		sfc_lock->ack_bit  = GEN11_VECS_SFC_LOCK_ACK_BIT;
+
+		sfc_lock->usage_reg = GEN11_VECS_SFC_USAGE(engine);
+		sfc_lock->usage_bit = GEN11_VECS_SFC_USAGE_BIT;
+		sfc_lock->reset_bit = GEN11_VECS_SFC_RESET_BIT(engine->instance);
+
+		break;
+	}
+}
+
+static int gen11_lock_sfc(struct intel_engine_cs *engine,
+			  u32 *reset_mask,
+			  u32 *unlock_mask)
 {
 	struct intel_uncore *uncore = engine->uncore;
 	u8 vdbox_sfc_access = engine->gt->info.vdbox_sfc_access;
-	i915_reg_t sfc_forced_lock, sfc_forced_lock_ack;
-	u32 sfc_forced_lock_bit, sfc_forced_lock_ack_bit;
-	i915_reg_t sfc_usage;
-	u32 sfc_usage_bit;
-	u32 sfc_reset_bit;
+	struct sfc_lock_data sfc_lock;
+	bool lock_obtained, lock_to_other = false;
 	int ret;
 
 	switch (engine->class) {
@@ -354,53 +408,72 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
 		if ((BIT(engine->instance) & vdbox_sfc_access) == 0)
 			return 0;
 
-		sfc_forced_lock = GEN11_VCS_SFC_FORCED_LOCK(engine);
-		sfc_forced_lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;
-
-		sfc_forced_lock_ack = GEN11_VCS_SFC_LOCK_STATUS(engine);
-		sfc_forced_lock_ack_bit  = GEN11_VCS_SFC_LOCK_ACK_BIT;
+		fallthrough;
+	case VIDEO_ENHANCEMENT_CLASS:
+		get_sfc_forced_lock_data(engine, &sfc_lock);
 
-		sfc_usage = GEN11_VCS_SFC_LOCK_STATUS(engine);
-		sfc_usage_bit = GEN11_VCS_SFC_USAGE_BIT;
-		sfc_reset_bit = GEN11_VCS_SFC_RESET_BIT(engine->instance);
 		break;
+	default:
+		return 0;
+	}
 
-	case VIDEO_ENHANCEMENT_CLASS:
-		sfc_forced_lock = GEN11_VECS_SFC_FORCED_LOCK(engine);
-		sfc_forced_lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;
+	if (!(intel_uncore_read_fw(uncore, sfc_lock.usage_reg) & sfc_lock.usage_bit)) {
+		struct intel_engine_cs *paired_vecs;
 
-		sfc_forced_lock_ack = GEN11_VECS_SFC_LOCK_ACK(engine);
-		sfc_forced_lock_ack_bit  = GEN11_VECS_SFC_LOCK_ACK_BIT;
+		if (engine->class != VIDEO_DECODE_CLASS ||
+		    !IS_GEN(engine->i915, 12))
+			return 0;
 
-		sfc_usage = GEN11_VECS_SFC_USAGE(engine);
-		sfc_usage_bit = GEN11_VECS_SFC_USAGE_BIT;
-		sfc_reset_bit = GEN11_VECS_SFC_RESET_BIT(engine->instance);
-		break;
+		/*
+		 * Wa_14010733141
+		 *
+		 * If the VCS-MFX isn't using the SFC, we also need to check
+		 * whether VCS-HCP is using it.  If so, we need to issue a *VE*
+		 * forced lock on the VE engine that shares the same SFC.
+		 */
+		if (!(intel_uncore_read_fw(uncore,
+					   GEN12_HCP_SFC_LOCK_STATUS(engine)) &
+		      GEN12_HCP_SFC_USAGE_BIT))
+			return 0;
 
-	default:
-		return 0;
+		paired_vecs = find_sfc_paired_vecs_engine(engine);
+		get_sfc_forced_lock_data(paired_vecs, &sfc_lock);
+		lock_to_other = true;
+		*unlock_mask |= paired_vecs->mask;
+	} else {
+		*unlock_mask |= engine->mask;
 	}
 
 	/*
-	 * If the engine is using a SFC, tell the engine that a software reset
+	 * If the engine is using an SFC, tell the engine that a software reset
 	 * is going to happen. The engine will then try to force lock the SFC.
 	 * If SFC ends up being locked to the engine we want to reset, we have
 	 * to reset it as well (we will unlock it once the reset sequence is
 	 * completed).
 	 */
-	if (!(intel_uncore_read_fw(uncore, sfc_usage) & sfc_usage_bit))
-		return 0;
-
-	rmw_set_fw(uncore, sfc_forced_lock, sfc_forced_lock_bit);
+	rmw_set_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
 
 	ret = __intel_wait_for_register_fw(uncore,
-					   sfc_forced_lock_ack,
-					   sfc_forced_lock_ack_bit,
-					   sfc_forced_lock_ack_bit,
+					   sfc_lock.ack_reg,
+					   sfc_lock.ack_bit,
+					   sfc_lock.ack_bit,
 					   1000, 0, NULL);
 
-	/* Was the SFC released while we were trying to lock it? */
-	if (!(intel_uncore_read_fw(uncore, sfc_usage) & sfc_usage_bit))
+	/*
+	 * Was the SFC released while we were trying to lock it?
+	 *
+	 * We should reset both the engine and the SFC if:
+	 *  - We were locking the SFC to this engine and the lock succeeded
+	 *       OR
+	 *  - We were locking the SFC to a different engine (Wa_14010733141)
+	 *    but the SFC was released before the lock was obtained.
+	 *
+	 * Otherwise we need only reset the engine by itself and we can
+	 * leave the SFC alone.
+	 */
+	lock_obtained = (intel_uncore_read_fw(uncore, sfc_lock.usage_reg) &
+			sfc_lock.usage_bit) != 0;
+	if (lock_obtained == lock_to_other)
 		return 0;
 
 	if (ret) {
@@ -408,7 +481,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine, u32 *hw_mask)
 		return ret;
 	}
 
-	*hw_mask |= sfc_reset_bit;
+	*reset_mask |= sfc_lock.reset_bit;
 	return 0;
 }
 
@@ -416,28 +489,19 @@ static void gen11_unlock_sfc(struct intel_engine_cs *engine)
 {
 	struct intel_uncore *uncore = engine->uncore;
 	u8 vdbox_sfc_access = engine->gt->info.vdbox_sfc_access;
-	i915_reg_t sfc_forced_lock;
-	u32 sfc_forced_lock_bit;
-
-	switch (engine->class) {
-	case VIDEO_DECODE_CLASS:
-		if ((BIT(engine->instance) & vdbox_sfc_access) == 0)
-			return;
-
-		sfc_forced_lock = GEN11_VCS_SFC_FORCED_LOCK(engine);
-		sfc_forced_lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;
-		break;
+	struct sfc_lock_data sfc_lock = {};
 
-	case VIDEO_ENHANCEMENT_CLASS:
-		sfc_forced_lock = GEN11_VECS_SFC_FORCED_LOCK(engine);
-		sfc_forced_lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;
-		break;
+	if (engine->class != VIDEO_DECODE_CLASS &&
+	    engine->class != VIDEO_ENHANCEMENT_CLASS)
+		return;
 
-	default:
+	if (engine->class == VIDEO_DECODE_CLASS &&
+	    (BIT(engine->instance) & vdbox_sfc_access) == 0)
 		return;
-	}
 
-	rmw_clear_fw(uncore, sfc_forced_lock, sfc_forced_lock_bit);
+	get_sfc_forced_lock_data(engine, &sfc_lock);
+
+	rmw_clear_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
 }
 
 static int gen11_reset_engines(struct intel_gt *gt,
@@ -456,23 +520,23 @@ static int gen11_reset_engines(struct intel_gt *gt,
 	};
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t tmp;
-	u32 hw_mask;
+	u32 reset_mask, unlock_mask = 0;
 	int ret;
 
 	if (engine_mask == ALL_ENGINES) {
-		hw_mask = GEN11_GRDOM_FULL;
+		reset_mask = GEN11_GRDOM_FULL;
 	} else {
-		hw_mask = 0;
+		reset_mask = 0;
 		for_each_engine_masked(engine, gt, engine_mask, tmp) {
 			GEM_BUG_ON(engine->id >= ARRAY_SIZE(hw_engine_mask));
-			hw_mask |= hw_engine_mask[engine->id];
-			ret = gen11_lock_sfc(engine, &hw_mask);
+			reset_mask |= hw_engine_mask[engine->id];
+			ret = gen11_lock_sfc(engine, &reset_mask, &unlock_mask);
 			if (ret)
 				goto sfc_unlock;
 		}
 	}
 
-	ret = gen6_hw_domain_reset(gt, hw_mask);
+	ret = gen6_hw_domain_reset(gt, reset_mask);
 
 sfc_unlock:
 	/*
@@ -480,10 +544,14 @@ static int gen11_reset_engines(struct intel_gt *gt,
 	 * gen11_lock_sfc to make sure that we clean properly if something
 	 * wrong happened during the lock (e.g. lock acquired after timeout
 	 * expiration).
+	 *
+	 * Due to Wa_14010733141, we may have locked an SFC to an engine that
+	 * wasn't being reset.  So instead of calling gen11_unlock_sfc()
+	 * on engine_mask, we instead call it on the mask of engines that our
+	 * gen11_lock_sfc() calls told us actually had locks attempted.
 	 */
-	if (engine_mask != ALL_ENGINES)
-		for_each_engine_masked(engine, gt, engine_mask, tmp)
-			gen11_unlock_sfc(engine);
+	for_each_engine_masked(engine, gt, unlock_mask, tmp)
+		gen11_unlock_sfc(engine);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4dbe79009c0e..b02e8643e87a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -416,6 +416,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN11_VECS_SFC_USAGE(engine)		_MMIO((engine)->mmio_base + 0x2014)
 #define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
 
+#define GEN12_HCP_SFC_FORCED_LOCK(engine)	_MMIO((engine)->mmio_base + 0x2910)
+#define   GEN12_HCP_SFC_FORCED_LOCK_BIT		REG_BIT(0)
+#define GEN12_HCP_SFC_LOCK_STATUS(engine)	_MMIO((engine)->mmio_base + 0x2914)
+#define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
+#define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
+
 #define GEN12_SFC_DONE(n)		_MMIO(0x1cc00 + (n) * 0x100)
 #define GEN12_SFC_DONE_MAX		4
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

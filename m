Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E4C63B5EA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 00:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6112F10E34D;
	Mon, 28 Nov 2022 23:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0087210E348;
 Mon, 28 Nov 2022 23:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669678224; x=1701214224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vgihrsdDyLVlJgJ4ZmfEXf3OxTcHMVXW8cFBFBySzg0=;
 b=GqmlcXmuI6uuVUJVDJqr3SPnbWDjaJzMCGQ8Pyo7stPhrzkN+jKT5uFy
 pOzSbhLgaPn/nZMnGnOAe9cP1JpHOjtf/fZDzxb6+LBSIdyVD3UNPID9S
 THVPcUCn1hUG4bNJr9VeoB4prhNP0h/nkaFuYdMSaxnr/1jMmJO2PXoDz
 yTIwO5Dr2wHez9RXZAlnu98kWog9WrH1gojbzGIb1rVwHt0/HOZbS9az4
 q2s+0xedoDDh/9LtMaIvmeHkaWcrFv/URtrbH7FbRb+TGfxWMlbJqHX8I
 dVXGKjJO1AzVSvaLQzJmAirCA1mw4OF66DDJ2JSz2/BVOyo0/fvgy97WU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="302556672"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="302556672"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 15:30:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="706982252"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="706982252"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 15:30:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:30:12 -0800
Message-Id: <20221128233014.4000136-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221128233014.4000136-1-matthew.d.roper@intel.com>
References: <20221128233014.4000136-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/gt: Add dedicated MCR lock
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've been overloading uncore->lock to protect access to the MCR
steering register.  That's not really what uncore->lock is intended for,
and it would be better if we didn't need to hold such a high-traffic
spinlock for the whole sequence of (apply steering, access MCR register,
restore steering).  Let's create a dedicated MCR lock to protect the
steering control register over this critical section and stop relying on
the high-traffic uncore->lock.

For now the new lock is a software lock.  However some platforms (MTL
and beyond) have a hardware-provided locking mechanism that can be used
to serialize not only software accesses, but also hardware/firmware
accesses as well; support for that hardware level lock will be added in
a future patch.

v2:
 - Use irqsave/irqrestore spinlock calls; platforms using execlist
   submission rather than GuC submission can perform MCR accesses in
   interrupt context because reset -> errordump happens in a tasklet.

Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          |  7 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c      | 79 +++++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_gt_mcr.h      |  2 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  8 +++
 drivers/gpu/drm/i915/gt/intel_mocs.c        |  3 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++--
 6 files changed, 101 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 7ef0edb2e37c..6847f3bd2b03 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1079,6 +1079,7 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 	enum intel_engine_id id;
 	const i915_reg_t *regs;
 	unsigned int num = 0;
+	unsigned long flags;
 
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		regs = NULL;
@@ -1099,7 +1100,8 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
 
-	spin_lock_irq(&uncore->lock); /* serialise invalidate with GT reset */
+	intel_gt_mcr_lock(gt, &flags);
+	spin_lock(&uncore->lock); /* serialise invalidate with GT reset */
 
 	awake = 0;
 	for_each_engine(engine, gt, id) {
@@ -1133,7 +1135,8 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 	     IS_ALDERLAKE_P(i915)))
 		intel_uncore_write_fw(uncore, GEN12_OA_TLB_INV_CR, 1);
 
-	spin_unlock_irq(&uncore->lock);
+	spin_unlock(&uncore->lock);
+	intel_gt_mcr_unlock(gt, flags);
 
 	for_each_engine_masked(engine, gt, awake, tmp) {
 		struct reg_and_bit rb;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index f4484bb18ec9..aa070ae57f11 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -143,6 +143,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 	unsigned long fuse;
 	int i;
 
+	spin_lock_init(&gt->mcr_lock);
+
 	/*
 	 * An mslice is unavailable only if both the meml3 for the slice is
 	 * disabled *and* all of the DSS in the slice (quadrant) are disabled.
@@ -228,6 +230,7 @@ static i915_reg_t mcr_reg_cast(const i915_mcr_reg_t mcr)
  * @instance: instance number (documented as "subsliceid" on older platforms)
  * @value: register value to be written (ignored for read)
  *
+ * Context: The caller must hold the MCR lock
  * Return: 0 for write access. register value for read access.
  *
  * Caller needs to make sure the relevant forcewake wells are up.
@@ -239,7 +242,7 @@ static u32 rw_with_mcr_steering_fw(struct intel_gt *gt,
 	struct intel_uncore *uncore = gt->uncore;
 	u32 mcr_mask, mcr_ss, mcr, old_mcr, val = 0;
 
-	lockdep_assert_held(&uncore->lock);
+	lockdep_assert_held(&gt->mcr_lock);
 
 	if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 70)) {
 		/*
@@ -316,6 +319,7 @@ static u32 rw_with_mcr_steering(struct intel_gt *gt,
 {
 	struct intel_uncore *uncore = gt->uncore;
 	enum forcewake_domains fw_domains;
+	unsigned long flags;
 	u32 val;
 
 	fw_domains = intel_uncore_forcewake_for_reg(uncore, mcr_reg_cast(reg),
@@ -324,17 +328,59 @@ static u32 rw_with_mcr_steering(struct intel_gt *gt,
 						     GEN8_MCR_SELECTOR,
 						     FW_REG_READ | FW_REG_WRITE);
 
-	spin_lock_irq(&uncore->lock);
+	intel_gt_mcr_lock(gt, &flags);
+	spin_lock(&uncore->lock);
 	intel_uncore_forcewake_get__locked(uncore, fw_domains);
 
 	val = rw_with_mcr_steering_fw(gt, reg, rw_flag, group, instance, value);
 
 	intel_uncore_forcewake_put__locked(uncore, fw_domains);
-	spin_unlock_irq(&uncore->lock);
+	spin_unlock(&uncore->lock);
+	intel_gt_mcr_unlock(gt, flags);
 
 	return val;
 }
 
+/**
+ * intel_gt_mcr_lock - Acquire MCR steering lock
+ * @gt: GT structure
+ * @flags: storage to save IRQ flags to
+ *
+ * Performs locking to protect the steering for the duration of an MCR
+ * operation.  Depending on the platform, this may be a software lock
+ * (gt->mcr_lock) or a hardware lock (i.e., a register that synchronizes
+ * access not only for the driver, but also for external hardware and
+ * firmware agents).
+ *
+ * Context: Takes gt->mcr_lock.  uncore->lock should *not* be held when this
+ *          function is called, although it may be acquired after this
+ *          function call.
+ */
+void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
+{
+	unsigned long __flags;
+
+	lockdep_assert_not_held(&gt->uncore->lock);
+
+	spin_lock_irqsave(&gt->mcr_lock, __flags);
+
+	*flags = __flags;
+}
+
+/**
+ * intel_gt_mcr_unlock - Release MCR steering lock
+ * @gt: GT structure
+ * @flags: IRQ flags to restore
+ *
+ * Releases the lock acquired by intel_gt_mcr_lock().
+ *
+ * Context: Releases gt->mcr_lock
+ */
+void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags)
+{
+	spin_unlock_irqrestore(&gt->mcr_lock, flags);
+}
+
 /**
  * intel_gt_mcr_read - read a specific instance of an MCR register
  * @gt: GT structure
@@ -342,6 +388,8 @@ static u32 rw_with_mcr_steering(struct intel_gt *gt,
  * @group: the MCR group
  * @instance: the MCR instance
  *
+ * Context: Takes and releases gt->mcr_lock
+ *
  * Returns the value read from an MCR register after steering toward a specific
  * group/instance.
  */
@@ -362,6 +410,8 @@ u32 intel_gt_mcr_read(struct intel_gt *gt,
  *
  * Write an MCR register in unicast mode after steering toward a specific
  * group/instance.
+ *
+ * Context: Calls a function that takes and releases gt->mcr_lock
  */
 void intel_gt_mcr_unicast_write(struct intel_gt *gt, i915_mcr_reg_t reg, u32 value,
 				int group, int instance)
@@ -376,10 +426,16 @@ void intel_gt_mcr_unicast_write(struct intel_gt *gt, i915_mcr_reg_t reg, u32 val
  * @value: value to write
  *
  * Write an MCR register in multicast mode to update all instances.
+ *
+ * Context: Takes and releases gt->mcr_lock
  */
 void intel_gt_mcr_multicast_write(struct intel_gt *gt,
 				  i915_mcr_reg_t reg, u32 value)
 {
+	unsigned long flags;
+
+	intel_gt_mcr_lock(gt, &flags);
+
 	/*
 	 * Ensure we have multicast behavior, just in case some non-i915 agent
 	 * left the hardware in unicast mode.
@@ -388,6 +444,8 @@ void intel_gt_mcr_multicast_write(struct intel_gt *gt,
 		intel_uncore_write_fw(gt->uncore, MTL_MCR_SELECTOR, GEN11_MCR_MULTICAST);
 
 	intel_uncore_write(gt->uncore, mcr_reg_cast(reg), value);
+
+	intel_gt_mcr_unlock(gt, flags);
 }
 
 /**
@@ -400,9 +458,13 @@ void intel_gt_mcr_multicast_write(struct intel_gt *gt,
  * function assumes the caller is already holding any necessary forcewake
  * domains; use intel_gt_mcr_multicast_write() in cases where forcewake should
  * be obtained automatically.
+ *
+ * Context: The caller must hold gt->mcr_lock.
  */
 void intel_gt_mcr_multicast_write_fw(struct intel_gt *gt, i915_mcr_reg_t reg, u32 value)
 {
+	lockdep_assert_held(&gt->mcr_lock);
+
 	/*
 	 * Ensure we have multicast behavior, just in case some non-i915 agent
 	 * left the hardware in unicast mode.
@@ -429,6 +491,8 @@ void intel_gt_mcr_multicast_write_fw(struct intel_gt *gt, i915_mcr_reg_t reg, u3
  * domains; use intel_gt_mcr_multicast_rmw() in cases where forcewake should
  * be obtained automatically.
  *
+ * Context: Calls functions that take and release gt->mcr_lock
+ *
  * Returns the old (unmodified) value read.
  */
 u32 intel_gt_mcr_multicast_rmw(struct intel_gt *gt, i915_mcr_reg_t reg,
@@ -580,6 +644,8 @@ void intel_gt_mcr_get_nonterminated_steering(struct intel_gt *gt,
  * domains; use intel_gt_mcr_read_any() in cases where forcewake should be
  * obtained automatically.
  *
+ * Context: The caller must hold gt->mcr_lock.
+ *
  * Returns the value from a non-terminated instance of @reg.
  */
 u32 intel_gt_mcr_read_any_fw(struct intel_gt *gt, i915_mcr_reg_t reg)
@@ -587,6 +653,8 @@ u32 intel_gt_mcr_read_any_fw(struct intel_gt *gt, i915_mcr_reg_t reg)
 	int type;
 	u8 group, instance;
 
+	lockdep_assert_held(&gt->mcr_lock);
+
 	for (type = 0; type < NUM_STEERING_TYPES; type++) {
 		if (reg_needs_read_steering(gt, reg, type)) {
 			get_nonterminated_steering(gt, type, &group, &instance);
@@ -607,6 +675,8 @@ u32 intel_gt_mcr_read_any_fw(struct intel_gt *gt, i915_mcr_reg_t reg)
  * Reads a GT MCR register.  The read will be steered to a non-terminated
  * instance (i.e., one that isn't fused off or powered down by power gating).
  *
+ * Context: Calls a function that takes and releases gt->mcr_lock.
+ *
  * Returns the value from a non-terminated instance of @reg.
  */
 u32 intel_gt_mcr_read_any(struct intel_gt *gt, i915_mcr_reg_t reg)
@@ -730,6 +800,7 @@ void intel_gt_mcr_get_ss_steering(struct intel_gt *gt, unsigned int dss,
  * Note that this routine assumes the caller holds forcewake asserted, it is
  * not suitable for very long waits.
  *
+ * Context: Calls a function that takes and releases gt->mcr_lock
  * Return: 0 if the register matches the desired condition, or -ETIMEDOUT.
  */
 int intel_gt_mcr_wait_for_reg(struct intel_gt *gt,
@@ -741,7 +812,7 @@ int intel_gt_mcr_wait_for_reg(struct intel_gt *gt,
 {
 	int ret;
 
-	lockdep_assert_not_held(&gt->uncore->lock);
+	lockdep_assert_not_held(&gt->mcr_lock);
 
 #define done ((intel_gt_mcr_read_any(gt, reg) & mask) == value)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
index ae93b20e1c17..41684495b7da 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.h
@@ -9,6 +9,8 @@
 #include "intel_gt_types.h"
 
 void intel_gt_mcr_init(struct intel_gt *gt);
+void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags);
+void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags);
 
 u32 intel_gt_mcr_read(struct intel_gt *gt,
 		      i915_mcr_reg_t reg,
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index c1d9cd255e06..76c34c4af867 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -233,6 +233,14 @@ struct intel_gt {
 		u8 instanceid;
 	} default_steering;
 
+	/**
+	 * @mcr_lock: Protects the MCR steering register
+	 *
+	 * Protects the MCR steering register (e.g., GEN8_MCR_SELECTOR).
+	 * Should be taken before uncore->lock in cases where both are desired.
+	 */
+	spinlock_t mcr_lock;
+
 	/*
 	 * Base of per-tile GTTMMADR where we can derive the MMIO and the GGTT.
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 49fdd509527a..69b489e8dfed 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -613,14 +613,17 @@ static u32 l3cc_combine(u16 low, u16 high)
 static void init_l3cc_table(struct intel_gt *gt,
 			    const struct drm_i915_mocs_table *table)
 {
+	unsigned long flags;
 	unsigned int i;
 	u32 l3cc;
 
+	intel_gt_mcr_lock(gt, &flags);
 	for_each_l3cc(l3cc, table, i)
 		if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
 			intel_gt_mcr_multicast_write_fw(gt, XEHP_LNCFCMOCS(i), l3cc);
 		else
 			intel_uncore_write_fw(gt->uncore, GEN9_LNCFCMOCS(i), l3cc);
+	intel_gt_mcr_unlock(gt, flags);
 }
 
 void intel_mocs_init_engine(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 1b0e40e68a9d..3e35facac2b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1760,7 +1760,8 @@ static void wa_list_apply(const struct i915_wa_list *wal)
 
 	fw = wal_get_fw_for_rmw(uncore, wal);
 
-	spin_lock_irqsave(&uncore->lock, flags);
+	intel_gt_mcr_lock(gt, &flags);
+	spin_lock(&uncore->lock);
 	intel_uncore_forcewake_get__locked(uncore, fw);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
@@ -1789,7 +1790,8 @@ static void wa_list_apply(const struct i915_wa_list *wal)
 	}
 
 	intel_uncore_forcewake_put__locked(uncore, fw);
-	spin_unlock_irqrestore(&uncore->lock, flags);
+	spin_unlock(&uncore->lock);
+	intel_gt_mcr_unlock(gt, flags);
 }
 
 void intel_gt_apply_workarounds(struct intel_gt *gt)
@@ -1810,7 +1812,8 @@ static bool wa_list_verify(struct intel_gt *gt,
 
 	fw = wal_get_fw_for_rmw(uncore, wal);
 
-	spin_lock_irqsave(&uncore->lock, flags);
+	intel_gt_mcr_lock(gt, &flags);
+	spin_lock(&uncore->lock);
 	intel_uncore_forcewake_get__locked(uncore, fw);
 
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
@@ -1820,7 +1823,8 @@ static bool wa_list_verify(struct intel_gt *gt,
 				wal->name, from);
 
 	intel_uncore_forcewake_put__locked(uncore, fw);
-	spin_unlock_irqrestore(&uncore->lock, flags);
+	spin_unlock(&uncore->lock);
+	intel_gt_mcr_unlock(gt, flags);
 
 	return ok;
 }
-- 
2.38.1


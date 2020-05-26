Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571491BE93B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 22:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072606EB34;
	Wed, 29 Apr 2020 20:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 949236EB34
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 20:54:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21063319-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 21:54:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 21:54:42 +0100
Message-Id: <20200429205446.3259-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205446.3259-1-chris@chris-wilson.co.uk>
References: <20200429205446.3259-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/6] drm/i915/gt: Move rps.enabled/active to flags
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

Pull the boolean intel_rps.enabled and intel_rps.active into a single
flags field, in preparation for more.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  5 +--
 drivers/gpu/drm/i915/gt/intel_rps.c       | 43 ++++++++++++++---------
 drivers/gpu/drm/i915/gt/intel_rps.h       | 30 ++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps_types.h |  8 +++--
 drivers/gpu/drm/i915/gt/selftest_rps.c    | 22 ++++++------
 drivers/gpu/drm/i915/i915_debugfs.c       |  5 +--
 6 files changed, 79 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index f6ba66206273..174a24553322 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -556,7 +556,8 @@ static int rps_boost_show(struct seq_file *m, void *data)
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_rps *rps = &gt->rps;
 
-	seq_printf(m, "RPS enabled? %d\n", rps->enabled);
+	seq_printf(m, "RPS enabled? %s\n", yesno(intel_rps_is_enabled(rps)));
+	seq_printf(m, "RPS active? %s\n", yesno(intel_rps_is_active(rps)));
 	seq_printf(m, "GPU busy? %s\n", yesno(gt->awake));
 	seq_printf(m, "Boosts outstanding? %d\n",
 		   atomic_read(&rps->num_waiters));
@@ -576,7 +577,7 @@ static int rps_boost_show(struct seq_file *m, void *data)
 
 	seq_printf(m, "Wait boosts: %d\n", atomic_read(&rps->boosts));
 
-	if (INTEL_GEN(i915) >= 6 && rps->enabled && gt->awake) {
+	if (INTEL_GEN(i915) >= 6 && intel_rps_is_active(rps)) {
 		struct intel_uncore *uncore = gt->uncore;
 		u32 rpup, rpupei;
 		u32 rpdown, rpdownei;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 2ce006e58b4a..a27e989a08eb 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -648,7 +648,7 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
 
 	mutex_lock(&rps->power.mutex);
 	if (interactive) {
-		if (!rps->power.interactive++ && READ_ONCE(rps->active))
+		if (!rps->power.interactive++ && intel_rps_is_active(rps))
 			rps_set_power(rps, HIGH_POWER);
 	} else {
 		GEM_BUG_ON(!rps->power.interactive);
@@ -721,7 +721,7 @@ static int rps_set(struct intel_rps *rps, u8 val, bool update)
 
 void intel_rps_unpark(struct intel_rps *rps)
 {
-	if (!rps->enabled)
+	if (!intel_rps_is_enabled(rps))
 		return;
 
 	GT_TRACE(rps_to_gt(rps), "unpark:%x\n", rps->cur_freq);
@@ -732,8 +732,7 @@ void intel_rps_unpark(struct intel_rps *rps)
 	 */
 	mutex_lock(&rps->lock);
 
-	WRITE_ONCE(rps->active, true);
-
+	intel_rps_set_active(rps);
 	intel_rps_set(rps,
 		      clamp(rps->cur_freq,
 			    rps->min_freq_softlimit,
@@ -754,13 +753,12 @@ void intel_rps_park(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	if (!rps->enabled)
+	if (!intel_rps_clear_active(rps))
 		return;
 
 	if (INTEL_GEN(i915) >= 6)
 		rps_disable_interrupts(rps);
 
-	WRITE_ONCE(rps->active, false);
 	if (rps->last_freq <= rps->idle_freq)
 		return;
 
@@ -802,7 +800,7 @@ void intel_rps_boost(struct i915_request *rq)
 	struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
 	unsigned long flags;
 
-	if (i915_request_signaled(rq) || !READ_ONCE(rps->active))
+	if (i915_request_signaled(rq) || !intel_rps_is_active(rps))
 		return;
 
 	/* Serializes with i915_request_retire() */
@@ -831,7 +829,7 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
 	GEM_BUG_ON(val > rps->max_freq);
 	GEM_BUG_ON(val < rps->min_freq);
 
-	if (rps->active) {
+	if (intel_rps_is_active(rps)) {
 		err = rps_set(rps, val, true);
 		if (err)
 			return err;
@@ -1219,6 +1217,7 @@ void intel_rps_enable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	struct intel_uncore *uncore = rps_to_uncore(rps);
+	bool enabled = false;
 
 	if (!HAS_RPS(i915))
 		return;
@@ -1226,20 +1225,24 @@ void intel_rps_enable(struct intel_rps *rps)
 	intel_gt_check_clock_frequency(rps_to_gt(rps));
 
 	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
-	if (IS_CHERRYVIEW(i915))
-		rps->enabled = chv_rps_enable(rps);
+	if (rps->max_freq <= rps->min_freq)
+		/* leave disabled, no room for dynamic reclocking */;
+	else if (IS_CHERRYVIEW(i915))
+		enabled = chv_rps_enable(rps);
 	else if (IS_VALLEYVIEW(i915))
-		rps->enabled = vlv_rps_enable(rps);
+		enabled = vlv_rps_enable(rps);
 	else if (INTEL_GEN(i915) >= 9)
-		rps->enabled = gen9_rps_enable(rps);
+		enabled = gen9_rps_enable(rps);
 	else if (INTEL_GEN(i915) >= 8)
-		rps->enabled = gen8_rps_enable(rps);
+		enabled = gen8_rps_enable(rps);
 	else if (INTEL_GEN(i915) >= 6)
-		rps->enabled = gen6_rps_enable(rps);
+		enabled = gen6_rps_enable(rps);
 	else if (IS_IRONLAKE_M(i915))
-		rps->enabled = gen5_rps_enable(rps);
+		enabled = gen5_rps_enable(rps);
+	else
+		MISSING_CASE(INTEL_GEN(i915));
 	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
-	if (!rps->enabled)
+	if (!enabled)
 		return;
 
 	GT_TRACE(rps_to_gt(rps),
@@ -1253,6 +1256,8 @@ void intel_rps_enable(struct intel_rps *rps)
 
 	GEM_BUG_ON(rps->efficient_freq < rps->min_freq);
 	GEM_BUG_ON(rps->efficient_freq > rps->max_freq);
+
+	intel_rps_set_enabled(rps);
 }
 
 static void gen6_rps_disable(struct intel_rps *rps)
@@ -1264,7 +1269,7 @@ void intel_rps_disable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	rps->enabled = false;
+	intel_rps_clear_enabled(rps);
 
 	if (INTEL_GEN(i915) >= 6)
 		gen6_rps_disable(rps);
@@ -1511,6 +1516,10 @@ static void rps_work(struct work_struct *work)
 		goto out;
 
 	mutex_lock(&rps->lock);
+	if (!intel_rps_is_active(rps)) {
+		mutex_unlock(&rps->lock);
+		return;
+	}
 
 	pm_iir |= vlv_wa_c0_ei(rps, pm_iir);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index dfa98194f3b2..a01decf70f31 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -36,4 +36,34 @@ void gen5_rps_irq_handler(struct intel_rps *rps);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
 void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
 
+static inline bool intel_rps_is_enabled(const struct intel_rps *rps)
+{
+	return test_bit(INTEL_RPS_ENABLED, &rps->flags);
+}
+
+static inline void intel_rps_set_enabled(struct intel_rps *rps)
+{
+	set_bit(INTEL_RPS_ENABLED, &rps->flags);
+}
+
+static inline void intel_rps_clear_enabled(struct intel_rps *rps)
+{
+	clear_bit(INTEL_RPS_ENABLED, &rps->flags);
+}
+
+static inline bool intel_rps_is_active(const struct intel_rps *rps)
+{
+	return test_bit(INTEL_RPS_ACTIVE, &rps->flags);
+}
+
+static inline void intel_rps_set_active(struct intel_rps *rps)
+{
+	set_bit(INTEL_RPS_ACTIVE, &rps->flags);
+}
+
+static inline bool intel_rps_clear_active(struct intel_rps *rps)
+{
+	return test_and_clear_bit(INTEL_RPS_ACTIVE, &rps->flags);
+}
+
 #endif /* INTEL_RPS_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index c2e279154bd5..1ec44f994bc5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -31,6 +31,11 @@ struct intel_rps_ei {
 	u32 media_c0;
 };
 
+enum {
+	INTEL_RPS_ENABLED = 0,
+	INTEL_RPS_ACTIVE,
+};
+
 struct intel_rps {
 	struct mutex lock; /* protects enabling and the worker */
 
@@ -39,8 +44,7 @@ struct intel_rps {
 	 * dev_priv->irq_lock
 	 */
 	struct work_struct work;
-	bool enabled;
-	bool active;
+	unsigned long flags;
 	u32 pm_iir;
 
 	/* PM interrupt bits that should never be masked */
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 21338c1980de..e4cc1c84d206 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -183,7 +183,7 @@ static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
 static u8 rps_set_check(struct intel_rps *rps, u8 freq)
 {
 	mutex_lock(&rps->lock);
-	GEM_BUG_ON(!rps->active);
+	GEM_BUG_ON(!intel_rps_is_active(rps));
 	intel_rps_set(rps, freq);
 	GEM_BUG_ON(rps->last_freq != freq);
 	mutex_unlock(&rps->lock);
@@ -218,7 +218,7 @@ int live_rps_clock_interval(void *arg)
 	struct igt_spinner spin;
 	int err = 0;
 
-	if (!rps->enabled)
+	if (!intel_rps_is_enabled(rps))
 		return 0;
 
 	if (igt_spinner_init(&spin, gt))
@@ -364,7 +364,7 @@ int live_rps_control(void *arg)
 	 * will be lowered than requested.
 	 */
 
-	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+	if (!intel_rps_is_enabled(rps))
 		return 0;
 
 	if (IS_CHERRYVIEW(gt->i915)) /* XXX fragile PCU */
@@ -595,7 +595,7 @@ int live_rps_frequency_cs(void *arg)
 	 * frequency, the actual frequency, and the observed clock rate.
 	 */
 
-	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+	if (!intel_rps_is_enabled(rps))
 		return 0;
 
 	if (INTEL_GEN(gt->i915) < 8) /* for CS simplicity */
@@ -737,7 +737,7 @@ int live_rps_frequency_srm(void *arg)
 	 * frequency, the actual frequency, and the observed clock rate.
 	 */
 
-	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+	if (!intel_rps_is_enabled(rps))
 		return 0;
 
 	if (INTEL_GEN(gt->i915) < 8) /* for CS simplicity */
@@ -904,7 +904,7 @@ static int __rps_up_interrupt(struct intel_rps *rps,
 		return -EIO;
 	}
 
-	if (!rps->active) {
+	if (!intel_rps_is_active(rps)) {
 		pr_err("%s: RPS not enabled on starting spinner\n",
 		       engine->name);
 		igt_spinner_end(spin);
@@ -1017,7 +1017,7 @@ int live_rps_interrupt(void *arg)
 	 * First, let's check whether or not we are receiving interrupts.
 	 */
 
-	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+	if (!intel_rps_is_enabled(rps))
 		return 0;
 
 	intel_gt_pm_get(gt);
@@ -1041,7 +1041,7 @@ int live_rps_interrupt(void *arg)
 			unsigned long saved_heartbeat;
 
 			intel_gt_pm_wait_for_idle(engine->gt);
-			GEM_BUG_ON(rps->active);
+			GEM_BUG_ON(intel_rps_is_active(rps));
 
 			saved_heartbeat = engine_heartbeat_disable(engine);
 
@@ -1126,7 +1126,7 @@ int live_rps_power(void *arg)
 	 * that theory.
 	 */
 
-	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+	if (!intel_rps_is_enabled(rps))
 		return 0;
 
 	if (!librapl_energy_uJ())
@@ -1231,7 +1231,7 @@ int live_rps_dynamic(void *arg)
 	 * moving parts into dynamic reclocking based on load.
 	 */
 
-	if (!rps->enabled || rps->max_freq <= rps->min_freq)
+	if (!intel_rps_is_enabled(rps))
 		return 0;
 
 	if (igt_spinner_init(&spin, gt))
@@ -1248,7 +1248,7 @@ int live_rps_dynamic(void *arg)
 			continue;
 
 		intel_gt_pm_wait_for_idle(gt);
-		GEM_BUG_ON(rps->active);
+		GEM_BUG_ON(intel_rps_is_active(rps));
 		rps->cur_freq = rps->min_freq;
 
 		intel_engine_pm_get(engine);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index e3c5ff25c807..c09e1afb5f79 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1199,7 +1199,8 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct intel_rps *rps = &dev_priv->gt.rps;
 
-	seq_printf(m, "RPS enabled? %d\n", rps->enabled);
+	seq_printf(m, "RPS enabled? %s\n", yesno(intel_rps_is_enabled(rps)));
+	seq_printf(m, "RPS active? %s\n", yesno(intel_rps_is_active(rps)));
 	seq_printf(m, "GPU busy? %s\n", yesno(dev_priv->gt.awake));
 	seq_printf(m, "Boosts outstanding? %d\n",
 		   atomic_read(&rps->num_waiters));
@@ -1219,7 +1220,7 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 
 	seq_printf(m, "Wait boosts: %d\n", atomic_read(&rps->boosts));
 
-	if (INTEL_GEN(dev_priv) >= 6 && rps->enabled && dev_priv->gt.awake) {
+	if (INTEL_GEN(dev_priv) >= 6 && intel_rps_is_active(rps)) {
 		u32 rpup, rpupei;
 		u32 rpdown, rpdownei;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

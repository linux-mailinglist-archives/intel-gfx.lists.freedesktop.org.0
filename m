Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A062C1B88A3
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 20:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0655A6E47E;
	Sat, 25 Apr 2020 18:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1125C6E47E
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2020 18:54:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21021153-1500050 
 for multiple; Sat, 25 Apr 2020 19:54:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 25 Apr 2020 19:54:00 +0100
Message-Id: <20200425185400.8938-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425175751.30358-4-chris@chris-wilson.co.uk>
References: <20200425175751.30358-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Switch to manual evaluation of RPS
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

As with the realisation for soft-rc6, we respond to idling the engines
within microseconds, far faster than the response times for HW RC6 and
RPS. Furthermore, our fast parking upon idle, prevents HW RPS from
running for many desktop workloads, as the RPS evaluation intervals are
on the order of tens of milliseconds, but the typical workload is just a
couple of milliseconds, but yet we still need to determine the best
frequency for user latency versus power.

Recognising that the HW evaluation intervals are a poor fit, and that
they were deprecated [in bspec at least] from gen10, start to wean
ourselves off them and replace the EI with a timer and our accurate
busy-stats. The principle benefit of manually evaluating RPS intervals
is that we can be more responsive for better performance and powersaving
for both spiky workloads and steady-state.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1698
Fixes: 98479ada421a ("drm/i915/gt: Treat idling as a RPS downclock event")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  5 ++
 drivers/gpu/drm/i915/gt/intel_rps.c          | 82 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_rps.h          | 10 +++
 drivers/gpu/drm/i915/gt/intel_rps_types.h    |  5 ++
 4 files changed, 101 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index d7250b2d4175..b2c3e8df3eba 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -551,6 +551,11 @@ struct intel_engine_cs {
 		 * Idle is defined as active == 0, active is active > 0.
 		 */
 		ktime_t start;
+
+		/**
+		 * @rps: Utilisation at last RPS sampling.
+		 */
+		ktime_t rps;
 	} stats;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 58a10b3d60ba..8658fd82d59c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -45,6 +45,62 @@ static inline void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
 	intel_uncore_write_fw(uncore, reg, val);
 }
 
+static void rps_timer(struct timer_list *t)
+{
+	struct intel_rps *rps = from_timer(rps, t, timer);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	ktime_t dt, last;
+	s64 max_busy = 0;
+
+	for_each_engine(engine, rps_to_gt(rps), id) {
+		dt = intel_engine_get_busy_time(engine);
+		last = engine->stats.rps;
+		engine->stats.rps = dt;
+
+		max_busy = max(max_busy, ktime_to_ns(ktime_sub(dt, last)));
+	}
+
+	dt = ktime_get();
+	last = rps->pm_timestamp;
+	rps->pm_timestamp = dt;
+
+	if (intel_rps_is_active(rps)) {
+		dt = ktime_sub(dt, last);
+
+		if (10 * max_busy > 9 * dt && /* >90% busy */
+		    rps->cur_freq < rps->max_freq_softlimit) {
+			rps->pm_iir |= GEN6_PM_RP_UP_THRESHOLD;
+			rps->pm_interval = 1;
+			schedule_work(&rps->work);
+		} else if (4 * max_busy < 3 * dt && /* <75% busy */
+			   rps->cur_freq > rps->min_freq_softlimit) {
+			rps->pm_iir |= GEN6_PM_RP_DOWN_THRESHOLD;
+			rps->pm_interval = 1;
+			schedule_work(&rps->work);
+		} else {
+			rps->last_adj = 0;
+		}
+
+		mod_timer(&rps->timer,
+			  jiffies + msecs_to_jiffies(rps->pm_interval));
+		rps->pm_interval = min(rps->pm_interval + 1, 15u);
+	}
+}
+
+static void rps_start_timer(struct intel_rps *rps)
+{
+	rps->pm_timestamp = ktime_sub(ktime_get(), rps->pm_timestamp);
+	rps->pm_interval = 1;
+	mod_timer(&rps->timer, jiffies + 1);
+}
+
+static void rps_stop_timer(struct intel_rps *rps)
+{
+	del_timer_sync(&rps->timer);
+	rps->pm_timestamp = ktime_sub(ktime_get(), rps->pm_timestamp);
+}
+
 static u32 rps_pm_mask(struct intel_rps *rps, u8 val)
 {
 	u32 mask = 0;
@@ -742,8 +798,11 @@ void intel_rps_unpark(struct intel_rps *rps)
 
 	mutex_unlock(&rps->lock);
 
+	rps->pm_iir = 0;
 	if (intel_rps_has_interrupts(rps))
 		rps_enable_interrupts(rps);
+	if (intel_rps_uses_timer(rps))
+		rps_start_timer(rps);
 
 	if (IS_GEN(rps_to_i915(rps), 5))
 		gen5_rps_update(rps);
@@ -754,6 +813,8 @@ void intel_rps_park(struct intel_rps *rps)
 	if (!intel_rps_clear_active(rps))
 		return;
 
+	if (intel_rps_uses_timer(rps))
+		rps_stop_timer(rps);
 	if (intel_rps_has_interrupts(rps))
 		rps_disable_interrupts(rps);
 
@@ -1679,10 +1740,26 @@ void intel_rps_init_early(struct intel_rps *rps)
 	mutex_init(&rps->power.mutex);
 
 	INIT_WORK(&rps->work, rps_work);
+	timer_setup(&rps->timer, rps_timer, 0);
 
 	atomic_set(&rps->num_waiters, 0);
 }
 
+static bool has_busy_stats(struct intel_rps *rps)
+{
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	return HAS_EXECLISTS(rps_to_i915(rps)); /* XXX init ordering */
+
+	for_each_engine(engine, rps_to_gt(rps), id) {
+		if (!intel_engine_supports_stats(engine))
+			return false;
+	}
+
+	return true;
+}
+
 void intel_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
@@ -1738,7 +1815,10 @@ void intel_rps_init(struct intel_rps *rps)
 
 	if (INTEL_GEN(i915) >= 6) {
 		rps_disable_interrupts(rps);
-		intel_rps_set_interrupts(rps);
+		if (has_busy_stats(rps))
+			intel_rps_set_timer(rps);
+		else
+			intel_rps_set_interrupts(rps);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 8276c4e9d78f..31c2604bcf16 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -76,4 +76,14 @@ static inline void intel_rps_set_interrupts(struct intel_rps *rps)
 	set_bit(INTEL_RPS_INTERRUPTS, &rps->flags);
 }
 
+static inline bool intel_rps_uses_timer(const struct intel_rps *rps)
+{
+	return test_bit(INTEL_RPS_TIMER, &rps->flags);
+}
+
+static inline void intel_rps_set_timer(struct intel_rps *rps)
+{
+	set_bit(INTEL_RPS_TIMER, &rps->flags);
+}
+
 #endif /* INTEL_RPS_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index 624e93108da4..38083f0402d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -35,6 +35,7 @@ enum {
 	INTEL_RPS_ENABLED = 0,
 	INTEL_RPS_ACTIVE,
 	INTEL_RPS_INTERRUPTS,
+	INTEL_RPS_TIMER,
 };
 
 struct intel_rps {
@@ -44,8 +45,12 @@ struct intel_rps {
 	 * work, interrupts_enabled and pm_iir are protected by
 	 * dev_priv->irq_lock
 	 */
+	struct timer_list timer;
 	struct work_struct work;
 	unsigned long flags;
+
+	ktime_t pm_timestamp;
+	u32 pm_interval;
 	u32 pm_iir;
 
 	/* PM interrupt bits that should never be masked */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

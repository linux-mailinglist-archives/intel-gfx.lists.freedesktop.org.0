Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B572B192537
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 11:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAD46E11D;
	Wed, 25 Mar 2020 10:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7E76E11D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 10:15:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20684831-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 10:15:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Mar 2020 10:15:02 +0000
Message-Id: <20200325101502.12591-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Measure the energy consumed
 while in RC6
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

Measure and compare the energy consumed, as reported by the rapl MSR,
by the GPU while in RC0 and RC6 states. Throw an error if RC6 does not
at least halve the energy consumption of RC0, as this more than likely
means we failed to enter RC0 correctly.

If we can't measure the energy draw with the MSR, then it will report 0
for both measurements. Since the measurement works on all gen6+, this seems
worth flagging as an error.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 44 +++++++++++++++++++++++++-
 drivers/gpu/drm/i915/intel_uncore.c    | 22 +++++++++++++
 drivers/gpu/drm/i915/intel_uncore.h    |  6 +++-
 3 files changed, 70 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 95b165faeba7..2f3316c924a3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -12,6 +12,22 @@
 
 #include "selftests/i915_random.h"
 
+static u64 energy_uJ(struct intel_rc6 *rc6)
+{
+	unsigned long long power;
+	u32 units;
+
+	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
+		return 0;
+
+	units = (power & 0x1f00) >> 8;
+
+	if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
+		return 0;
+
+	return (1000000 * power) >> units; /* convert to uJ */
+}
+
 static u64 rc6_residency(struct intel_rc6 *rc6)
 {
 	u64 result;
@@ -31,7 +47,9 @@ int live_rc6_manual(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_rc6 *rc6 = &gt->rc6;
+	u64 rc0_power, rc6_power;
 	intel_wakeref_t wakeref;
+	ktime_t dt;
 	u64 res[2];
 	int err = 0;
 
@@ -54,7 +72,11 @@ int live_rc6_manual(void *arg)
 	msleep(1); /* wakeup is not immediate, takes about 100us on icl */
 
 	res[0] = rc6_residency(rc6);
+	dt = ktime_get();
+	rc0_power = energy_uJ(rc6);
 	msleep(250);
+	rc0_power = energy_uJ(rc6) - rc0_power;
+	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
@@ -63,13 +85,24 @@ int live_rc6_manual(void *arg)
 		goto out_unlock;
 	}
 
+	rc0_power = div64_u64(NSEC_PER_SEC * rc0_power, ktime_to_ns(dt));
+	if (!rc0_power) {
+		pr_err("No power measured while in RC0\n");
+		err = -EINVAL;
+		goto out_unlock;
+	}
+
 	/* Manually enter RC6 */
 	intel_rc6_park(rc6);
 
 	res[0] = rc6_residency(rc6);
+	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
+	dt = ktime_get();
+	rc6_power = energy_uJ(rc6);
 	msleep(100);
+	rc6_power = energy_uJ(rc6) - rc6_power;
+	dt = ktime_sub(ktime_get(), dt);
 	res[1] = rc6_residency(rc6);
-
 	if (res[1] == res[0]) {
 		pr_err("Did not enter RC6! RC6_STATE=%08x, RC6_CONTROL=%08x, residency=%lld\n",
 		       intel_uncore_read_fw(gt->uncore, GEN6_RC_STATE),
@@ -78,6 +111,15 @@ int live_rc6_manual(void *arg)
 		err = -EINVAL;
 	}
 
+	rc6_power = div64_u64(NSEC_PER_SEC * rc6_power, ktime_to_ns(dt));
+	pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
+		rc0_power, rc6_power);
+	if (2 * rc6_power > rc0_power) {
+		pr_err("GPU leaked energy while in RC6!\n");
+		err = -EINVAL;
+		goto out_unlock;
+	}
+
 	/* Restore what should have been the original state! */
 	intel_rc6_unpark(rc6);
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index abb18b90d7c3..013312e9b55c 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -734,6 +734,28 @@ void intel_uncore_forcewake_put(struct intel_uncore *uncore,
 	spin_unlock_irqrestore(&uncore->lock, irqflags);
 }
 
+/**
+ * intel_uncore_forcewake_flush - flush the delayed release
+ * @uncore: the intel_uncore structure
+ * @fw_domains: forcewake domains to flush
+ */
+void intel_uncore_forcewake_flush(struct intel_uncore *uncore,
+				  enum forcewake_domains fw_domains)
+{
+	struct intel_uncore_forcewake_domain *domain;
+	unsigned int tmp;
+
+	if (!uncore->funcs.force_wake_put)
+		return;
+
+	fw_domains &= uncore->fw_domains;
+	for_each_fw_domain_masked(domain, fw_domains, uncore, tmp) {
+		WRITE_ONCE(domain->active, false);
+		if (hrtimer_cancel(&domain->timer))
+			intel_uncore_fw_release_timer(&domain->timer);
+	}
+}
+
 /**
  * intel_uncore_forcewake_put__locked - grab forcewake domain references
  * @uncore: the intel_uncore structure
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index dcfa243892c6..8d3aa8b9acf9 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -209,7 +209,11 @@ void intel_uncore_forcewake_get(struct intel_uncore *uncore,
 				enum forcewake_domains domains);
 void intel_uncore_forcewake_put(struct intel_uncore *uncore,
 				enum forcewake_domains domains);
-/* Like above but the caller must manage the uncore.lock itself.
+void intel_uncore_forcewake_flush(struct intel_uncore *uncore,
+				  enum forcewake_domains fw_domains);
+
+/*
+ * Like above but the caller must manage the uncore.lock itself.
  * Must be used with I915_READ_FW and friends.
  */
 void intel_uncore_forcewake_get__locked(struct intel_uncore *uncore,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

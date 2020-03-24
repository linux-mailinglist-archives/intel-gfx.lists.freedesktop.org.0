Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C653191B42
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 21:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C628C6E542;
	Tue, 24 Mar 2020 20:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C5D6E542
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 20:45:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20680331-1500050 
 for multiple; Tue, 24 Mar 2020 20:44:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 20:44:55 +0000
Message-Id: <20200324204455.2988-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324201526.16571-1-chris@chris-wilson.co.uk>
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Measure the energy consumed
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
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 39 ++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 95b165faeba7..3ac9a8925218 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -12,6 +12,22 @@
 
 #include "selftests/i915_random.h"
 
+#define MCH_SECP_NRG_STTS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x592c)
+
+static u64 energy_uJ(struct intel_rc6 *rc6)
+{
+	unsigned long long power;
+	u32 units;
+
+	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
+		return 0;
+
+	units = (power & 0x1f00) >> 8;
+	power = intel_uncore_read_fw(rc6_to_uncore(rc6), MCH_SECP_NRG_STTS);
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
 
@@ -53,22 +71,35 @@ int live_rc6_manual(void *arg)
 	__intel_rc6_disable(rc6);
 	msleep(1); /* wakeup is not immediate, takes about 100us on icl */
 
+	dt = ktime_get();
+	rc0_power = energy_uJ(rc6);
 	res[0] = rc6_residency(rc6);
 	msleep(250);
 	res[1] = rc6_residency(rc6);
+	rc0_power = div64_u64(energy_uJ(rc6) - rc0_power,
+			      ktime_to_ns(ktime_sub(ktime_get(), dt)));
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
 		       (res[1] - res[0]) >> 10);
 		err = -EINVAL;
 		goto out_unlock;
 	}
+	if (!rc0_power) {
+		pr_err("No power measured while in RC0\n");
+		err = -EINVAL;
+		goto out_unlock;
+	}
 
 	/* Manually enter RC6 */
 	intel_rc6_park(rc6);
 
+	dt = ktime_get();
+	rc6_power = energy_uJ(rc6);
 	res[0] = rc6_residency(rc6);
 	msleep(100);
 	res[1] = rc6_residency(rc6);
+	rc6_power = div64_u64(energy_uJ(rc6) - rc6_power,
+			      ktime_to_ns(ktime_sub(ktime_get(), dt)));
 
 	if (res[1] == res[0]) {
 		pr_err("Did not enter RC6! RC6_STATE=%08x, RC6_CONTROL=%08x, residency=%lld\n",
@@ -78,6 +109,14 @@ int live_rc6_manual(void *arg)
 		err = -EINVAL;
 	}
 
+	pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
+		rc0_power, rc6_power);
+	if ((rc6_power >> 10) > (rc0_power >> 10) / 2) { /* compare mW */
+		pr_err("GPU leaked energy while in RC6!\n");
+		err = -EINVAL;
+		goto out_unlock;
+	}
+
 	/* Restore what should have been the original state! */
 	intel_rc6_unpark(rc6);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

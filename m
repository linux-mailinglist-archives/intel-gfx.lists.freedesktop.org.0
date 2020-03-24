Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D34191AB9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 21:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A57689893;
	Tue, 24 Mar 2020 20:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030D089893
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 20:16:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20680148-1500050 
 for multiple; Tue, 24 Mar 2020 20:15:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 20:15:26 +0000
Message-Id: <20200324201526.16571-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
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
for both measurements. This may be worth flagging as a warning? On the
other hand, it is reported and we can inspect the various machines in CI
to see if the values are reasonable.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 29 ++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 95b165faeba7..7339758b0c77 100644
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
@@ -31,6 +47,7 @@ int live_rc6_manual(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_rc6 *rc6 = &gt->rc6;
+	u64 rc0_energy, rc6_energy;
 	intel_wakeref_t wakeref;
 	u64 res[2];
 	int err = 0;
@@ -53,9 +70,11 @@ int live_rc6_manual(void *arg)
 	__intel_rc6_disable(rc6);
 	msleep(1); /* wakeup is not immediate, takes about 100us on icl */
 
+	rc0_energy = -energy_uJ(rc6);
 	res[0] = rc6_residency(rc6);
 	msleep(250);
 	res[1] = rc6_residency(rc6);
+	rc0_energy += energy_uJ(rc6);
 	if ((res[1] - res[0]) >> 10) {
 		pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
 		       (res[1] - res[0]) >> 10);
@@ -66,9 +85,11 @@ int live_rc6_manual(void *arg)
 	/* Manually enter RC6 */
 	intel_rc6_park(rc6);
 
+	rc6_energy = -energy_uJ(rc6);
 	res[0] = rc6_residency(rc6);
 	msleep(100);
 	res[1] = rc6_residency(rc6);
+	rc6_energy += energy_uJ(rc6);
 
 	if (res[1] == res[0]) {
 		pr_err("Did not enter RC6! RC6_STATE=%08x, RC6_CONTROL=%08x, residency=%lld\n",
@@ -78,6 +99,14 @@ int live_rc6_manual(void *arg)
 		err = -EINVAL;
 	}
 
+	pr_info("GPU consumed %llduJ in RC0 and %llduJ in RC6\n",
+		rc0_energy, rc6_energy);
+	if ((rc6_energy >> 10) > (rc0_energy >> 10) / 2) { /* compare mJ */
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

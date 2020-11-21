Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FBB2BC1AC
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Nov 2020 20:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FD489F6E;
	Sat, 21 Nov 2020 19:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1C689F6E
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Nov 2020 19:03:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23065263-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Nov 2020 19:03:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Nov 2020 19:03:52 +0000
Message-Id: <20201121190352.15996-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Plug IPS into intel_rps_set
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

The old IPS interface did not match the RPS interface that we tried to
plug it into (bool vs int return). Once repaired, our minimal
selftesting is finally happy!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c    | 34 +++++++++++++++++---------
 drivers/gpu/drm/i915/gt/selftest_rps.c |  5 +++-
 2 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 0d88f17799ff..b13e7845d483 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -400,7 +400,7 @@ static unsigned int gen5_invert_freq(struct intel_rps *rps,
 	return val;
 }
 
-static bool gen5_rps_set(struct intel_rps *rps, u8 val)
+static int __gen5_rps_set(struct intel_rps *rps, u8 val)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	u16 rgvswctl;
@@ -410,7 +410,7 @@ static bool gen5_rps_set(struct intel_rps *rps, u8 val)
 	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
 	if (rgvswctl & MEMCTL_CMD_STS) {
 		DRM_DEBUG("gpu busy, RCS change rejected\n");
-		return false; /* still busy with another command */
+		return -EBUSY; /* still busy with another command */
 	}
 
 	/* Invert the frequency bin into an ips delay */
@@ -426,7 +426,18 @@ static bool gen5_rps_set(struct intel_rps *rps, u8 val)
 	rgvswctl |= MEMCTL_CMD_STS;
 	intel_uncore_write16(uncore, MEMSWCTL, rgvswctl);
 
-	return true;
+	return 0;
+}
+
+static int gen5_rps_set(struct intel_rps *rps, u8 val)
+{
+	int err;
+
+	spin_lock_irq(&mchdev_lock);
+	err = __gen5_rps_set(rps, val);
+	spin_unlock_irq(&mchdev_lock);
+
+	return err;
 }
 
 static unsigned long intel_pxfreq(u32 vidfreq)
@@ -557,7 +568,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 			"stuck trying to change perf mode\n");
 	mdelay(1);
 
-	gen5_rps_set(rps, rps->cur_freq);
+	__gen5_rps_set(rps, rps->cur_freq);
 
 	rps->ips.last_count1 = intel_uncore_read(uncore, DMIEC);
 	rps->ips.last_count1 += intel_uncore_read(uncore, DDREC);
@@ -599,7 +610,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
 	intel_uncore_write(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
 
 	/* Go back to the starting frequency */
-	gen5_rps_set(rps, rps->idle_freq);
+	__gen5_rps_set(rps, rps->idle_freq);
 	mdelay(1);
 	rgvswctl |= MEMCTL_CMD_STS;
 	intel_uncore_write(uncore, MEMSWCTL, rgvswctl);
@@ -797,20 +808,19 @@ static int rps_set(struct intel_rps *rps, u8 val, bool update)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	int err;
 
-	if (INTEL_GEN(i915) < 6)
-		return 0;
-
 	if (val == rps->last_freq)
 		return 0;
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		err = vlv_rps_set(rps, val);
-	else
+	else if (INTEL_GEN(i915) >= 6)
 		err = gen6_rps_set(rps, val);
+	else
+		err = gen5_rps_set(rps, val);
 	if (err)
 		return err;
 
-	if (update)
+	if (update && INTEL_GEN(i915) >= 6)
 		gen6_rps_set_thresholds(rps, val);
 	rps->last_freq = val;
 
@@ -1794,7 +1804,7 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
 			 rps->min_freq_softlimit,
 			 rps->max_freq_softlimit);
 
-	if (new_freq != rps->cur_freq && gen5_rps_set(rps, new_freq))
+	if (new_freq != rps->cur_freq && !__gen5_rps_set(rps, new_freq))
 		rps->cur_freq = new_freq;
 
 	spin_unlock(&mchdev_lock);
@@ -2105,7 +2115,7 @@ bool i915_gpu_turbo_disable(void)
 
 	spin_lock_irq(&mchdev_lock);
 	rps->max_freq_softlimit = rps->min_freq;
-	ret = gen5_rps_set(&i915->gt.rps, rps->min_freq);
+	ret = !__gen5_rps_set(&i915->gt.rps, rps->min_freq);
 	spin_unlock_irq(&mchdev_lock);
 
 	drm_dev_put(&i915->drm);
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index aa5675ecb5cc..967641fee42a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -185,7 +185,10 @@ static u8 rps_set_check(struct intel_rps *rps, u8 freq)
 {
 	mutex_lock(&rps->lock);
 	GEM_BUG_ON(!intel_rps_is_active(rps));
-	intel_rps_set(rps, freq);
+	if (wait_for(!intel_rps_set(rps, freq), 50)) {
+		mutex_unlock(&rps->lock);
+		return 0;
+	}
 	GEM_BUG_ON(rps->last_freq != freq);
 	mutex_unlock(&rps->lock);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

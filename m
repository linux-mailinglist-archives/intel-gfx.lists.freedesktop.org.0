Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1E82B9DB2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 23:36:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E1B06E82A;
	Thu, 19 Nov 2020 22:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62A36E82A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 22:36:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23048131-1500050 
 for multiple; Thu, 19 Nov 2020 22:36:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 22:36:00 +0000
Message-Id: <20201119223600.20802-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Plug IPS into intel_rps_set
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

The old IPS interface did not match the RPS interface that we tried to
plug it into (bool vs int return). Once repaired, our minimal
selftesting is finally happy!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 0d88f17799ff..9785fdc088ce 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -400,7 +400,7 @@ static unsigned int gen5_invert_freq(struct intel_rps *rps,
 	return val;
 }
 
-static bool gen5_rps_set(struct intel_rps *rps, u8 val)
+static int gen5_rps_set(struct intel_rps *rps, u8 val)
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
@@ -426,7 +426,7 @@ static bool gen5_rps_set(struct intel_rps *rps, u8 val)
 	rgvswctl |= MEMCTL_CMD_STS;
 	intel_uncore_write16(uncore, MEMSWCTL, rgvswctl);
 
-	return true;
+	return 0;
 }
 
 static unsigned long intel_pxfreq(u32 vidfreq)
@@ -797,7 +797,7 @@ static int rps_set(struct intel_rps *rps, u8 val, bool update)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	int err;
 
-	if (INTEL_GEN(i915) < 6)
+	if (INTEL_GEN(i915) < 5)
 		return 0;
 
 	if (val == rps->last_freq)
@@ -805,12 +805,14 @@ static int rps_set(struct intel_rps *rps, u8 val, bool update)
 
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
 
@@ -1794,7 +1796,7 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
 			 rps->min_freq_softlimit,
 			 rps->max_freq_softlimit);
 
-	if (new_freq != rps->cur_freq && gen5_rps_set(rps, new_freq))
+	if (new_freq != rps->cur_freq && !gen5_rps_set(rps, new_freq))
 		rps->cur_freq = new_freq;
 
 	spin_unlock(&mchdev_lock);
@@ -2105,7 +2107,7 @@ bool i915_gpu_turbo_disable(void)
 
 	spin_lock_irq(&mchdev_lock);
 	rps->max_freq_softlimit = rps->min_freq;
-	ret = gen5_rps_set(&i915->gt.rps, rps->min_freq);
+	ret = !gen5_rps_set(&i915->gt.rps, rps->min_freq);
 	spin_unlock_irq(&mchdev_lock);
 
 	drm_dev_put(&i915->drm);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 130391B8853
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 19:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B98156E09F;
	Sat, 25 Apr 2020 17:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761416E1B5
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2020 17:58:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21020886-1500050 
 for multiple; Sat, 25 Apr 2020 18:57:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 25 Apr 2020 18:57:48 +0100
Message-Id: <20200425175751.30358-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425175751.30358-1-chris@chris-wilson.co.uk>
References: <20200425175751.30358-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/gt: Track use of RPS interrupts in
 flags
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

Use the new intel_rps.flags field to store whether or not interrupts are
being used with RPS.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c       | 13 ++++++++-----
 drivers/gpu/drm/i915/gt/intel_rps.h       | 10 ++++++++++
 drivers/gpu/drm/i915/gt/intel_rps_types.h |  1 +
 drivers/gpu/drm/i915/gt/selftest_rps.c    |  2 +-
 4 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 05410d19dbc0..58a10b3d60ba 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -742,7 +742,7 @@ void intel_rps_unpark(struct intel_rps *rps)
 
 	mutex_unlock(&rps->lock);
 
-	if (INTEL_GEN(rps_to_i915(rps)) >= 6)
+	if (intel_rps_has_interrupts(rps))
 		rps_enable_interrupts(rps);
 
 	if (IS_GEN(rps_to_i915(rps), 5))
@@ -751,12 +751,10 @@ void intel_rps_unpark(struct intel_rps *rps)
 
 void intel_rps_park(struct intel_rps *rps)
 {
-	struct drm_i915_private *i915 = rps_to_i915(rps);
-
 	if (!intel_rps_clear_active(rps))
 		return;
 
-	if (INTEL_GEN(i915) >= 6)
+	if (intel_rps_has_interrupts(rps))
 		rps_disable_interrupts(rps);
 
 	if (rps->last_freq <= rps->idle_freq)
@@ -838,7 +836,7 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
 		 * Make sure we continue to get interrupts
 		 * until we hit the minimum or maximum frequencies.
 		 */
-		if (INTEL_GEN(rps_to_i915(rps)) >= 6) {
+		if (intel_rps_has_interrupts(rps)) {
 			struct intel_uncore *uncore = rps_to_uncore(rps);
 
 			set(uncore,
@@ -1737,6 +1735,11 @@ void intel_rps_init(struct intel_rps *rps)
 
 	if (INTEL_GEN(i915) >= 8 && INTEL_GEN(i915) < 11)
 		rps->pm_intrmsk_mbz |= GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC;
+
+	if (INTEL_GEN(i915) >= 6) {
+		rps_disable_interrupts(rps);
+		intel_rps_set_interrupts(rps);
+	}
 }
 
 u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index a01decf70f31..8276c4e9d78f 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -66,4 +66,14 @@ static inline bool intel_rps_clear_active(struct intel_rps *rps)
 	return test_and_clear_bit(INTEL_RPS_ACTIVE, &rps->flags);
 }
 
+static inline bool intel_rps_has_interrupts(const struct intel_rps *rps)
+{
+	return test_bit(INTEL_RPS_INTERRUPTS, &rps->flags);
+}
+
+static inline void intel_rps_set_interrupts(struct intel_rps *rps)
+{
+	set_bit(INTEL_RPS_INTERRUPTS, &rps->flags);
+}
+
 #endif /* INTEL_RPS_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index 1ec44f994bc5..624e93108da4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -34,6 +34,7 @@ struct intel_rps_ei {
 enum {
 	INTEL_RPS_ENABLED = 0,
 	INTEL_RPS_ACTIVE,
+	INTEL_RPS_INTERRUPTS,
 };
 
 struct intel_rps {
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index f47b59d5943c..1fcbffb8f3db 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -878,7 +878,7 @@ int live_rps_interrupt(void *arg)
 	 * First, let's check whether or not we are receiving interrupts.
 	 */
 
-	if (!intel_rps_is_enabled(rps))
+	if (!intel_rps_has_interrupts(rps))
 		return 0;
 
 	intel_gt_pm_get(gt);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

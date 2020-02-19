Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54331644E0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 14:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185096E0C4;
	Wed, 19 Feb 2020 13:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E69F86E0C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 13:01:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20275793-1500050 
 for multiple; Wed, 19 Feb 2020 13:01:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 13:01:19 +0000
Message-Id: <20200219130119.1457693-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Do not attempt to reprogram
 IA/ring frequencies for dgfx
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

For dgfx, we do not need to reconfigure the IA/ring frequencies of the
main processors as they are distinct devices.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_llc.c    |  6 ++++--
 drivers/gpu/drm/i915/gt/selftest_llc.c | 11 ++---------
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index ceb785b75c25..e3f637b3650e 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -50,6 +50,9 @@ static bool get_ia_constants(struct intel_llc *llc,
 	struct drm_i915_private *i915 = llc_to_gt(llc)->i915;
 	struct intel_rps *rps = &llc_to_gt(llc)->rps;
 
+	if (!HAS_LLC(i915) || IS_DGFX(i915))
+		return false;
+
 	if (rps->max_freq <= rps->min_freq)
 		return false;
 
@@ -147,8 +150,7 @@ static void gen6_update_ring_freq(struct intel_llc *llc)
 
 void intel_llc_enable(struct intel_llc *llc)
 {
-	if (HAS_LLC(llc_to_gt(llc)->i915))
-		gen6_update_ring_freq(llc);
+	gen6_update_ring_freq(llc);
 }
 
 void intel_llc_disable(struct intel_llc *llc)
diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i915/gt/selftest_llc.c
index fd3770e48ac7..a912159693fd 100644
--- a/drivers/gpu/drm/i915/gt/selftest_llc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
@@ -18,10 +18,8 @@ static int gen6_verify_ring_freq(struct intel_llc *llc)
 
 	wakeref = intel_runtime_pm_get(llc_to_gt(llc)->uncore->rpm);
 
-	if (!get_ia_constants(llc, &consts)) {
-		err = -ENODEV;
+	if (!get_ia_constants(llc, &consts))
 		goto out_rpm;
-	}
 
 	for (gpu_freq = consts.min_gpu_freq;
 	     gpu_freq <= consts.max_gpu_freq;
@@ -71,10 +69,5 @@ static int gen6_verify_ring_freq(struct intel_llc *llc)
 
 int st_llc_verify(struct intel_llc *llc)
 {
-	int err = 0;
-
-	if (HAS_LLC(llc_to_gt(llc)->i915))
-		err = gen6_verify_ring_freq(llc);
-
-	return err;
+	return gen6_verify_ring_freq(llc);
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

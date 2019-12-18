Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E1A125410
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 22:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED5E89D66;
	Wed, 18 Dec 2019 21:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCDEA89D66
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 21:06:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19625986-1500050 
 for multiple; Wed, 18 Dec 2019 21:05:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 21:05:45 +0000
Message-Id: <20191218210545.3975426-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218210545.3975426-1-chris@chris-wilson.co.uk>
References: <20191218210545.3975426-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Suppress threshold updates on
 RPS parking
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

When we park RPS, we set the GPU to run at minimum 'idle' frequency.
However, as the GPU is idle, we also disable the worker and RPS
interrupts - changing the RPS thresholds has no effect, it just incurs
extra changes to restore them when we unpark. So on parking, leave the
thresholds set to the current power level and so we expect them to be
valid for our restart.

References: https://gitlab.freedesktop.org/drm/intel/issues/848
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 443d4ba3bbb7..f232036c3c7a 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -682,7 +682,7 @@ static int vlv_rps_set(struct intel_rps *rps, u8 val)
 	return err;
 }
 
-static int rps_set(struct intel_rps *rps, u8 val)
+static int rps_set(struct intel_rps *rps, u8 val, bool update)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	int err;
@@ -700,7 +700,8 @@ static int rps_set(struct intel_rps *rps, u8 val)
 	if (err)
 		return err;
 
-	gen6_rps_set_thresholds(rps, val);
+	if (update)
+		gen6_rps_set_thresholds(rps, val);
 	rps->last_freq = val;
 
 	return 0;
@@ -760,7 +761,7 @@ void intel_rps_park(struct intel_rps *rps)
 	 * power than the render powerwell.
 	 */
 	intel_uncore_forcewake_get(rps_to_uncore(rps), FORCEWAKE_MEDIA);
-	rps_set(rps, rps->idle_freq);
+	rps_set(rps, rps->idle_freq, false);
 	intel_uncore_forcewake_put(rps_to_uncore(rps), FORCEWAKE_MEDIA);
 }
 
@@ -796,7 +797,7 @@ int intel_rps_set(struct intel_rps *rps, u8 val)
 	GEM_BUG_ON(val < rps->min_freq);
 
 	if (rps->active) {
-		err = rps_set(rps, val);
+		err = rps_set(rps, val, true);
 		if (err)
 			return err;
 
@@ -876,7 +877,7 @@ static bool rps_reset(struct intel_rps *rps)
 	rps->power.mode = -1;
 	rps->last_freq = -1;
 
-	if (rps_set(rps, rps->min_freq)) {
+	if (rps_set(rps, rps->min_freq, true)) {
 		DRM_ERROR("Failed to reset RPS to initial values\n");
 		return false;
 	}
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

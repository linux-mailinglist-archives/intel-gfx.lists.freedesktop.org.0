Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C5514A1E1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 11:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805396EACB;
	Mon, 27 Jan 2020 10:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 542BC6EACB
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 10:23:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20019987-1500050 
 for multiple; Mon, 27 Jan 2020 10:23:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 10:23:10 +0000
Message-Id: <20200127102310.2381960-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Lift set-wedged engine dumping out
 of user paths
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The user (e.g. gem_eio) can manipulate the driver into wedging itself,
allowing the user to trigger voluminous logging of inconsequential
details. If we lift the dump to direct calls to intel_gt_set_wedged(),
out of the intel_reset failure handling, we keep the detail logging for
what we expect are true HW or test failures without being tricked.

Reported-by: Tomi Sarvela <tomi.p.sarvela@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index beee0cf89bce..48b42adaffbd 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -800,13 +800,6 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 	if (test_bit(I915_WEDGED, &gt->reset.flags))
 		return;
 
-	if (GEM_SHOW_DEBUG() && !intel_engines_are_idle(gt)) {
-		struct drm_printer p = drm_debug_printer(__func__);
-
-		for_each_engine(engine, gt, id)
-			intel_engine_dump(engine, &p, "%s\n", engine->name);
-	}
-
 	GT_TRACE(gt, "start\n");
 
 	/*
@@ -845,10 +838,23 @@ void intel_gt_set_wedged(struct intel_gt *gt)
 {
 	intel_wakeref_t wakeref;
 
+	if (test_bit(I915_WEDGED, &gt->reset.flags))
+		return;
+
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 	mutex_lock(&gt->reset.mutex);
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		__intel_gt_set_wedged(gt);
+
+	if (GEM_SHOW_DEBUG() && !intel_engines_are_idle(gt)) {
+		struct drm_printer p = drm_debug_printer(__func__);
+
+		for_each_engine(engine, gt, id)
+			intel_engine_dump(engine, &p, "%s\n", engine->name);
+	}
+
+	__intel_gt_set_wedged(gt);
+
 	mutex_unlock(&gt->reset.mutex);
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
 
 static bool __intel_gt_unset_wedged(struct intel_gt *gt)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

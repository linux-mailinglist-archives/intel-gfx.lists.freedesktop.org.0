Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6036312A971
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 01:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ACA989B45;
	Thu, 26 Dec 2019 00:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874ED89B45
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 00:57:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19692253-1500050 
 for multiple; Thu, 26 Dec 2019 00:57:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Dec 2019 00:56:58 +0000
Message-Id: <20191226005701.2534997-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226005701.2534997-1-chris@chris-wilson.co.uk>
References: <20191226005701.2534997-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Discard stale context state
 from across idling
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

Before we idle, on parking, we switch to the kernel context such that we
have a scratch context loaded while the GPU idle, protecting any
precious user state. Be paranoid and assume that the idle state may have
been trashed, and reset the kernel_context image after idling.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 8 --------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 010620b78202..b9444ce29a3a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -20,6 +20,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 {
 	struct intel_engine_cs *engine =
 		container_of(wf, typeof(*engine), wakeref);
+	struct intel_context *ce;
 	void *map;
 
 	ENGINE_TRACE(engine, "\n");
@@ -34,6 +35,11 @@ static int __engine_unpark(struct intel_wakeref *wf)
 	if (!IS_ERR_OR_NULL(map))
 		engine->pinned_default_state = map;
 
+	/* Discard stale context state from across idling */
+	ce = engine->kernel_context;
+	if (ce)
+		ce->ops->reset(ce);
+
 	if (engine->unpark)
 		engine->unpark(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 45b68a17da4d..46a0aed2d5d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -215,16 +215,8 @@ int intel_gt_resume(struct intel_gt *gt)
 	intel_llc_enable(&gt->llc);
 
 	for_each_engine(engine, gt, id) {
-		struct intel_context *ce;
-
 		intel_engine_pm_get(engine);
 
-		ce = engine->kernel_context;
-		if (ce) {
-			GEM_BUG_ON(!intel_context_is_pinned(ce));
-			ce->ops->reset(ce);
-		}
-
 		engine->serial++; /* kernel context lost */
 		err = engine->resume(engine);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

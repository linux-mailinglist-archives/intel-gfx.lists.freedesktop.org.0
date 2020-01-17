Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDCD141061
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 19:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BD316F88C;
	Fri, 17 Jan 2020 18:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916DB6F88C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 18:03:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19920813-1500050 
 for multiple; Fri, 17 Jan 2020 18:03:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 18:03:09 +0000
Message-Id: <20200117180309.3249427-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
References: <20200117125849.3024805-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Be paranoid and reset the GPU
 before release
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just in the very unlikely case we have not stopped the GPU before we
return the pages being used by the GPU to the system, force a reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 2d0ef5fc6748..b4b69a3fa25c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -35,6 +35,7 @@
 #include "intel_engine_user.h"
 #include "intel_gt.h"
 #include "intel_gt_requests.h"
+#include "intel_gt_pm.h"
 #include "intel_lrc.h"
 #include "intel_reset.h"
 #include "intel_ring.h"
@@ -392,8 +393,23 @@ void intel_engines_release(struct intel_gt *gt)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
+	/*
+	 * Before we release the resources held by engine, we must be certain
+	 * that the HW is no longer accessing them -- having the GPU scribble
+	 * to or read from a page being used for something else causes no end
+	 * of fun.
+	 *
+	 * The GPU should be reset by this point, but assume the worst just
+	 * in case we aborted before completely initialising the engines.
+	 */
+	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
+	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
+		__intel_gt_reset(gt, ALL_ENGINES);
+
 	/* Decouple the backend; but keep the layout for late GPU resets */
 	for_each_engine(engine, gt, id) {
+		GEM_BUG_ON(intel_engine_pm_is_awake(engine));
+
 		if (!engine->release)
 			continue;
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

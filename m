Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EAC12A972
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 01:57:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7038389B46;
	Thu, 26 Dec 2019 00:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B45A89B48
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 00:57:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19692254-1500050 
 for multiple; Thu, 26 Dec 2019 00:57:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Dec 2019 00:56:59 +0000
Message-Id: <20191226005701.2534997-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226005701.2534997-1-chris@chris-wilson.co.uk>
References: <20191226005701.2534997-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/gt: Always poison the
 kernel_context image before unparking
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

Keep scrubbing the kernel_context image with poison before we reset it
in order to demonstrate that we will be resilient in the case where it
is accidentally overwritten on idle.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index b9444ce29a3a..86970bbff8bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -35,6 +35,20 @@ static int __engine_unpark(struct intel_wakeref *wf)
 	if (!IS_ERR_OR_NULL(map))
 		engine->pinned_default_state = map;
 
+	/* Poison the kernel_context image to verify we never fully trust it */
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) &&
+	    engine->kernel_context->state) {
+		struct drm_i915_gem_object *obj =
+			engine->kernel_context->state->obj;
+
+		map = i915_gem_object_pin_map(obj, i915_coherent_map_type(engine->i915));
+		if (!IS_ERR(map)) {
+			memset(map, POISON_INUSE, obj->base.size);
+			i915_gem_object_flush_map(obj);
+			i915_gem_object_unpin_map(obj);
+		}
+	}
+
 	/* Discard stale context state from across idling */
 	ce = engine->kernel_context;
 	if (ce)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

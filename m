Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE83C12E66C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 14:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18AAD6E0E7;
	Thu,  2 Jan 2020 13:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709FB6E0E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 13:17:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19749376-1500050 
 for multiple; Thu, 02 Jan 2020 13:17:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jan 2020 13:17:07 +0000
Message-Id: <20200102131707.1463945-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
References: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/gt: Always poison the
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
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 ++--
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 9527a659546c..ca1420fb8b53 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -17,6 +17,8 @@
 #include "intel_engine_types.h"
 #include "intel_sseu.h"
 
+#define CONTEXT_REDZONE POISON_INUSE
+
 struct i915_gem_context;
 struct i915_vma;
 struct intel_context;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 1b9f73948f22..ea90ab3e396e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -37,8 +37,24 @@ static int __engine_unpark(struct intel_wakeref *wf)
 
 	/* Discard stale context state from across idling */
 	ce = engine->kernel_context;
-	if (ce)
+	if (ce) {
+		GEM_BUG_ON(test_bit(CONTEXT_VALID_BIT, &ce->flags));
+
+		/* First poison the image to verify we never fully trust it */
+		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) && ce->state) {
+			struct drm_i915_gem_object *obj = ce->state->obj;
+			int type = i915_coherent_map_type(engine->i915);
+
+			map = i915_gem_object_pin_map(obj, type);
+			if (!IS_ERR(map)) {
+				memset(map, CONTEXT_REDZONE, obj->base.size);
+				i915_gem_object_flush_map(obj);
+				i915_gem_object_unpin_map(obj);
+			}
+		}
+
 		ce->ops->reset(ce);
+	}
 
 	if (engine->unpark)
 		engine->unpark(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b21a191bda3b..170b5a0139a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2507,7 +2507,7 @@ set_redzone(void *vaddr, const struct intel_engine_cs *engine)
 
 	vaddr += engine->context_size;
 
-	memset(vaddr, POISON_INUSE, I915_GTT_PAGE_SIZE);
+	memset(vaddr, CONTEXT_REDZONE, I915_GTT_PAGE_SIZE);
 }
 
 static void
@@ -2518,7 +2518,7 @@ check_redzone(const void *vaddr, const struct intel_engine_cs *engine)
 
 	vaddr += engine->context_size;
 
-	if (memchr_inv(vaddr, POISON_INUSE, I915_GTT_PAGE_SIZE))
+	if (memchr_inv(vaddr, CONTEXT_REDZONE, I915_GTT_PAGE_SIZE))
 		dev_err_once(engine->i915->drm.dev,
 			     "%s context redzone overwritten!\n",
 			     engine->name);
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

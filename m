Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A5D12D57E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 02:33:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650206E0BF;
	Tue, 31 Dec 2019 01:33:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 989776E092
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 01:33:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19730576-1500050 
 for multiple; Tue, 31 Dec 2019 01:33:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 01:33:09 +0000
Message-Id: <20191231013309.3998505-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
References: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
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
index 031d66ce5bb5..9e8440dbcbac 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2568,7 +2568,7 @@ set_redzone(void *vaddr, const struct intel_engine_cs *engine)
 
 	vaddr += engine->context_size;
 
-	memset(vaddr, POISON_INUSE, I915_GTT_PAGE_SIZE);
+	memset(vaddr, CONTEXT_REDZONE, I915_GTT_PAGE_SIZE);
 }
 
 static void
@@ -2579,7 +2579,7 @@ check_redzone(const void *vaddr, const struct intel_engine_cs *engine)
 
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

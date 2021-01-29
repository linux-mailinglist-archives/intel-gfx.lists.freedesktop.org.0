Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A993082AD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 01:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF456EA65;
	Fri, 29 Jan 2021 00:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60686EA64
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 00:49:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23731781-1500050 
 for multiple; Fri, 29 Jan 2021 00:49:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 00:49:32 +0000
Message-Id: <20210129004933.29755-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gvt: Parse default state to update
 reg whitelist
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
Cc: Yan Zhao <yan.y.zhao@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than break existing context objects by incorrectly forcing them
to rogue cache coherency and trying to assert a new mapping, read the
reg whitelist from the default context image.

And use gvt->gt, never &dev_priv->gt.

Fixes: 493f30cd086e ("drm/i915/gvt: parse init context to update cmd accessible reg whitelist")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Kevin Tian <kevin.tian@intel.com>
Cc: Wang Zhi <zhi.a.wang@intel.com>
Cc: Yan Zhao <yan.y.zhao@intel.com>
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Zhi Wang <zhi.a.wang@intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 93 ++++++---------------------
 1 file changed, 20 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 9a7087830cc2..ec6ea11d747f 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -41,6 +41,7 @@
 #include "gt/intel_lrc.h"
 #include "gt/intel_ring.h"
 #include "gt/intel_gt_requests.h"
+#include "gt/shmem_utils.h"
 #include "gvt.h"
 #include "i915_pvinfo.h"
 #include "trace.h"
@@ -3087,71 +3088,28 @@ int intel_gvt_scan_and_shadow_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
  */
 void intel_gvt_update_reg_whitelist(struct intel_vgpu *vgpu)
 {
+	const unsigned long start = LRC_STATE_PN * PAGE_SIZE;
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_private *dev_priv = gvt->gt->i915;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	const unsigned long start = LRC_STATE_PN * PAGE_SIZE;
-	struct i915_request *rq;
-	struct intel_vgpu_submission *s = &vgpu->submission;
-	struct i915_request *requests[I915_NUM_ENGINES] = {};
-	bool is_ctx_pinned[I915_NUM_ENGINES] = {};
-	int ret = 0;
 
 	if (gvt->is_reg_whitelist_updated)
 		return;
 
-	for_each_engine(engine, &dev_priv->gt, id) {
-		ret = intel_context_pin(s->shadow[id]);
-		if (ret) {
-			gvt_vgpu_err("fail to pin shadow ctx\n");
-			goto out;
-		}
-		is_ctx_pinned[id] = true;
-
-		rq = i915_request_create(s->shadow[id]);
-		if (IS_ERR(rq)) {
-			gvt_vgpu_err("fail to alloc default request\n");
-			ret = -EIO;
-			goto out;
-		}
-		requests[id] = i915_request_get(rq);
-		i915_request_add(rq);
-	}
-
-	if (intel_gt_wait_for_idle(&dev_priv->gt,
-				I915_GEM_IDLE_TIMEOUT) == -ETIME) {
-		ret = -EIO;
-		goto out;
-	}
-
 	/* scan init ctx to update cmd accessible list */
-	for_each_engine(engine, &dev_priv->gt, id) {
-		int size = engine->context_size - PAGE_SIZE;
-		void *vaddr;
+	for_each_engine(engine, gvt->gt, id) {
 		struct parser_exec_state s;
-		struct drm_i915_gem_object *obj;
-		struct i915_request *rq;
+		void *vaddr;
+		int ret;
 
-		rq = requests[id];
-		GEM_BUG_ON(!i915_request_completed(rq));
-		GEM_BUG_ON(!intel_context_is_pinned(rq->context));
-		obj = rq->context->state->obj;
+		if (!engine->default_state)
+			continue;
 
-		if (!obj) {
-			ret = -EIO;
-			goto out;
-		}
-
-		i915_gem_object_set_cache_coherency(obj,
-						    I915_CACHE_LLC);
-
-		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		vaddr = shmem_pin_map(engine->default_state);
 		if (IS_ERR(vaddr)) {
-			gvt_err("failed to pin init ctx obj, ring=%d, err=%lx\n",
-				id, PTR_ERR(vaddr));
-			ret = PTR_ERR(vaddr);
-			goto out;
+			gvt_err("failed to map %s->default state, err:%zd\n",
+				engine->name, PTR_ERR(vaddr));
+			return;
 		}
 
 		s.buf_type = RING_BUFFER_CTX;
@@ -3159,9 +3117,9 @@ void intel_gvt_update_reg_whitelist(struct intel_vgpu *vgpu)
 		s.vgpu = vgpu;
 		s.engine = engine;
 		s.ring_start = 0;
-		s.ring_size = size;
+		s.ring_size = engine->context_size - start;
 		s.ring_head = 0;
-		s.ring_tail = size;
+		s.ring_tail = s.ring_size;
 		s.rb_va = vaddr + start;
 		s.workload = NULL;
 		s.is_ctx_wa = false;
@@ -3169,29 +3127,18 @@ void intel_gvt_update_reg_whitelist(struct intel_vgpu *vgpu)
 
 		/* skipping the first RING_CTX_SIZE(0x50) dwords */
 		ret = ip_gma_set(&s, RING_CTX_SIZE);
-		if (ret) {
-			i915_gem_object_unpin_map(obj);
-			goto out;
+		if (ret == 0) {
+			ret = command_scan(&s, 0, s.ring_size, 0, s.ring_size);
+			if (ret)
+				gvt_err("Scan init ctx error\n");
 		}
 
-		ret = command_scan(&s, 0, size, 0, size);
+		shmem_unpin_map(engine->default_state, vaddr);
 		if (ret)
-			gvt_err("Scan init ctx error\n");
-
-		i915_gem_object_unpin_map(obj);
+			return;
 	}
 
-out:
-	if (!ret)
-		gvt->is_reg_whitelist_updated = true;
-
-	for (id = 0; id < I915_NUM_ENGINES ; id++) {
-		if (requests[id])
-			i915_request_put(requests[id]);
-
-		if (is_ctx_pinned[id])
-			intel_context_unpin(s->shadow[id]);
-	}
+	gvt->is_reg_whitelist_updated = true;
 }
 
 int intel_gvt_scan_engine_context(struct intel_vgpu_workload *workload)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

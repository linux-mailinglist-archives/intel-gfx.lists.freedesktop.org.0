Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B891F9BAD
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 17:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BEF588310;
	Mon, 15 Jun 2020 15:14:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8474788310
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 15:14:56 +0000 (UTC)
IronPort-SDR: MJcLYfAYmMzAJLK2b1JHprzsvu46ucQnCXx93UCHsi778zc+k6p/HHhipK/9YeEdZo8vG59jrV
 ocE6hSI/A+1w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 08:14:56 -0700
IronPort-SDR: EW2gj6lTFQ/jDc0kgmX8Gqj4V3/ELAWPuIzsgcpC3bAL29HMvq5b5eY+9pZqa4dgYum+y6/6yz
 apZ+m2/B1ZLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="272805369"
Received: from unknown (HELO localhost.localdomain) ([10.249.37.34])
 by orsmga003.jf.intel.com with ESMTP; 15 Jun 2020 08:14:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jun 2020 16:14:49 +0100
Message-Id: <20200615151449.32605-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
References: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Remove redundant
 i915_request_await_object in blit clears
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

One i915_request_await_object is enough and we keep the one under the
object lock so it is final.

At the same time move async clflushing setup under the same locked
section and consolidate common code into a helper function.

v2:
 * Emit initial breadcrumbs after aways are set up. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    | 52 ++++++++-----------
 1 file changed, 21 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index f457d7130491..bfdb32d46877 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -126,6 +126,17 @@ void intel_emit_vma_release(struct intel_context *ce, struct i915_vma *vma)
 	intel_engine_pm_put(ce->engine);
 }
 
+static int
+move_obj_to_gpu(struct drm_i915_gem_object *obj,
+		struct i915_request *rq,
+		bool write)
+{
+	if (obj->cache_dirty & ~obj->cache_coherent)
+		i915_gem_clflush_object(obj, 0);
+
+	return i915_request_await_object(rq, obj, write);
+}
+
 int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 			     struct intel_context *ce,
 			     u32 value)
@@ -143,12 +154,6 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 	if (unlikely(err))
 		return err;
 
-	if (obj->cache_dirty & ~obj->cache_coherent) {
-		i915_gem_object_lock(obj);
-		i915_gem_clflush_object(obj, 0);
-		i915_gem_object_unlock(obj);
-	}
-
 	batch = intel_emit_vma_fill_blt(ce, vma, value);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
@@ -165,27 +170,22 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 	if (unlikely(err))
 		goto out_request;
 
-	err = i915_request_await_object(rq, obj, true);
-	if (unlikely(err))
-		goto out_request;
-
-	if (ce->engine->emit_init_breadcrumb) {
-		err = ce->engine->emit_init_breadcrumb(rq);
-		if (unlikely(err))
-			goto out_request;
-	}
-
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, true);
+	err = move_obj_to_gpu(vma->obj, rq, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(vma);
 	if (unlikely(err))
 		goto out_request;
 
-	err = ce->engine->emit_bb_start(rq,
-					batch->node.start, batch->node.size,
-					0);
+	if (ce->engine->emit_init_breadcrumb)
+		err = ce->engine->emit_init_breadcrumb(rq);
+
+	if (likely(!err))
+		err = ce->engine->emit_bb_start(rq,
+						batch->node.start,
+						batch->node.size,
+						0);
 out_request:
 	if (unlikely(err))
 		i915_request_set_error_once(rq, err);
@@ -317,16 +317,6 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 	return ERR_PTR(err);
 }
 
-static int move_to_gpu(struct i915_vma *vma, struct i915_request *rq, bool write)
-{
-	struct drm_i915_gem_object *obj = vma->obj;
-
-	if (obj->cache_dirty & ~obj->cache_coherent)
-		i915_gem_clflush_object(obj, 0);
-
-	return i915_request_await_object(rq, obj, write);
-}
-
 int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 			     struct drm_i915_gem_object *dst,
 			     struct intel_context *ce)
@@ -375,7 +365,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 		goto out_request;
 
 	for (i = 0; i < ARRAY_SIZE(vma); i++) {
-		err = move_to_gpu(vma[i], rq, i);
+		err = move_obj_to_gpu(vma[i]->obj, rq, i);
 		if (unlikely(err))
 			goto out_unlock;
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

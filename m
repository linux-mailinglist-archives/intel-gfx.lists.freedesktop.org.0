Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B716328F10D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EED6EC8C;
	Thu, 15 Oct 2020 11:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8505E6EC83
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:37 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:25:56 +0200
Message-Id: <20201015112627.1142745-33-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 32/63] drm/i915: Add igt_spinner_pin() to
 allow for ww locking around spinner.
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

By default, we assume that it's called inside igt_create_request
to keep existing selftests working, but allow for manual pinning
when passing a ww context.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/igt_spinner.c | 136 ++++++++++++-------
 drivers/gpu/drm/i915/selftests/igt_spinner.h |   5 +
 2 files changed, 95 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index ec0ecb4e4ca6..9c461edb0b73 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -11,8 +11,6 @@
 
 int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt)
 {
-	unsigned int mode;
-	void *vaddr;
 	int err;
 
 	memset(spin, 0, sizeof(*spin));
@@ -23,6 +21,7 @@ int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt)
 		err = PTR_ERR(spin->hws);
 		goto err;
 	}
+	i915_gem_object_set_cache_coherency(spin->hws, I915_CACHE_LLC);
 
 	spin->obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
 	if (IS_ERR(spin->obj)) {
@@ -30,34 +29,83 @@ int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt)
 		goto err_hws;
 	}
 
-	i915_gem_object_set_cache_coherency(spin->hws, I915_CACHE_LLC);
-	vaddr = i915_gem_object_pin_map(spin->hws, I915_MAP_WB);
-	if (IS_ERR(vaddr)) {
-		err = PTR_ERR(vaddr);
-		goto err_obj;
-	}
-	spin->seqno = memset(vaddr, 0xff, PAGE_SIZE);
-
-	mode = i915_coherent_map_type(gt->i915);
-	vaddr = i915_gem_object_pin_map(spin->obj, mode);
-	if (IS_ERR(vaddr)) {
-		err = PTR_ERR(vaddr);
-		goto err_unpin_hws;
-	}
-	spin->batch = vaddr;
-
 	return 0;
 
-err_unpin_hws:
-	i915_gem_object_unpin_map(spin->hws);
-err_obj:
-	i915_gem_object_put(spin->obj);
 err_hws:
 	i915_gem_object_put(spin->hws);
 err:
 	return err;
 }
 
+static void *igt_spinner_pin_obj(struct intel_context *ce,
+				 struct i915_gem_ww_ctx *ww,
+				 struct drm_i915_gem_object *obj,
+				 unsigned int mode, struct i915_vma **vma)
+{
+	void *vaddr;
+	int ret;
+
+	*vma = i915_vma_instance(obj, ce->vm, NULL);
+	if (IS_ERR(*vma))
+		return ERR_CAST(*vma);
+
+	ret = i915_gem_object_lock(obj, ww);
+	if (ret)
+		return ERR_PTR(ret);
+
+	vaddr = i915_gem_object_pin_map(obj, mode);
+
+	if (!ww)
+		i915_gem_object_unlock(obj);
+
+	if (IS_ERR(vaddr))
+		return vaddr;
+
+	if (ww)
+		ret = i915_vma_pin_ww(*vma, ww, 0, 0, PIN_USER);
+	else
+		ret = i915_vma_pin(*vma, 0, 0, PIN_USER);
+
+	if (ret) {
+		i915_gem_object_unpin_map(obj);
+		return ERR_PTR(ret);
+	}
+
+	return vaddr;
+}
+
+int igt_spinner_pin(struct igt_spinner *spin,
+		    struct intel_context *ce,
+		    struct i915_gem_ww_ctx *ww)
+{
+	void *vaddr;
+
+	if (spin->ce && WARN_ON(spin->ce != ce))
+		return -ENODEV;
+	spin->ce = ce;
+
+	if (!spin->seqno) {
+		vaddr = igt_spinner_pin_obj(ce, ww, spin->hws, I915_MAP_WB, &spin->hws_vma);
+		if (IS_ERR(vaddr))
+			return PTR_ERR(vaddr);
+
+		spin->seqno = memset(vaddr, 0xff, PAGE_SIZE);
+	}
+
+	if (!spin->batch) {
+		unsigned int mode =
+			i915_coherent_map_type(spin->gt->i915);
+
+		vaddr = igt_spinner_pin_obj(ce, ww, spin->obj, mode, &spin->batch_vma);
+		if (IS_ERR(vaddr))
+			return PTR_ERR(vaddr);
+
+		spin->batch = vaddr;
+	}
+
+	return 0;
+}
+
 static unsigned int seqno_offset(u64 fence)
 {
 	return offset_in_page(sizeof(u32) * fence);
@@ -102,27 +150,18 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	if (!intel_engine_can_store_dword(ce->engine))
 		return ERR_PTR(-ENODEV);
 
-	vma = i915_vma_instance(spin->obj, ce->vm, NULL);
-	if (IS_ERR(vma))
-		return ERR_CAST(vma);
-
-	hws = i915_vma_instance(spin->hws, ce->vm, NULL);
-	if (IS_ERR(hws))
-		return ERR_CAST(hws);
+	if (!spin->batch) {
+		err = igt_spinner_pin(spin, ce, NULL);
+		if (err)
+			return ERR_PTR(err);
+	}
 
-	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (err)
-		return ERR_PTR(err);
-
-	err = i915_vma_pin(hws, 0, 0, PIN_USER);
-	if (err)
-		goto unpin_vma;
+	hws = spin->hws_vma;
+	vma = spin->batch_vma;
 
 	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq)) {
-		err = PTR_ERR(rq);
-		goto unpin_hws;
-	}
+	if (IS_ERR(rq))
+		return ERR_CAST(rq);
 
 	err = move_to_active(vma, rq, 0);
 	if (err)
@@ -185,10 +224,6 @@ igt_spinner_create_request(struct igt_spinner *spin,
 		i915_request_set_error_once(rq, err);
 		i915_request_add(rq);
 	}
-unpin_hws:
-	i915_vma_unpin(hws);
-unpin_vma:
-	i915_vma_unpin(vma);
 	return err ? ERR_PTR(err) : rq;
 }
 
@@ -202,6 +237,9 @@ hws_seqno(const struct igt_spinner *spin, const struct i915_request *rq)
 
 void igt_spinner_end(struct igt_spinner *spin)
 {
+	if (!spin->batch)
+		return;
+
 	*spin->batch = MI_BATCH_BUFFER_END;
 	intel_gt_chipset_flush(spin->gt);
 }
@@ -210,10 +248,16 @@ void igt_spinner_fini(struct igt_spinner *spin)
 {
 	igt_spinner_end(spin);
 
-	i915_gem_object_unpin_map(spin->obj);
+	if (spin->batch) {
+		i915_vma_unpin(spin->batch_vma);
+		i915_gem_object_unpin_map(spin->obj);
+	}
 	i915_gem_object_put(spin->obj);
 
-	i915_gem_object_unpin_map(spin->hws);
+	if (spin->seqno) {
+		i915_vma_unpin(spin->hws_vma);
+		i915_gem_object_unpin_map(spin->hws);
+	}
 	i915_gem_object_put(spin->hws);
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.h b/drivers/gpu/drm/i915/selftests/igt_spinner.h
index ec62c9ef320b..fbe5b1625b05 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.h
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.h
@@ -20,11 +20,16 @@ struct igt_spinner {
 	struct intel_gt *gt;
 	struct drm_i915_gem_object *hws;
 	struct drm_i915_gem_object *obj;
+	struct intel_context *ce;
+	struct i915_vma *hws_vma, *batch_vma;
 	u32 *batch;
 	void *seqno;
 };
 
 int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt);
+int igt_spinner_pin(struct igt_spinner *spin,
+		    struct intel_context *ce,
+		    struct i915_gem_ww_ctx *ww);
 void igt_spinner_fini(struct igt_spinner *spin);
 
 struct i915_request *
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

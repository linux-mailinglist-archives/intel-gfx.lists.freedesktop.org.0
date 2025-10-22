Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDA2BFCE9E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD03710E7ED;
	Wed, 22 Oct 2025 15:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KTABlfJE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C754D10E16A;
 Wed, 22 Oct 2025 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761147414; x=1792683414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=btvIkVS7s62umHan9KcUtHbwPxkTx57p/IvVZ+W7V6g=;
 b=KTABlfJEjvbh3oOvKvhVzZMgc580kYgVcD8W/lhrbIxy5XGDRRFq6n34
 jnlyBWZgHTGmjvLgvMcG/cDUrNfjAsqs7t9chwM2LLify92G2MhQK2Nxs
 PyffWzDy4r6wiWxK3sVNDw+ZLvvMMLzXfTMsGXnzdijQ+VD3YOfHU5Cnj
 d5IBfeA0QzARkgh2ombleJsgKb/6H5y1Mq+WftJxyYHbEQ/i8DAL3VFBv
 It02tLIDoEXrin6dfnB5Nl3kvWwDibf1VnEyrGtkKWY31H/XUtZqwHm2f
 5vKI5KeFUD8860IsSdq9NYLc3W/CPrr+OBZjvie8rfn1+OhMyMYtXXUqS g==;
X-CSE-ConnectionGUID: fL4ePqr+QSuXoNh61Bky6A==
X-CSE-MsgGUID: oacAqoF1RzS6+ImJcaYYuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73590624"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="73590624"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:54 -0700
X-CSE-ConnectionGUID: 6vTETvxgRhWb1+GcHNBCJQ==
X-CSE-MsgGUID: 9z1lHuGARtOar9bTREupQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183073655"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 2/4] drm/{i915,
 xe}/dsb: allocate struct intel_dsb_buffer dynamically
Date: Wed, 22 Oct 2025 18:36:36 +0300
Message-ID: <ad63815363e09d91f1263d85794000b79a81df9c.1761147363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1761147363.git.jani.nikula@intel.com>
References: <cover.1761147363.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for hiding the struct intel_dsb_buffer implementation details
from the generic DSB code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c      | 42 ++++++++++---------
 .../gpu/drm/i915/display/intel_dsb_buffer.c   | 34 +++++++++++----
 .../gpu/drm/i915/display/intel_dsb_buffer.h   |  3 +-
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 28 ++++++++++---
 4 files changed, 72 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 6d546f9ff316..ec2a3fb171ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -26,7 +26,7 @@
 struct intel_dsb {
 	enum intel_dsb_id id;
 
-	struct intel_dsb_buffer dsb_buf;
+	struct intel_dsb_buffer *dsb_buf;
 	struct intel_crtc *crtc;
 
 	/*
@@ -211,10 +211,10 @@ static void intel_dsb_dump(struct intel_dsb *dsb)
 	for (i = 0; i < ALIGN(dsb->free_pos, 64 / 4); i += 4)
 		drm_dbg_kms(display->drm,
 			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
-			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
-			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
-			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
-			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
+			    intel_dsb_buffer_read(dsb->dsb_buf, i),
+			    intel_dsb_buffer_read(dsb->dsb_buf, i + 1),
+			    intel_dsb_buffer_read(dsb->dsb_buf, i + 2),
+			    intel_dsb_buffer_read(dsb->dsb_buf, i + 3));
 	drm_dbg_kms(display->drm, "}\n");
 }
 
@@ -231,12 +231,12 @@ unsigned int intel_dsb_size(struct intel_dsb *dsb)
 
 unsigned int intel_dsb_head(struct intel_dsb *dsb)
 {
-	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
+	return intel_dsb_buffer_ggtt_offset(dsb->dsb_buf);
 }
 
 static unsigned int intel_dsb_tail(struct intel_dsb *dsb)
 {
-	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + intel_dsb_size(dsb);
+	return intel_dsb_buffer_ggtt_offset(dsb->dsb_buf) + intel_dsb_size(dsb);
 }
 
 static void intel_dsb_ins_align(struct intel_dsb *dsb)
@@ -263,8 +263,8 @@ static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 	dsb->ins[0] = ldw;
 	dsb->ins[1] = udw;
 
-	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, dsb->ins[0]);
-	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, dsb->ins[1]);
+	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, dsb->ins[0]);
+	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, dsb->ins[1]);
 }
 
 static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
@@ -335,13 +335,13 @@ void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
 
 	/* Update the count */
 	dsb->ins[0]++;
-	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0,
+	intel_dsb_buffer_write(dsb->dsb_buf, dsb->ins_start_offset + 0,
 			       dsb->ins[0]);
 
-	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, val);
+	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, val);
 	/* if number of data words is odd, then the last dword should be 0.*/
 	if (dsb->free_pos & 0x1)
-		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos, 0);
+		intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos, 0);
 }
 
 void intel_dsb_reg_write(struct intel_dsb *dsb,
@@ -521,7 +521,7 @@ static void intel_dsb_align_tail(struct intel_dsb *dsb)
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
 	if (aligned_tail > tail)
-		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
+		intel_dsb_buffer_memset(dsb->dsb_buf, dsb->free_pos, 0,
 					aligned_tail - tail);
 
 	dsb->free_pos = aligned_tail / 4;
@@ -541,7 +541,7 @@ static void intel_dsb_gosub_align(struct intel_dsb *dsb)
 	 * "Ensure GOSUB is not placed in cacheline QW slot 6 or 7 (numbered 0-7)"
 	 */
 	if (aligned_tail - tail <= 2 * 8)
-		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
+		intel_dsb_buffer_memset(dsb->dsb_buf, dsb->free_pos, 0,
 					aligned_tail - tail);
 
 	dsb->free_pos = aligned_tail / 4;
@@ -606,14 +606,14 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb)
 	 */
 	intel_dsb_noop(dsb, 8);
 
-	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
+	intel_dsb_buffer_flush_map(dsb->dsb_buf);
 }
 
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
 	intel_dsb_align_tail(dsb);
 
-	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
+	intel_dsb_buffer_flush_map(dsb->dsb_buf);
 }
 
 static u32 dsb_error_int_status(struct intel_display *display)
@@ -888,7 +888,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 			      !is_busy,
 			      100, 1000, false);
 	if (ret) {
-		u32 offset = intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
+		u32 offset = intel_dsb_buffer_ggtt_offset(dsb->dsb_buf);
 
 		intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
 				  DSB_ENABLE | DSB_HALT);
@@ -934,6 +934,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    unsigned int max_cmds)
 {
 	struct intel_display *display = to_intel_display(state);
+	struct intel_dsb_buffer *dsb_buf;
 	struct ref_tracker *wakeref;
 	struct intel_dsb *dsb;
 	unsigned int size;
@@ -953,9 +954,12 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
 
-	if (!intel_dsb_buffer_create(display->drm, &dsb->dsb_buf, size))
+	dsb_buf = intel_dsb_buffer_create(display->drm, size);
+	if (IS_ERR(dsb_buf))
 		goto out_put_rpm;
 
+	dsb->dsb_buf = dsb_buf;
+
 	intel_display_rpm_put(display, wakeref);
 
 	dsb->id = dsb_id;
@@ -988,7 +992,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
  */
 void intel_dsb_cleanup(struct intel_dsb *dsb)
 {
-	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
+	intel_dsb_buffer_cleanup(dsb->dsb_buf);
 	kfree(dsb);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
index 1eafcb2dedcb..fc1f0e6031ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
@@ -31,48 +31,66 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
 	memset(&dsb_buf->cmd_buf[idx], val, size);
 }
 
-bool intel_dsb_buffer_create(struct drm_device *drm, struct intel_dsb_buffer *dsb_buf, size_t size)
+struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_dsb_buffer *dsb_buf;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	u32 *buf;
+	int ret;
+
+	dsb_buf = kzalloc(sizeof(*dsb_buf), GFP_KERNEL);
+	if (!dsb_buf)
+		return ERR_PTR(-ENOMEM);
 
 	if (HAS_LMEM(i915)) {
 		obj = i915_gem_object_create_lmem(i915, PAGE_ALIGN(size),
 						  I915_BO_ALLOC_CONTIGUOUS);
-		if (IS_ERR(obj))
-			return false;
+		if (IS_ERR(obj)) {
+			ret = PTR_ERR(obj);
+			goto err;
+		}
 	} else {
 		obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
-		if (IS_ERR(obj))
-			return false;
+		if (IS_ERR(obj)) {
+			ret = PTR_ERR(obj);
+			goto err;
+		}
 
 		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	}
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
+		ret = PTR_ERR(vma);
 		i915_gem_object_put(obj);
-		return false;
+		goto err;
 	}
 
 	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
 	if (IS_ERR(buf)) {
+		ret = PTR_ERR(buf);
 		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
-		return false;
+		goto err;
 	}
 
 	dsb_buf->vma = vma;
 	dsb_buf->cmd_buf = buf;
 	dsb_buf->buf_size = size;
 
-	return true;
+	return dsb_buf;
+
+err:
+	kfree(dsb_buf);
+
+	return ERR_PTR(ret);
 }
 
 void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
 {
 	i915_vma_unpin_and_release(&dsb_buf->vma, I915_VMA_RELEASE_MAP);
+	kfree(dsb_buf);
 }
 
 void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
index 496ece42b4a1..2cf639fae47a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
@@ -21,8 +21,7 @@ u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
 void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
 u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
 void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size);
-bool intel_dsb_buffer_create(struct drm_device *drm, struct intel_dsb_buffer *dsb_buf,
-			     size_t size);
+struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size);
 void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
 void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf);
 
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index 1bbebc0313c8..ee7717b1980f 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -31,15 +31,23 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
 	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val, size);
 }
 
-bool intel_dsb_buffer_create(struct drm_device *drm, struct intel_dsb_buffer *dsb_buf, size_t size)
+struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size)
 {
 	struct xe_device *xe = to_xe_device(drm);
+	struct intel_dsb_buffer *dsb_buf;
 	struct xe_bo *obj;
 	struct i915_vma *vma;
+	int ret;
+
+	dsb_buf = kzalloc(sizeof(*dsb_buf), GFP_KERNEL);
+	if (!dsb_buf)
+		return ERR_PTR(-ENOMEM);
 
 	vma = kzalloc(sizeof(*vma), GFP_KERNEL);
-	if (!vma)
-		return false;
+	if (!vma) {
+		ret = -ENOMEM;
+		goto err_vma;
+	}
 
 	/* Set scanout flag for WC mapping */
 	obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
@@ -48,21 +56,29 @@ bool intel_dsb_buffer_create(struct drm_device *drm, struct intel_dsb_buffer *ds
 					XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
 					XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT, false);
 	if (IS_ERR(obj)) {
-		kfree(vma);
-		return false;
+		ret = PTR_ERR(obj);
+		goto err_pin_map;
 	}
 
 	vma->bo = obj;
 	dsb_buf->vma = vma;
 	dsb_buf->buf_size = size;
 
-	return true;
+	return dsb_buf;
+
+err_pin_map:
+	kfree(vma);
+err_vma:
+	kfree(dsb_buf);
+
+	return ERR_PTR(ret);
 }
 
 void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
 {
 	xe_bo_unpin_map_no_vm(dsb_buf->vma->bo);
 	kfree(dsb_buf->vma);
+	kfree(dsb_buf);
 }
 
 void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
-- 
2.47.3


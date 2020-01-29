Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FF914CEB2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 17:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E7E6F5DD;
	Wed, 29 Jan 2020 16:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D5F6F5DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 16:54:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 08:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="261863896"
Received: from amanna.iind.intel.com ([10.223.74.53])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2020 08:54:23 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 22:13:26 +0530
Message-Id: <20200129164326.26579-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915/dsb: Pre allocate and late cleanup of
 cmd buffer.
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
Cc: jani.nikula@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pre-allocate buffer object in atomic_check using intel_dsb_init
function which will allocate a gem object and used later to pin and
map the buffer in atomic_commit.

No chnage is dsb write/commit functions.

Now dsb get/put function is refactored and currently used only for
reference counting. Below dsb api added to do respective job
mentioned below.

intel_dsb_init - allocate the DSB buffer.
intel_dsb_prepare - pin and map the buffer.
intel_dsb_cleanup - Unpin and release the gem object.

RFC: Inital patch for design review.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  17 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c     | 102 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dsb.h     |   4 +
 3 files changed, 100 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c0e5002ce64c..7c6068cdad16 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -12698,6 +12698,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		ret = intel_color_check(crtc_state);
 		if (ret)
 			return ret;
+		intel_dsb_init(crtc);
 	}
 
 	ret = 0;
@@ -14939,6 +14940,19 @@ static int intel_atomic_check(struct drm_device *dev,
 
 static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 {
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		bool mode_changed = needs_modeset(crtc_state);
+
+		if (mode_changed || crtc_state->update_pipe ||
+		    crtc_state->uapi.color_mgmt_changed) {
+			intel_dsb_prepare(crtc);
+		}
+	}
+
 	return drm_atomic_helper_prepare_planes(state->base.dev,
 						&state->base);
 }
@@ -15637,6 +15651,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset && intel_can_enable_sagv(state))
 		intel_enable_sagv(dev_priv);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		intel_dsb_cleanup(crtc);
+
 	drm_atomic_helper_commit_hw_done(&state->base);
 
 	if (state->modeset) {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 9dd18144a664..70cecf98c41f 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -84,45 +84,58 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 }
 
 /**
- * intel_dsb_get() - Allocate DSB context and return a DSB instance.
+ * intel_dsb_init() - During initialization create a gem object.
  * @crtc: intel_crtc structure to get pipe info.
  *
- * This function provides handle of a DSB instance, for the further DSB
- * operations.
+ * This function create the gem object which will be used for
+ * preparing command buffer for DSB.
+ */
+
+void intel_dsb_init(struct intel_crtc *crtc)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_dsb *dsb = &crtc->dsb;
+
+	if (!HAS_DSB(i915))
+		return;
+
+	dsb->obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+	if (IS_ERR(dsb->obj)) {
+		DRM_ERROR("Gem object creation failed\n");
+		dsb->obj = NULL;
+	}
+}
+
+/**
+ * intel_dsb_prepare() - Pin and map the DSB command buffer.
+ * @crtc: intel_crtc structure to get pipe info.
  *
- * Returns: address of Intel_dsb instance requested for.
- * Failure: Returns the same DSB instance, but without a command buffer.
+ * This function prepare the command buffer which is used to store dsb
+ * instructions with data.
  */
 
-struct intel_dsb *
-intel_dsb_get(struct intel_crtc *crtc)
+void intel_dsb_prepare(struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_dsb *dsb = &crtc->dsb;
-	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	u32 *buf;
 	intel_wakeref_t wakeref;
 
 	if (!HAS_DSB(i915))
-		return dsb;
+		return;
 
-	if (dsb->refcount++ != 0)
-		return dsb;
+	if (!dsb->obj)
+		return;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
-	if (IS_ERR(obj)) {
-		DRM_ERROR("Gem object creation failed\n");
-		goto out;
-	}
-
-	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
+	vma = i915_gem_object_ggtt_pin(dsb->obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
 		DRM_ERROR("Vma creation failed\n");
-		i915_gem_object_put(obj);
+		i915_gem_object_put(dsb->obj);
 		goto out;
 	}
 
@@ -145,7 +158,52 @@ intel_dsb_get(struct intel_crtc *crtc)
 	 */
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+}
+
+/**
+ * intel_dsb_cleanup() - To cleanup DSB context.
+ * @dsb: intel_dsb structure.
+ *
+ * This function cleanup the DSB context by unpinning and releasing
+ * the VMA object associated with it.
+ */
+
+void intel_dsb_cleanup(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_dsb *dsb = &crtc->dsb;
+
+	if (!HAS_DSB(i915))
+		return;
+
+	if (!dsb->vma) {
+		i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
+		dsb->vma = NULL;
+		dsb->cmd_buf = NULL;
+	}
+}
+
+/**
+ * intel_dsb_get() - Return a DSB instance and increase ref-count.
+ * @crtc: intel_crtc structure to get pipe info.
+ *
+ * This function provides handle of a DSB instance, for the further DSB
+ * operations.
+ *
+ * Returns: address of Intel_dsb instance requested for.
+ */
 
+struct intel_dsb *
+intel_dsb_get(struct intel_crtc *crtc)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_dsb *dsb = &crtc->dsb;
+
+	if (!HAS_DSB(i915))
+		return dsb;
+
+	dsb->refcount++;
 	return dsb;
 }
 
@@ -153,8 +211,8 @@ intel_dsb_get(struct intel_crtc *crtc)
  * intel_dsb_put() - To destroy DSB context.
  * @dsb: intel_dsb structure.
  *
- * This function destroys the DSB context allocated by a dsb_get(), by
- * unpinning and releasing the VMA object associated with it.
+ * This function decrease the reference count and reset the command
+ * buffer position.
  */
 
 void intel_dsb_put(struct intel_dsb *dsb)
@@ -169,8 +227,6 @@ void intel_dsb_put(struct intel_dsb *dsb)
 		return;
 
 	if (--dsb->refcount == 0) {
-		i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
-		dsb->cmd_buf = NULL;
 		dsb->free_pos = 0;
 		dsb->ins_start_offset = 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 395ef9ce558e..2654da2a3784 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -25,6 +25,7 @@ struct intel_dsb {
 	long refcount;
 	enum dsb_id id;
 	u32 *cmd_buf;
+	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 
 	/*
@@ -41,6 +42,9 @@ struct intel_dsb {
 	u32 ins_start_offset;
 };
 
+void intel_dsb_init(struct intel_crtc *crtc);
+void intel_dsb_prepare(struct intel_crtc *crtc);
+void intel_dsb_cleanup(struct intel_crtc *crtc);
 struct intel_dsb *
 intel_dsb_get(struct intel_crtc *crtc);
 void intel_dsb_put(struct intel_dsb *dsb);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

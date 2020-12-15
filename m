Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 324172DA8B5
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 08:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555BD6E170;
	Tue, 15 Dec 2020 07:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFD36E169
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 07:44:28 +0000 (UTC)
IronPort-SDR: lWYYJxktYQ7ZE462Jw9OkmMyTnRSo8XxjKNoKXZTAlBRihmYe0mJ26zaV+XqmORPfMF7iqNLKA
 ZTr99jFL3BhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="259567359"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="259567359"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 23:44:26 -0800
IronPort-SDR: QktsXReGW8dB8O9KaYzsaH7KeGb1lzVBtNPEYvNMxXHc/aTvx5wfRPmzPXMKyCNjV4ce3+RnJY
 LtlgEL40Vu2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="336593453"
Received: from amanna.iind.intel.com ([10.223.74.93])
 by orsmga003.jf.intel.com with ESMTP; 14 Dec 2020 23:44:23 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Dec 2020 12:57:10 +0530
Message-Id: <20201215072712.12723-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20201215072712.12723-1-animesh.manna@intel.com>
References: <20201215072712.12723-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/dsb: multi dsb instance support in
 prepare() and cleanup()
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  9 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 99 ++++++++++---------
 4 files changed, 65 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index e00fdc47c0eb..3833f3b4851b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -226,6 +226,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	const struct intel_crtc_state *old_crtc_state = to_intel_crtc_state(crtc->state);
 	struct intel_crtc_state *crtc_state;
+	int i;
 
 	crtc_state = kmemdup(old_crtc_state, sizeof(*crtc_state), GFP_KERNEL);
 	if (!crtc_state)
@@ -252,7 +253,9 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->wm.need_postvbl_update = false;
 	crtc_state->fb_bits = 0;
 	crtc_state->update_planes = 0;
-	crtc_state->dsb = NULL;
+
+	for (i = 0; i < MAX_DSB_PER_PIPE; i++)
+		crtc_state->dsb[i] = NULL;
 
 	return &crtc_state->uapi;
 }
@@ -293,8 +296,10 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 			 struct drm_crtc_state *state)
 {
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
+	int i;
 
-	drm_WARN_ON(crtc->dev, crtc_state->dsb);
+	for (i = 0; i < MAX_DSB_PER_PIPE; i++)
+		drm_WARN_ON(crtc->dev, crtc_state->dsb[i]);
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 761be8deaa9b..e93c602b81e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16256,7 +16256,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	u64 put_domains[I915_MAX_PIPES] = {};
 	intel_wakeref_t wakeref = 0;
-	int i;
+	int i, j;
 
 	intel_atomic_commit_fence_wait(state);
 
@@ -16386,7 +16386,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * cleanup. So copy and reset the dsb structure to sync with
 		 * commit_done and later do dsb cleanup in cleanup_work.
 		 */
-		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
+		for (j = 0; j < MAX_DSB_PER_PIPE; j++)
+			old_crtc_state->dsb[j] =
+				fetch_and_zero(&new_crtc_state->dsb[j]);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5bc5bfbc4551..06ae7470ab8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1124,7 +1124,7 @@ struct intel_crtc_state {
 	enum transcoder mst_master_transcoder;
 
 	/* For DSB related info */
-	struct intel_dsb *dsb;
+	struct intel_dsb *dsb[MAX_DSB_PER_PIPE];
 
 	u32 psr2_man_track_ctl;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 566fa72427b3..cef1015cc04f 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -92,7 +92,7 @@ static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
 void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
 				 i915_reg_t reg, u32 val)
 {
-	struct intel_dsb *dsb = crtc_state->dsb;
+	struct intel_dsb *dsb = crtc_state->dsb[0];
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 *buf;
@@ -174,7 +174,7 @@ void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
 	struct intel_dsb *dsb;
 	u32 *buf;
 
-	dsb = crtc_state->dsb;
+	dsb = crtc_state->dsb[0];
 	if (!dsb) {
 		intel_de_write(dev_priv, reg, val);
 		return;
@@ -202,7 +202,7 @@ void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
  */
 void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_dsb *dsb = crtc_state->dsb;
+	struct intel_dsb *dsb = crtc_state->dsb[0];
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -266,49 +266,52 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 	struct i915_vma *vma;
 	u32 *buf;
 	intel_wakeref_t wakeref;
+	int i;
 
 	if (!HAS_DSB(i915))
 		return;
 
-	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
-	if (!dsb) {
-		drm_err(&i915->drm, "DSB object creation failed\n");
-		return;
-	}
-
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-
-	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
-	if (IS_ERR(obj)) {
-		drm_err(&i915->drm, "Gem object creation failed\n");
-		kfree(dsb);
-		goto out;
-	}
-
-	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma)) {
-		drm_err(&i915->drm, "Vma creation failed\n");
-		i915_gem_object_put(obj);
-		kfree(dsb);
-		goto out;
-	}
-
-	buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
-	if (IS_ERR(buf)) {
-		drm_err(&i915->drm, "Command buffer creation failed\n");
-		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
-		kfree(dsb);
-		goto out;
-	}
-
-	dsb->id = DSB1;
-	dsb->vma = vma;
-	dsb->cmd_buf = buf;
-	dsb->free_pos = 0;
-	dsb->ins_start_offset = 0;
-	crtc_state->dsb = dsb;
+	for (i = 0 ; i < MAX_DSB_PER_PIPE; i++)	{
+		dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
+		if (!dsb) {
+			drm_err(&i915->drm, "DSB%d obj creation failed\n", i);
+			continue;
+		}
+
+		wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+		obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
+		if (IS_ERR(obj)) {
+			drm_err(&i915->drm, "Gem object creation failed\n");
+			kfree(dsb);
+			goto out;
+		}
+
+		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
+		if (IS_ERR(vma)) {
+			drm_err(&i915->drm, "Vma creation failed\n");
+			i915_gem_object_put(obj);
+			kfree(dsb);
+			goto out;
+		}
+
+		buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
+		if (IS_ERR(buf)) {
+			drm_err(&i915->drm, "Command buffer creation failed\n");
+			i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
+			kfree(dsb);
+			goto out;
+		}
+
+		dsb->id = i;
+		dsb->vma = vma;
+		dsb->cmd_buf = buf;
+		dsb->free_pos = 0;
+		dsb->ins_start_offset = 0;
+		crtc_state->dsb[i] = dsb;
 out:
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	}
 }
 
 /**
@@ -320,10 +323,14 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
  */
 void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->dsb)
-		return;
+	int i;
 
-	i915_vma_unpin_and_release(&crtc_state->dsb->vma, I915_VMA_RELEASE_MAP);
-	kfree(crtc_state->dsb);
-	crtc_state->dsb = NULL;
+	for (i = 0; i < MAX_DSB_PER_PIPE; i++) {
+		if (!crtc_state->dsb[i])
+			continue;
+
+		i915_vma_unpin_and_release(&crtc_state->dsb[i]->vma, I915_VMA_RELEASE_MAP);
+		kfree(crtc_state->dsb[i]);
+		crtc_state->dsb[i] = NULL;
+	}
 }
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

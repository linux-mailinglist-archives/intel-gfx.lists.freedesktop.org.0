Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E728A63638A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E72A10E580;
	Wed, 23 Nov 2022 15:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04BD10E575
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217227; x=1700753227;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P29Ox/mHuFjAnpnQblsJhhhK7PkXqhvAmsYP2G8ICk0=;
 b=LWTt7WcrlLOWIyMJZANWleMJsl7HfMuP8dkmWXK2lS39I5Uj5uSFQHLy
 WKHQhoa63ksiMTdPneDTRncZC8BmPBzRer17FighpC+sxKjW5xO2qB4Is
 68kHcqlis2kdPZnrwllRSoChcmyzQuD+msWcwpOH6ghRmO+cjRfllZ5mF
 TO90UjOdRyvESPN56rnlRuzxJMC/5xxoDAfkbfpeyg80/JMcwhy/+cEsn
 z8eyVtfJf9zwTodpLr0f6g6bDlPgltaEUBCvBlQaMAkRjYgHhAhBbHW5R
 gE4WwEqN99gS0b/lqRJTK/UbaFFx30PPeu/dSWij8IoHpF1Kqra44g9dX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789955"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789955"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619651059"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619651059"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:27:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:27:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:34 +0200
Message-Id: <20221123152638.20622-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915: Make DSB lower level
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We could have many different uses for the DSB(s) during a
single commit, so the current approach of passing the whole
crtc_state to the DSB functions is far too high level. Lower
the abstraction a little bit so each DSB user can decide where
to stick the command buffer/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 17 +++--
 drivers/gpu/drm/i915/display/intel_dsb.c   | 79 ++++++++++------------
 drivers/gpu/drm/i915/display/intel_dsb.h   | 13 ++--
 3 files changed, 55 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5a8652407f30..2715f1b617e1 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -842,7 +842,7 @@ static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (crtc_state->dsb)
-		intel_dsb_reg_write(crtc_state, reg, val);
+		intel_dsb_reg_write(crtc_state->dsb, reg, val);
 	else
 		intel_de_write_fw(i915, reg, val);
 }
@@ -853,7 +853,7 @@ static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (crtc_state->dsb)
-		intel_dsb_indexed_reg_write(crtc_state, reg, val);
+		intel_dsb_indexed_reg_write(crtc_state->dsb, reg, val);
 	else
 		intel_de_write_fw(i915, reg, val);
 }
@@ -1273,7 +1273,8 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	intel_dsb_commit(crtc_state);
+	if (crtc_state->dsb)
+		intel_dsb_commit(crtc_state->dsb);
 }
 
 static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
@@ -1391,12 +1392,18 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 
 void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 {
-	intel_dsb_prepare(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	crtc_state->dsb = intel_dsb_prepare(crtc);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 {
-	intel_dsb_cleanup(crtc_state);
+	if (!crtc_state->dsb)
+		return;
+
+	intel_dsb_cleanup(crtc_state->dsb);
+	crtc_state->dsb = NULL;
 }
 
 static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b4f0356c2463..ab74bfc89465 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -24,8 +24,10 @@ enum dsb_id {
 
 struct intel_dsb {
 	enum dsb_id id;
+
 	u32 *cmd_buf;
 	struct i915_vma *vma;
+	struct intel_crtc *crtc;
 
 	/*
 	 * free_pos will point the first free entry position
@@ -113,7 +115,7 @@ static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
 /**
  * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
  * increment register.
- * @crtc_state: intel_crtc_state structure
+ * @dsb: DSB context
  * @reg: register address.
  * @val: value.
  *
@@ -123,11 +125,10 @@ static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
  * is done through mmio write.
  */
 
-void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
+void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 				 i915_reg_t reg, u32 val)
 {
-	struct intel_dsb *dsb = crtc_state->dsb;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc *crtc = dsb->crtc;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 *buf = dsb->cmd_buf;
 	u32 reg_val;
@@ -195,12 +196,11 @@ void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
  * and rest all erroneous condition register programming is done
  * through mmio write.
  */
-void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
+void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc *crtc = dsb->crtc;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_dsb *dsb = crtc_state->dsb;
 	u32 *buf = dsb->cmd_buf;
 
 	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
@@ -217,17 +217,14 @@ void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
 
 /**
  * intel_dsb_commit() - Trigger workload execution of DSB.
- * @crtc_state: intel_crtc_state structure
+ * @dsb: DSB context
  *
  * This function is used to do actual write to hardware using DSB.
- * On errors, fall back to MMIO. Also this function help to reset the context.
  */
-void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
+void intel_dsb_commit(struct intel_dsb *dsb)
 {
-	struct intel_dsb *dsb = crtc_state->dsb;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_crtc *crtc = dsb->crtc;
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 tail;
 
@@ -274,14 +271,13 @@ void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
 
 /**
  * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
- * @crtc_state: intel_crtc_state structure to prepare associated dsb instance.
+ * @crtc: the CRTC
  *
  * This function prepare the command buffer which is used to store dsb
  * instructions with data.
  */
-void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
+struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_dsb *dsb;
 	struct drm_i915_gem_object *obj;
@@ -290,63 +286,60 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 	intel_wakeref_t wakeref;
 
 	if (!HAS_DSB(i915))
-		return;
+		return NULL;
 
 	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
-	if (!dsb) {
-		drm_err(&i915->drm, "DSB object creation failed\n");
-		return;
-	}
+	if (!dsb)
+		goto out;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
-	if (IS_ERR(obj)) {
-		kfree(dsb);
-		goto out;
-	}
+	if (IS_ERR(obj))
+		goto out_put_rpm;
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
 		i915_gem_object_put(obj);
-		kfree(dsb);
-		goto out;
+		goto out_put_rpm;
 	}
 
 	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
 	if (IS_ERR(buf)) {
 		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
-		kfree(dsb);
-		goto out;
+		goto out_put_rpm;
 	}
 
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
 	dsb->id = DSB1;
 	dsb->vma = vma;
+	dsb->crtc = crtc;
 	dsb->cmd_buf = buf;
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
-	crtc_state->dsb = dsb;
+
+	return dsb;
+
+out_put_rpm:
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	kfree(dsb);
 out:
-	if (!crtc_state->dsb)
-		drm_info(&i915->drm,
-			 "DSB queue setup failed, will fallback to MMIO for display HW programming\n");
+	drm_info_once(&i915->drm,
+		      "DSB queue setup failed, will fallback to MMIO for display HW programming\n");
 
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	return NULL;
 }
 
 /**
  * intel_dsb_cleanup() - To cleanup DSB context.
- * @crtc_state: intel_crtc_state structure to cleanup associated dsb instance.
+ * @dsb: DSB context
  *
  * This function cleanup the DSB context by unpinning and releasing
  * the VMA object associated with it.
  */
-void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
+void intel_dsb_cleanup(struct intel_dsb *dsb)
 {
-	if (!crtc_state->dsb)
-		return;
-
-	i915_vma_unpin_and_release(&crtc_state->dsb->vma, I915_VMA_RELEASE_MAP);
-	kfree(crtc_state->dsb);
-	crtc_state->dsb = NULL;
+	i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
+	kfree(dsb);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 74dd2b3343bb..25f13c4d5389 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -10,14 +10,15 @@
 
 #include "i915_reg_defs.h"
 
-struct intel_crtc_state;
+struct intel_crtc;
+struct intel_dsb;
 
-void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
-void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
-void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
+struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc);
+void intel_dsb_cleanup(struct intel_dsb *dsb);
+void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
+void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 				 i915_reg_t reg, u32 val);
-void intel_dsb_commit(const struct intel_crtc_state *crtc_state);
+void intel_dsb_commit(struct intel_dsb *dsb);
 
 #endif
-- 
2.37.4


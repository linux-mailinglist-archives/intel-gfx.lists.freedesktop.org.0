Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3727317F250
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F6496E835;
	Tue, 10 Mar 2020 08:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFFE16E835
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:02 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="265551400"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:40 +0200
Message-Id: <f2e049c74146f5430ea95653a4f745224d36f960.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/dsb: convert to drm_device based
 logging macros.
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Wambui Karuga <wambui.karugax@gmail.com>

This converts uses of the printk based drm logging macros to the struct
drm_device logging macros in i915/display/intel_dsb.c. This was done
using the following coccinelle script:
@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 28 ++++++++++++++----------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 76ae01277fd6..d7a6bf2277df 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -52,7 +52,7 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 
 	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
-		DRM_DEBUG_KMS("DSB engine is busy.\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB engine is busy.\n");
 		return false;
 	}
 
@@ -72,7 +72,7 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 
 	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
-		DRM_DEBUG_KMS("DSB engine is busy.\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB engine is busy.\n");
 		return false;
 	}
 
@@ -115,20 +115,20 @@ intel_dsb_get(struct intel_crtc *crtc)
 
 	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
 	if (IS_ERR(obj)) {
-		DRM_ERROR("Gem object creation failed\n");
+		drm_err(&i915->drm, "Gem object creation failed\n");
 		goto out;
 	}
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
-		DRM_ERROR("Vma creation failed\n");
+		drm_err(&i915->drm, "Vma creation failed\n");
 		i915_gem_object_put(obj);
 		goto out;
 	}
 
 	buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
 	if (IS_ERR(buf)) {
-		DRM_ERROR("Command buffer creation failed\n");
+		drm_err(&i915->drm, "Command buffer creation failed\n");
 		goto out;
 	}
 
@@ -203,7 +203,7 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
 	}
 
 	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
-		DRM_DEBUG_KMS("DSB buffer overflow\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
 	}
 
@@ -277,7 +277,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
 	}
 
 	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
-		DRM_DEBUG_KMS("DSB buffer overflow\n");
+		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
 		return;
 	}
 
@@ -310,7 +310,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		goto reset;
 
 	if (is_dsb_busy(dsb)) {
-		DRM_ERROR("HEAD_PTR write failed - dsb engine is busy.\n");
+		drm_err(&dev_priv->drm,
+			"HEAD_PTR write failed - dsb engine is busy.\n");
 		goto reset;
 	}
 	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
@@ -322,15 +323,18 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		       (tail - dsb->free_pos * 4));
 
 	if (is_dsb_busy(dsb)) {
-		DRM_ERROR("TAIL_PTR write failed - dsb engine is busy.\n");
+		drm_err(&dev_priv->drm,
+			"TAIL_PTR write failed - dsb engine is busy.\n");
 		goto reset;
 	}
-	DRM_DEBUG_KMS("DSB execution started - head 0x%x, tail 0x%x\n",
-		      i915_ggtt_offset(dsb->vma), tail);
+	drm_dbg_kms(&dev_priv->drm,
+		    "DSB execution started - head 0x%x, tail 0x%x\n",
+		    i915_ggtt_offset(dsb->vma), tail);
 	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
 		       i915_ggtt_offset(dsb->vma) + tail);
 	if (wait_for(!is_dsb_busy(dsb), 1)) {
-		DRM_ERROR("Timed out waiting for DSB workload completion.\n");
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for DSB workload completion.\n");
 		goto reset;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

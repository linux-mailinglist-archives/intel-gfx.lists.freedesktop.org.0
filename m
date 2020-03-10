Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 632B517F259
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAC236E854;
	Tue, 10 Mar 2020 08:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463C56E854
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:43 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="388856675"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:48 +0200
Message-Id: <e622ebd2ce07291f2db56174a0a0b31cc2df67df.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/lvds: convert to drm_device
 based logging macros.
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

Converts various instances of the printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_lvds.c.
This transformation was done by the following coccinelle script that
matches based on the existence of a drm_i915_private device:
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

New checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 43 +++++++++++++----------
 1 file changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 37755e1c5dd1..9a067effcfa0 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -181,8 +181,9 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 
 	if (INTEL_GEN(dev_priv) <= 4 &&
 	    pps->t1_t2 == 0 && pps->t5 == 0 && pps->t3 == 0 && pps->tx == 0) {
-		DRM_DEBUG_KMS("Panel power timings uninitialized, "
-			      "setting defaults\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Panel power timings uninitialized, "
+			    "setting defaults\n");
 		/* Set T2 to 40ms and T5 to 200ms in 100 usec units */
 		pps->t1_t2 = 40 * 10;
 		pps->t5 = 200 * 10;
@@ -191,10 +192,10 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 		pps->tx = 200 * 10;
 	}
 
-	DRM_DEBUG_DRIVER("LVDS PPS:t1+t2 %d t3 %d t4 %d t5 %d tx %d "
-			 "divider %d port %d powerdown_on_reset %d\n",
-			 pps->t1_t2, pps->t3, pps->t4, pps->t5, pps->tx,
-			 pps->divider, pps->port, pps->powerdown_on_reset);
+	drm_dbg(&dev_priv->drm, "LVDS PPS:t1+t2 %d t3 %d t4 %d t5 %d tx %d "
+		"divider %d port %d powerdown_on_reset %d\n",
+		pps->t1_t2, pps->t3, pps->t4, pps->t5, pps->tx,
+		pps->divider, pps->port, pps->powerdown_on_reset);
 }
 
 static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
@@ -316,7 +317,8 @@ static void intel_enable_lvds(struct intel_encoder *encoder,
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
 	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
-		DRM_ERROR("timed out waiting for panel to power on\n");
+		drm_err(&dev_priv->drm,
+			"timed out waiting for panel to power on\n");
 
 	intel_panel_enable_backlight(pipe_config, conn_state);
 }
@@ -331,7 +333,8 @@ static void intel_disable_lvds(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, PP_CONTROL(0),
 		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
 	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
-		DRM_ERROR("timed out waiting for panel to power off\n");
+		drm_err(&dev_priv->drm,
+			"timed out waiting for panel to power off\n");
 
 	intel_de_write(dev_priv, lvds_encoder->reg,
 		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
@@ -397,7 +400,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 
 	/* Should never happen!! */
 	if (INTEL_GEN(dev_priv) < 4 && intel_crtc->pipe == 0) {
-		DRM_ERROR("Can't support LVDS on pipe A\n");
+		drm_err(&dev_priv->drm, "Can't support LVDS on pipe A\n");
 		return -EINVAL;
 	}
 
@@ -407,8 +410,9 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 		lvds_bpp = 6*3;
 
 	if (lvds_bpp != pipe_config->pipe_bpp && !pipe_config->bw_constrained) {
-		DRM_DEBUG_KMS("forcing display bpp (was %d) to LVDS (%d)\n",
-			      pipe_config->pipe_bpp, lvds_bpp);
+		drm_dbg_kms(&dev_priv->drm,
+			    "forcing display bpp (was %d) to LVDS (%d)\n",
+			    pipe_config->pipe_bpp, lvds_bpp);
 		pipe_config->pipe_bpp = lvds_bpp;
 	}
 
@@ -832,7 +836,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (!dev_priv->vbt.int_lvds_support) {
-		DRM_DEBUG_KMS("Internal LVDS support disabled by VBT\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
@@ -851,10 +856,12 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	pin = GMBUS_PIN_PANEL;
 	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
 		if ((lvds & LVDS_PORT_EN) == 0) {
-			DRM_DEBUG_KMS("LVDS is not present in VBT\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "LVDS is not present in VBT\n");
 			return;
 		}
-		DRM_DEBUG_KMS("LVDS is not present in VBT, but enabled anyway\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "LVDS is not present in VBT, but enabled anyway\n");
 	}
 
 	lvds_encoder = kzalloc(sizeof(*lvds_encoder), GFP_KERNEL);
@@ -968,7 +975,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 */
 	fixed_mode = intel_encoder_current_mode(intel_encoder);
 	if (fixed_mode) {
-		DRM_DEBUG_KMS("using current (BIOS) mode: ");
+		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: ");
 		drm_mode_debug_printmodeline(fixed_mode);
 		fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
 	}
@@ -984,8 +991,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_panel_setup_backlight(connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
-	DRM_DEBUG_KMS("detected %s-link lvds configuration\n",
-		      lvds_encoder->is_dual_link ? "dual" : "single");
+	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
+		    lvds_encoder->is_dual_link ? "dual" : "single");
 
 	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
 
@@ -994,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 failed:
 	mutex_unlock(&dev->mode_config.mutex);
 
-	DRM_DEBUG_KMS("No LVDS modes found, disabling.\n");
+	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
 	drm_connector_cleanup(connector);
 	drm_encoder_cleanup(encoder);
 	kfree(lvds_encoder);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

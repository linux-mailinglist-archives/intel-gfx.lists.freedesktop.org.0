Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C177E16FBC2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250A16E46D;
	Wed, 26 Feb 2020 10:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 735D86E46C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:12:21 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z3so2235282wru.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qRn5bzH2uogH2ukfUKIFvB7Ad0MObk0DVtrVOOHB2mw=;
 b=Eb2dzOi+VaYjCdb4YidOVtyzZ+a8iZYurvBqJh/rtOsRji7R/FchtUm0VEs/odTc02
 783CO3zwUzJZ1chSXlyOKgj7kYD98U7aIFWPrDgONDGygu01yN+43cVImQavW7U7KY7g
 Li2lamOFmyN9eK2BdH/A30Xe1o4GGod4/EA/ZaYtURbIkFTEGZ6SssO+ZN6XBkZwvEtS
 qc1raKfUI3JRLRikSUzbUh92SPqcfxmZ+yMw1UtxMopJEBZxWSIrhTIl+5jr6NMoTEMD
 ZgL4D8VGQ7IWBxhH2MYmOsfjw2aF3+Q5V5DP9RUS9ELbWZ5z/Loz5vU6CSgnN7kz9Tce
 x1dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qRn5bzH2uogH2ukfUKIFvB7Ad0MObk0DVtrVOOHB2mw=;
 b=Qf5+V5fU5fBDfE+okahX4GxykMbkO1ShpDB0FFDmgyZFqaAWdqsCQoUAYkQp7FlnOG
 Rkd4FbnhGoKyue2vwCaaYhY2jrTbHdH2Akp2B85xXAjoi9UjcHSTYdmeXa2xU78kJJps
 AE7ZQc0XR+hwDOVBg7TJ2blbz6CNUFX5mozyMeYMEKJj0yg7xnTChYaSoaf6D5garpzd
 EQcT/Li9kkmSTL08X50ZTtE+kqtSzNjYSepDkMiXpwrx1kRz1/ViYYho3cbZYHXsNBEB
 KiPBH/llcx/jkePfR9CHEHPy+yJHcNG+w4ujOoyoALGhvciUv2ma8YOuH2A+uDve1ncu
 oa8Q==
X-Gm-Message-State: APjAAAVuXTMVXrrJINKUvALtMHkqHTLKiwJEnhLPiO34h2h9yYoRyWLP
 D1yFeotT98HAJzjNhyJb/X6D6eR14cA=
X-Google-Smtp-Source: APXvYqwTPhERNWF+TKvHWMbdASt2+UQbR9Q21gyFnujEM3Fq6VABWo7IRofdz8unmTdC8gLOG0WznQ==
X-Received: by 2002:a5d:4651:: with SMTP id j17mr4693797wrs.237.1582711939812; 
 Wed, 26 Feb 2020 02:12:19 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:12:19 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:37 +0300
Message-Id: <20200226101138.15435-10-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 43 +++++++++++++----------
 1 file changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index b7ad0b534790..471e668e4ba0 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -182,8 +182,9 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 
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
@@ -192,10 +193,10 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
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
@@ -317,7 +318,8 @@ static void intel_enable_lvds(struct intel_encoder *encoder,
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
 	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
-		DRM_ERROR("timed out waiting for panel to power on\n");
+		drm_err(&dev_priv->drm,
+			"timed out waiting for panel to power on\n");
 
 	intel_panel_enable_backlight(pipe_config, conn_state);
 }
@@ -332,7 +334,8 @@ static void intel_disable_lvds(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, PP_CONTROL(0),
 		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
 	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
-		DRM_ERROR("timed out waiting for panel to power off\n");
+		drm_err(&dev_priv->drm,
+			"timed out waiting for panel to power off\n");
 
 	intel_de_write(dev_priv, lvds_encoder->reg,
 		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
@@ -398,7 +401,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 
 	/* Should never happen!! */
 	if (INTEL_GEN(dev_priv) < 4 && intel_crtc->pipe == 0) {
-		DRM_ERROR("Can't support LVDS on pipe A\n");
+		drm_err(&dev_priv->drm, "Can't support LVDS on pipe A\n");
 		return -EINVAL;
 	}
 
@@ -408,8 +411,9 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 		lvds_bpp = 6*3;
 
 	if (lvds_bpp != pipe_config->pipe_bpp && !pipe_config->bw_constrained) {
-		DRM_DEBUG_KMS("forcing display bpp (was %d) to LVDS (%d)\n",
-			      pipe_config->pipe_bpp, lvds_bpp);
+		drm_dbg_kms(&dev_priv->drm,
+			    "forcing display bpp (was %d) to LVDS (%d)\n",
+			    pipe_config->pipe_bpp, lvds_bpp);
 		pipe_config->pipe_bpp = lvds_bpp;
 	}
 
@@ -833,7 +837,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (!dev_priv->vbt.int_lvds_support) {
-		DRM_DEBUG_KMS("Internal LVDS support disabled by VBT\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
@@ -852,10 +857,12 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
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
@@ -969,7 +976,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 */
 	fixed_mode = intel_encoder_current_mode(intel_encoder);
 	if (fixed_mode) {
-		DRM_DEBUG_KMS("using current (BIOS) mode: ");
+		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: ");
 		drm_mode_debug_printmodeline(fixed_mode);
 		fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
 	}
@@ -985,8 +992,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_panel_setup_backlight(connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
-	DRM_DEBUG_KMS("detected %s-link lvds configuration\n",
-		      lvds_encoder->is_dual_link ? "dual" : "single");
+	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
+		    lvds_encoder->is_dual_link ? "dual" : "single");
 
 	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
 
@@ -995,7 +1002,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 failed:
 	mutex_unlock(&dev->mode_config.mutex);
 
-	DRM_DEBUG_KMS("No LVDS modes found, disabling.\n");
+	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
 	drm_connector_cleanup(connector);
 	drm_encoder_cleanup(encoder);
 	kfree(lvds_encoder);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

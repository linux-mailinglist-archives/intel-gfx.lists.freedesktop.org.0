Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 449371329D1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 16:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 400E089AB6;
	Tue,  7 Jan 2020 15:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47596E0D2;
 Tue,  7 Jan 2020 15:13:46 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id w15so41763834wru.4;
 Tue, 07 Jan 2020 07:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vzUn8iC2NGI+FUeSdJWZedb1D3wau2WUPxBbIjo3U0c=;
 b=IfV6NJzoETVAZDxMF9sFcP2/SMZt/NUcnvldgjpDY/w2txONpreACQgEfkU+kkpY0Z
 PfgjDfzJ6dHIqC1xx6kC1ceerrzQX4WEKUfGtI2tZwMPmucWhnbp4fqIDDZvDYveLzkR
 e7jqWfgS2GvjFTZ9bl8VPOobd1GUZqnhh32AQDZTYHneAsEw72AHNv487zMbpl2alhZX
 njlyJEnIPa8UviuMktppI+nuL0nH+oC6XYWbZm91bH05Qcuef077RawdPW1WlxI8nZN1
 hSdXXGSGNaBv+6GYl/FXYcbh2NniHfKzKDL8Vu7/rCADP+hdFPafWA45rm34Os2C5BHB
 Iw7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vzUn8iC2NGI+FUeSdJWZedb1D3wau2WUPxBbIjo3U0c=;
 b=PNKXxJE6JKRmZh5bR3JS6KVqPfC/owWaWj624AEKT8+owzxCNyJqXUK8GhEcnFn+is
 QQ6uDnNcmGL8Y8nhL/vbYMrSV2BQNTWEzyKlBJrCj7Eu/GWPYYnNwotliK3a1VRkwIer
 uebcee/1cRphweJhAO5v2LFatm9oOKG76wo5hQAps8cOe+OiR9tL14Y9ycDhMxCDTHvE
 PjrLusuRFN6a+arje7b/zgptC/XnIdAGADGxmD7i/q6W+ejOeJvgk3iUGglU+Dk/NvYk
 wSG7FZqGQWh54kCWfOG7gsTkEwJWsVZIM4/tPxv7RYQY2Y3YLERw4fqG+APJUJ5t+6P6
 HfFw==
X-Gm-Message-State: APjAAAUpjwktLByYW6kLYLv70JvSj4xnM6z0tgnq/hAYQJE0tAaUNGjV
 pGoHnUV5Wy7Eu5c+ik0avnaqGVvKf2E=
X-Google-Smtp-Source: APXvYqy73YLNBJZbJZz9DM8CBQJOA1CbKv24MwQOO2BbzdC9f9s7zwpmwTmFOP7+vWNwxb5oAoCuDg==
X-Received: by 2002:a5d:4c8c:: with SMTP id z12mr79250484wrs.222.1578410025009; 
 Tue, 07 Jan 2020 07:13:45 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id c4sm27076664wml.7.2020.01.07.07.13.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 07:13:44 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  7 Jan 2020 18:13:30 +0300
Message-Id: <8721848f7bcf8b0c3a33969d07e331bb372bd51a.1578409433.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1578409433.git.wambui.karugax@gmail.com>
References: <cover.1578409433.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 07 Jan 2020 15:18:02 +0000
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: use new struct drm_device logging
 macros.
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This converts various instances of the struct device and printk based
logging macros with the new struct drm_device based logging macros in
i915/intel_pm.c

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 351 ++++++++++++++++++--------------
 1 file changed, 194 insertions(+), 157 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 148ac455dfa7..bd2d30ecc030 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -199,8 +199,8 @@ static void ilk_get_mem_freq(struct drm_i915_private *dev_priv)
 		dev_priv->mem_freq = 1600;
 		break;
 	default:
-		DRM_DEBUG_DRIVER("unknown memory frequency 0x%02x\n",
-				 ddrpll & 0xff);
+		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
+			ddrpll & 0xff);
 		dev_priv->mem_freq = 0;
 		break;
 	}
@@ -228,8 +228,8 @@ static void ilk_get_mem_freq(struct drm_i915_private *dev_priv)
 		dev_priv->fsb_freq = 6400;
 		break;
 	default:
-		DRM_DEBUG_DRIVER("unknown fsb frequency 0x%04x\n",
-				 csipll & 0x3ff);
+		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n",
+			csipll & 0x3ff);
 		dev_priv->fsb_freq = 0;
 		break;
 	}
@@ -314,7 +314,8 @@ static void chv_set_memory_dvfs(struct drm_i915_private *dev_priv, bool enable)
 
 	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2) &
 		      FORCE_DDR_FREQ_REQ_ACK) == 0, 3))
-		DRM_ERROR("timed out waiting for Punit DDR DVFS request\n");
+		drm_err(&dev_priv->drm,
+			"timed out waiting for Punit DDR DVFS request\n");
 
 	vlv_punit_put(dev_priv);
 }
@@ -383,9 +384,9 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 
 	trace_intel_memory_cxsr(dev_priv, was_enabled, enable);
 
-	DRM_DEBUG_KMS("memory self-refresh is %s (was %s)\n",
-		      enableddisabled(enable),
-		      enableddisabled(was_enabled));
+	drm_dbg_kms(&dev_priv->drm, "memory self-refresh is %s (was %s)\n",
+		    enableddisabled(enable),
+		    enableddisabled(was_enabled));
 
 	return was_enabled;
 }
@@ -510,8 +511,8 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 	if (i9xx_plane == PLANE_B)
 		size = ((dsparb >> DSPARB_CSTART_SHIFT) & 0x7f) - size;
 
-	DRM_DEBUG_KMS("FIFO size - (0x%08x) %c: %d\n",
-		      dsparb, plane_name(i9xx_plane), size);
+	drm_dbg_kms(&dev_priv->drm, "FIFO size - (0x%08x) %c: %d\n",
+		    dsparb, plane_name(i9xx_plane), size);
 
 	return size;
 }
@@ -527,8 +528,8 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 		size = ((dsparb >> DSPARB_BEND_SHIFT) & 0x1ff) - size;
 	size >>= 1; /* Convert to cachelines */
 
-	DRM_DEBUG_KMS("FIFO size - (0x%08x) %c: %d\n",
-		      dsparb, plane_name(i9xx_plane), size);
+	drm_dbg_kms(&dev_priv->drm, "FIFO size - (0x%08x) %c: %d\n",
+		    dsparb, plane_name(i9xx_plane), size);
 
 	return size;
 }
@@ -542,8 +543,8 @@ static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
 	size = dsparb & 0x7f;
 	size >>= 2; /* Convert to cachelines */
 
-	DRM_DEBUG_KMS("FIFO size - (0x%08x) %c: %d\n",
-		      dsparb, plane_name(i9xx_plane), size);
+	drm_dbg_kms(&dev_priv->drm, "FIFO size - (0x%08x) %c: %d\n",
+		    dsparb, plane_name(i9xx_plane), size);
 
 	return size;
 }
@@ -870,7 +871,8 @@ static void pnv_update_wm(struct intel_crtc *unused_crtc)
 					 dev_priv->fsb_freq,
 					 dev_priv->mem_freq);
 	if (!latency) {
-		DRM_DEBUG_KMS("Unknown FSB/MEM found, disable CxSR\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Unknown FSB/MEM found, disable CxSR\n");
 		intel_set_memory_cxsr(dev_priv, false);
 		return;
 	}
@@ -892,7 +894,7 @@ static void pnv_update_wm(struct intel_crtc *unused_crtc)
 		reg &= ~DSPFW_SR_MASK;
 		reg |= FW_WM(wm, SR);
 		I915_WRITE(DSPFW1, reg);
-		DRM_DEBUG_KMS("DSPFW1 register is %x\n", reg);
+		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
 		wm = intel_calculate_wm(clock, &pnv_cursor_wm,
@@ -920,7 +922,7 @@ static void pnv_update_wm(struct intel_crtc *unused_crtc)
 		reg &= ~DSPFW_HPLL_CURSOR_MASK;
 		reg |= FW_WM(wm, HPLL_CURSOR);
 		I915_WRITE(DSPFW3, reg);
-		DRM_DEBUG_KMS("DSPFW3 register is %x\n", reg);
+		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
 
 		intel_set_memory_cxsr(dev_priv, true);
 	} else {
@@ -1211,6 +1213,7 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 				     const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int num_levels = intel_wm_num_levels(to_i915(plane->base.dev));
 	enum plane_id plane_id = plane->id;
 	bool dirty = false;
@@ -1263,16 +1266,18 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 
  out:
 	if (dirty) {
-		DRM_DEBUG_KMS("%s watermarks: normal=%d, SR=%d, HPLL=%d\n",
-			      plane->base.name,
-			      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_NORMAL].plane[plane_id],
-			      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].plane[plane_id],
-			      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].plane[plane_id]);
+		drm_dbg_kms(&dev_priv->drm,
+			    "%s watermarks: normal=%d, SR=%d, HPLL=%d\n",
+			    plane->base.name,
+			    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_NORMAL].plane[plane_id],
+			    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].plane[plane_id],
+			    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].plane[plane_id]);
 
 		if (plane_id == PLANE_PRIMARY)
-			DRM_DEBUG_KMS("FBC watermarks: SR=%d, HPLL=%d\n",
-				      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].fbc,
-				      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].fbc);
+			drm_dbg_kms(&dev_priv->drm,
+				    "FBC watermarks: SR=%d, HPLL=%d\n",
+				    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].fbc,
+				    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].fbc);
 	}
 
 	return dirty;
@@ -1790,6 +1795,7 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 				     const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum plane_id plane_id = plane->id;
 	int num_levels = intel_wm_num_levels(to_i915(plane->base.dev));
 	int level;
@@ -1817,11 +1823,12 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 
 out:
 	if (dirty)
-		DRM_DEBUG_KMS("%s watermarks: PM2=%d, PM5=%d, DDR DVFS=%d\n",
-			      plane->base.name,
-			      crtc_state->wm.vlv.raw[VLV_WM_LEVEL_PM2].plane[plane_id],
-			      crtc_state->wm.vlv.raw[VLV_WM_LEVEL_PM5].plane[plane_id],
-			      crtc_state->wm.vlv.raw[VLV_WM_LEVEL_DDR_DVFS].plane[plane_id]);
+		drm_dbg_kms(&dev_priv->drm,
+			    "%s watermarks: PM2=%d, PM5=%d, DDR DVFS=%d\n",
+			    plane->base.name,
+			    crtc_state->wm.vlv.raw[VLV_WM_LEVEL_PM2].plane[plane_id],
+			    crtc_state->wm.vlv.raw[VLV_WM_LEVEL_PM5].plane[plane_id],
+			    crtc_state->wm.vlv.raw[VLV_WM_LEVEL_DDR_DVFS].plane[plane_id]);
 
 	return dirty;
 }
@@ -2236,8 +2243,9 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
 		if (srwm < 0)
 			srwm = 1;
 		srwm &= 0x1ff;
-		DRM_DEBUG_KMS("self-refresh entries: %d, wm: %d\n",
-			      entries, srwm);
+		drm_dbg_kms(&dev_priv->drm,
+			    "self-refresh entries: %d, wm: %d\n",
+			    entries, srwm);
 
 		entries = intel_wm_method2(clock, htotal,
 					   crtc->base.cursor->state->crtc_w, 4,
@@ -2250,8 +2258,9 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
 		if (cursor_sr > i965_cursor_wm_info.max_wm)
 			cursor_sr = i965_cursor_wm_info.max_wm;
 
-		DRM_DEBUG_KMS("self-refresh watermark: display plane %d "
-			      "cursor %d\n", srwm, cursor_sr);
+		drm_dbg_kms(&dev_priv->drm,
+			    "self-refresh watermark: display plane %d "
+			    "cursor %d\n", srwm, cursor_sr);
 
 		cxsr_enabled = true;
 	} else {
@@ -2260,8 +2269,9 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
 		intel_set_memory_cxsr(dev_priv, false);
 	}
 
-	DRM_DEBUG_KMS("Setting FIFO watermarks - A: 8, B: 8, C: 8, SR %d\n",
-		      srwm);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Setting FIFO watermarks - A: 8, B: 8, C: 8, SR %d\n",
+		    srwm);
 
 	/* 965 has limitations... */
 	I915_WRITE(DSPFW1, FW_WM(srwm, SR) |
@@ -2351,7 +2361,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 			planeb_wm = wm_info->max_wm;
 	}
 
-	DRM_DEBUG_KMS("FIFO watermarks - A: %d, B: %d\n", planea_wm, planeb_wm);
+	drm_dbg_kms(&dev_priv->drm,
+		    "FIFO watermarks - A: %d, B: %d\n", planea_wm, planeb_wm);
 
 	if (IS_I915GM(dev_priv) && enabled) {
 		struct drm_i915_gem_object *obj;
@@ -2393,7 +2404,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 		entries = intel_wm_method2(clock, htotal, hdisplay, cpp,
 					   sr_latency_ns / 100);
 		entries = DIV_ROUND_UP(entries, wm_info->cacheline_size);
-		DRM_DEBUG_KMS("self-refresh entries: %d\n", entries);
+		drm_dbg_kms(&dev_priv->drm,
+			    "self-refresh entries: %d\n", entries);
 		srwm = wm_info->fifo_size - entries;
 		if (srwm < 0)
 			srwm = 1;
@@ -2405,8 +2417,9 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 			I915_WRITE(FW_BLC_SELF, srwm & 0x3f);
 	}
 
-	DRM_DEBUG_KMS("Setting FIFO watermarks - A: %d, B: %d, C: %d, SR %d\n",
-		      planea_wm, planeb_wm, cwm, srwm);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Setting FIFO watermarks - A: %d, B: %d, C: %d, SR %d\n",
+		     planea_wm, planeb_wm, cwm, srwm);
 
 	fwater_lo = ((planeb_wm & 0x3f) << 16) | (planea_wm & 0x3f);
 	fwater_hi = (cwm & 0x1f);
@@ -2442,7 +2455,8 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
 	fwater_lo = I915_READ(FW_BLC) & ~0xfff;
 	fwater_lo |= (3<<8) | planea_wm;
 
-	DRM_DEBUG_KMS("Setting FIFO watermarks - A: %d\n", planea_wm);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Setting FIFO watermarks - A: %d\n", planea_wm);
 
 	I915_WRITE(FW_BLC, fwater_lo);
 }
@@ -2841,7 +2855,8 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 					     &val, NULL);
 
 		if (ret) {
-			DRM_ERROR("SKL Mailbox read error = %d\n", ret);
+			drm_err(&dev_priv->drm,
+				"SKL Mailbox read error = %d\n", ret);
 			return;
 		}
 
@@ -2859,7 +2874,8 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 					     GEN9_PCODE_READ_MEM_LATENCY,
 					     &val, NULL);
 		if (ret) {
-			DRM_ERROR("SKL Mailbox read error = %d\n", ret);
+			drm_err(&dev_priv->drm,
+				"SKL Mailbox read error = %d\n", ret);
 			return;
 		}
 
@@ -2977,8 +2993,9 @@ static void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 		unsigned int latency = wm[level];
 
 		if (latency == 0) {
-			DRM_DEBUG_KMS("%s WM%d latency not provided\n",
-				      name, level);
+			drm_dbg_kms(&dev_priv->drm,
+				    "%s WM%d latency not provided\n",
+				    name, level);
 			continue;
 		}
 
@@ -2991,9 +3008,9 @@ static void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 		else if (level > 0)
 			latency *= 5;
 
-		DRM_DEBUG_KMS("%s WM%d latency %u (%u.%u usec)\n",
-			      name, level, wm[level],
-			      latency / 10, latency % 10);
+		drm_dbg_kms(&dev_priv->drm,
+			    "%s WM%d latency %u (%u.%u usec)\n", name, level,
+			    wm[level], latency / 10, latency % 10);
 	}
 }
 
@@ -3027,7 +3044,8 @@ static void snb_wm_latency_quirk(struct drm_i915_private *dev_priv)
 	if (!changed)
 		return;
 
-	DRM_DEBUG_KMS("WM latency values increased to avoid potential underruns\n");
+	drm_dbg_kms(&dev_priv->drm,
+		    "WM latency values increased to avoid potential underruns\n");
 	intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
 	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
 	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
@@ -3055,7 +3073,8 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
 	dev_priv->wm.spr_latency[3] = 0;
 	dev_priv->wm.cur_latency[3] = 0;
 
-	DRM_DEBUG_KMS("LP3 watermarks disabled due to potential for lost interrupts\n");
+	drm_dbg_kms(&dev_priv->drm,
+		    "LP3 watermarks disabled due to potential for lost interrupts\n");
 	intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
 	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
 	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
@@ -3105,7 +3124,7 @@ static bool ilk_validate_pipe_wm(const struct drm_i915_private *dev_priv,
 
 	/* At least LP0 must be valid */
 	if (!ilk_validate_wm_level(0, &max, &pipe_wm->wm[0])) {
-		DRM_DEBUG_KMS("LP0 watermark invalid\n");
+		drm_dbg_kms(&dev_priv->drm, "LP0 watermark invalid\n");
 		return false;
 	}
 
@@ -3682,7 +3701,7 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
 			return;
 		}
 
-		DRM_DEBUG_DRIVER("Couldn't read SAGV block time!\n");
+		drm_dbg(&dev_priv->drm, "Couldn't read SAGV block time!\n");
 	} else if (IS_GEN(dev_priv, 11)) {
 		dev_priv->sagv_block_time_us = 10;
 		return;
@@ -3722,7 +3741,7 @@ intel_enable_sagv(struct drm_i915_private *dev_priv)
 	if (dev_priv->sagv_status == I915_SAGV_ENABLED)
 		return 0;
 
-	DRM_DEBUG_KMS("Enabling SAGV\n");
+	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
 	ret = sandybridge_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
 				      GEN9_SAGV_ENABLE);
 
@@ -3733,11 +3752,11 @@ intel_enable_sagv(struct drm_i915_private *dev_priv)
 	 * don't actually have SAGV.
 	 */
 	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
-		DRM_DEBUG_DRIVER("No SAGV found on system, ignoring\n");
+		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
 		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
 		return 0;
 	} else if (ret < 0) {
-		DRM_ERROR("Failed to enable SAGV\n");
+		drm_err(&dev_priv->drm, "Failed to enable SAGV\n");
 		return ret;
 	}
 
@@ -3756,7 +3775,7 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	if (dev_priv->sagv_status == I915_SAGV_DISABLED)
 		return 0;
 
-	DRM_DEBUG_KMS("Disabling SAGV\n");
+	drm_dbg_kms(&dev_priv->drm, "Disabling SAGV\n");
 	/* bspec says to keep retrying for at least 1 ms */
 	ret = skl_pcode_request(dev_priv, GEN9_PCODE_SAGV_CONTROL,
 				GEN9_SAGV_DISABLE,
@@ -3767,11 +3786,11 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	 * don't actually have SAGV.
 	 */
 	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
-		DRM_DEBUG_DRIVER("No SAGV found on system, ignoring\n");
+		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
 		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
 		return 0;
 	} else if (ret < 0) {
-		DRM_ERROR("Failed to disable SAGV (%d)\n", ret);
+		drm_err(&dev_priv->drm, "Failed to disable SAGV (%d)\n", ret);
 		return ret;
 	}
 
@@ -4340,9 +4359,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
 	}
 
 	if (level < 0) {
-		DRM_DEBUG_KMS("Requested display configuration exceeds system DDB limitations");
-		DRM_DEBUG_KMS("minimum required %d/%d\n", blocks,
-			      alloc_size);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Requested display configuration exceeds system DDB limitations");
+		drm_dbg_kms(&dev_priv->drm, "minimum required %d/%d\n",
+			    blocks, alloc_size);
 		return -EINVAL;
 	}
 
@@ -4570,7 +4590,8 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 	/* only planar format has two planes */
 	if (color_plane == 1 &&
 	    !intel_format_info_is_yuv_semiplanar(format, modifier)) {
-		DRM_DEBUG_KMS("Non planar format have single plane\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Non planar format have single plane\n");
 		return -EINVAL;
 	}
 
@@ -5269,10 +5290,11 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 			if (skl_ddb_entry_equal(old, new))
 				continue;
 
-			DRM_DEBUG_KMS("[PLANE:%d:%s] ddb (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n",
-				      plane->base.base.id, plane->base.name,
-				      old->start, old->end, new->start, new->end,
-				      skl_ddb_entry_size(old), skl_ddb_entry_size(new));
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s] ddb (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n",
+				    plane->base.base.id, plane->base.name,
+				    old->start, old->end, new->start, new->end,
+				    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
 		}
 
 		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
@@ -5285,70 +5307,74 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 			if (skl_plane_wm_equals(dev_priv, old_wm, new_wm))
 				continue;
 
-			DRM_DEBUG_KMS("[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm"
-				      " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm\n",
-				      plane->base.base.id, plane->base.name,
-				      enast(old_wm->wm[0].plane_en), enast(old_wm->wm[1].plane_en),
-				      enast(old_wm->wm[2].plane_en), enast(old_wm->wm[3].plane_en),
-				      enast(old_wm->wm[4].plane_en), enast(old_wm->wm[5].plane_en),
-				      enast(old_wm->wm[6].plane_en), enast(old_wm->wm[7].plane_en),
-				      enast(old_wm->trans_wm.plane_en),
-				      enast(new_wm->wm[0].plane_en), enast(new_wm->wm[1].plane_en),
-				      enast(new_wm->wm[2].plane_en), enast(new_wm->wm[3].plane_en),
-				      enast(new_wm->wm[4].plane_en), enast(new_wm->wm[5].plane_en),
-				      enast(new_wm->wm[6].plane_en), enast(new_wm->wm[7].plane_en),
-				      enast(new_wm->trans_wm.plane_en));
-
-			DRM_DEBUG_KMS("[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d"
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm"
+				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm\n",
+				    plane->base.base.id, plane->base.name,
+				    enast(old_wm->wm[0].plane_en), enast(old_wm->wm[1].plane_en),
+				    enast(old_wm->wm[2].plane_en), enast(old_wm->wm[3].plane_en),
+				    enast(old_wm->wm[4].plane_en), enast(old_wm->wm[5].plane_en),
+				    enast(old_wm->wm[6].plane_en), enast(old_wm->wm[7].plane_en),
+				    enast(old_wm->trans_wm.plane_en),
+				    enast(new_wm->wm[0].plane_en), enast(new_wm->wm[1].plane_en),
+				    enast(new_wm->wm[2].plane_en), enast(new_wm->wm[3].plane_en),
+				    enast(new_wm->wm[4].plane_en), enast(new_wm->wm[5].plane_en),
+				    enast(new_wm->wm[6].plane_en), enast(new_wm->wm[7].plane_en),
+				    enast(new_wm->trans_wm.plane_en));
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d"
 				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d\n",
-				      plane->base.base.id, plane->base.name,
-				      enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
-				      enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
-				      enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].plane_res_l,
-				      enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].plane_res_l,
-				      enast(old_wm->wm[4].ignore_lines), old_wm->wm[4].plane_res_l,
-				      enast(old_wm->wm[5].ignore_lines), old_wm->wm[5].plane_res_l,
-				      enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].plane_res_l,
-				      enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
-				      enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res_l,
-
-				      enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
-				      enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
-				      enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].plane_res_l,
-				      enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].plane_res_l,
-				      enast(new_wm->wm[4].ignore_lines), new_wm->wm[4].plane_res_l,
-				      enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].plane_res_l,
-				      enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].plane_res_l,
-				      enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
-				      enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l);
-
-			DRM_DEBUG_KMS("[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
-				      " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
-				      plane->base.base.id, plane->base.name,
-				      old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
-				      old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
-				      old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
-				      old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
-				      old_wm->trans_wm.plane_res_b,
-				      new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
-				      new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
-				      new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
-				      new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
-				      new_wm->trans_wm.plane_res_b);
-
-			DRM_DEBUG_KMS("[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
-				      " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
-				      plane->base.base.id, plane->base.name,
-				      old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
-				      old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
-				      old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
-				      old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
-				      old_wm->trans_wm.min_ddb_alloc,
-				      new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
-				      new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
-				      new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
-				      new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
-				      new_wm->trans_wm.min_ddb_alloc);
+				    plane->base.base.id, plane->base.name,
+				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
+				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
+				    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].plane_res_l,
+				    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].plane_res_l,
+				    enast(old_wm->wm[4].ignore_lines), old_wm->wm[4].plane_res_l,
+				    enast(old_wm->wm[5].ignore_lines), old_wm->wm[5].plane_res_l,
+				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].plane_res_l,
+				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
+				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res_l,
+
+				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
+				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
+				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].plane_res_l,
+				    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].plane_res_l,
+				    enast(new_wm->wm[4].ignore_lines), new_wm->wm[4].plane_res_l,
+				    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].plane_res_l,
+				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].plane_res_l,
+				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
+				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l);
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
+				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
+				    plane->base.base.id, plane->base.name,
+				    old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
+				    old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
+				    old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
+				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
+				    old_wm->trans_wm.plane_res_b,
+				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
+				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
+				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
+				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
+				    new_wm->trans_wm.plane_res_b);
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
+				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
+				    plane->base.base.id, plane->base.name,
+				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
+				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
+				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
+				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
+				    old_wm->trans_wm.min_ddb_alloc,
+				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
+				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
+				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
+				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
+				    new_wm->trans_wm.min_ddb_alloc);
 		}
 	}
 }
@@ -5940,19 +5966,22 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		crtc_state->wm.g4x.optimal = *active;
 		crtc_state->wm.g4x.intermediate = *active;
 
-		DRM_DEBUG_KMS("Initial watermarks: pipe %c, plane=%d, cursor=%d, sprite=%d\n",
-			      pipe_name(pipe),
-			      wm->pipe[pipe].plane[PLANE_PRIMARY],
-			      wm->pipe[pipe].plane[PLANE_CURSOR],
-			      wm->pipe[pipe].plane[PLANE_SPRITE0]);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Initial watermarks: pipe %c, plane=%d, cursor=%d, sprite=%d\n",
+			    pipe_name(pipe),
+			    wm->pipe[pipe].plane[PLANE_PRIMARY],
+			    wm->pipe[pipe].plane[PLANE_CURSOR],
+			    wm->pipe[pipe].plane[PLANE_SPRITE0]);
 	}
 
-	DRM_DEBUG_KMS("Initial SR watermarks: plane=%d, cursor=%d fbc=%d\n",
-		      wm->sr.plane, wm->sr.cursor, wm->sr.fbc);
-	DRM_DEBUG_KMS("Initial HPLL watermarks: plane=%d, SR cursor=%d fbc=%d\n",
-		      wm->hpll.plane, wm->hpll.cursor, wm->hpll.fbc);
-	DRM_DEBUG_KMS("Initial SR=%s HPLL=%s FBC=%s\n",
-		      yesno(wm->cxsr), yesno(wm->hpll_en), yesno(wm->fbc_en));
+	drm_dbg_kms(&dev_priv->drm,
+		    "Initial SR watermarks: plane=%d, cursor=%d fbc=%d\n",
+		    wm->sr.plane, wm->sr.cursor, wm->sr.fbc);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Initial HPLL watermarks: plane=%d, SR cursor=%d fbc=%d\n",
+		    wm->hpll.plane, wm->hpll.cursor, wm->hpll.fbc);
+	drm_dbg_kms(&dev_priv->drm, "Initial SR=%s HPLL=%s FBC=%s\n",
+		    yesno(wm->cxsr), yesno(wm->hpll_en), yesno(wm->fbc_en));
 }
 
 void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
@@ -6044,8 +6073,9 @@ void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 		if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2) &
 			      FORCE_DDR_FREQ_REQ_ACK) == 0, 3)) {
-			DRM_DEBUG_KMS("Punit not acking DDR DVFS request, "
-				      "assuming DDR DVFS is disabled\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Punit not acking DDR DVFS request, "
+				    "assuming DDR DVFS is disabled\n");
 			dev_priv->wm.max_level = VLV_WM_LEVEL_PM5;
 		} else {
 			val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
@@ -6096,16 +6126,18 @@ void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		crtc_state->wm.vlv.optimal = *active;
 		crtc_state->wm.vlv.intermediate = *active;
 
-		DRM_DEBUG_KMS("Initial watermarks: pipe %c, plane=%d, cursor=%d, sprite0=%d, sprite1=%d\n",
-			      pipe_name(pipe),
-			      wm->pipe[pipe].plane[PLANE_PRIMARY],
-			      wm->pipe[pipe].plane[PLANE_CURSOR],
-			      wm->pipe[pipe].plane[PLANE_SPRITE0],
-			      wm->pipe[pipe].plane[PLANE_SPRITE1]);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Initial watermarks: pipe %c, plane=%d, cursor=%d, sprite0=%d, sprite1=%d\n",
+			    pipe_name(pipe),
+			    wm->pipe[pipe].plane[PLANE_PRIMARY],
+			    wm->pipe[pipe].plane[PLANE_CURSOR],
+			    wm->pipe[pipe].plane[PLANE_SPRITE0],
+			    wm->pipe[pipe].plane[PLANE_SPRITE1]);
 	}
 
-	DRM_DEBUG_KMS("Initial watermarks: SR plane=%d, SR cursor=%d level=%d cxsr=%d\n",
-		      wm->sr.plane, wm->sr.cursor, wm->level, wm->cxsr);
+	drm_dbg_kms(&dev_priv->drm,
+		    "Initial watermarks: SR plane=%d, SR cursor=%d level=%d cxsr=%d\n",
+		    wm->sr.plane, wm->sr.cursor, wm->level, wm->cxsr);
 }
 
 void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
@@ -6421,8 +6453,9 @@ static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
 
 	tmp = I915_READ(MCH_SSKPD);
 	if ((tmp & MCH_SSKPD_WM0_MASK) != MCH_SSKPD_WM0_VAL)
-		DRM_DEBUG_KMS("Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
-			      tmp);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
+			    tmp);
 }
 
 static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7137,7 +7170,8 @@ void intel_suspend_hw(struct drm_i915_private *dev_priv)
 
 static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	DRM_DEBUG_KMS("No clock gating settings or workarounds applied.\n");
+	drm_dbg_kms(&dev_priv->drm,
+		    "No clock gating settings or workarounds applied.\n");
 }
 
 /**
@@ -7232,8 +7266,9 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 			dev_priv->display.optimize_watermarks =
 				ilk_optimize_watermarks;
 		} else {
-			DRM_DEBUG_KMS("Failed to read display plane latency. "
-				      "Disable CxSR\n");
+			drm_dbg_kms(&dev_priv->drm,
+				    "Failed to read display plane latency. "
+				    "Disable CxSR\n");
 		}
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		vlv_setup_wm_latency(dev_priv);
@@ -7253,7 +7288,8 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 					    dev_priv->is_ddr3,
 					    dev_priv->fsb_freq,
 					    dev_priv->mem_freq)) {
-			DRM_INFO("failed to find known CxSR latency "
+			drm_info(&dev_priv->drm,
+				 "failed to find known CxSR latency "
 				 "(found ddr%s fsb freq %d, mem freq %d), "
 				 "disabling CxSR\n",
 				 (dev_priv->is_ddr3 == 1) ? "3" : "2",
@@ -7277,7 +7313,8 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 			dev_priv->display.get_fifo_size = i830_get_fifo_size;
 		}
 	} else {
-		DRM_ERROR("unexpected fall-through in intel_init_pm\n");
+		drm_err(&dev_priv->drm,
+			"unexpected fall-through in %s\n", __func__);
 	}
 }
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

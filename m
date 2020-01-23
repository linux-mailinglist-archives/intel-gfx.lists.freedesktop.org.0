Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A75CE146A90
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 15:01:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5DF6FCE9;
	Thu, 23 Jan 2020 14:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C945890B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 14:00:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:16 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216266086"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 06:00:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 16:00:00 +0200
Message-Id: <20200123140004.14136-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200123140004.14136-1-jani.nikula@intel.com>
References: <20200123140004.14136-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND 2/6] drm/i915/display: use intel de
 functions for forcewake register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move away from I915_READ_FW() and I915_WRITE_FW() in display code, and
switch to using intel_de_read_fw() and intel_de_write_fw(),
respectively.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 79 +++++++++++---------
 1 file changed, 42 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 878d331b9e8c..0fb0773c70b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4331,7 +4331,8 @@ static void i9xx_update_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(DSPSTRIDE(i9xx_plane), plane_state->color_plane[0].stride);
+	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
+			  plane_state->color_plane[0].stride);
 
 	if (INTEL_GEN(dev_priv) < 4) {
 		/*
@@ -4339,21 +4340,26 @@ static void i9xx_update_plane(struct intel_plane *plane,
 		 * generator but let's assume we still need to
 		 * program whatever is there.
 		 */
-		I915_WRITE_FW(DSPPOS(i9xx_plane), (crtc_y << 16) | crtc_x);
-		I915_WRITE_FW(DSPSIZE(i9xx_plane),
-			      ((crtc_h - 1) << 16) | (crtc_w - 1));
+		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
+				  (crtc_y << 16) | crtc_x);
+		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
+				  ((crtc_h - 1) << 16) | (crtc_w - 1));
 	} else if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
-		I915_WRITE_FW(PRIMPOS(i9xx_plane), (crtc_y << 16) | crtc_x);
-		I915_WRITE_FW(PRIMSIZE(i9xx_plane),
-			      ((crtc_h - 1) << 16) | (crtc_w - 1));
-		I915_WRITE_FW(PRIMCNSTALPHA(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
+				  (crtc_y << 16) | crtc_x);
+		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
+				  ((crtc_h - 1) << 16) | (crtc_w - 1));
+		intel_de_write_fw(dev_priv, PRIMCNSTALPHA(i9xx_plane), 0);
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		I915_WRITE_FW(DSPOFFSET(i9xx_plane), (y << 16) | x);
+		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
+				  (y << 16) | x);
 	} else if (INTEL_GEN(dev_priv) >= 4) {
-		I915_WRITE_FW(DSPLINOFF(i9xx_plane), linear_offset);
-		I915_WRITE_FW(DSPTILEOFF(i9xx_plane), (y << 16) | x);
+		intel_de_write_fw(dev_priv, DSPLINOFF(i9xx_plane),
+				  linear_offset);
+		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
+				  (y << 16) | x);
 	}
 
 	/*
@@ -4361,15 +4367,13 @@ static void i9xx_update_plane(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	I915_WRITE_FW(DSPCNTR(i9xx_plane), dspcntr);
+	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
 	if (INTEL_GEN(dev_priv) >= 4)
-		I915_WRITE_FW(DSPSURF(i9xx_plane),
-			      intel_plane_ggtt_offset(plane_state) +
-			      dspaddr_offset);
+		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
+				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
-		I915_WRITE_FW(DSPADDR(i9xx_plane),
-			      intel_plane_ggtt_offset(plane_state) +
-			      dspaddr_offset);
+		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
+				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -4396,11 +4400,11 @@ static void i9xx_disable_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(DSPCNTR(i9xx_plane), dspcntr);
+	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
 	if (INTEL_GEN(dev_priv) >= 4)
-		I915_WRITE_FW(DSPSURF(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
 	else
-		I915_WRITE_FW(DSPADDR(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -6175,10 +6179,10 @@ static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 		id = scaler_state->scaler_id;
 		I915_WRITE(SKL_PS_CTRL(pipe, id), PS_SCALER_EN |
 			PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
-		I915_WRITE_FW(SKL_PS_VPHASE(pipe, id),
-			      PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
-		I915_WRITE_FW(SKL_PS_HPHASE(pipe, id),
-			      PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
+		intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
+				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
+		intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
+				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
 		I915_WRITE(SKL_PS_WIN_POS(pipe, id), crtc_state->pch_pfit.pos);
 		I915_WRITE(SKL_PS_WIN_SZ(pipe, id), crtc_state->pch_pfit.size);
 	}
@@ -11315,17 +11319,17 @@ static void i845_update_cursor(struct intel_plane *plane,
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != size ||
 	    plane->cursor.cntl != cntl) {
-		I915_WRITE_FW(CURCNTR(PIPE_A), 0);
-		I915_WRITE_FW(CURBASE(PIPE_A), base);
-		I915_WRITE_FW(CURSIZE, size);
-		I915_WRITE_FW(CURPOS(PIPE_A), pos);
-		I915_WRITE_FW(CURCNTR(PIPE_A), cntl);
+		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), 0);
+		intel_de_write_fw(dev_priv, CURBASE(PIPE_A), base);
+		intel_de_write_fw(dev_priv, CURSIZE, size);
+		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
+		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), cntl);
 
 		plane->cursor.base = base;
 		plane->cursor.size = size;
 		plane->cursor.cntl = cntl;
 	} else {
-		I915_WRITE_FW(CURPOS(PIPE_A), pos);
+		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
 	}
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
@@ -11566,17 +11570,18 @@ static void i9xx_update_cursor(struct intel_plane *plane,
 	    plane->cursor.size != fbc_ctl ||
 	    plane->cursor.cntl != cntl) {
 		if (HAS_CUR_FBC(dev_priv))
-			I915_WRITE_FW(CUR_FBC_CTL(pipe), fbc_ctl);
-		I915_WRITE_FW(CURCNTR(pipe), cntl);
-		I915_WRITE_FW(CURPOS(pipe), pos);
-		I915_WRITE_FW(CURBASE(pipe), base);
+			intel_de_write_fw(dev_priv, CUR_FBC_CTL(pipe),
+					  fbc_ctl);
+		intel_de_write_fw(dev_priv, CURCNTR(pipe), cntl);
+		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
+		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
 
 		plane->cursor.base = base;
 		plane->cursor.size = fbc_ctl;
 		plane->cursor.cntl = cntl;
 	} else {
-		I915_WRITE_FW(CURPOS(pipe), pos);
-		I915_WRITE_FW(CURBASE(pipe), base);
+		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
+		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
 	}
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

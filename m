Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055708FB719
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD2410E4EA;
	Tue,  4 Jun 2024 15:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VWf17HYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828A810E4EA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514923; x=1749050923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3p6gDEVC1w6S2zVY2ARQ5Z/gOVMJvGevpQ1G0xnwOVs=;
 b=VWf17HYb/YPT3u8cR/tlqFKpgfnhWHv484Gg462YpzGg3Wbwx8O5wSKI
 16ruzbEMT2Hz+zMAvRPIu8IR3lv49o6ubPOQIe2EiTkqrBvUR1gDl/CfL
 2g1/CuKDgG/G8U7pz4hsH1uPpMQiBOHSCLN6Ee6e4rIyBNM871Ioi+fxa
 P4drzwJaZspz98sxJpdZm0sMUwtRDy3uvoSnPn1ChFykdS9dbTFK7AtJN
 sZ+jnyU79NiivIEW15QgOQzKSP1+8kh3YH+Ohw7pHLhj5PJrr9BueVZBm
 RXTCV20ZSO0YPTbD4JpzFmfdLpf9P0jhB95LylU8v6KrwnU9teeakgEjQ Q==;
X-CSE-ConnectionGUID: uBieOZT4Qo2XeU5wAmMJhQ==
X-CSE-MsgGUID: +CKTvPFvSUe3YufvxB+LWg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17009160"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17009160"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:43 -0700
X-CSE-ConnectionGUID: 4+pZnn2tRg+DitGk/dD3uA==
X-CSE-MsgGUID: 4xirNuUQQFKG06npuu3WAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37742201"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 28/65] drm/i915: pass dev_priv explicitly to DSPFW3
Date: Tue,  4 Jun 2024 18:25:46 +0300
Message-Id: <856978ed413e537b7d46eed5e8d93bdfd7c80fc6.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the DSPFW3 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 27 ++++++++++---------
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 3 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 1e11d66d1a7e..3fe24bae0728 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -149,14 +149,14 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
 		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
 	} else if (IS_PINEVIEW(dev_priv)) {
-		val = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+		val = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
 		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
 		if (enable)
 			val |= PINEVIEW_SELF_REFRESH_EN;
 		else
 			val &= ~PINEVIEW_SELF_REFRESH_EN;
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, val);
-		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3);
+		intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv), val);
+		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3(dev_priv));
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv)) {
 		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
@@ -668,7 +668,8 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 					&pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
+		intel_uncore_rmw(&dev_priv->uncore, DSPFW3(dev_priv),
+				 DSPFW_CURSOR_SR_MASK,
 				 FW_WM(wm, CURSOR_SR));
 
 		/* Display HPLL off SR */
@@ -676,17 +677,18 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 					&pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
-		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
+		intel_uncore_rmw(&dev_priv->uncore, DSPFW3(dev_priv),
+				 DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
 
 		/* cursor HPLL off SR */
 		wm = intel_calculate_wm(dev_priv, pixel_rate,
 					&pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
 		reg &= ~DSPFW_HPLL_CURSOR_MASK;
 		reg |= FW_WM(wm, HPLL_CURSOR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
+		intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv), reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
 
 		intel_set_memory_cxsr(dev_priv, true);
@@ -732,7 +734,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3,
+	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
 			   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
 			   FW_WM(wm->sr.cursor, CURSOR_SR) |
 			   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
@@ -779,7 +781,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW3,
+	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
 			   FW_WM(wm->sr.cursor, CURSOR_SR));
 
 	if (IS_CHERRYVIEW(dev_priv)) {
@@ -2076,7 +2078,8 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 		           FW_WM(8, CURSORA) |
 		           FW_WM(8, PLANEC_OLD));
 	/* update cursor SR watermark */
-	intel_uncore_write(&dev_priv->uncore, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
+	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
+		           FW_WM(cursor_sr, CURSOR_SR));
 
 	if (cxsr_enabled)
 		intel_set_memory_cxsr(dev_priv, true);
@@ -3537,7 +3540,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
 	wm->hpll_en = tmp & DSPFW_HPLL_SR_EN;
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 	wm->hpll.cursor = _FW_WM(tmp, HPLL_CURSOR);
@@ -3574,7 +3577,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 
 	if (IS_CHERRYVIEW(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 86d9900c40af..b538a8204124 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -77,7 +77,7 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 	else if (IS_I915GM(dev_priv))
 		sr_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
 	else if (IS_PINEVIEW(dev_priv))
-		sr_enabled = intel_de_read(dev_priv, DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
+		sr_enabled = intel_de_read(dev_priv, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b642cb0d9b7..05e0013813f8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2046,7 +2046,7 @@
 #define   DSPFW_SPRITEA_SHIFT		0
 #define   DSPFW_SPRITEA_MASK		(0x7f << 0) /* g4x */
 #define   DSPFW_SPRITEA_MASK_VLV	(0xff << 0) /* vlv/chv */
-#define DSPFW3		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x7003c)
+#define DSPFW3(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x7003c)
 #define   DSPFW_HPLL_SR_EN		(1 << 31)
 #define   PINEVIEW_SELF_REFRESH_EN	(1 << 30)
 #define   DSPFW_CURSOR_SR_SHIFT		24
-- 
2.39.2


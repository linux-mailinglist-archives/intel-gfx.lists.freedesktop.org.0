Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F58A8FB718
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C676210E4E8;
	Tue,  4 Jun 2024 15:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XzQPpyN0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002F410E4E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514920; x=1749050920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pO44MDCl3PepoIxFUifUkObCvZZ0TwDjl/9KjohNFBo=;
 b=XzQPpyN0vRsesbTMt98fmKQ3TTZWZBJH3gDynLfMjL8RL5RwdQBEkTLr
 Qn69cCm9IFErjsvDKCcrtw+cBbMcgV9UdF48tseGnx9KyuvtqVrVgKW2N
 PfN79u6Qr6I1VCWxxUPoiLuaVdHnYpeVI55KvdZAvCELzAow5Z6dJOz23
 e8xZfADGL45OY+JHIw4sJj4aWhnsDFGEfkALWybl5n5qEiH1vR4OULeGy
 lqhlu5xZ75qNGvxZ1N8eV8rRtRo9BKQzUeFcioa8U5headiqmU+wHATGI
 hQRd1cwLC6hwkH1nDuFxP9SkUN+v8jz6oOo6jybEZyjfh6qhQqKX/W7uu A==;
X-CSE-ConnectionGUID: XlxJki7KQ6ya5Gwzx0xwCA==
X-CSE-MsgGUID: 4OuEo73yRq+QupjQ51gwRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17009133"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17009133"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:39 -0700
X-CSE-ConnectionGUID: Dqe5uSjERtuKBN1GxmOEfA==
X-CSE-MsgGUID: L2BY4oMYRj21UvDz79/2Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37742189"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 27/65] drm/i915: pass dev_priv explicitly to DSPFW2
Date: Tue,  4 Jun 2024 18:25:45 +0300
Message-Id: <ba349f90b6614605c52f58ae048961c7b4da4495.1717514638.git.jani.nikula@intel.com>
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
explicitly to the DSPFW2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 13 +++++++------
 drivers/gpu/drm/i915/i915_reg.h        |  2 +-
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index e39415fb1c19..1e11d66d1a7e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -725,7 +725,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2,
+	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
 			   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
 			   FW_WM(wm->sr.fbc, FBC_SR) |
 			   FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
@@ -775,7 +775,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
 			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2,
+	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
 			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
 			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
@@ -2072,8 +2072,9 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 		           FW_WM(8, CURSORB) |
 		           FW_WM(8, PLANEB) |
 		           FW_WM(8, PLANEA));
-	intel_uncore_write(&dev_priv->uncore, DSPFW2, FW_WM(8, CURSORA) |
-		   FW_WM(8, PLANEC_OLD));
+	intel_uncore_write(&dev_priv->uncore, DSPFW2(dev_priv),
+		           FW_WM(8, CURSORA) |
+		           FW_WM(8, PLANEC_OLD));
 	/* update cursor SR watermark */
 	intel_uncore_write(&dev_priv->uncore, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
 
@@ -3528,7 +3529,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2(dev_priv));
 	wm->fbc_en = tmp & DSPFW_FBC_SR_EN;
 	wm->sr.fbc = _FW_WM(tmp, FBC_SR);
 	wm->hpll.fbc = _FW_WM(tmp, FBC_HPLL_SR);
@@ -3568,7 +3569,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
 	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEA);
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2(dev_priv));
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEB);
 	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
 	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5f1db52ee773..8b642cb0d9b7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2030,7 +2030,7 @@
 #define   DSPFW_PLANEA_SHIFT		0
 #define   DSPFW_PLANEA_MASK		(0x7f << 0)
 #define   DSPFW_PLANEA_MASK_VLV		(0xff << 0) /* vlv/chv */
-#define DSPFW2		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70038)
+#define DSPFW2(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70038)
 #define   DSPFW_FBC_SR_EN		(1 << 31)	  /* g4x */
 #define   DSPFW_FBC_SR_SHIFT		28
 #define   DSPFW_FBC_SR_MASK		(0x7 << 28) /* g4x */
-- 
2.39.2


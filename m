Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EF08FB716
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA97B10E4E6;
	Tue,  4 Jun 2024 15:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJLYCr5Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AAB310E4E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514916; x=1749050916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J0NQ6g/eeohaE/0QIoqmUB9YRk6NQ4UIxdyBHgD/gbY=;
 b=lJLYCr5Z+83HPaHvVVtYAyZdInE3br+iuQcTl3/Bruuy+U2iFSU9tubo
 QwMIz1aZ+uvH785+/7w+mW05Sl042aJDoFSLit6MCW464VUE5ktxr21fm
 s8oZor60oBomDQypYwY54tqSWZ1cDld7W+FagE20R7f363e1yFdCL/HAs
 z02XoC9PpoZ9Wx5CnRT5k8yHH/auTTl8UxSyhi7CsPYsdmOFbvxrIwU3N
 bHNL3wj07YHC42u0iRY8xDxXvbuxY7GPyHUzH4WQHMqmaadMPLZ2O4xRp
 U1RfoHdsByifkHb/rXHUCBQVzyNcuhhk+G72T0UOr5H6Rl+fbYhehirIx w==;
X-CSE-ConnectionGUID: kPj9nonwSYSbQKM87KWqDw==
X-CSE-MsgGUID: kiVbg9cyT4CWL7/t0tD6xA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17009109"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17009109"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:34 -0700
X-CSE-ConnectionGUID: F8LnwHs8QwWHN7q/xqvlsw==
X-CSE-MsgGUID: 4FOXdW+HRpW8KH3lMvcV/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37742175"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 26/65] drm/i915: pass dev_priv explicitly to DSPFW1
Date: Tue,  4 Jun 2024 18:25:44 +0300
Message-Id: <4843726dff7d95e4127fb948073c9e4addc1e683.1717514638.git.jani.nikula@intel.com>
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
explicitly to the DSPFW1 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 25 +++++++++++++------------
 drivers/gpu/drm/i915/i915_reg.h        |  2 +-
 2 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index fd14010b4cc3..e39415fb1c19 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -657,10 +657,10 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 					&pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
-		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
 		reg &= ~DSPFW_SR_MASK;
 		reg |= FW_WM(wm, SR);
-		intel_uncore_write(&dev_priv->uncore, DSPFW1, reg);
+		intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv), reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
@@ -720,7 +720,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 	for_each_pipe(dev_priv, pipe)
 		trace_g4x_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
 
-	intel_uncore_write(&dev_priv->uncore, DSPFW1,
+	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
 			   FW_WM(wm->sr.plane, SR) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
@@ -738,7 +738,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 			   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
 			   FW_WM(wm->hpll.plane, HPLL_SR));
 
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
+	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1(dev_priv));
 }
 
 #define FW_WM_VLV(value, plane) \
@@ -770,7 +770,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	intel_uncore_write(&dev_priv->uncore, DSPFW5, 0);
 	intel_uncore_write(&dev_priv->uncore, DSPFW6, 0);
 
-	intel_uncore_write(&dev_priv->uncore, DSPFW1,
+	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
 			   FW_WM(wm->sr.plane, SR) |
 			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
 			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
@@ -817,7 +817,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
 	}
 
-	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
+	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1(dev_priv));
 }
 
 #undef FW_WM_VLV
@@ -2067,10 +2067,11 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 		    srwm);
 
 	/* 965 has limitations... */
-	intel_uncore_write(&dev_priv->uncore, DSPFW1, FW_WM(srwm, SR) |
-		   FW_WM(8, CURSORB) |
-		   FW_WM(8, PLANEB) |
-		   FW_WM(8, PLANEA));
+	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
+		           FW_WM(srwm, SR) |
+		           FW_WM(8, CURSORB) |
+		           FW_WM(8, PLANEB) |
+		           FW_WM(8, PLANEA));
 	intel_uncore_write(&dev_priv->uncore, DSPFW2, FW_WM(8, CURSORA) |
 		   FW_WM(8, PLANEC_OLD));
 	/* update cursor SR watermark */
@@ -3521,7 +3522,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 {
 	u32 tmp;
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
@@ -3561,7 +3562,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 			(tmp >> DDL_SPRITE_SHIFT(1)) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
 	}
 
-	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
+	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
 	wm->sr.plane = _FW_WM(tmp, SR);
 	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
 	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 75223b8cb575..5f1db52ee773 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2019,7 +2019,7 @@
 #define   DSPARB_SPRITEF_MASK_VLV	(0xff << 8)
 
 /* pnv/gen4/g4x/vlv/chv */
-#define DSPFW1		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70034)
+#define DSPFW1(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70034)
 #define   DSPFW_SR_SHIFT		23
 #define   DSPFW_SR_MASK			(0x1ff << 23)
 #define   DSPFW_CURSORB_SHIFT		16
-- 
2.39.2


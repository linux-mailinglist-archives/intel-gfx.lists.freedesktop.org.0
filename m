Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043E999DF04
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 09:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0FFD10E511;
	Tue, 15 Oct 2024 07:03:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xvx5K2nn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 990F510E511
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 07:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728975824; x=1760511824;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Brww7pAEqvdxG0VH9NH7p19QVAsx2rhZHPSU7Icj2IA=;
 b=Xvx5K2nnvcWLoZ007g0QBLtvlLic/BwSia3bgs6sthor0pHozbb3hUJA
 lC6JKWtLg4+I7hy+riRZJWe+RSuAiHXbL9GSAuM9Wzjb3/T51IOwByDqC
 TtXLPD30bekZ1Wa1sPhl0F0WoXGC8nWnXOAqTb3yX7ueSAPHiLzC8+YS8
 XR8c4npf+HnoedQP2CrXgy2Xsi8ONl93UD6fpPq1SDq+r6LBEBYWu0f3B
 Ls/biMfLusWe5UEPwy3NIS883ndcqmOYd7m75OA2i8n5MxOzNS/Hx+EAa
 RLrqQLJfylh964lFawsym9J/Nq5XhcA/rlPi9saWcL4F/SXAK400gX3eV A==;
X-CSE-ConnectionGUID: YUX5sRzyTD2ff5nJA6121g==
X-CSE-MsgGUID: HKbd5aqyRoqvzX3Jc3RynA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28136965"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28136965"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 00:03:44 -0700
X-CSE-ConnectionGUID: hqL5BhjrQ4G6QoZeGv1KhQ==
X-CSE-MsgGUID: ZgsuYv1JRy+hIyhM+Kxk3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="82579118"
Received: from spottumu-desk.iind.intel.com ([10.145.152.200])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 00:03:41 -0700
From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, ville.syrjala@intel.com,
 balasubramani.vivekanandan@intel.com,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v2] drm/i915: Remove unused underrun irq/reporting bits
Date: Tue, 15 Oct 2024 12:29:03 +0530
Message-Id: <20241015065903.3469512-1-sai.teja.pottumuttu@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

Underrun recovery was defeatured and was never brought into usage.
Thus we can remove the underrun recovery interrupt/reporting
register bits and related logic introduced to detect/report soft,
hard, port underruns.

Essentially this is a revert of the commit 8bcc0840cf7c
(drm/i915/xelpd: Enhanced pipe underrun reporting) which originally
added this functionality. Also note that PIPE_STATUS_UNDERRUN bit in
PIPESTATUS still stays relevant but we would move back to not
clearing this sticky bit as we are not using any information from
this register.

v2: Extend commit message to add more details (Matt Roper)

Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 19 +-----
 .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
 .../drm/i915/display/intel_fifo_underrun.c    | 58 ++-----------------
 drivers/gpu/drm/i915/i915_reg.h               |  9 ---
 4 files changed, 8 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a4367ddc7a44..827891070461 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1021,17 +1021,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
 		return GEN8_PIPE_PRIMARY_FLIP_DONE;
 }
 
-u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
-{
-	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
-
-	if (DISPLAY_VER(dev_priv) >= 13)
-		mask |= XELPD_PIPE_SOFT_UNDERRUN |
-			XELPD_PIPE_HARD_UNDERRUN;
-
-	return mask;
-}
-
 static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
 {
 	u32 pica_ier = 0;
@@ -1177,7 +1166,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
 			hsw_pipe_crc_irq_handler(dev_priv, pipe);
 
-		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
+		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
 			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
 
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
@@ -1617,8 +1606,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 				     u8 pipe_mask)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 extra_ier = GEN8_PIPE_VBLANK |
-		gen8_de_pipe_underrun_mask(dev_priv) |
+	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
 		gen8_de_pipe_flip_done_mask(dev_priv);
 	enum pipe pipe;
 
@@ -1807,8 +1795,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			GEN12_DSB_INT(INTEL_DSB_2);
 
 	de_pipe_enables = de_pipe_masked |
-		GEN8_PIPE_VBLANK |
-		gen8_de_pipe_underrun_mask(dev_priv) |
+		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
 		gen8_de_pipe_flip_done_mask(dev_priv);
 
 	de_port_enables = de_port_masked;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 4b493cff7b8e..b077712b7be1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
 
 void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
 void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
-u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
 
 int i8xx_enable_vblank(struct drm_crtc *crtc);
 int i915gm_enable_vblank(struct drm_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 745ce22afb89..cda1daf4cdea 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -192,35 +192,15 @@ static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
 	}
 }
 
-static u32
-icl_pipe_status_underrun_mask(struct drm_i915_private *dev_priv)
-{
-	u32 mask = PIPE_STATUS_UNDERRUN;
-
-	if (DISPLAY_VER(dev_priv) >= 13)
-		mask |= PIPE_STATUS_SOFT_UNDERRUN_XELPD |
-			PIPE_STATUS_HARD_UNDERRUN_XELPD |
-			PIPE_STATUS_PORT_UNDERRUN_XELPD;
-
-	return mask;
-}
-
 static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
 					    enum pipe pipe, bool enable)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
-
-	if (enable) {
-		if (DISPLAY_VER(dev_priv) >= 11)
-			intel_de_write(dev_priv,
-				       ICL_PIPESTATUS(dev_priv, pipe),
-				       icl_pipe_status_underrun_mask(dev_priv));
 
-		bdw_enable_pipe_irq(dev_priv, pipe, mask);
-	} else {
-		bdw_disable_pipe_irq(dev_priv, pipe, mask);
-	}
+	if (enable)
+		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
+	else
+		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
 }
 
 static void ibx_set_fifo_underrun_reporting(struct drm_device *dev,
@@ -404,7 +384,6 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 {
 	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
-	u32 underruns = 0;
 
 	/* We may be called too early in init, thanks BIOS! */
 	if (crtc == NULL)
@@ -415,37 +394,10 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 	    crtc->cpu_fifo_underrun_disabled)
 		return;
 
-	/*
-	 * Starting with display version 11, the PIPE_STAT register records
-	 * whether an underrun has happened, and on XELPD+, it will also record
-	 * whether the underrun was soft/hard and whether it was triggered by
-	 * the downstream port logic.  We should clear these bits (which use
-	 * write-1-to-clear logic) too.
-	 *
-	 * Note that although the IIR gives us the same underrun and soft/hard
-	 * information, PIPE_STAT is the only place we can find out whether
-	 * the underrun was caused by the downstream port.
-	 */
-	if (DISPLAY_VER(dev_priv) >= 11) {
-		underruns = intel_de_read(dev_priv,
-					  ICL_PIPESTATUS(dev_priv, pipe)) &
-			icl_pipe_status_underrun_mask(dev_priv);
-		intel_de_write(dev_priv, ICL_PIPESTATUS(dev_priv, pipe),
-			       underruns);
-	}
-
 	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
 		trace_intel_cpu_fifo_underrun(display, pipe);
 
-		if (DISPLAY_VER(dev_priv) >= 11)
-			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun: %s%s%s%s\n",
-				pipe_name(pipe),
-				underruns & PIPE_STATUS_SOFT_UNDERRUN_XELPD ? "soft," : "",
-				underruns & PIPE_STATUS_HARD_UNDERRUN_XELPD ? "hard," : "",
-				underruns & PIPE_STATUS_PORT_UNDERRUN_XELPD ? "port," : "",
-				underruns & PIPE_STATUS_UNDERRUN ? "transcoder," : "");
-		else
-			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
+		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
 	}
 
 	intel_fbc_handle_fifo_underrun_irq(&dev_priv->display);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 818142f5a10c..405f409e9761 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1735,13 +1735,6 @@
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
 
-#define _ICL_PIPE_A_STATUS			0x70058
-#define ICL_PIPESTATUS(dev_priv, pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)
-#define   PIPE_STATUS_UNDERRUN				REG_BIT(31)
-#define   PIPE_STATUS_SOFT_UNDERRUN_XELPD		REG_BIT(28)
-#define   PIPE_STATUS_HARD_UNDERRUN_XELPD		REG_BIT(27)
-#define   PIPE_STATUS_PORT_UNDERRUN_XELPD		REG_BIT(26)
-
 #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
 #define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
 #define   PIPEB_HLINE_INT_EN			REG_BIT(28)
@@ -2512,9 +2505,7 @@
 #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
 #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
 #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
-#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
 #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
-#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
 #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
 #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
-- 
2.34.1


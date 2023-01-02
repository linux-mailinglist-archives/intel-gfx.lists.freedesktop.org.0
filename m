Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA96165B69B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 19:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9046F10E1D6;
	Mon,  2 Jan 2023 18:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82A210E1D6
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 18:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672684409; x=1704220409;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y2tttsXFUBeSlcj4YD6BIsyjS1VzPXNhaLaXzAZ3DBM=;
 b=USsSb/JU6DnBBhrCwbX4T5mjBx+3kHMWV6Pos+ywSecnI8AQ94xKw0db
 Se2POTW4N5cOs4ZS+21Fr3gsIbk/UfADGL4tUeI9IT0ZXGjdEB+Eu9GC4
 poFKjQVxtlZTU1lyomhm7GyPoRxOXMasZnoXLOerBYWmNODKwakH2NfKI
 Z2PmcFrQ636s4HIZ6vimotSaHDe3HwtMAgkzgVvGuZLAJBn/A1GsFbHAY
 +GgjWzkcmRJPnZ1LZPtTn7hd6/UjIuuDJJeLpYKx2G7fVlqe/kaejjmJl
 xL97rwJAR7qi3BqRlhPFKe3ucsLf3BnWkLir5X5T6/T+Fmb/kKXnWwBDT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="319227906"
X-IronPort-AV: E=Sophos;i="5.96,294,1665471600"; d="scan'208";a="319227906"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 10:33:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="604591151"
X-IronPort-AV: E=Sophos;i="5.96,294,1665471600"; d="scan'208";a="604591151"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 10:33:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 20:33:24 +0200
Message-Id: <20230102183324.862279-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Enable a PIPEDMC whenever its
 corresponding pipe is enabled
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

Make sure that PIPEDMCs are enabled whenever the corresponding pipe is
enabled.

This is required at least by the latest ADLP v2.18 firmware, which adds
a new handler enabled by default and running whenever the pipe is
enabled at the vertical referesh rate.

Bspec: 50344, 67620

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h      |  4 ++++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 11 +++++++++
 .../drm/i915/display/intel_modeset_setup.c    |  4 +++-
 5 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e75b9b2a0e015..ddbf22d5667a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1918,6 +1918,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
+	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
+
 	if (!new_crtc_state->bigjoiner_pipes) {
 		intel_encoders_pre_pll_enable(state, crtc);
 
@@ -2053,6 +2055,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/*
 	 * FIXME collapse everything to one hook.
@@ -2062,6 +2065,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 		intel_encoders_disable(state, crtc);
 		intel_encoders_post_disable(state, crtc);
 	}
+
+	intel_dmc_disable_pipe(i915, crtc->pipe);
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 905b5dcdca14f..fe8a8941dbf3a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -108,6 +108,8 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
 #define DMC_V3_MAX_MMIO_COUNT		20
 #define DMC_V1_MMIO_START_RANGE		0x80000
 
+#define PIPE_TO_DMC_ID(pipe)		 (DMC_FW_PIPEA + ((pipe) - PIPE_A))
+
 struct intel_css_header {
 	/* 0x09 for DMC */
 	u32 module_type;
@@ -407,6 +409,28 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
 				     PIPEDMC_GATING_DIS, 0);
 }
 
+void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
+{
+	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
+		return;
+
+	if (DISPLAY_VER(i915) >= 14)
+		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
+	else
+		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
+}
+
+void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
+{
+	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
+		return;
+
+	if (DISPLAY_VER(i915) >= 14)
+		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
+	else
+		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
+}
+
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
  * @dev_priv: i915 drm device.
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 67e03315ef999..c65a5769879fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -13,6 +13,8 @@
 struct drm_i915_error_state_buf;
 struct drm_i915_private;
 
+enum pipe;
+
 enum {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
@@ -48,6 +50,8 @@ struct intel_dmc {
 void intel_dmc_ucode_init(struct drm_i915_private *i915);
 void intel_dmc_load_program(struct drm_i915_private *i915);
 void intel_dmc_disable_program(struct drm_i915_private *i915);
+void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
+void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
 void intel_dmc_ucode_fini(struct drm_i915_private *i915);
 void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
 void intel_dmc_ucode_resume(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 5e5e41644ddfd..aac4f5465c6a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -11,6 +11,17 @@
 #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
 #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
 
+#define _PIPEDMC_CONTROL_A		0x45250
+#define _PIPEDMC_CONTROL_B		0x45254
+#define PIPEDMC_CONTROL(pipe)		_MMIO_PIPE(pipe, \
+						   _PIPEDMC_CONTROL_A, \
+						   _PIPEDMC_CONTROL_B)
+#define  PIPEDMC_ENABLE			REG_BIT(0)
+
+#define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
+#define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
+
+
 #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
 #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 96395bfbd41df..52cdbd4fc2fa0 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -698,8 +698,10 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 
 		drm_crtc_vblank_reset(&crtc->base);
 
-		if (crtc_state->hw.active)
+		if (crtc_state->hw.active) {
+			intel_dmc_enable_pipe(i915, crtc->pipe);
 			intel_crtc_vblank_on(crtc_state);
+		}
 	}
 
 	intel_fbc_sanitize(i915);
-- 
2.37.1


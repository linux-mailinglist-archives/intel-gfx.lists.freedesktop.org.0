Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2BAA565D0
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 324C710EB5D;
	Fri,  7 Mar 2025 10:53:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEUp9KUF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F417510EB5D;
 Fri,  7 Mar 2025 10:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344782; x=1772880782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UzZODJcMF0F3R0AdBILaYwLWWeSwbRbv4NR6zE2TEpM=;
 b=BEUp9KUFB5yny3vIswm79WB/e5eHeYU7gPnxQuBCvbGL33ktsRidRw3Z
 oWyJ5IvcqWdx+fmcn06LbBxiQ7A8pcgW+3zwDyLulMkjBGDFMXrXrUvnz
 d0iFah+HNwoc4FvcJ7aBFg8bWRju1yg13M3PopZjCqIZv6MjSJym+XDj5
 235ejrX5xv/8MAT530Qhy/kd8CabIfeGmt8pk71KU7F7Sfmqu8QCdDzet
 4pLzqDc/R3+3qpd0FQGSIwIzT3NhGZh1u45LIds+/+3+DwRdwtfjCTkg8
 49Cu8zcn46n74a5Gt4VWsM21ECi3ypEfpwjMVUgDAwTfDhcTX0OnHFkKO w==;
X-CSE-ConnectionGUID: plIvvuleQI2+PChuQYnnxQ==
X-CSE-MsgGUID: PCUtpIJUSaeg/VVdH30pyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301659"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301659"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:53:02 -0800
X-CSE-ConnectionGUID: KbX3TEkpQv+yLRoYqE9ewA==
X-CSE-MsgGUID: IrkzrBYlRv2i6wJMyaRtGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481622"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:53:01 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 09/11] drm/i915/psr: Apply underrun on PSR idle workaround
Date: Fri,  7 Mar 2025 12:52:35 +0200
Message-ID: <20250307105237.2909849-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307105237.2909849-1-jouni.hogander@intel.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch is applying workaround for underrun on idle PSR HW issue
(Wa_16025596647) when PSR is getting enabled. It uses vblank enable/disable
status, DC5/6 enabled disabled and enabled pipes count information made
available.

This patch is also adding calls to dc5/dc6, vblank enable/disable and pipe
enable/disable notification functions as needed.
intel_psr_needs_block_dc_vblank is modified to get vblank enable/disable
notification on PSR capable system.

Bspec: 74151

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  |   9 +-
 .../i915/display/intel_display_power_well.c   |   4 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 101 +++++++++++-------
 5 files changed, 74 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f7cb38145e9d..109907d93cf8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6656,6 +6656,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 		intel_crtc_update_active_timings(pipe_crtc_state, false);
 	}
 
+	intel_psr_notify_pipe_change(state, crtc, true);
+
 	display->funcs.display->crtc_enable(state, crtc);
 
 	/* vblanks work again, re-enable pipe CRC. */
@@ -6775,6 +6777,8 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 					 intel_crtc_joined_pipe_mask(old_crtc_state))
 		intel_crtc_disable_pipe_crc(pipe_crtc);
 
+	intel_psr_notify_pipe_change(state, crtc, false);
+
 	display->funcs.display->crtc_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 31740a677dd8..b4c989bbac93 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -54,6 +54,7 @@
 #include "intel_plane_initial.h"
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
+#include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_vga.h"
 #include "intel_wm.h"
@@ -226,6 +227,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (ret)
 		goto cleanup_bios;
 
+	intel_psr_dc5_dc6_wa_init(display);
+
 	/* FIXME: completely on the wrong abstraction layer */
 	ret = intel_power_domains_init(display);
 	if (ret < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index aa23bb817805..62fbdcbb4a12 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1728,14 +1728,7 @@ static void intel_display_vblank_dc_work(struct work_struct *work)
 		container_of(work, typeof(*display), irq.vblank_dc_work);
 	int vblank_wa_num_pipes = READ_ONCE(display->irq.vblank_wa_num_pipes);
 
-	/*
-	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
-	 * code for DC3CO handling. DC3CO target state is currently disabled in
-	 * PSR code. If DC3CO is taken into use we need take that into account
-	 * here as well.
-	 */
-	intel_display_power_set_target_dc_state(display, vblank_wa_num_pipes ? DC_STATE_DISABLE :
-						DC_STATE_EN_UPTO_DC6);
+	intel_psr_notify_vblank_enable_disable(display, vblank_wa_num_pipes);
 }
 
 int bdw_enable_vblank(struct drm_crtc *_crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8ec87ffd87d2..510f97341893 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -24,6 +24,7 @@
 #include "intel_hotplug.h"
 #include "intel_pcode.h"
 #include "intel_pps.h"
+#include "intel_psr.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
 #include "skl_watermark.h"
@@ -762,6 +763,9 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 			     state & ~power_domains->allowed_dc_mask))
 		state &= power_domains->allowed_dc_mask;
 
+	if (!power_domains->initializing)
+		intel_psr_notify_dc5_dc6(display);
+
 	val = intel_de_read(display, DC_STATE_EN);
 	mask = gen9_dc_mask(display);
 	drm_dbg_kms(display->drm, "Setting DC state from %02x to %02x\n",
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index afb9faed7784..2782b84b0d12 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -908,6 +908,41 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	return idle_frames;
 }
 
+/* Wa_16025596647 */
+static void psr1_apply_underrun_on_idle_wa_locked(struct intel_dp *intel_dp,
+						  bool dc5_dc6_blocked)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	u32 val;
+
+	if (dc5_dc6_blocked)
+		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
+			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
+			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				       DMC_EVT_CTL_EVENT_ID_VBLANK_A);
+	else
+		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				     DMC_EVT_CTL_EVENT_ID_FALSE) |
+			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				       DMC_EVT_CTL_TYPE_EDGE_0_1);
+
+	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(intel_dp->psr.pipe),
+		       val);
+}
+
+static bool is_dc5_dc6_blocked(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	u32 current_dc_state = intel_display_power_get_current_dc_state(display);
+	struct drm_vblank_crtc *vblank = &display->drm->vblank[intel_dp->psr.pipe];
+
+	return (current_dc_state != DC_STATE_EN_UPTO_DC5 &&
+		current_dc_state != DC_STATE_EN_UPTO_DC6) ||
+		intel_dp->psr.active_non_psr_pipes ||
+		READ_ONCE(vblank->enabled);
+}
+
 static void hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -937,6 +972,12 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 	intel_de_rmw(display, psr_ctl_reg(display, cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
+
+	/* Wa_16025596647 */
+	if ((DISPLAY_VER(display) == 20 ||
+	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+	    is_dc5_dc6_blocked(intel_dp))
+		psr1_apply_underrun_on_idle_wa_locked(intel_dp, true);
 }
 
 static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
@@ -1019,8 +1060,16 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
+	u8 idle_frames;
 
-	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
+	/* Wa_16025596647 */
+	if ((DISPLAY_VER(display) == 20 ||
+	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+	    is_dc5_dc6_blocked(intel_dp))
+		idle_frames = 0;
+	else
+		idle_frames = psr_compute_idle_frames(intel_dp);
+	val |= EDP_PSR2_IDLE_FRAMES(idle_frames);
 
 	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
@@ -2101,6 +2150,8 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 
 		drm_WARN_ON(display->drm, !(val & EDP_PSR2_ENABLE));
 	} else {
+		psr1_apply_underrun_on_idle_wa_locked(intel_dp, false);
+
 		val = intel_de_rmw(display,
 				   psr_ctl_reg(display, cpu_transcoder),
 				   EDP_PSR_ENABLE, 0);
@@ -2312,6 +2363,7 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_encoder *encoder;
 
 	for_each_encoder_on_crtc(crtc->base.dev, &crtc->base, encoder) {
@@ -2322,8 +2374,15 @@ bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state)
 
 		intel_dp = enc_to_intel_dp(encoder);
 
-		if (intel_dp_is_edp(intel_dp) &&
-		    CAN_PANEL_REPLAY(intel_dp))
+		if (!intel_dp_is_edp(intel_dp))
+			continue;
+
+		if (CAN_PANEL_REPLAY(intel_dp))
+			return true;
+
+		if ((DISPLAY_VER(display) == 20 ||
+		     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+		    CAN_PSR(intel_dp))
 			return true;
 	}
 
@@ -3665,42 +3724,6 @@ void intel_psr_unlock(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-/* Wa_16025596647 */
-static void psr1_apply_underrun_on_idle_wa_locked(struct intel_dp *intel_dp,
-						  bool dc5_dc6_blocked)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	u32 val;
-
-	if (dc5_dc6_blocked)
-		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
-			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
-			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
-				       DMC_EVT_CTL_EVENT_ID_VBLANK_A);
-	else
-		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
-				     DMC_EVT_CTL_EVENT_ID_FALSE) |
-			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-				       DMC_EVT_CTL_TYPE_EDGE_0_1);
-
-	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(intel_dp->psr.pipe),
-		       val);
-}
-
-/* Wa_16025596647 */
-static bool is_dc5_dc6_blocked(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	u32 current_dc_state = intel_display_power_get_current_dc_state(display);
-	struct drm_vblank_crtc *vblank = &display->drm->vblank[intel_dp->psr.pipe];
-
-	return (current_dc_state != DC_STATE_EN_UPTO_DC5 &&
-		current_dc_state != DC_STATE_EN_UPTO_DC6) ||
-		intel_dp->psr.active_non_psr_pipes ||
-		READ_ONCE(vblank->enabled);
-}
-
 /* Wa_16025596647 */
 static void intel_psr_apply_underrun_on_idle_wa_locked(struct intel_dp *intel_dp)
 {
-- 
2.43.0


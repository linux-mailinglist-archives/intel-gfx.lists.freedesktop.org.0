Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF60965E6D
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FA910EA58;
	Fri, 30 Aug 2024 10:16:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXK+GV98";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09B610EA47;
 Fri, 30 Aug 2024 10:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725013004; x=1756549004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FitG0CF9CSJsAfmV/qDoi0rd0aTsyuhAQCzsRcRkLUo=;
 b=kXK+GV98gd2VCY7bCbeJ5CCmSpSxJ8Z/hGy6Uh73QSgICEU50vzdWzWr
 mCYq2VF2s0U0TmSpOdGgCGLLMTZJMzwA3ZML53hpiSfwTZXJe2VeaZZxa
 MUjAFhy8dVkhjfiOUcwlWWJ8W29LmTs7qsvAyxCl76pBh3NppdGatPLeC
 NrbKPj4NwxSdzeYJ8n4PeNxBZoKNBmFsVXtXGo/nGIr/uICNJZv2nSxDG
 2NmSvR8W2srReDUokCQFFEmvIiOaS16jtrRD8dEBa57XKiabYJX1KRkv0
 9QkF4dQri/jB6SMYMNPq6Ovgs1ENUXeNVzCBD6U1ZsxmhxHHQymcf0+2L A==;
X-CSE-ConnectionGUID: d1E1KYBwSfSkUUYlJXQ9uw==
X-CSE-MsgGUID: SzkD2tywSgyi/9f1rwUPZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="13295707"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="13295707"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:44 -0700
X-CSE-ConnectionGUID: HyCt+AH3Tqa0Ka+HOc58Aw==
X-CSE-MsgGUID: y6ZW4Dv3SJ2Vw8s8yK7dxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68516198"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/11] drm/i915/psr: convert intel_psr.[ch] to struct
 intel_display
Date: Fri, 30 Aug 2024 13:15:46 +0300
Message-Id: <4399b98b07019a8063adbec1043ff7eabb7c1080.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_psr.[ch] to struct intel_display.

Some stragglers are left behind where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 848 +++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
 4 files changed, 454 insertions(+), 411 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 74f527647aa9..f5f618199d39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1071,7 +1071,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_fbc_debugfs_register(display);
 	intel_hpd_debugfs_register(i915);
 	intel_opregion_debugfs_register(display);
-	intel_psr_debugfs_register(i915);
+	intel_psr_debugfs_register(display);
 	intel_wm_debugfs_register(i915);
 	intel_display_debugfs_params(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 4923c340a0b6..af4576dee92a 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -83,6 +83,8 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 			      unsigned int frontbuffer_bits,
 			      enum fb_op_origin origin)
 {
+	struct intel_display *display = &i915->display;
+
 	/* Delay flushing when rings are still busy.*/
 	spin_lock(&i915->display.fb_tracking.lock);
 	frontbuffer_bits &= ~i915->display.fb_tracking.busy_bits;
@@ -96,7 +98,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	might_sleep();
 	intel_td_flush(i915);
 	intel_drrs_flush(i915, frontbuffer_bits);
-	intel_psr_flush(i915, frontbuffer_bits, origin);
+	intel_psr_flush(display, frontbuffer_bits, origin);
 	intel_fbc_flush(i915, frontbuffer_bits, origin);
 }
 
@@ -172,6 +174,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 			   unsigned int frontbuffer_bits)
 {
 	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
+	struct intel_display *display = &i915->display;
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->display.fb_tracking.lock);
@@ -183,7 +186,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 	trace_intel_frontbuffer_invalidate(i915, frontbuffer_bits, origin);
 
 	might_sleep();
-	intel_psr_invalidate(i915, frontbuffer_bits, origin);
+	intel_psr_invalidate(display, frontbuffer_bits, origin);
 	intel_drrs_invalidate(i915, frontbuffer_bits);
 	intel_fbc_invalidate(i915, frontbuffer_bits, origin);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 257526362b39..1f83b3b67ea6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -205,14 +205,14 @@ bool intel_encoder_can_psr(struct intel_encoder *encoder)
 
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DEFAULT:
-		if (i915->display.params.enable_psr == -1)
+		if (display->params.enable_psr == -1)
 			return connector->panel.vbt.psr.enable;
-		return i915->display.params.enable_psr;
+		return display->params.enable_psr;
 	case I915_PSR_DEBUG_DISABLE:
 		return false;
 	default:
@@ -222,14 +222,14 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
 
 static bool psr2_global_enabled(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DISABLE:
 	case I915_PSR_DEBUG_FORCE_PSR1:
 		return false;
 	default:
-		if (i915->display.params.enable_psr == 1)
+		if (display->params.enable_psr == 1)
 			return false;
 		return true;
 	}
@@ -237,9 +237,9 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 
 static bool psr2_su_region_et_global_enabled(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (i915->display.params.enable_psr != -1)
+	if (display->params.enable_psr != -1)
 		return false;
 
 	return true;
@@ -247,9 +247,9 @@ static bool psr2_su_region_et_global_enabled(struct intel_dp *intel_dp)
 
 static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	if ((i915->display.params.enable_psr != -1) ||
+	if ((display->params.enable_psr != -1) ||
 	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
 		return false;
 	return true;
@@ -257,111 +257,111 @@ static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 
 static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_ERROR :
+	return DISPLAY_VER(display) >= 12 ? TGL_PSR_ERROR :
 		EDP_PSR_ERROR(intel_dp->psr.transcoder);
 }
 
 static u32 psr_irq_post_exit_bit_get(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_POST_EXIT :
+	return DISPLAY_VER(display) >= 12 ? TGL_PSR_POST_EXIT :
 		EDP_PSR_POST_EXIT(intel_dp->psr.transcoder);
 }
 
 static u32 psr_irq_pre_entry_bit_get(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_PRE_ENTRY :
+	return DISPLAY_VER(display) >= 12 ? TGL_PSR_PRE_ENTRY :
 		EDP_PSR_PRE_ENTRY(intel_dp->psr.transcoder);
 }
 
 static u32 psr_irq_mask_get(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_MASK :
+	return DISPLAY_VER(display) >= 12 ? TGL_PSR_MASK :
 		EDP_PSR_MASK(intel_dp->psr.transcoder);
 }
 
-static i915_reg_t psr_ctl_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_ctl_reg(struct intel_display *display,
 			      enum transcoder cpu_transcoder)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_CTL(dev_priv, cpu_transcoder);
+	if (DISPLAY_VER(display) >= 8)
+		return EDP_PSR_CTL(display, cpu_transcoder);
 	else
 		return HSW_SRD_CTL;
 }
 
-static i915_reg_t psr_debug_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_debug_reg(struct intel_display *display,
 				enum transcoder cpu_transcoder)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_DEBUG(dev_priv, cpu_transcoder);
+	if (DISPLAY_VER(display) >= 8)
+		return EDP_PSR_DEBUG(display, cpu_transcoder);
 	else
 		return HSW_SRD_DEBUG;
 }
 
-static i915_reg_t psr_perf_cnt_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_perf_cnt_reg(struct intel_display *display,
 				   enum transcoder cpu_transcoder)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_PERF_CNT(dev_priv, cpu_transcoder);
+	if (DISPLAY_VER(display) >= 8)
+		return EDP_PSR_PERF_CNT(display, cpu_transcoder);
 	else
 		return HSW_SRD_PERF_CNT;
 }
 
-static i915_reg_t psr_status_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_status_reg(struct intel_display *display,
 				 enum transcoder cpu_transcoder)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_STATUS(dev_priv, cpu_transcoder);
+	if (DISPLAY_VER(display) >= 8)
+		return EDP_PSR_STATUS(display, cpu_transcoder);
 	else
 		return HSW_SRD_STATUS;
 }
 
-static i915_reg_t psr_imr_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_imr_reg(struct intel_display *display,
 			      enum transcoder cpu_transcoder)
 {
-	if (DISPLAY_VER(dev_priv) >= 12)
-		return TRANS_PSR_IMR(dev_priv, cpu_transcoder);
+	if (DISPLAY_VER(display) >= 12)
+		return TRANS_PSR_IMR(display, cpu_transcoder);
 	else
 		return EDP_PSR_IMR;
 }
 
-static i915_reg_t psr_iir_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_iir_reg(struct intel_display *display,
 			      enum transcoder cpu_transcoder)
 {
-	if (DISPLAY_VER(dev_priv) >= 12)
-		return TRANS_PSR_IIR(dev_priv, cpu_transcoder);
+	if (DISPLAY_VER(display) >= 12)
+		return TRANS_PSR_IIR(display, cpu_transcoder);
 	else
 		return EDP_PSR_IIR;
 }
 
-static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_aux_ctl_reg(struct intel_display *display,
 				  enum transcoder cpu_transcoder)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_AUX_CTL(dev_priv, cpu_transcoder);
+	if (DISPLAY_VER(display) >= 8)
+		return EDP_PSR_AUX_CTL(display, cpu_transcoder);
 	else
 		return HSW_SRD_AUX_CTL;
 }
 
-static i915_reg_t psr_aux_data_reg(struct drm_i915_private *dev_priv,
+static i915_reg_t psr_aux_data_reg(struct intel_display *display,
 				   enum transcoder cpu_transcoder, int i)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_AUX_DATA(dev_priv, cpu_transcoder, i);
+	if (DISPLAY_VER(display) >= 8)
+		return EDP_PSR_AUX_DATA(display, cpu_transcoder, i);
 	else
 		return HSW_SRD_AUX_DATA(i);
 }
 
 static void psr_irq_control(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask;
 
@@ -373,80 +373,81 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 		mask |= psr_irq_post_exit_bit_get(intel_dp) |
 			psr_irq_pre_entry_bit_get(intel_dp);
 
-	intel_de_rmw(dev_priv, psr_imr_reg(dev_priv, cpu_transcoder),
+	intel_de_rmw(display, psr_imr_reg(display, cpu_transcoder),
 		     psr_irq_mask_get(intel_dp), ~mask);
 }
 
-static void psr_event_print(struct drm_i915_private *i915,
+static void psr_event_print(struct intel_display *display,
 			    u32 val, bool sel_update_enabled)
 {
-	drm_dbg_kms(&i915->drm, "PSR exit events: 0x%x\n", val);
+	drm_dbg_kms(display->drm, "PSR exit events: 0x%x\n", val);
 	if (val & PSR_EVENT_PSR2_WD_TIMER_EXPIRE)
-		drm_dbg_kms(&i915->drm, "\tPSR2 watchdog timer expired\n");
+		drm_dbg_kms(display->drm, "\tPSR2 watchdog timer expired\n");
 	if ((val & PSR_EVENT_PSR2_DISABLED) && sel_update_enabled)
-		drm_dbg_kms(&i915->drm, "\tPSR2 disabled\n");
+		drm_dbg_kms(display->drm, "\tPSR2 disabled\n");
 	if (val & PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN)
-		drm_dbg_kms(&i915->drm, "\tSU dirty FIFO underrun\n");
+		drm_dbg_kms(display->drm, "\tSU dirty FIFO underrun\n");
 	if (val & PSR_EVENT_SU_CRC_FIFO_UNDERRUN)
-		drm_dbg_kms(&i915->drm, "\tSU CRC FIFO underrun\n");
+		drm_dbg_kms(display->drm, "\tSU CRC FIFO underrun\n");
 	if (val & PSR_EVENT_GRAPHICS_RESET)
-		drm_dbg_kms(&i915->drm, "\tGraphics reset\n");
+		drm_dbg_kms(display->drm, "\tGraphics reset\n");
 	if (val & PSR_EVENT_PCH_INTERRUPT)
-		drm_dbg_kms(&i915->drm, "\tPCH interrupt\n");
+		drm_dbg_kms(display->drm, "\tPCH interrupt\n");
 	if (val & PSR_EVENT_MEMORY_UP)
-		drm_dbg_kms(&i915->drm, "\tMemory up\n");
+		drm_dbg_kms(display->drm, "\tMemory up\n");
 	if (val & PSR_EVENT_FRONT_BUFFER_MODIFY)
-		drm_dbg_kms(&i915->drm, "\tFront buffer modification\n");
+		drm_dbg_kms(display->drm, "\tFront buffer modification\n");
 	if (val & PSR_EVENT_WD_TIMER_EXPIRE)
-		drm_dbg_kms(&i915->drm, "\tPSR watchdog timer expired\n");
+		drm_dbg_kms(display->drm, "\tPSR watchdog timer expired\n");
 	if (val & PSR_EVENT_PIPE_REGISTERS_UPDATE)
-		drm_dbg_kms(&i915->drm, "\tPIPE registers updated\n");
+		drm_dbg_kms(display->drm, "\tPIPE registers updated\n");
 	if (val & PSR_EVENT_REGISTER_UPDATE)
-		drm_dbg_kms(&i915->drm, "\tRegister updated\n");
+		drm_dbg_kms(display->drm, "\tRegister updated\n");
 	if (val & PSR_EVENT_HDCP_ENABLE)
-		drm_dbg_kms(&i915->drm, "\tHDCP enabled\n");
+		drm_dbg_kms(display->drm, "\tHDCP enabled\n");
 	if (val & PSR_EVENT_KVMR_SESSION_ENABLE)
-		drm_dbg_kms(&i915->drm, "\tKVMR session enabled\n");
+		drm_dbg_kms(display->drm, "\tKVMR session enabled\n");
 	if (val & PSR_EVENT_VBI_ENABLE)
-		drm_dbg_kms(&i915->drm, "\tVBI enabled\n");
+		drm_dbg_kms(display->drm, "\tVBI enabled\n");
 	if (val & PSR_EVENT_LPSP_MODE_EXIT)
-		drm_dbg_kms(&i915->drm, "\tLPSP mode exited\n");
+		drm_dbg_kms(display->drm, "\tLPSP mode exited\n");
 	if ((val & PSR_EVENT_PSR_DISABLE) && !sel_update_enabled)
-		drm_dbg_kms(&i915->drm, "\tPSR disabled\n");
+		drm_dbg_kms(display->drm, "\tPSR disabled\n");
 }
 
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	ktime_t time_ns =  ktime_get();
 
 	if (psr_iir & psr_irq_pre_entry_bit_get(intel_dp)) {
 		intel_dp->psr.last_entry_attempt = time_ns;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[transcoder %s] PSR entry attempt in 2 vblanks\n",
 			    transcoder_name(cpu_transcoder));
 	}
 
 	if (psr_iir & psr_irq_post_exit_bit_get(intel_dp)) {
 		intel_dp->psr.last_exit = time_ns;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[transcoder %s] PSR exit completed\n",
 			    transcoder_name(cpu_transcoder));
 
-		if (DISPLAY_VER(dev_priv) >= 9) {
+		if (DISPLAY_VER(display) >= 9) {
 			u32 val;
 
 			val = intel_de_rmw(dev_priv,
 					   PSR_EVENT(dev_priv, cpu_transcoder),
 					   0, 0);
 
-			psr_event_print(dev_priv, val, intel_dp->psr.sel_update_enabled);
+			psr_event_print(display, val, intel_dp->psr.sel_update_enabled);
 		}
 	}
 
 	if (psr_iir & psr_irq_psr_error_bit_get(intel_dp)) {
-		drm_warn(&dev_priv->drm, "[transcoder %s] PSR aux error\n",
+		drm_warn(display->drm, "[transcoder %s] PSR aux error\n",
 			 transcoder_name(cpu_transcoder));
 
 		intel_dp->psr.irq_aux_error = true;
@@ -459,7 +460,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		 * again so we don't care about unmask the interruption
 		 * or unset irq_aux_error.
 		 */
-		intel_de_rmw(dev_priv, psr_imr_reg(dev_priv, cpu_transcoder),
+		intel_de_rmw(display, psr_imr_reg(display, cpu_transcoder),
 			     0, psr_irq_psr_error_bit_get(intel_dp));
 
 		queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
@@ -468,14 +469,14 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 
 static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val = 8; /* assume the worst if we can't read the value */
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_SYNCHRONIZATION_LATENCY_IN_SINK, &val) == 1)
 		val &= DP_MAX_RESYNC_FRAME_COUNT_MASK;
 	else
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Unable to get sink synchronization latency, assuming 8 frames\n");
 	return val;
 }
@@ -516,7 +517,7 @@ intel_dp_get_su_y_granularity_offset(struct intel_dp *intel_dp)
  */
 static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	ssize_t r;
 	u16 w;
 	u8 y;
@@ -542,7 +543,7 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 			     intel_dp_get_su_x_granularity_offset(intel_dp),
 			     &w, 2);
 	if (r != 2)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Unable to read selective update x granularity\n");
 	/*
 	 * Spec says that if the value read is 0 the default granularity should
@@ -555,7 +556,7 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 			     intel_dp_get_su_y_granularity_offset(intel_dp),
 			     &y, 1);
 	if (r != 1) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Unable to read selective update y granularity\n");
 		y = 4;
 	}
@@ -569,17 +570,17 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 
 static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (intel_dp_is_edp(intel_dp)) {
 		if (!intel_alpm_aux_less_wake_supported(intel_dp)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
 			return;
 		}
 
 		if (!(intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
 			return;
 		}
@@ -590,7 +591,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Panel replay %sis supported by panel\n",
 		    intel_dp->psr.sink_panel_replay_su_support ?
 		    "selective_update " : "");
@@ -598,20 +599,19 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 =
-		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "eDP panel supports PSR version %x\n",
+	drm_dbg_kms(display->drm, "eDP panel supports PSR version %x\n",
 		    intel_dp->psr_dpcd[0]);
 
 	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_PSR)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR support not currently available for this panel\n");
 		return;
 	}
 
 	if (!(intel_dp->edp_dpcd[1] & DP_EDP_SET_POWER_CAP)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Panel lacks power state control, PSR cannot be enabled\n");
 		return;
 	}
@@ -620,7 +620,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp->psr.sink_sync_latency =
 		intel_dp_get_sink_sync_latency(intel_dp);
 
-	if (DISPLAY_VER(i915) >= 9 &&
+	if (DISPLAY_VER(display) >= 9 &&
 	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
@@ -638,7 +638,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		 */
 		intel_dp->psr.sink_psr2_support = y_req &&
 			intel_alpm_aux_wake_supported(intel_dp);
-		drm_dbg_kms(&i915->drm, "PSR2 %ssupported\n",
+		drm_dbg_kms(display->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
 	}
 }
@@ -663,7 +663,8 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 
 static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 aux_clock_divider, aux_ctl;
 	/* write DP_SET_POWER=D0 */
@@ -679,7 +680,7 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 	BUILD_BUG_ON(sizeof(aux_msg) > 20);
 	for (i = 0; i < sizeof(aux_msg); i += 4)
 		intel_de_write(dev_priv,
-			       psr_aux_data_reg(dev_priv, cpu_transcoder, i >> 2),
+			       psr_aux_data_reg(display, cpu_transcoder, i >> 2),
 			       intel_dp_aux_pack(&aux_msg[i], sizeof(aux_msg) - i));
 
 	aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, 0);
@@ -694,15 +695,15 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 		EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK |
 		EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK;
 
-	intel_de_write(dev_priv, psr_aux_ctl_reg(dev_priv, cpu_transcoder),
+	intel_de_write(display, psr_aux_ctl_reg(display, cpu_transcoder),
 		       aux_ctl);
 }
 
 static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (DISPLAY_VER(i915) < 20 || !intel_dp_is_edp(intel_dp) ||
+	if (DISPLAY_VER(display) < 20 || !intel_dp_is_edp(intel_dp) ||
 	    intel_dp->psr.debug & I915_PSR_DEBUG_SU_REGION_ET_DISABLE)
 		return false;
 
@@ -741,7 +742,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 static void _psr_enable_sink(struct intel_dp *intel_dp,
 			     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val = DP_PSR_ENABLE;
 
 	if (crtc_state->has_sel_update) {
@@ -750,7 +751,7 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
 		if (intel_dp->psr.link_standby)
 			val |= DP_PSR_MAIN_LINK_ACTIVE;
 
-		if (DISPLAY_VER(i915) >= 8)
+		if (DISPLAY_VER(display) >= 8)
 			val |= DP_PSR_CRC_VERIFICATION;
 	}
 
@@ -802,14 +803,15 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 
 static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val = 0;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		val |= EDP_PSR_TP4_TIME_0us;
 
-	if (dev_priv->display.params.psr_safest_params) {
+	if (display->params.psr_safest_params) {
 		val |= EDP_PSR_TP1_TIME_2500us;
 		val |= EDP_PSR_TP2_TP3_TIME_2500us;
 		goto check_tp3_sel;
@@ -854,8 +856,8 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 
 static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	int idle_frames;
 
 	/* Let's use 6 as the minimum to cover all known cases including the
@@ -864,7 +866,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	idle_frames = max(6, connector->panel.vbt.psr.idle_frames);
 	idle_frames = max(idle_frames, intel_dp->psr.sink_sync_latency + 1);
 
-	if (drm_WARN_ON(&dev_priv->drm, idle_frames > 0xf))
+	if (drm_WARN_ON(display->drm, idle_frames > 0xf))
 		idle_frames = 0xf;
 
 	return idle_frames;
@@ -872,14 +874,15 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 
 static void hsw_activate_psr1(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 max_sleep_time = 0x1f;
 	u32 val = EDP_PSR_ENABLE;
 
 	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	if (DISPLAY_VER(dev_priv) < 20)
+	if (DISPLAY_VER(display) < 20)
 		val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
 
 	if (IS_HASWELL(dev_priv))
@@ -890,23 +893,23 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 	val |= intel_psr1_get_tp_time(intel_dp);
 
-	if (DISPLAY_VER(dev_priv) >= 8)
+	if (DISPLAY_VER(display) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		val |= LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
 
-	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
+	intel_de_rmw(display, psr_ctl_reg(display, cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
 
 static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 val = 0;
 
-	if (dev_priv->display.params.psr_safest_params)
+	if (display->params.psr_safest_params)
 		return EDP_PSR2_TP2_TIME_2500us;
 
 	if (connector->panel.vbt.psr.psr2_tp2_tp3_wakeup_time_us >= 0 &&
@@ -950,7 +953,7 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
@@ -961,38 +964,39 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 		if (intel_dp->psr.req_psr2_sdp_prior_scanline)
 			val |= EDP_PSR2_SU_SDP_SCANLINE;
 
-		intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder),
+		intel_de_write(display, EDP_PSR2_CTL(display, cpu_transcoder),
 			       val);
 	}
 
-	intel_de_rmw(dev_priv,
-		     PSR2_MAN_TRK_CTL(dev_priv, intel_dp->psr.transcoder),
+	intel_de_rmw(display,
+		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
 		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
 
-	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
+	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
 		     TRANS_DP2_PANEL_REPLAY_ENABLE);
 }
 
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
 
 	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
+	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
 
-	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) < 13)
+	if (DISPLAY_VER(display) >= 10 && DISPLAY_VER(display) < 13)
 		val |= EDP_Y_COORDINATE_ENABLE;
 
 	val |= EDP_PSR2_FRAME_BEFORE_SU(frames_before_su_entry(intel_dp));
 
 	val |= intel_psr2_get_tp_time(intel_dp);
 
-	if (DISPLAY_VER(dev_priv) >= 12 && DISPLAY_VER(dev_priv) < 20) {
+	if (DISPLAY_VER(display) >= 12 && DISPLAY_VER(display) < 20) {
 		if (psr2_block_count(intel_dp) > 2)
 			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
 		else
@@ -1000,7 +1004,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	}
 
 	/* Wa_22012278275:adl-p */
-	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_E0)) {
 		static const u8 map[] = {
 			2, /* 5 lines */
 			1, /* 6 lines */
@@ -1023,12 +1027,12 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 
 		tmp = map[intel_dp->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
-	} else if (DISPLAY_VER(dev_priv) >= 20) {
+	} else if (DISPLAY_VER(display) >= 20) {
 		val |= LNL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
 		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->alpm_parameters.fast_wake_lines);
-	} else if (DISPLAY_VER(dev_priv) >= 9) {
+	} else if (DISPLAY_VER(display) >= 9) {
 		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
 		val |= EDP_PSR2_FAST_WAKE(intel_dp->alpm_parameters.fast_wake_lines);
 	}
@@ -1036,18 +1040,18 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
 		val |= EDP_PSR2_SU_SDP_SCANLINE;
 
-	if (DISPLAY_VER(dev_priv) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		psr_val |= LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 tmp;
 
-		tmp = intel_de_read(dev_priv,
-				    PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder));
-		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
-	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
-		intel_de_write(dev_priv,
-			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder), 0);
+		tmp = intel_de_read(display,
+				    PSR2_MAN_TRK_CTL(display, cpu_transcoder));
+		drm_WARN_ON(display->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
+	} else if (HAS_PSR2_SEL_FETCH(display)) {
+		intel_de_write(display,
+			       PSR2_MAN_TRK_CTL(display, cpu_transcoder), 0);
 	}
 
 	if (intel_dp->psr.su_region_et_enabled)
@@ -1057,19 +1061,21 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
 	 * recommending keep this bit unset while PSR2 is enabled.
 	 */
-	intel_de_write(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder), psr_val);
+	intel_de_write(display, psr_ctl_reg(display, cpu_transcoder), psr_val);
 
-	intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder), val);
+	intel_de_write(display, EDP_PSR2_CTL(display, cpu_transcoder), val);
 }
 
 static bool
-transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder cpu_transcoder)
+transcoder_has_psr2(struct intel_display *display, enum transcoder cpu_transcoder)
 {
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14)
 		return cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B;
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		return cpu_transcoder == TRANSCODER_A;
-	else if (DISPLAY_VER(dev_priv) >= 9)
+	else if (DISPLAY_VER(display) >= 9)
 		return cpu_transcoder == TRANSCODER_EDP;
 	else
 		return false;
@@ -1087,17 +1093,18 @@ static u32 intel_get_frame_time_us(const struct intel_crtc_state *crtc_state)
 static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 				     u32 idle_frames)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	intel_de_rmw(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder),
+	intel_de_rmw(display, EDP_PSR2_CTL(display, cpu_transcoder),
 		     EDP_PSR2_IDLE_FRAMES_MASK,
 		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
 
 static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	psr2_program_idle_frames(intel_dp, 0);
 	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_DC3CO);
@@ -1105,7 +1112,8 @@ static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
 
 static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 	psr2_program_idle_frames(intel_dp, psr_compute_idle_frames(intel_dp));
@@ -1140,12 +1148,13 @@ static bool
 dc3co_is_pipe_port_compatible(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum port port = dig_port->base.port;
 
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
+	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14)
 		return pipe <= PIPE_B && port <= PORT_B;
 	else
 		return pipe == PIPE_A && port == PORT_A;
@@ -1155,9 +1164,10 @@ static void
 tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	u32 exit_scanlines;
 
 	/*
@@ -1181,7 +1191,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 		return;
 
 	/* Wa_16011303918:adl-p */
-	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
 		return;
 
 	/*
@@ -1191,7 +1201,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 	exit_scanlines =
 		intel_usecs_to_scanlines(&crtc_state->uapi.adjusted_mode, 200) + 1;
 
-	if (drm_WARN_ON(&dev_priv->drm, exit_scanlines > crtc_vdisplay))
+	if (drm_WARN_ON(display->drm, exit_scanlines > crtc_vdisplay))
 		return;
 
 	crtc_state->dc3co_exitline = crtc_vdisplay - exit_scanlines;
@@ -1200,17 +1210,17 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
 static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (!dev_priv->display.params.enable_psr2_sel_fetch &&
+	if (!display->params.enable_psr2_sel_fetch &&
 	    intel_dp->psr.debug != I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR2 sel fetch not enabled, disabled by parameter\n");
 		return false;
 	}
 
 	if (crtc_state->uapi.async_flip) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR2 sel fetch not enabled, async flip enabled\n");
 		return false;
 	}
@@ -1221,7 +1231,8 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 static bool psr2_granularity_check(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	const int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	const int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
@@ -1243,7 +1254,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 	 * For other platforms with SW tracking we can adjust the y coordinates
 	 * to match sink requirement if multiple of 4.
 	 */
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
+	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14)
 		y_granularity = intel_dp->psr.su_y_granularity;
 	else if (intel_dp->psr.su_y_granularity <= 2)
 		y_granularity = 4;
@@ -1264,8 +1275,8 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_dp,
 							struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->uapi.adjusted_mode;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 hblank_total, hblank_ns, req_ns;
 
 	hblank_total = adjusted_mode->crtc_hblank_end - adjusted_mode->crtc_hblank_start;
@@ -1278,7 +1289,7 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 		return true;
 
 	/* Not supported <13 / Wa_22012279113:adl-p */
-	if (DISPLAY_VER(dev_priv) < 14 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
+	if (DISPLAY_VER(display) < 14 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
 		return false;
 
 	crtc_state->req_psr2_sdp_prior_scanline = true;
@@ -1288,12 +1299,12 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 					const struct drm_display_mode *adjusted_mode)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
 	int entry_setup_frames = 0;
 
 	if (psr_setup_time < 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
 			    intel_dp->psr_dpcd[1]);
 		return -ETIME;
@@ -1301,14 +1312,14 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 
 	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
 	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
-		if (DISPLAY_VER(i915) >= 20) {
+		if (DISPLAY_VER(display) >= 20) {
 			/* setup entry frames can be up to 3 frames */
 			entry_setup_frames = 1;
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "PSR setup entry frames %d\n",
 				    entry_setup_frames);
 		} else {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "PSR condition failed: PSR setup time (%d us) too long\n",
 				    psr_setup_time);
 			return -ETIME;
@@ -1322,7 +1333,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
 				       bool aux_less)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
 	int wake_lines;
@@ -1330,7 +1341,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 	if (aux_less)
 		wake_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
 	else
-		wake_lines = DISPLAY_VER(i915) < 20 ?
+		wake_lines = DISPLAY_VER(display) < 20 ?
 			psr2_block_count_lines(intel_dp) :
 			intel_dp->alpm_parameters.io_wake_lines;
 
@@ -1348,16 +1359,16 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state,
 			      bool aux_less)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (!intel_alpm_compute_params(intel_dp, crtc_state)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR2/Panel Replay  not enabled, Unable to use long enough wake times\n");
 		return false;
 	}
 
 	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state, aux_less)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR2/Panel Replay not enabled, too short vblank time\n");
 		return false;
 	}
@@ -1368,7 +1379,8 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 	int psr_max_h = 0, psr_max_v = 0, max_bpp = 0;
@@ -1378,24 +1390,26 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	/* JSL and EHL only supports eDP 1.3 */
 	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 not supported by phy\n");
+		drm_dbg_kms(display->drm, "PSR2 not supported by phy\n");
 		return false;
 	}
 
 	/* Wa_16011181250 */
 	if (IS_ROCKETLAKE(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
 	    IS_DG2(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 is defeatured for this platform\n");
+		drm_dbg_kms(display->drm,
+			    "PSR2 is defeatured for this platform\n");
 		return false;
 	}
 
-	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
+	if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
+		drm_dbg_kms(display->drm,
+			    "PSR2 not completely functional in this stepping\n");
 		return false;
 	}
 
-	if (!transcoder_has_psr2(dev_priv, crtc_state->cpu_transcoder)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (!transcoder_has_psr2(display, crtc_state->cpu_transcoder)) {
+		drm_dbg_kms(display->drm,
 			    "PSR2 not supported in transcoder %s\n",
 			    transcoder_name(crtc_state->cpu_transcoder));
 		return false;
@@ -1407,28 +1421,28 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	 * over PSR2.
 	 */
 	if (crtc_state->dsc.compression_enable &&
-	    (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))) {
-		drm_dbg_kms(&dev_priv->drm,
+	    (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))) {
+		drm_dbg_kms(display->drm,
 			    "PSR2 cannot be enabled since DSC is enabled\n");
 		return false;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		psr_max_h = 5120;
 		psr_max_v = 3200;
 		max_bpp = 30;
-	} else if (DISPLAY_VER(dev_priv) >= 10) {
+	} else if (DISPLAY_VER(display) >= 10) {
 		psr_max_h = 4096;
 		psr_max_v = 2304;
 		max_bpp = 24;
-	} else if (DISPLAY_VER(dev_priv) == 9) {
+	} else if (DISPLAY_VER(display) == 9) {
 		psr_max_h = 3640;
 		psr_max_v = 2304;
 		max_bpp = 24;
 	}
 
 	if (crtc_state->pipe_bpp > max_bpp) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR2 not enabled, pipe bpp %d > max supported %d\n",
 			    crtc_state->pipe_bpp, max_bpp);
 		return false;
@@ -1436,8 +1450,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	/* Wa_16011303918:adl-p */
 	if (crtc_state->vrr.enable &&
-	    IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
-		drm_dbg_kms(&dev_priv->drm,
+	    IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
+		drm_dbg_kms(display->drm,
 			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
 		return false;
 	}
@@ -1447,7 +1461,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	if (!crtc_state->enable_psr2_sel_fetch &&
 	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR2 not enabled, resolution %dx%d > max supported %dx%d\n",
 			    crtc_hdisplay, crtc_vdisplay,
 			    psr_max_h, psr_max_v);
@@ -1462,18 +1476,19 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 					  struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (HAS_PSR2_SEL_FETCH(dev_priv) &&
+	if (HAS_PSR2_SEL_FETCH(display) &&
 	    !intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
-	    !HAS_PSR_HW_TRACKING(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm,
+	    !HAS_PSR_HW_TRACKING(display)) {
+		drm_dbg_kms(display->drm,
 			    "Selective update not enabled, selective fetch not valid and no HW tracking available\n");
 		goto unsupported;
 	}
 
 	if (!psr2_global_enabled(intel_dp)) {
-		drm_dbg_kms(&dev_priv->drm, "Selective update disabled by flag\n");
+		drm_dbg_kms(display->drm,
+			    "Selective update disabled by flag\n");
 		goto unsupported;
 	}
 
@@ -1481,23 +1496,23 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 
 	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Selective update not enabled, SDP indication do not fit in hblank\n");
 		goto unsupported;
 	}
 
-	if (crtc_state->has_panel_replay && (DISPLAY_VER(dev_priv) < 14 ||
+	if (crtc_state->has_panel_replay && (DISPLAY_VER(display) < 14 ||
 					     !intel_dp->psr.sink_panel_replay_su_support))
 		goto unsupported;
 
 	if (crtc_state->crc_enabled) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Selective update not enabled because it would inhibit pipe CRC calculation\n");
 		goto unsupported;
 	}
 
 	if (!psr2_granularity_check(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Selective update not enabled, SU granularity not compatible\n");
 		goto unsupported;
 	}
@@ -1515,7 +1530,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 static bool _psr_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int entry_setup_frames;
 
@@ -1534,7 +1549,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (entry_setup_frames >= 0) {
 		intel_dp->psr.entry_setup_frames = entry_setup_frames;
 	} else {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR condition failed: PSR setup timing not met\n");
 		return false;
 	}
@@ -1547,7 +1562,7 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
@@ -1556,7 +1571,7 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 
 	if (!panel_replay_global_enabled(intel_dp)) {
-		drm_dbg_kms(&i915->drm, "Panel Replay disabled by flag\n");
+		drm_dbg_kms(display->drm, "Panel Replay disabled by flag\n");
 		return false;
 	}
 
@@ -1567,7 +1582,7 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 
 	/* 128b/132b Panel Replay is not supported on eDP */
 	if (intel_dp_is_uhbr(crtc_state)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Panel Replay is not supported with 128b/132b\n");
 		return false;
 	}
@@ -1578,7 +1593,7 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	    (conn_state->content_protection ==
 	     DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
 	     DRM_MODE_CONTENT_PROTECTION_UNDESIRED)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Panel Replay is not supported with HDCP\n");
 		return false;
 	}
@@ -1587,7 +1602,7 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 
 	if (crtc_state->crc_enabled) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Panel Replay not enabled because it would inhibit pipe CRC calculation\n");
 		return false;
 	}
@@ -1599,22 +1614,22 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (!psr_global_enabled(intel_dp)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR disabled by flag\n");
+		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
 		return;
 	}
 
 	if (intel_dp->psr.sink_not_reliable) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR sink implementation is not reliable\n");
 		return;
 	}
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR condition failed: Interlaced mode enabled\n");
 		return;
 	}
@@ -1625,7 +1640,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	 * PSR is a transcoder level feature.
 	 */
 	if (crtc_state->joiner_pipes) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR disabled due to joiner\n");
 		return;
 	}
@@ -1646,7 +1661,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 void intel_psr_get_config(struct intel_encoder *encoder,
 			  struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	struct intel_dp *intel_dp;
@@ -1679,18 +1694,18 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 	if (!intel_dp->psr.sel_update_enabled)
 		goto unlock;
 
-	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
-		val = intel_de_read(dev_priv,
-				    PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder));
+	if (HAS_PSR2_SEL_FETCH(display)) {
+		val = intel_de_read(display,
+				    PSR2_MAN_TRK_CTL(display, cpu_transcoder));
 		if (val & PSR2_MAN_TRK_CTL_ENABLE)
 			pipe_config->enable_psr2_sel_fetch = true;
 	}
 
 	pipe_config->enable_psr2_su_region_et = intel_dp->psr.su_region_et_enabled;
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		val = intel_de_read(dev_priv,
-				    TRANS_EXITLINE(dev_priv, cpu_transcoder));
+	if (DISPLAY_VER(display) >= 12) {
+		val = intel_de_read(display,
+				    TRANS_EXITLINE(display, cpu_transcoder));
 		pipe_config->dc3co_exitline = REG_FIELD_GET(EXITLINE_MASK, val);
 	}
 unlock:
@@ -1699,17 +1714,17 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 
 static void intel_psr_activate(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	drm_WARN_ON(&dev_priv->drm,
-		    transcoder_has_psr2(dev_priv, cpu_transcoder) &&
-		    intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder)) & EDP_PSR2_ENABLE);
+	drm_WARN_ON(display->drm,
+		    transcoder_has_psr2(display, cpu_transcoder) &&
+		    intel_de_read(display, EDP_PSR2_CTL(display, cpu_transcoder)) & EDP_PSR2_ENABLE);
 
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder)) & EDP_PSR_ENABLE);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, psr_ctl_reg(display, cpu_transcoder)) & EDP_PSR_ENABLE);
 
-	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.active);
+	drm_WARN_ON(display->drm, intel_dp->psr.active);
 
 	lockdep_assert_held(&intel_dp->psr.lock);
 
@@ -1748,30 +1763,31 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
 static void wm_optimization_wa(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	bool set_wa_bit = false;
 
 	/* Wa_14015648006 */
-	if (IS_DISPLAY_VER(dev_priv, 11, 14))
+	if (IS_DISPLAY_VER(display, 11, 14))
 		set_wa_bit |= crtc_state->wm_level_disabled;
 
 	/* Wa_16013835468 */
-	if (DISPLAY_VER(dev_priv) == 12)
+	if (DISPLAY_VER(display) == 12)
 		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
 			crtc_state->hw.adjusted_mode.crtc_vdisplay;
 
 	if (set_wa_bit)
-		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     0, wa_16013835468_bit_get(intel_dp));
 	else
-		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 }
 
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask = 0;
 
@@ -1779,7 +1795,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * Only HSW and BDW have PSR AUX registers that need to be setup.
 	 * SKL+ use hardcoded values PSR AUX transactions
 	 */
-	if (DISPLAY_VER(dev_priv) < 9)
+	if (DISPLAY_VER(display) < 9)
 		hsw_psr_setup_aux(intel_dp);
 
 	/*
@@ -1796,7 +1812,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * Panel Replay on DP: No bits are applicable
 	 * Panel Replay on eDP: All bits are applicable
 	 */
-	if (DISPLAY_VER(dev_priv) < 20 || intel_dp_is_edp(intel_dp))
+	if (DISPLAY_VER(display) < 20 || intel_dp_is_edp(intel_dp))
 		mask = EDP_PSR_DEBUG_MASK_HPD;
 
 	if (intel_dp_is_edp(intel_dp)) {
@@ -1810,17 +1826,17 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * As a workaround leave LPSP unmasked to prevent PSR entry
 		 * when external displays are active.
 		 */
-		if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL_ULT(dev_priv))
+		if (DISPLAY_VER(display) >= 8 || IS_HASWELL_ULT(dev_priv))
 			mask |= EDP_PSR_DEBUG_MASK_LPSP;
 
-		if (DISPLAY_VER(dev_priv) < 20)
+		if (DISPLAY_VER(display) < 20)
 			mask |= EDP_PSR_DEBUG_MASK_MAX_SLEEP;
 
 		/*
 		 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
 		 * registers in order to keep the CURSURFLIVE tricks working :(
 		 */
-		if (IS_DISPLAY_VER(dev_priv, 9, 10))
+		if (IS_DISPLAY_VER(display, 9, 10))
 			mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
 		/* allow PSR with sprite enabled */
@@ -1828,7 +1844,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			mask |= EDP_PSR_DEBUG_MASK_SPRITE_ENABLE;
 	}
 
-	intel_de_write(dev_priv, psr_debug_reg(dev_priv, cpu_transcoder), mask);
+	intel_de_write(display, psr_debug_reg(display, cpu_transcoder), mask);
 
 	psr_irq_control(intel_dp);
 
@@ -1837,13 +1853,13 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * transcoder, EXITLINE will need to be unset when disabling PSR
 	 */
 	if (intel_dp->psr.dc3co_exitline)
-		intel_de_rmw(dev_priv,
-			     TRANS_EXITLINE(dev_priv, cpu_transcoder),
+		intel_de_rmw(display,
+			     TRANS_EXITLINE(display, cpu_transcoder),
 			     EXITLINE_MASK,
 			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT | EXITLINE_ENABLE);
 
-	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
-		intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
+	if (HAS_PSR_HW_TRACKING(display) && HAS_PSR2_SEL_FETCH(display))
+		intel_de_rmw(display, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
@@ -1857,8 +1873,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	wm_optimization_wa(intel_dp, crtc_state);
 
 	if (intel_dp->psr.sel_update_enabled) {
-		if (DISPLAY_VER(dev_priv) == 9)
-			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
+		if (DISPLAY_VER(display) == 9)
+			intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder), 0,
 				     PSR2_VSC_ENABLE_PROG_HEADER |
 				     PSR2_ADD_VERTICAL_LINE_COUNT);
 
@@ -1868,27 +1884,27 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * cause issues if non-supported panels are used.
 		 */
 		if (!intel_dp->psr.panel_replay_enabled &&
-		    (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+		    (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 		     IS_ALDERLAKE_P(dev_priv)))
-			intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
+			intel_de_rmw(display, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
 				     0, ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (!intel_dp->psr.panel_replay_enabled &&
-		    IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
-			intel_de_rmw(dev_priv,
-				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
+		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
+			intel_de_rmw(display,
+				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
 				     0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
 		else if (IS_ALDERLAKE_P(dev_priv))
-			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
+			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 	}
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val;
 
@@ -1903,11 +1919,11 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	 * first time that PSR HW tries to activate so lets keep PSR disabled
 	 * to avoid any rendering problems.
 	 */
-	val = intel_de_read(dev_priv, psr_iir_reg(dev_priv, cpu_transcoder));
+	val = intel_de_read(display, psr_iir_reg(display, cpu_transcoder));
 	val &= psr_irq_psr_error_bit_get(intel_dp);
 	if (val) {
 		intel_dp->psr.sink_not_reliable = true;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR interruption error set, not enabling PSR\n");
 		return false;
 	}
@@ -1919,11 +1935,11 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 val;
 
-	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
+	drm_WARN_ON(display->drm, intel_dp->psr.enabled);
 
 	intel_dp->psr.sel_update_enabled = crtc_state->has_sel_update;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
@@ -1944,9 +1960,9 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		return;
 
 	if (intel_dp->psr.panel_replay_enabled) {
-		drm_dbg_kms(&dev_priv->drm, "Enabling Panel Replay\n");
+		drm_dbg_kms(display->drm, "Enabling Panel Replay\n");
 	} else {
-		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
+		drm_dbg_kms(display->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
 		/*
@@ -1968,68 +1984,71 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 static void intel_psr_exit(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val;
 
 	if (!intel_dp->psr.active) {
-		if (transcoder_has_psr2(dev_priv, cpu_transcoder)) {
-			val = intel_de_read(dev_priv,
-					    EDP_PSR2_CTL(dev_priv, cpu_transcoder));
-			drm_WARN_ON(&dev_priv->drm, val & EDP_PSR2_ENABLE);
+		if (transcoder_has_psr2(display, cpu_transcoder)) {
+			val = intel_de_read(display,
+					    EDP_PSR2_CTL(display, cpu_transcoder));
+			drm_WARN_ON(display->drm, val & EDP_PSR2_ENABLE);
 		}
 
-		val = intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder));
-		drm_WARN_ON(&dev_priv->drm, val & EDP_PSR_ENABLE);
+		val = intel_de_read(display,
+				    psr_ctl_reg(display, cpu_transcoder));
+		drm_WARN_ON(display->drm, val & EDP_PSR_ENABLE);
 
 		return;
 	}
 
 	if (intel_dp->psr.panel_replay_enabled) {
-		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
+		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
 	} else if (intel_dp->psr.sel_update_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
-		val = intel_de_rmw(dev_priv,
-				   EDP_PSR2_CTL(dev_priv, cpu_transcoder),
+		val = intel_de_rmw(display,
+				   EDP_PSR2_CTL(display, cpu_transcoder),
 				   EDP_PSR2_ENABLE, 0);
 
-		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR2_ENABLE));
+		drm_WARN_ON(display->drm, !(val & EDP_PSR2_ENABLE));
 	} else {
-		val = intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
+		val = intel_de_rmw(display,
+				   psr_ctl_reg(display, cpu_transcoder),
 				   EDP_PSR_ENABLE, 0);
 
-		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR_ENABLE));
+		drm_WARN_ON(display->drm, !(val & EDP_PSR_ENABLE));
 	}
 	intel_dp->psr.active = false;
 }
 
 static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	i915_reg_t psr_status;
 	u32 psr_status_mask;
 
 	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
 					  intel_dp->psr.panel_replay_enabled)) {
-		psr_status = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
+		psr_status = EDP_PSR2_STATUS(display, cpu_transcoder);
 		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
-		psr_status = psr_status_reg(dev_priv, cpu_transcoder);
+		psr_status = psr_status_reg(display, cpu_transcoder);
 		psr_status_mask = EDP_PSR_STATUS_STATE_MASK;
 	}
 
 	/* Wait till PSR is idle */
-	if (intel_de_wait_for_clear(dev_priv, psr_status,
+	if (intel_de_wait_for_clear(display, psr_status,
 				    psr_status_mask, 2000))
-		drm_err(&dev_priv->drm, "Timed out waiting PSR idle state\n");
+		drm_err(display->drm, "Timed out waiting PSR idle state\n");
 }
 
 static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	lockdep_assert_held(&intel_dp->psr.lock);
@@ -2038,9 +2057,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		return;
 
 	if (intel_dp->psr.panel_replay_enabled)
-		drm_dbg_kms(&dev_priv->drm, "Disabling Panel Replay\n");
+		drm_dbg_kms(display->drm, "Disabling Panel Replay\n");
 	else
-		drm_dbg_kms(&dev_priv->drm, "Disabling PSR%s\n",
+		drm_dbg_kms(display->drm, "Disabling PSR%s\n",
 			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
 	intel_psr_exit(intel_dp);
@@ -2050,19 +2069,19 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	 * Wa_16013835468
 	 * Wa_14015648006
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11)
-		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+	if (DISPLAY_VER(display) >= 11)
+		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
 	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (!intel_dp->psr.panel_replay_enabled &&
-		    IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
-			intel_de_rmw(dev_priv,
-				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
+		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
+			intel_de_rmw(display,
+				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
 		else if (IS_ALDERLAKE_P(dev_priv))
-			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
+			intel_de_rmw(display, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
 	}
 
@@ -2071,12 +2090,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/* Panel Replay on eDP is always using ALPM aux less. */
 	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
-		intel_de_rmw(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder),
+		intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
 			     ALPM_CTL_ALPM_ENABLE |
 			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
-		intel_de_rmw(dev_priv,
-			     PORT_ALPM_CTL(dev_priv, cpu_transcoder),
+		intel_de_rmw(display,
+			     PORT_ALPM_CTL(display, cpu_transcoder),
 			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 	}
 
@@ -2107,12 +2126,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 void intel_psr_disable(struct intel_dp *intel_dp,
 		       const struct intel_crtc_state *old_crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (!old_crtc_state->has_psr)
 		return;
 
-	if (drm_WARN_ON(&dev_priv->drm, !CAN_PSR(intel_dp)))
+	if (drm_WARN_ON(display->drm, !CAN_PSR(intel_dp)))
 		return;
 
 	mutex_lock(&intel_dp->psr.lock);
@@ -2132,7 +2151,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
  */
 void intel_psr_pause(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 
 	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
@@ -2146,7 +2165,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	}
 
 	/* If we ever hit this, we will need to add refcount to pause/resume */
-	drm_WARN_ON(&dev_priv->drm, psr->paused);
+	drm_WARN_ON(display->drm, psr->paused);
 
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
@@ -2183,45 +2202,53 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 }
 
-static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
+static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
 {
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ? 0 :
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ? 0 :
 		PSR2_MAN_TRK_CTL_ENABLE;
 }
 
-static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
+static u32 man_trk_ctl_single_full_frame_bit_get(struct intel_display *display)
 {
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
 	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
 }
 
-static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
+static u32 man_trk_ctl_partial_frame_bit_get(struct intel_display *display)
 {
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
 	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
 }
 
-static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
+static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 {
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14 ?
 	       ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
 	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 }
 
 static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled)
-		intel_de_write(dev_priv,
-			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
-			       man_trk_ctl_enable_bit_get(dev_priv) |
-			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
-			       man_trk_ctl_single_full_frame_bit_get(dev_priv) |
-			       man_trk_ctl_continuos_full_frame(dev_priv));
+		intel_de_write(display,
+			       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
+			       man_trk_ctl_enable_bit_get(display) |
+			       man_trk_ctl_partial_frame_bit_get(display) |
+			       man_trk_ctl_single_full_frame_bit_get(display) |
+			       man_trk_ctl_continuos_full_frame(display));
 
 	/*
 	 * Display WA #0884: skl+
@@ -2236,20 +2263,20 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	 * but testing proved that it works for up display 13, for newer
 	 * than that testing will be needed.
 	 */
-	intel_de_write(dev_priv, CURSURFLIVE(dev_priv, intel_dp->psr.pipe), 0);
+	intel_de_write(display, CURSURFLIVE(display, intel_dp->psr.pipe), 0);
 }
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_encoder *encoder;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
+	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
@@ -2259,36 +2286,37 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 		break;
 	}
 
-	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
+	intel_de_write(display, PSR2_MAN_TRK_CTL(display, cpu_transcoder),
 		       crtc_state->psr2_man_track_ctl);
 
 	if (!crtc_state->enable_psr2_su_region_et)
 		return;
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
+	intel_de_write(display, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
 		       crtc_state->pipe_srcsz_early_tpt);
 }
 
 static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 				  bool full_update)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 val = man_trk_ctl_enable_bit_get(dev_priv);
+	u32 val = man_trk_ctl_enable_bit_get(display);
 
 	/* SF partial frame enable has to be set even on full update */
-	val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
+	val |= man_trk_ctl_partial_frame_bit_get(display);
 
 	if (full_update) {
-		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
-		val |= man_trk_ctl_continuos_full_frame(dev_priv);
+		val |= man_trk_ctl_single_full_frame_bit_get(display);
+		val |= man_trk_ctl_continuos_full_frame(display);
 		goto exit;
 	}
 
 	if (crtc_state->psr2_su_area.y1 == -1)
 		goto exit;
 
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14) {
+	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14) {
 		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(crtc_state->psr2_su_area.y1);
 		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(crtc_state->psr2_su_area.y2 - 1);
 	} else {
@@ -2341,13 +2369,14 @@ static void clip_area_update(struct drm_rect *overlap_damage_area,
 
 static void intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	u16 y_alignment;
 
 	/* ADLP aligns the SU region to vdsc slice height in case dsc is enabled */
 	if (crtc_state->dsc.compression_enable &&
-	    (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14))
+	    (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(display) >= 14))
 		y_alignment = vdsc_cfg->slice_height;
 	else
 		y_alignment = crtc_state->su_y_granularity;
@@ -2435,6 +2464,7 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state, *old_plane_state;
@@ -2531,7 +2561,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 * calculation for those.
 	 */
 	if (crtc_state->psr2_su_area.y1 == -1) {
-		drm_info_once(&dev_priv->drm,
+		drm_info_once(display->drm,
 			      "Selective fetch area calculation failed in pipe %c\n",
 			      pipe_name(crtc->pipe));
 		full_update = true;
@@ -2542,7 +2572,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 	/* Wa_14014971492 */
 	if (!crtc_state->has_panel_replay &&
-	    ((IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 	      IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv))) &&
 	    crtc_state->splitter.enable)
 		crtc_state->psr2_su_area.y1 = 0;
@@ -2628,6 +2658,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -2635,7 +2666,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!HAS_PSR(i915))
+	if (!HAS_PSR(display))
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
@@ -2676,7 +2707,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 void intel_psr_post_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
@@ -2692,13 +2723,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 
 		mutex_lock(&psr->lock);
 
-		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
+		drm_WARN_ON(display->drm,
+			    psr->enabled && !crtc_state->active_planes);
 
 		keep_disabled |= psr->sink_not_reliable;
 		keep_disabled |= !crtc_state->active_planes;
 
 		/* Display WA #1136: skl, bxt */
-		keep_disabled |= DISPLAY_VER(dev_priv) < 11 &&
+		keep_disabled |= DISPLAY_VER(display) < 11 &&
 			crtc_state->wm_level_disabled;
 
 		if (!psr->enabled && !keep_disabled)
@@ -2723,7 +2755,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 
 static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	/*
@@ -2731,14 +2763,14 @@ static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 	 * As all higher states has bit 4 of PSR2 state set we can just wait for
 	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
 	 */
-	return intel_de_wait_for_clear(dev_priv,
-				       EDP_PSR2_STATUS(dev_priv, cpu_transcoder),
+	return intel_de_wait_for_clear(display,
+				       EDP_PSR2_STATUS(display, cpu_transcoder),
 				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
 }
 
 static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	/*
@@ -2747,8 +2779,8 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
 	 * defensive enough to cover everything.
 	 */
-	return intel_de_wait_for_clear(dev_priv,
-				       psr_status_reg(dev_priv, cpu_transcoder),
+	return intel_de_wait_for_clear(display,
+				       psr_status_reg(display, cpu_transcoder),
 				       EDP_PSR_STATUS_STATE_MASK, 50);
 }
 
@@ -2768,13 +2800,13 @@ static int _panel_replay_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
  */
 void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(new_crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_encoder *encoder;
 
 	if (!new_crtc_state->has_psr)
 		return;
 
-	for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
+	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
 					     new_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		int ret;
@@ -2792,13 +2824,14 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
 
 		if (ret)
-			drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
+			drm_err(display->drm,
+				"PSR wait timed out, atomic update may fail\n");
 	}
 }
 
 static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	i915_reg_t reg;
 	u32 mask;
@@ -2809,18 +2842,18 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
 					  intel_dp->psr.panel_replay_enabled)) {
-		reg = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
+		reg = EDP_PSR2_STATUS(display, cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
-		reg = psr_status_reg(dev_priv, cpu_transcoder);
+		reg = psr_status_reg(display, cpu_transcoder);
 		mask = EDP_PSR_STATUS_STATE_MASK;
 	}
 
 	mutex_unlock(&intel_dp->psr.lock);
 
-	err = intel_de_wait_for_clear(dev_priv, reg, mask, 50);
+	err = intel_de_wait_for_clear(display, reg, mask, 50);
 	if (err)
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Timed out waiting for PSR Idle for re-enable\n");
 
 	/* After the unlocked wait, verify that PSR is still wanted! */
@@ -2828,7 +2861,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	return err == 0 && intel_dp->psr.enabled;
 }
 
-static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
+static int intel_psr_fastset_force(struct intel_display *display)
 {
 	struct drm_connector_list_iter conn_iter;
 	struct drm_modeset_acquire_ctx ctx;
@@ -2836,7 +2869,7 @@ static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
 	struct drm_connector *conn;
 	int err = 0;
 
-	state = drm_atomic_state_alloc(&dev_priv->drm);
+	state = drm_atomic_state_alloc(display->drm);
 	if (!state)
 		return -ENOMEM;
 
@@ -2846,7 +2879,7 @@ static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
 	to_intel_atomic_state(state)->internal = true;
 
 retry:
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(conn, &conn_iter) {
 		struct drm_connector_state *conn_state;
 		struct drm_crtc_state *crtc_state;
@@ -2893,7 +2926,7 @@ static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
 
 int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	const u32 mode = val & I915_PSR_DEBUG_MODE_MASK;
 	const u32 disable_bits = val & (I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
 					I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
@@ -2904,7 +2937,7 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 		    I915_PSR_DEBUG_PANEL_REPLAY_DISABLE |
 		    I915_PSR_DEBUG_MODE_MASK) ||
 	    mode > I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
-		drm_dbg_kms(&dev_priv->drm, "Invalid debug mask %llx\n", val);
+		drm_dbg_kms(display->drm, "Invalid debug mask %llx\n", val);
 		return -EINVAL;
 	}
 
@@ -2929,7 +2962,7 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 	mutex_unlock(&intel_dp->psr.lock);
 
 	if (old_mode != mode || old_disable_bits != disable_bits)
-		ret = intel_psr_fastset_force(dev_priv);
+		ret = intel_psr_fastset_force(display);
 
 	return ret;
 }
@@ -2981,7 +3014,7 @@ static void intel_psr_work(struct work_struct *work)
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
@@ -2989,20 +3022,20 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* Send one update otherwise lag is observed in screen */
-			intel_de_write(dev_priv,
-				       CURSURFLIVE(dev_priv, intel_dp->psr.pipe),
+			intel_de_write(display,
+				       CURSURFLIVE(display, intel_dp->psr.pipe),
 				       0);
 			return;
 		}
 
-		val = man_trk_ctl_enable_bit_get(dev_priv) |
-		      man_trk_ctl_partial_frame_bit_get(dev_priv) |
-		      man_trk_ctl_continuos_full_frame(dev_priv);
-		intel_de_write(dev_priv,
-			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
+		val = man_trk_ctl_enable_bit_get(display) |
+		      man_trk_ctl_partial_frame_bit_get(display) |
+		      man_trk_ctl_continuos_full_frame(display);
+		intel_de_write(display,
+			       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
 			       val);
-		intel_de_write(dev_priv,
-			       CURSURFLIVE(dev_priv, intel_dp->psr.pipe), 0);
+		intel_de_write(display,
+			       CURSURFLIVE(display, intel_dp->psr.pipe), 0);
 		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 	} else {
 		intel_psr_exit(intel_dp);
@@ -3011,7 +3044,7 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 
 /**
  * intel_psr_invalidate - Invalidate PSR
- * @dev_priv: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  * @origin: which operation caused the invalidate
  *
@@ -3022,7 +3055,7 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
  *
  * Dirty frontbuffers relevant to PSR are tracked in busy_frontbuffer_bits."
  */
-void intel_psr_invalidate(struct drm_i915_private *dev_priv,
+void intel_psr_invalidate(struct intel_display *display,
 			  unsigned frontbuffer_bits, enum fb_op_origin origin)
 {
 	struct intel_encoder *encoder;
@@ -3030,7 +3063,7 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 	if (origin == ORIGIN_FLIP)
 		return;
 
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
 		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
@@ -3060,7 +3093,8 @@ static void
 tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 		       enum fb_op_origin origin)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.sel_update_enabled ||
 	    !intel_dp->psr.active)
@@ -3081,17 +3115,18 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 
 static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
 			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
-				u32 val = man_trk_ctl_enable_bit_get(dev_priv) |
-					man_trk_ctl_partial_frame_bit_get(dev_priv) |
-					man_trk_ctl_single_full_frame_bit_get(dev_priv) |
-					man_trk_ctl_continuos_full_frame(dev_priv);
+				u32 val = man_trk_ctl_enable_bit_get(display) |
+					man_trk_ctl_partial_frame_bit_get(display) |
+					man_trk_ctl_single_full_frame_bit_get(display) |
+					man_trk_ctl_continuos_full_frame(display);
 
 				/*
 				 * Set psr2_sel_fetch_cff_enabled as false to allow selective
@@ -3099,11 +3134,11 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 				 * SU configuration in case update is sent for any reason after
 				 * sff bit gets cleared by the HW on next vblank.
 				 */
-				intel_de_write(dev_priv,
-					       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
+				intel_de_write(display,
+					       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
 					       val);
-				intel_de_write(dev_priv,
-					       CURSURFLIVE(dev_priv, intel_dp->psr.pipe),
+				intel_de_write(display,
+					       CURSURFLIVE(display, intel_dp->psr.pipe),
 					       0);
 				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 			}
@@ -3124,7 +3159,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 
 /**
  * intel_psr_flush - Flush PSR
- * @dev_priv: i915 device
+ * @display: display device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  * @origin: which operation caused the flush
  *
@@ -3135,12 +3170,12 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
  *
  * Dirty frontbuffers relevant to PSR are tracked in busy_frontbuffer_bits.
  */
-void intel_psr_flush(struct drm_i915_private *dev_priv,
+void intel_psr_flush(struct intel_display *display,
 		     unsigned frontbuffer_bits, enum fb_op_origin origin)
 {
 	struct intel_encoder *encoder;
 
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
 		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
@@ -3189,11 +3224,12 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
  */
 void intel_psr_init(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
+	if (!(HAS_PSR(display) || HAS_DP20(dev_priv)))
 		return;
 
 	/*
@@ -3205,21 +3241,21 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	 * So lets keep it hardcoded to PORT_A for BDW, GEN9 and GEN11.
 	 * But GEN12 supports a instance of PSR registers per transcoder.
 	 */
-	if (DISPLAY_VER(dev_priv) < 12 && dig_port->base.port != PORT_A) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (DISPLAY_VER(display) < 12 && dig_port->base.port != PORT_A) {
+		drm_dbg_kms(display->drm,
 			    "PSR condition failed: Port not supported\n");
 		return;
 	}
 
 	if ((HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp)) ||
-	    DISPLAY_VER(dev_priv) >= 20)
+	    DISPLAY_VER(display) >= 20)
 		intel_dp->psr.source_panel_replay_support = true;
 
-	if (HAS_PSR(dev_priv) && intel_dp_is_edp(intel_dp))
+	if (HAS_PSR(display) && intel_dp_is_edp(intel_dp))
 		intel_dp->psr.source_support = true;
 
 	/* Set link_standby x link_off defaults */
-	if (DISPLAY_VER(dev_priv) < 12)
+	if (DISPLAY_VER(display) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
 		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
 
@@ -3256,7 +3292,7 @@ static int psr_get_status_and_error_status(struct intel_dp *intel_dp,
 
 static void psr_alpm_check(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_dp_aux *aux = &intel_dp->aux;
 	struct intel_psr *psr = &intel_dp->psr;
 	u8 val;
@@ -3267,14 +3303,14 @@ static void psr_alpm_check(struct intel_dp *intel_dp)
 
 	r = drm_dp_dpcd_readb(aux, DP_RECEIVER_ALPM_STATUS, &val);
 	if (r != 1) {
-		drm_err(&dev_priv->drm, "Error reading ALPM status\n");
+		drm_err(display->drm, "Error reading ALPM status\n");
 		return;
 	}
 
 	if (val & DP_ALPM_LOCK_TIMEOUT_ERROR) {
 		intel_psr_disable_locked(intel_dp);
 		psr->sink_not_reliable = true;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "ALPM lock timeout error, disabling PSR\n");
 
 		/* Clearing error */
@@ -3284,21 +3320,21 @@ static void psr_alpm_check(struct intel_dp *intel_dp)
 
 static void psr_capability_changed_check(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 	u8 val;
 	int r;
 
 	r = drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_ESI, &val);
 	if (r != 1) {
-		drm_err(&dev_priv->drm, "Error reading DP_PSR_ESI\n");
+		drm_err(display->drm, "Error reading DP_PSR_ESI\n");
 		return;
 	}
 
 	if (val & DP_PSR_CAPS_CHANGE) {
 		intel_psr_disable_locked(intel_dp);
 		psr->sink_not_reliable = true;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Sink PSR capability changed, disabling PSR\n");
 
 		/* Clearing it */
@@ -3315,7 +3351,7 @@ static void psr_capability_changed_check(struct intel_dp *intel_dp)
  */
 void intel_psr_short_pulse(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 	u8 status, error_status;
 	const u8 errors = DP_PSR_RFB_STORAGE_ERROR |
@@ -3331,7 +3367,7 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 		goto exit;
 
 	if (psr_get_status_and_error_status(intel_dp, &status, &error_status)) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Error reading PSR status or error status\n");
 		goto exit;
 	}
@@ -3344,20 +3380,20 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 
 	if (!psr->panel_replay_enabled && status == DP_PSR_SINK_INTERNAL_ERROR &&
 	    !error_status)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR sink internal error, disabling PSR\n");
 	if (error_status & DP_PSR_RFB_STORAGE_ERROR)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR RFB storage error, disabling PSR\n");
 	if (error_status & DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR VSC SDP uncorrectable error, disabling PSR\n");
 	if (error_status & DP_PSR_LINK_CRC_ERROR)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "PSR Link CRC error, disabling PSR\n");
 
 	if (error_status & ~errors)
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"PSR_ERROR_STATUS unhandled errors %x\n",
 			error_status & ~errors);
 	/* clear status register */
@@ -3396,13 +3432,13 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
  */
 void intel_psr_lock(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_encoder *encoder;
 
 	if (!crtc_state->has_psr)
 		return;
 
-	for_each_intel_encoder_mask_with_psr(&i915->drm, encoder,
+	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
@@ -3419,13 +3455,13 @@ void intel_psr_lock(const struct intel_crtc_state *crtc_state)
  */
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_encoder *encoder;
 
 	if (!crtc_state->has_psr)
 		return;
 
-	for_each_intel_encoder_mask_with_psr(&i915->drm, encoder,
+	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
@@ -3437,7 +3473,7 @@ void intel_psr_unlock(const struct intel_crtc_state *crtc_state)
 static void
 psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	const char *status = "unknown";
 	u32 val, status_val;
@@ -3457,8 +3493,8 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"BUF_ON",
 			"TG_ON"
 		};
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_STATUS(dev_priv, cpu_transcoder));
+		val = intel_de_read(display,
+				    EDP_PSR2_STATUS(display, cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
@@ -3473,7 +3509,8 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"SRDOFFACK",
 			"SRDENT_ON",
 		};
-		val = intel_de_read(dev_priv, psr_status_reg(dev_priv, cpu_transcoder));
+		val = intel_de_read(display,
+				    psr_status_reg(display, cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
@@ -3534,7 +3571,8 @@ static void intel_psr_print_mode(struct intel_dp *intel_dp,
 
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct intel_psr *psr = &intel_dp->psr;
 	intel_wakeref_t wakeref;
@@ -3559,20 +3597,20 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	}
 
 	if (psr->panel_replay_enabled) {
-		val = intel_de_read(dev_priv, TRANS_DP2_CTL(cpu_transcoder));
+		val = intel_de_read(display, TRANS_DP2_CTL(cpu_transcoder));
 
 		if (intel_dp_is_edp(intel_dp))
-			psr2_ctl = intel_de_read(dev_priv,
-						 EDP_PSR2_CTL(dev_priv,
+			psr2_ctl = intel_de_read(display,
+						 EDP_PSR2_CTL(display,
 							      cpu_transcoder));
 
 		enabled = val & TRANS_DP2_PANEL_REPLAY_ENABLE;
 	} else if (psr->sel_update_enabled) {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_CTL(dev_priv, cpu_transcoder));
+		val = intel_de_read(display,
+				    EDP_PSR2_CTL(display, cpu_transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
 	} else {
-		val = intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder));
+		val = intel_de_read(display, psr_ctl_reg(display, cpu_transcoder));
 		enabled = val & EDP_PSR_ENABLE;
 	}
 	seq_printf(m, "Source PSR/PanelReplay ctl: %s [0x%08x]\n",
@@ -3587,7 +3625,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	/*
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
 	 */
-	val = intel_de_read(dev_priv, psr_perf_cnt_reg(dev_priv, cpu_transcoder));
+	val = intel_de_read(display, psr_perf_cnt_reg(display, cpu_transcoder));
 	seq_printf(m, "Performance counter: %u\n",
 		   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
 
@@ -3606,8 +3644,8 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		 * frame boundary between register reads
 		 */
 		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
-			val = intel_de_read(dev_priv,
-					    PSR2_SU_STATUS(dev_priv, cpu_transcoder, frame));
+			val = intel_de_read(display,
+					    PSR2_SU_STATUS(display, cpu_transcoder, frame));
 			su_frames_val[frame / 3] = val;
 		}
 
@@ -3635,15 +3673,15 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 
 static int i915_edp_psr_status_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	struct intel_dp *intel_dp = NULL;
 	struct intel_encoder *encoder;
 
-	if (!HAS_PSR(dev_priv))
+	if (!HAS_PSR(display))
 		return -ENODEV;
 
 	/* Find the first EDP which supports PSR */
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
 		intel_dp = enc_to_intel_dp(encoder);
 		break;
 	}
@@ -3658,18 +3696,19 @@ DEFINE_SHOW_ATTRIBUTE(i915_edp_psr_status);
 static int
 i915_edp_psr_debug_set(void *data, u64 val)
 {
-	struct drm_i915_private *dev_priv = data;
+	struct intel_display *display = data;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 	intel_wakeref_t wakeref;
 	int ret = -ENODEV;
 
-	if (!HAS_PSR(dev_priv))
+	if (!HAS_PSR(display))
 		return ret;
 
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		drm_dbg_kms(&dev_priv->drm, "Setting PSR debug to %llx\n", val);
+		drm_dbg_kms(display->drm, "Setting PSR debug to %llx\n", val);
 
 		wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
@@ -3685,13 +3724,13 @@ i915_edp_psr_debug_set(void *data, u64 val)
 static int
 i915_edp_psr_debug_get(void *data, u64 *val)
 {
-	struct drm_i915_private *dev_priv = data;
+	struct intel_display *display = data;
 	struct intel_encoder *encoder;
 
-	if (!HAS_PSR(dev_priv))
+	if (!HAS_PSR(display))
 		return -ENODEV;
 
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		// TODO: split to each transcoder's PSR debug state
@@ -3706,15 +3745,15 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
 			i915_edp_psr_debug_get, i915_edp_psr_debug_set,
 			"%llu\n");
 
-void intel_psr_debugfs_register(struct drm_i915_private *i915)
+void intel_psr_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_edp_psr_debug", 0644, minor->debugfs_root,
-			    i915, &i915_edp_psr_debug_fops);
+			    display, &i915_edp_psr_debug_fops);
 
 	debugfs_create_file("i915_edp_psr_status", 0444, minor->debugfs_root,
-			    i915, &i915_edp_psr_status_fops);
+			    display, &i915_edp_psr_status_fops);
 }
 
 static const char *psr_mode_str(struct intel_dp *intel_dp)
@@ -3795,6 +3834,7 @@ DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
 
 void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 
@@ -3807,7 +3847,7 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
 			    connector, &i915_psr_sink_status_fops);
 
-	if (HAS_PSR(i915) || HAS_DP20(i915))
+	if (HAS_PSR(display) || HAS_DP20(i915))
 		debugfs_create_file("i915_psr_status", 0444, root,
 				    connector, &i915_psr_status_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index d483c85870e1..4e09c10908e4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -11,11 +11,11 @@
 enum fb_op_origin;
 struct drm_connector;
 struct drm_connector_state;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 struct intel_plane;
@@ -35,10 +35,10 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 void intel_psr_disable(struct intel_dp *intel_dp,
 		       const struct intel_crtc_state *old_crtc_state);
 int intel_psr_debug_set(struct intel_dp *intel_dp, u64 value);
-void intel_psr_invalidate(struct drm_i915_private *dev_priv,
+void intel_psr_invalidate(struct intel_display *display,
 			  unsigned frontbuffer_bits,
 			  enum fb_op_origin origin);
-void intel_psr_flush(struct drm_i915_private *dev_priv,
+void intel_psr_flush(struct intel_display *display,
 		     unsigned frontbuffer_bits,
 		     enum fb_op_origin origin);
 void intel_psr_init(struct intel_dp *intel_dp);
@@ -60,6 +60,6 @@ void intel_psr_resume(struct intel_dp *intel_dp);
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector);
-void intel_psr_debugfs_register(struct drm_i915_private *i915);
+void intel_psr_debugfs_register(struct intel_display *display);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.39.2


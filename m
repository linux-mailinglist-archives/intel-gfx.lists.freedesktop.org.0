Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E6A565CD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D96A10EB52;
	Fri,  7 Mar 2025 10:53:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cm/XTcUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526E410EB56;
 Fri,  7 Mar 2025 10:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344778; x=1772880778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bu1meTdequdvbrd89fvfK1Ayb0CstBKrpv/ibeqVMuY=;
 b=cm/XTcUQSfmbQ4ULReRkrZThlLXPqViSeKjwbB6hXc9q/f8jabntft70
 sKPuvfpMRxEsvq71ZiNINF7DMvJ9mK94HapYHnklvu8dWD1sQnx5/gJvE
 LDlCEgLnHJ3INW3VXGVi05MJejquUQRZMXWhoJXyGBs1qVjPiZM1BLjkS
 1Que224hw3ysg7OC0+KCf3tdQr3enhrD0mCz+psRNOJUAGSQrggv6ihT2
 bh5BTrVpLdw3WG48bfwAZ1PuyB6LsCYPOpg+0FlpLBj3JjvojYDB01LLr
 BZ6DqkgZ0AoNH736CkrFi+lrBwKFV2CGCq+twewUYVWtzP++OijlJnaPI Q==;
X-CSE-ConnectionGUID: MIQLtqKtR6K1TyWI39ou+g==
X-CSE-MsgGUID: HuNgGvXMR9yyOhoW78YqUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301654"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301654"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:58 -0800
X-CSE-ConnectionGUID: aXX0sBuHRW6UIxlT/yBaxQ==
X-CSE-MsgGUID: UoyqUC4kSFOL5bWx/5u2Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481595"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:57 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 06/11] drm/i915/psr: Add mechanism to notify PSR of pipe
 enable/disable
Date: Fri,  7 Mar 2025 12:52:32 +0200
Message-ID: <20250307105237.2909849-7-jouni.hogander@intel.com>
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

We need to apply/remove workaround for underrun on idle PSR HW issue
(Wa_16025596647) when new pipe is enabled or pipe is getting disabled. This
patch implements mechanism to notify PSR about pipe enable/disable and
applies/removes the workaround using this notification.

Bspec: 74151

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 106 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |   2 +
 2 files changed, 108 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a3946eef44f0..4b62d5832cbf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -26,6 +26,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_debugfs.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -3664,6 +3665,111 @@ void intel_psr_unlock(const struct intel_crtc_state *crtc_state)
 	}
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
+/* Wa_16025596647 */
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
+/* Wa_16025596647 */
+static void intel_psr_apply_underrun_on_idle_wa_locked(struct intel_dp *intel_dp)
+{
+	bool dc5_dc6_blocked;
+
+	if (!intel_dp->psr.active)
+		return;
+
+	dc5_dc6_blocked = is_dc5_dc6_blocked(intel_dp);
+
+	if (intel_dp->psr.sel_update_enabled)
+		psr2_program_idle_frames(intel_dp, dc5_dc6_blocked ? 0 :
+					 psr_compute_idle_frames(intel_dp));
+	else
+		psr1_apply_underrun_on_idle_wa_locked(intel_dp, dc5_dc6_blocked);
+}
+
+/**
+ * intel_psr_notify_pipe_change - Notify PSR about enable/disable of a pipe
+ * @state: intel atomic state
+ * @crtc: intel crtc
+ * @enable: enable/disable
+ *
+ * This is targeted for underrun on idle PSR HW bug (Wa_16025596647) to apply
+ * remove the workaround when pipe is getting enabled/disabled
+ */
+void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc, bool enable)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_encoder *encoder;
+
+	if (DISPLAY_VER(display) != 20 &&
+	    !IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
+		return;
+
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		u8 active_non_psr_pipes;
+
+		mutex_lock(&intel_dp->psr.lock);
+
+		if (!intel_dp->psr.enabled || intel_dp->psr.panel_replay_enabled)
+			goto unlock;
+
+		active_non_psr_pipes = intel_dp->psr.active_non_psr_pipes;
+
+		if (enable)
+			active_non_psr_pipes |= BIT(crtc->pipe);
+		else
+			active_non_psr_pipes &= ~BIT(crtc->pipe);
+
+		if (active_non_psr_pipes == intel_dp->psr.active_non_psr_pipes)
+			goto unlock;
+
+		if ((enable && intel_dp->psr.active_non_psr_pipes) ||
+		    (!enable && !intel_dp->psr.active_non_psr_pipes)) {
+			intel_dp->psr.active_non_psr_pipes = active_non_psr_pipes;
+			goto unlock;
+		}
+
+		intel_dp->psr.active_non_psr_pipes = active_non_psr_pipes;
+
+		intel_psr_apply_underrun_on_idle_wa_locked(intel_dp);
+unlock:
+		mutex_unlock(&intel_dp->psr.lock);
+	}
+}
+
 static void
 psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index a43a374cff55..273e70a50915 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -60,6 +60,8 @@ void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
+void intel_psr_notify_pipe_change(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc, bool enable);
 bool intel_psr_link_ok(struct intel_dp *intel_dp);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
-- 
2.43.0


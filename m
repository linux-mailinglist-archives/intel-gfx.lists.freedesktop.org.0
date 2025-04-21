Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1B5A953C0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529F810E478;
	Mon, 21 Apr 2025 15:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsztAPNz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4811310E490;
 Mon, 21 Apr 2025 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250685; x=1776786685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+X5ZbR1TvF5/rnbKYV3p1ENBE16qz+NlKjzzNChLmyE=;
 b=FsztAPNzZkLGfIFE4Fv06DCFsze1TIFcrMpSdRp7fo94np/OOvVBzVcc
 0wfAGLqBvQdLXi2HwQFD3iTwNjFmUcfkC7w65jy/KGLfltSG8Yly1ECEE
 vX6cxv+Q9Gwp38UcPc0MMiK64bPgocgJLczHvalxZI0WUNa2ZQyksnU71
 y0FLOsCcbM9R4smsHZVgOxQ5fjC9l6E5eE2bOO4KDwIFhnYwIJHpRFOph
 CTrGbjdfEDcXqt7L3AFPEINMYF4U3F8WI3xENM8TD19Fb8XdQVLf/1p1V
 9b3ZX1zQYKTv5ZY98TDXbeo2jPZY3J44zT42t/g9UCnlTm9G933UTlWVE Q==;
X-CSE-ConnectionGUID: IyVH/Uc0TjeWGJ1ToQT+3w==
X-CSE-MsgGUID: xW/7aIwrQ76lCdjcGc+plQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434082"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434082"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:25 -0700
X-CSE-ConnectionGUID: fGC+59DWT2qcwmMPxDKGDg==
X-CSE-MsgGUID: dz4KdnzETHqflMvD2L7Xdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725656"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:22 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 10/13] drm/i915/vrr: Pause DC balancing for DSB commits
Date: Mon, 21 Apr 2025 21:18:57 +0530
Message-ID: <20250421154900.2095202-11-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pause the DMC DC balancing for the remainder of the
commit so that vmin/vmax won't change after we've baked
them into the DSB vblank evasion commands.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 13 +++++++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 38 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_vrr_regs.h | 12 ++++++
 3 files changed, 51 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 33c09999c42e..274d01552ccf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7194,6 +7194,17 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_dsb) {
+		/*
+		 * Pause the DMC DC balancing for the remainder of the
+		 * commit so that vmin/vmax won't change after we've baked
+		 * them into the DSB vblank evasion commands.
+		 *
+		 * FIXME maybe need a small delay here to make sure DMC has
+		 * finished updating the values? Or we need a better DMC<->driver
+		 * protocol that gives is real guarantees about that...
+		 */
+		intel_pipedmc_dcb_disable(NULL, crtc);
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7230,6 +7241,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
+			if (new_crtc_state->vrr.dc_balance.enable)
+				intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 383024dc2784..fb96d03bbf03 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dmc_regs.h"
 #include "intel_vrr.h"
@@ -598,7 +599,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 ctl;
 
 	if (!crtc_state->vrr.enable)
 		return;
@@ -609,20 +612,19 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.vmax - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
+	if (!intel_vrr_always_use_vrr_tg(display))
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (!intel_vrr_always_use_vrr_tg(display)) {
-		if (crtc_state->cmrr.enable) {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-				       trans_vrr_ctl(crtc_state));
-		} else {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
-		}
-	}
+	ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
+	if (crtc_state->cmrr.enable)
+		ctl |= VRR_CTL_CMRR_ENABLE;
+	if (crtc_state->vrr.dc_balance.enable)
+		ctl |= VRR_CTL_DCB_ADJ_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
 
 	if (crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
 		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
@@ -639,18 +641,26 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 			       crtc_state->vrr.dc_balance.slope);
 		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
 			       crtc_state->vrr.dc_balance.vblank_target);
+		/* FIXME reset counters? */
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
+		/* FIMXE configure pipedmc DC balance parameters somewhere */
+		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+	u32 ctl;
 
 	if (!old_crtc_state->vrr.enable)
 		return;
 
 	if (old_crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
+		intel_pipedmc_dcb_disable(NULL, crtc);
 		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
@@ -661,9 +671,13 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
 	}
 
+	ctl = trans_vrr_ctl(old_crtc_state);
+	if (intel_vrr_always_use_vrr_tg(display))
+		ctl |= VRR_CTL_VRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
+
 	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       trans_vrr_ctl(old_crtc_state));
 		intel_de_wait_for_clear(display,
 					TRANS_VRR_STATUS(display, cpu_transcoder),
 					VRR_STATUS_VRR_EN_LIVE, 1000);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 2db477325c83..a88fcd69111f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -63,6 +63,17 @@
 								     trans, \
 								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
 
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_E			0x6B4C0
+#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_F			0x6C4C0
+#define TRANS_ADAPTIVE_SYNC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
+								     trans, \
+								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
+#define  ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
+
 #define _TRANS_VRR_CTL_A			0x60420
 #define _TRANS_VRR_CTL_B			0x61420
 #define _TRANS_VRR_CTL_C			0x62420
@@ -71,6 +82,7 @@
 #define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
 #define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
+#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
 #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
 #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
-- 
2.48.1


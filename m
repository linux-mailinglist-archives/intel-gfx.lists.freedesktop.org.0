Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0570A8B055
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 08:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F9810E83E;
	Wed, 16 Apr 2025 06:29:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bEkDxGKE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A19E10E83E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 06:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744784996; x=1776320996;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3IOt+DwfGSpfZvdCiPMsvNMPq1EYjhhvymj1GTx39go=;
 b=bEkDxGKEd9zxzBCBPOK2LhbIfst7kUzsj6yMtz69K6hKDgXEZUxqDK5d
 Bw/GIghFC0TUUcukVhj25FwZ7n4uTZ8wQNTyksGzMjNymlxLa2F4knXYn
 zr1Si/RxPhRqa4cZeX/CwLsj8cr6BDnG3P1M3MGtBe133gzK64AVlHe8w
 2zE+WKLeuw//KZulL/YhISYWKObZSsFWvZ1qFJE+rM7o4NA99wJT3PBOP
 gfTKUlUdtwcJY8nJnRL27LCuiYOas+R9Ow76x0eoZhWSXvxn5biGIXT/L
 VWZ5oMkaQKszHICB45xpacxN6o5/6UwdCRqvhgKkWhaSafQcw8qIAN2rG A==;
X-CSE-ConnectionGUID: 9pvRFS3MTQ+cXrmekmy3rw==
X-CSE-MsgGUID: vr/4sIu7SACmRUIFPCoZGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71710256"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="71710256"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 23:29:55 -0700
X-CSE-ConnectionGUID: 3q4+NyLwSiuDdCS/AEJNiQ==
X-CSE-MsgGUID: unFwNh9pTg6fQj9tLJdtbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130880218"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 15 Apr 2025 23:29:54 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 8/8] drm/i915/vrr: Pause DC balancing for DSB commits
Date: Wed, 16 Apr 2025 11:57:37 +0530
Message-ID: <20250416062737.1766703-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
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

Pause the DMC DC balancing for the remainder of the
commit so that vmin/vmax won't change after we've baked
them into the DSB vblank evasion commands.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 43 +++++++++++++++-----
 2 files changed, 45 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index db524d01e574..7373c11e6e8d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7195,6 +7195,17 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
@@ -7231,6 +7242,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
+			if (new_crtc_state->vrr.dc_balance)
+				intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 03405c274b8c..18c38afb9108 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
@@ -576,7 +577,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 ctl;
 
 	if (!crtc_state->vrr.enable)
 		return;
@@ -587,33 +590,51 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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
+	ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
+	if (crtc_state->cmrr.enable)
+		ctl |= VRR_CTL_CMRR_ENABLE;
+	if (crtc_state->vrr.dc_balance)
+		ctl |= VRR_CTL_DCB_ADJ_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
+
+	if (crtc_state->vrr.dc_balance) {
+		/* FIXME reset counters? */
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
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
 
+	if (old_crtc_state->vrr.dc_balance) {
+		intel_pipedmc_dcb_disable(NULL, crtc);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
+	}
+
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
-- 
2.48.1


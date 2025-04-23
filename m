Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0853A98749
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD6410E67D;
	Wed, 23 Apr 2025 10:27:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lUW0jFmt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E2F610E67C;
 Wed, 23 Apr 2025 10:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745404038; x=1776940038;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c0pvlJ+CFC6hzLl62hsaRvkS3kBTNsjCylTien/eQWw=;
 b=lUW0jFmtzFVwK/YRSQPS5TgPMkk7p/xkro8fTekHaN4B6Mii9bwnTj2K
 Zr89VdFaG5sKxYahGAjKVvKB9dArctaSOBzxCYBqQIb2VJ9CbJqhIPfHy
 ncZJpI5vYDC9Dqfda26bCG2kqRp91ywikZ2SxQj76HNe1/8mebLEP1reB
 F6eKfgniVjgPDckEeFglD2MxpcvUj9ZHwOcJ66+agDuCmHAErKY45C6Ki
 5llqOdURnQj484XQiKehJixxL6TCegJPxaxYvbAscUVrWl1w003MUKCZN
 0SSFIEQI4upn1xWaKTBI8vo3EOrXYfEYQ1bwW0hZI/Ptpa/lMdYsMDunU w==;
X-CSE-ConnectionGUID: VN/Rj53BRt6EBpb0nk1ZqA==
X-CSE-MsgGUID: crChr6CeTvO1MIBTkbqtbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46225792"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46225792"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:27:18 -0700
X-CSE-ConnectionGUID: iVyqY2HSRAOIYb2hcduhUQ==
X-CSE-MsgGUID: z6vHwu5MTeCMH4g+jY+ljg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137269111"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.227])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:27:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 1/2] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Date: Wed, 23 Apr 2025 13:27:03 +0300
Message-ID: <20250423102704.1368310-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

To deterministically capture the transition of the state machine going from
SRDOFFACK to IDLE, the delayed V. Blank should be at least one line after
the non-delayed V. Blank.

Ensure this by adding new interface into intel_psr to query number of lines
needed for vblank delay and call it from intel_crtc_vblank_delay.

v3: use existing intel_crtc_vblank_delay mechanism
v2: apply limits only when needed (VRR TG vs. Legacy TG)

Bspec: 69897
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 39 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h     |  1 +
 3 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6bd55fd9dff85..a7b35fc13d7c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2422,6 +2422,8 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
 	if (intel_crtc_needs_wa_14015401596(crtc_state))
 		vblank_delay = max(vblank_delay, 1);
 
+	vblank_delay = max(vblank_delay, intel_psr_min_vblank_delay(crtc_state));
+
 	return vblank_delay;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 127eec4272fda..1058134422bcf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2385,6 +2385,45 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 				   CURSURFLIVE(display, crtc->pipe), 0);
 }
 
+/**
+ * intel_psr_min_vblank_delay - Minimum vblank delay needed by PSR
+ * @crtc_state: the crtc state
+ *
+ * Return minimum vblank delay needed by PSR.
+ */
+int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!crtc_state->has_psr || DISPLAY_VER(display) < 20)
+		return 0;
+
+	/*
+	 * Comment on SRD_STATUS register in Bspec for LunarLake and onwards:
+	 *
+	 * To deterministically capture the transition of the state machine
+	 * going from SRDOFFACK to IDLE, the delayed V. Blank should be at least
+	 * one line after the non-delayed V. Blank.
+	 *
+	 * Legacy TG: TRANS_SET_CONTEXT_LATENCY > 0
+	 * VRR TG: TRANS_VRR_CTL[ VRR Guardband ] < (TRANS_VRR_VMAX[ VRR Vmax ]
+	 * - TRANS_VTOTAL[ Vertical Active ])
+	 *
+	 * SRD_STATUS is used only by PSR1 on PantherLake.
+	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
+	 */
+
+	if (DISPLAY_VER(display) >= 30 && (crtc_state->has_panel_replay ||
+					   crtc_state->has_sel_update))
+		return 0;
+	else if (DISPLAY_VER(display) < 30 && (crtc_state->has_sel_update ||
+					       intel_crtc_has_type(crtc_state,
+								   INTEL_OUTPUT_EDP)))
+		return 0;
+	else
+		return 1;
+}
+
 static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
 {
 	return display->platform.alderlake_p || DISPLAY_VER(display) >= 14 ? 0 :
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index c61384bb7382a..3838f01d1619c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -73,6 +73,7 @@ void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
 void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 					  struct intel_atomic_state *state,
 					  struct intel_crtc *crtc);
+int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector);
 void intel_psr_debugfs_register(struct intel_display *display);
 
-- 
2.43.0


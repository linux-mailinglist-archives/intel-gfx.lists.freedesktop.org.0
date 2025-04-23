Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD33DA98656
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA2110E65C;
	Wed, 23 Apr 2025 09:46:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TjrLdrdr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBBDF10E65A;
 Wed, 23 Apr 2025 09:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401612; x=1776937612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cFZt6wDmlkamksSsBXfJQw2hRvm/MPtAnuAiQgmG8CU=;
 b=TjrLdrdrpd0KQLzioFw7SxztaP1PKr2IWyUHED0mzbHkZlR1Pyb5SCjc
 uNC0cA2X0aj2U4bRvfHD3pyDIXCiQ6b8QW+DIA0x9Hy/6o2IkMHOLRQNy
 sKjfvxf8QOhQerBZnjvb2IjgFFsqL81SpGPmcPYA302w3EarW/FrA/aSa
 x6Fpg92vmwdv3Uy2+WFDhOuhFUnAZQG88jR1zye4GNZAy/FTkAdUabhor
 sXWdoSeEJS/CYeUAaRzONKTN9kyiTdEf6HISpEJNeW9LXvxEu8xVBk3kP
 ftn03R3whLiT0YlMfSUFNDm1stqXmuYSRzuNAgwanfagSJ05UAiwXlO9w g==;
X-CSE-ConnectionGUID: pg9K8LIhS6iqXdKzJTe+KA==
X-CSE-MsgGUID: 5GrOARf4TlWcihGBSRRxkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58357949"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58357949"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:46:51 -0700
X-CSE-ConnectionGUID: gIigKW/YS0m+lvKaXbvJ4Q==
X-CSE-MsgGUID: m853lywxT02/huGhyBFCKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811122"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:46:49 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 04/11] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Date: Wed, 23 Apr 2025 14:53:27 +0530
Message-Id: <20250423092334.2294483-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250423092334.2294483-1-animesh.manna@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
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

Currently clearing of alpm registers is done through psr_disable()
which is always not correct, without psr also alpm can exist. So
dis-integrate alpm_disable() from psr_disable().

v1: Initial version.
v2:
- Remove h/w register read from alpm_disable(). [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c      | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h      |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c       |  2 ++
 .../gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c       | 11 -----------
 5 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 9227bb0b0c55..e66ffdbfdb0d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -369,6 +369,7 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state)
 {
 	lnl_alpm_configure(intel_dp, crtc_state);
+	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
@@ -444,3 +445,20 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
+
+void intel_alpm_disable(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
+		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
+		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+	intel_de_rmw(display,
+		     PORT_ALPM_CTL(cpu_transcoder),
+		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 2f862b0476a8..91f51fb24f98 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -28,4 +28,5 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
+void intel_alpm_disable(struct intel_dp *intel_dp);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e90fa7984e28..74132c1d6385 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -36,6 +36,7 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "icl_dsi.h"
+#include "intel_alpm.h"
 #include "intel_audio.h"
 #include "intel_audio_regs.h"
 #include "intel_backlight.h"
@@ -3554,6 +3555,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
 	intel_dp->link.active = false;
 
 	intel_psr_disable(intel_dp, old_crtc_state);
+	intel_alpm_disable(intel_dp);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
 	intel_dp_sink_disable_decompression(state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 94468a9d2e0d..e558f52c3039 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1805,6 +1805,7 @@ struct intel_dp {
 	struct {
 		u8 io_wake_lines;
 		u8 fast_wake_lines;
+		enum transcoder transcoder;
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7ad4a01e0378..1bd2fcd0fa4b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2130,17 +2130,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (intel_dp_is_edp(intel_dp))
 		intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
-	/* Panel Replay on eDP is always using ALPM aux less. */
-	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
-		intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
-			     ALPM_CTL_ALPM_ENABLE |
-			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
-
-		intel_de_rmw(display,
-			     PORT_ALPM_CTL(cpu_transcoder),
-			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
-	}
-
 	/* Disable PSR on Sink */
 	if (!intel_dp->psr.panel_replay_enabled) {
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
-- 
2.29.0


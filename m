Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBE4AA6D37
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D332710E8D6;
	Fri,  2 May 2025 08:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lnyUi1Mf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE7F10E8D4;
 Fri,  2 May 2025 08:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176374; x=1777712374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tx+ZuUzxLXyTMI4rvdfGylwOkfpjHjq65QubtVB/oTo=;
 b=lnyUi1Mf1FBSupW6N542aWVpd/QkLDnzj/ZInHFaJVhDlc3sfeznIPCY
 tmhdElDK4FkfCicYS7kT1w76UgHDARZOQj7aLMCV5hk/CWButlLQ8JjMk
 J6qKOhfY8U8PI2SuY/toNGTKJ4+q61UOgv4aMrmJJC9Qxq3ChR3b9pOOL
 75SpUszqt0waVERufawYJKIFQrU1Jj+kcXYslFMS7cR/961QXZ0Z9A2NJ
 /ulzbT6Keu5b1ka87vn0a7F+B6AVoJCZ1I2gLPDigjFk8FLPw4j0Dpi1x
 ikyQyAxMzJOGmGBxDB/Nm5msGLGVHQ3Tu9TH78TUK89s+h48Cr+NwpOye Q==;
X-CSE-ConnectionGUID: 5EpVbXG5QPuKig/jU9SxSg==
X-CSE-MsgGUID: 6TxePrCIQNuhnSBVwjmUew==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943197"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943197"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:33 -0700
X-CSE-ConnectionGUID: 3k+pZxEtSweSfslAyaXSTw==
X-CSE-MsgGUID: fXBP/3afQfSkV//ZF7A/YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346734"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 07/11] drm/i915/alpm: Move port alpm configuration
Date: Fri,  2 May 2025 11:58:58 +0300
Message-ID: <20250502085902.154740-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
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

It is specified in Bspec where port alpm configuration is supposed to be
performed. Change accordingly.

HAS: 14012758795
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c    | 53 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_alpm.h    |  2 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |  6 +++
 4 files changed, 44 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 4a8d4b34fa89e..857ce83075d8d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -344,7 +344,6 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	u32 alpm_ctl;
 
 	if (DISPLAY_VER(display) < 20 || (!intel_psr_needs_alpm(intel_dp, crtc_state) &&
@@ -374,23 +373,6 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 				       pr_alpm_ctl);
 		}
 
-		intel_de_write(display,
-			       PORT_ALPM_CTL(port),
-			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
-			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
-			       PORT_ALPM_CTL_SILENCE_PERIOD(
-				       intel_dp->alpm_parameters.silence_period_sym_clocks));
-
-		intel_de_write(display,
-			       PORT_ALPM_LFPS_CTL(port),
-			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
-			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
-				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
-			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
-				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
-			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
-				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms));
 	} else {
 		alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
 			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
@@ -414,6 +396,41 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
+/**
+ * intel_alpm_port_configure - Port ALPM configuration
+ * @intel_dp: Intel DP
+ * @crtc_state: CRTC state
+ *
+ * Perfrom port ALPM configuration based on crtc_state setup. This is called as
+ * a part of link training preparation.
+ */
+void intel_alpm_port_configure(struct intel_dp *intel_dp,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	enum port port = dp_to_dig_port(intel_dp)->base.port;
+	u32 alpm_ctl_val = 0, lfps_ctl_val = 0;
+
+	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state)) {
+		alpm_ctl_val = PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
+			PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
+			PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
+			PORT_ALPM_CTL_SILENCE_PERIOD(
+				intel_dp->alpm_parameters.silence_period_sym_clocks);
+		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
+			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
+				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
+			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
+				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
+			PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
+				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms);
+	}
+
+	intel_de_write(display, PORT_ALPM_CTL(port), alpm_ctl_val);
+
+	intel_de_write(display, PORT_ALPM_LFPS_CTL(port), lfps_ctl_val);
+}
+
 void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 83bbe0b7ff100..c9ddb2113fe0d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -25,6 +25,8 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
 void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc);
+void intel_alpm_port_configure(struct intel_dp *intel_dp,
+			       const struct intel_crtc_state *crtc_state);
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b09f724c3046b..1318886e34dd7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -10,6 +10,7 @@
 
 #include "i915_reg.h"
 #include "i915_utils.h"
+#include "intel_alpm.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 74132c1d63858..ce7a4765b10ea 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3743,6 +3743,12 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 
 	intel_ddi_buf_enable(encoder, intel_dp->DP);
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
+
+	/*
+	 * 6.k If AUX-Less ALPM is going to be enabled
+	 *     i. Configure PORT_ALPM_CTL and PORT_ALPM_LFPS_CTL here
+	 */
+	intel_alpm_port_configure(intel_dp, crtc_state);
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
-- 
2.43.0


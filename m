Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B032A859A3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 12:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0801210EB66;
	Fri, 11 Apr 2025 10:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fezgOolw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B0010EB64
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Apr 2025 10:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744367243; x=1775903243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c0OB9f8nbKMf2pPUgdi+MkTOOqVKTQsbBny0tbhqXlw=;
 b=fezgOolwS93jLlymhKFchLBjT9MEV+0eAh9hhLas1ViPCpUgU378/YuT
 t47cHC+HpXVmybHUQvZrLDxAfuFEFBzxN1kFZ63h/OyLnjqcwYTEuRmy/
 WygveyCPSojqVcKar8+143/UV+/TmS0ibK2l/H6BwpZ8bCE9+M6BXDeQO
 hVcIZIf68ip+eQBJawf2bZCcK+Eta500YD8US/9LXIYBjpyRvbKgV/Res
 H38cexhtvRBZdSNZpS7GMkJOm+YIAtmmeyfjTKXbirOE14O0sF8C4pYqK
 dYDRz0ggWz+TfsDxa51oYz7yh/Z7aEGf0zzov+4ogmnOffs5LXy69810H Q==;
X-CSE-ConnectionGUID: 1fIu4+HcQeuqvVIsu1Islw==
X-CSE-MsgGUID: az9ZswdgQ+mCSCXR5/xBvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="49567258"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="49567258"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 03:27:20 -0700
X-CSE-ConnectionGUID: LKa6L1QwQzuIzrROZL1zoA==
X-CSE-MsgGUID: PGW89wy8StSNiZ9RwpRmLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="133918729"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 03:27:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/dpio: have chv_data_lane_soft_reset() get/put dpio
 internally
Date: Fri, 11 Apr 2025 13:27:15 +0300
Message-Id: <20250411102715.613082-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Have chv_data_lane_soft_reset() get/put dpio internally, and use a
locked version of it within intel_dpio_phy.c. This drops the dependency
on vlv sideband from g4x_dp.c and g4x_hdmi.c, and makes that a DPIO PHY
implementation detail.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  7 -------
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  8 -------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 21 ++++++++++++++-----
 3 files changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index b39aae9165df..18e51799d2a6 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -28,7 +28,6 @@
 #include "intel_hotplug.h"
 #include "intel_pch_display.h"
 #include "intel_pps.h"
-#include "vlv_sideband.h"
 
 static const struct dpll g4x_dpll[] = {
 	{ .dot = 162000, .p1 = 2, .p2 = 10, .n = 2, .m1 = 23, .m2 = 8, },
@@ -581,16 +580,10 @@ static void chv_post_disable_dp(struct intel_atomic_state *state,
 				const struct intel_crtc_state *old_crtc_state,
 				const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	intel_dp_link_down(encoder, old_crtc_state);
 
-	vlv_dpio_get(dev_priv);
-
 	/* Assert data lane reset */
 	chv_data_lane_soft_reset(encoder, old_crtc_state, true);
-
-	vlv_dpio_put(dev_priv);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 3dc2c59a3df0..21b5db2fa203 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -22,7 +22,6 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_sdvo.h"
-#include "vlv_sideband.h"
 
 static void intel_hdmi_prepare(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state)
@@ -539,15 +538,8 @@ static void chv_hdmi_post_disable(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *old_crtc_state,
 				  const struct drm_connector_state *old_conn_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	vlv_dpio_get(dev_priv);
-
 	/* Assert data lane reset */
 	chv_data_lane_soft_reset(encoder, old_crtc_state, true);
-
-	vlv_dpio_put(dev_priv);
 }
 
 static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 429f89543789..1e1af7150723 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -808,9 +808,9 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	vlv_dpio_put(dev_priv);
 }
 
-void chv_data_lane_soft_reset(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state,
-			      bool reset)
+static void __chv_data_lane_soft_reset(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state,
+				       bool reset)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -853,6 +853,17 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 	}
 }
 
+void chv_data_lane_soft_reset(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state,
+			      bool reset)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	vlv_dpio_get(i915);
+	__chv_data_lane_soft_reset(encoder, crtc_state, reset);
+	vlv_dpio_put(i915);
+}
+
 void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
@@ -880,7 +891,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	vlv_dpio_get(dev_priv);
 
 	/* Assert data lane reset */
-	chv_data_lane_soft_reset(encoder, crtc_state, true);
+	__chv_data_lane_soft_reset(encoder, crtc_state, true);
 
 	/* program left/right clock distribution */
 	if (pipe != PIPE_B) {
@@ -1008,7 +1019,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	}
 
 	/* Deassert data lane reset */
-	chv_data_lane_soft_reset(encoder, crtc_state, false);
+	__chv_data_lane_soft_reset(encoder, crtc_state, false);
 
 	vlv_dpio_put(dev_priv);
 }
-- 
2.39.5


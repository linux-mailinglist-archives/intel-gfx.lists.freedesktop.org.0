Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB764C2480E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:37:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FFED10EB28;
	Fri, 31 Oct 2025 10:37:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SoxgwiVe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C92110EB25;
 Fri, 31 Oct 2025 10:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907056; x=1793443056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wB6VfE7wotGjt/j1DMKmeKgMsxAMdp0CgRH5Q5JXNGM=;
 b=SoxgwiVei0RokEn13/eCdhA30OWhU9FXkYXOXjYqvxFC9McqYioCt6E2
 oW4nev1QNUaeC5WL+jGgjIf5c5uztKsYwDBt3yJevPOkFAxUDawl5pAJK
 h5XByPj49ZF8begzkx2AQpio9NIcbgjhXkeH/EPIsLXF9NolmG2y0kOpE
 85PxMPzXE+O1dv1YLbB6ltFoyJ5Lmv+oFLsUuMVyWy872PHT84MV/be5A
 oYQc4k5iwIhAvf3V67l/JoQfQOjP22MXmN5sdAvK7Ouf6vu3+uOQ7rC74
 aOntp6fcYyh3JDYt1dBchHphAKNj329lAsCwlJUq7oHV6fPNMmLZIgVmI A==;
X-CSE-ConnectionGUID: IO1WACqCR3iwucwTafGwZw==
X-CSE-MsgGUID: fYAydQ6MR/2jciWgUXLFfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690890"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690890"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:37:36 -0700
X-CSE-ConnectionGUID: JNvoIKQtQAOUv7P8jRnwpw==
X-CSE-MsgGUID: c+lzmmmjT4CVK3JztH0O+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554704"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:37:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 17/25] drm/i915/ltphy: Hook up LT Phy Enable & Disable
 sequences
Date: Fri, 31 Oct 2025 16:06:35 +0530
Message-Id: <20251031103643.4147868-18-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Hook up the LT Phy enable and disable sequences using encoder->
enable/disable_clock and reusing the TBT enable disable sequence from
cx0 PHY since it remains the same.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  7 ++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  3 +++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  7 ++++++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 21 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h  |  3 +++
 5 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e2dcb5f96f47..82f9401c40b9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -18,6 +18,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_hdmi.h"
+#include "intel_lt_phy.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_snps_hdmi_pll.h"
@@ -3150,8 +3151,8 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
 	}
 }
 
-static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
-				     const struct intel_crtc_state *crtc_state)
+void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3335,7 +3336,7 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_cx0_get_pclk_pll_request(lane);
 }
 
-static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
+void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c9fba91f6c6a..84d334b865f7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -63,5 +63,8 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
+void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state);
+void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 870140340342..a4ea9f29fd85 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -72,6 +72,7 @@
 #include "intel_hotplug.h"
 #include "intel_hti.h"
 #include "intel_lspcon.h"
+#include "intel_lt_phy.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_modeset_lock.h"
 #include "intel_panel.h"
@@ -5231,7 +5232,11 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
 
-	if (DISPLAY_VER(display) >= 14) {
+	if (HAS_LT_PHY(display)) {
+		encoder->enable_clock = intel_xe3plpd_pll_enable;
+		encoder->disable_clock = intel_xe3plpd_pll_disable;
+		encoder->port_pll_type = intel_mtl_port_pll_type;
+	} else if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable;
 		encoder->disable_clock = intel_mtl_pll_disable;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 6d56e3c11bff..cc8cd7faf98f 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1702,3 +1702,24 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
+
+void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_enable(encoder, crtc_state);
+	else
+		intel_lt_phy_pll_enable(encoder, crtc_state);
+}
+
+void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_disable(encoder);
+	else
+		intel_lt_phy_pll_disable(encoder);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 499091e04e82..15d3d680871c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -20,6 +20,9 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
 int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
+void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state);
+void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 
 #define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
 
-- 
2.34.1


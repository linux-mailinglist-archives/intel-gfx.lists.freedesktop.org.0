Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B455ADC3D3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 09:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE9010E196;
	Tue, 17 Jun 2025 07:58:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eThP1TAB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7247310E196;
 Tue, 17 Jun 2025 07:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750147107; x=1781683107;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=inEPtAgeCcBjTZPkBzPZefvQY5ENQqbzxvzXm8kL0VQ=;
 b=eThP1TAB/sZ80XSwBnB2dpsCmi6OGpTcj+5eMpyfFHjgQHL1/DmU4IV2
 HNNyE9oMcSD7sKw80D9lQAEG5Q6usbeuHUt6PmQCe1Q6p6cPSvSTEpOAa
 3RVfxV2sJQjzPuayuGZiFEygPIbNfLQwwL6X9lUlVtTA4SnP8WEfbRx6d
 4CWbe1boAnVf6zh3Sh2C8IIfo9mzd0R3gB03Sdu7bpaSYG0qRxig4owCe
 NDk2ZThE59vHefQUN25F9ioUoAA8fniTlDBWBgBl91oeck7Kz6Tu7Loj9
 8OEC4JbWApoimXPKdK4L2BtTebZpuoQ3u+Be9QgxQCj6BiYDJG3fx7AHu Q==;
X-CSE-ConnectionGUID: ie20yduOQNmpYdaJ19JLEQ==
X-CSE-MsgGUID: ZLLuP1QwReG81ec76aUGWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52395570"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52395570"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 00:58:27 -0700
X-CSE-ConnectionGUID: 53hM+6eyRsCtclKojwupYQ==
X-CSE-MsgGUID: giTPK56ARz26TW/KkDpMjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="149247092"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa007.jf.intel.com with ESMTP; 17 Jun 2025 00:58:25 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Tue, 17 Jun 2025 13:14:02 +0530
Subject: [PATCH] drm/i915/panel: register drm_panel and call
 prepare/unprepare for eDP
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com>
X-B4-Tracking: v=1; b=H4sIAMEcUWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDM0Nz3dSUgviCxLzUHN20JEuDJMNkc2Mzo0QloPqCotS0zAqwWdGxtbU
 A8idgVFsAAAA=
X-Change-ID: 20250617-edp_panel-fb90b1c7362a
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, shawn.c.lee@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Allocate and register drm_panel to allow the panel_follower framework to
detect the eDP panel and pass drm_connector::kdev device to drm_panel
allocation for matching.
Call drm_panel_prepare/unprepare in ddi_enable for eDP to allow the
followers to get notified of the panel power state changes.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
v1: Initial patch version based on the panel_follower added for DSI by
Jani.
---
 drivers/gpu/drm/i915/display/intel_backlight.h |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c       |  4 ++++
 drivers/gpu/drm/i915/display/intel_dp.c        |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h        |  1 +
 drivers/gpu/drm/i915/display/intel_panel.c     | 20 ++++++++++++++++----
 5 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.h b/drivers/gpu/drm/i915/display/intel_backlight.h
index 339643f6389789a9b52c4c1d74e03d8f15a6efa6..ebeb6448188f0b8cf45edd1093439bd6b6e63111 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.h
+++ b/drivers/gpu/drm/i915/display/intel_backlight.h
@@ -18,6 +18,7 @@ enum pipe;
 
 void intel_backlight_init_funcs(struct intel_panel *panel);
 int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe);
+void intel_edp_backlight_setup(struct intel_connector *connector);
 void intel_backlight_destroy(struct intel_panel *panel);
 
 void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cbd1060e966431e0884aa9df7b5e6d2f27fde6d5..36aa6d14589d37614fe13ba15baf4c7e60014e2c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -73,6 +73,7 @@
 #include "intel_lspcon.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_modeset_lock.h"
+#include "intel_panel.h"
 #include "intel_pfit.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -3355,6 +3356,8 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
 	drm_connector_update_privacy_screen(conn_state);
 	intel_edp_backlight_on(crtc_state, conn_state);
 
+	intel_panel_prepare(crtc_state, conn_state);
+
 	if (!intel_lspcon_active(dig_port) || intel_dp_has_hdmi_sink(&dig_port->dp))
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
@@ -3552,6 +3555,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
 
 	intel_dp->link.active = false;
 
+	intel_panel_unprepare(old_conn_state);
 	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_alpm_disable(intel_dp);
 	intel_edp_backlight_off(old_conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 277b40b13948ed964f20aa1243f76aa263615360..451b6be6106d6ac244d23fe2d997b4f7b3e9f002 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6464,9 +6464,9 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 						       fixed_mode->vdisplay);
 }
 
-static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
-				      struct intel_connector *connector)
+void intel_edp_backlight_setup(struct intel_connector *connector)
 {
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum pipe pipe = INVALID_PIPE;
 
@@ -6627,7 +6627,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	intel_panel_init(connector, drm_edid);
 
-	intel_edp_backlight_setup(intel_dp, connector);
+	intel_panel_register(connector);
 
 	intel_edp_add_properties(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0657f568119662828344cfddbe876f2acf2596d9..2544783d3d5ad0d8e334fbe3a9ab874e7fee559e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
+void intel_edp_backlight_setup(struct intel_connector *connector);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index f956919dc648eab507cdcca149672c1ce0173481..e884d9de3666b17197e3003af7bd9388b2889e6f 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -511,11 +511,21 @@ int intel_panel_register(struct intel_connector *connector)
 	struct intel_panel *panel = &connector->panel;
 	int ret;
 
-	ret = intel_backlight_device_register(connector);
-	if (ret)
-		return ret;
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_DSI:
+		ret = intel_backlight_device_register(connector);
+		if (ret)
+			return ret;
+		break;
+	case DRM_MODE_CONNECTOR_eDP:
+		intel_edp_backlight_setup(connector);
+		break;
+	default:
+		break;
+	}
 
-	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
+	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI ||
+	    connector->base.connector_type == DRM_MODE_CONNECTOR_eDP) {
 		struct device *dev = connector->base.kdev;
 		struct drm_panel *base;
 
@@ -561,6 +571,7 @@ int intel_panel_register(struct intel_connector *connector)
 
 err:
 	intel_backlight_device_unregister(connector);
+	intel_backlight_destroy(panel);
 
 	return ret;
 }
@@ -573,6 +584,7 @@ void intel_panel_unregister(struct intel_connector *connector)
 		drm_panel_remove(panel->base);
 
 	intel_backlight_device_unregister(connector);
+	intel_backlight_destroy(panel);
 }
 
 /* Notify followers, if any, about power being up. */

---
base-commit: 6f72990d9e0fe084afe257621edd730444a8bc52
change-id: 20250617-edp_panel-fb90b1c7362a

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>


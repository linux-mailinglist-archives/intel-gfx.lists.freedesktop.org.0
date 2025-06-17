Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EB2ADC0FA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 06:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A7010E550;
	Tue, 17 Jun 2025 04:43:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQtCSQ1N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5575F10E4F4;
 Tue, 17 Jun 2025 04:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750135417; x=1781671417;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EHuC4aeYXON5gjT2GgbhOR7xYypkcW/CGLS1TV3d46Q=;
 b=HQtCSQ1NA7tkbLICpmD7Ou/xpBu7FuLB4YUAAOl+ksgy9xlfi9yL9Bbc
 ZfGmHPKjSlATGJOnDVaf+AsfDOsGRgg7O1ICBc72qaRIJPQxwEq0ZYLv8
 5gJnAPVjApNynFvHorP5nWXd1H/H/sfeh3XhYV7QxbbuF1ajP90NVZvKi
 wGDPwkZYXBYCRWyk3dyqoMD+/7XSvdfS3QbY6qrT0V2lKPUk7E2T2r9Nc
 1riUXweIMN2BsTg3bD3Dqdkl2t27WdX1sb1WwyYMgghJmnXL1Ui1C2tGT
 AePQziOCLD3rueC506WCnNUjQf0Y/8dL/En6vJQvAAxea2YfGt/7OQSg2 w==;
X-CSE-ConnectionGUID: /W57dcX4RlOHbKwi/KrlKA==
X-CSE-MsgGUID: eXe3gx/5Qf69ULfmV2Rj3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="69738168"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="69738168"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 21:43:33 -0700
X-CSE-ConnectionGUID: JlHJ21s9T5mwimwRr8YciA==
X-CSE-MsgGUID: WbdFtbstT0WBXl0eW6nJ6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="153625508"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa004.jf.intel.com with ESMTP; 16 Jun 2025 21:43:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Date: Tue, 17 Jun 2025 10:13:06 +0530
Message-Id: <20250617044305.3079459-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

We only support resolution up to 4k for single pipe when using
YUV420 format so we prune these modes and restrict the plane size
at src. This is because pipe scaling will not support YUV420 scaling
for hwidth > 4096.

--v2
-Use output format to check [Ville]
-Add Bspec references
-Modify commit messge to point to why this is needed

--v3
-Use a function skl_scaler_mode_valid which is routed throug
intel_pfit_mode_valid [Ville]
-Combine the check conditons [Jonathan]

Bspec: 49247, 50441
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c |  3 +++
 drivers/gpu/drm/i915/display/intel_pfit.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
 drivers/gpu/drm/i915/display/skl_scaler.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
 6 files changed, 63 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 277b40b13948..7af936e6ea46 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1418,6 +1418,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	enum intel_output_format sink_format, output_format;
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
@@ -1451,6 +1452,12 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 						     mode->hdisplay, target_clock);
 	max_dotclk *= num_joined_pipes;
 
+	sink_format = intel_dp_sink_format(connector, mode);
+	output_format = intel_dp_output_format(connector, sink_format);
+
+	if (!intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes, &status))
+		return status;
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -1466,11 +1473,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (intel_dp_has_dsc(connector)) {
-		enum intel_output_format sink_format, output_format;
 		int pipe_bpp;
 
-		sink_format = intel_dp_sink_format(connector, mode);
-		output_format = intel_dp_output_format(connector, sink_format);
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9961ff259298..53ba1e16100d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2053,6 +2053,9 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
+	if (!intel_pfit_mode_valid(display, mode, sink_format, 0, &status))
+		return status;
+
 	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
 	if (status != MODE_OK) {
 		if (ycbcr_420_only ||
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 13541be4d6df..a8fb92c3417a 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -14,6 +14,7 @@
 #include "intel_lvds_regs.h"
 #include "intel_pfit.h"
 #include "intel_pfit_regs.h"
+#include "skl_scaler.h"
 
 static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
 {
@@ -546,6 +547,17 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	return intel_gmch_pfit_check_timings(crtc_state);
 }
 
+bool
+intel_pfit_mode_valid(struct intel_display *display,
+		      const struct drm_display_mode *mode,
+		      enum intel_output_format output_format,
+		      int num_joined_pipes,
+		      enum drm_mode_status *status)
+{
+	return skl_scaler_mode_valid(display, mode, output_format,
+				     num_joined_pipes, status);
+}
+
 int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
index ef34f9b49d09..ce68ceebc700 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.h
+++ b/drivers/gpu/drm/i915/display/intel_pfit.h
@@ -6,8 +6,14 @@
 #ifndef __INTEL_PFIT_H__
 #define __INTEL_PFIT_H__
 
+#include <linux/types.h>
+
+enum drm_mode_status;
+struct drm_display_mode;
 struct drm_connector_state;
 struct intel_crtc_state;
+struct intel_display;
+enum intel_output_format;
 
 int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state);
@@ -17,5 +23,9 @@ void ilk_pfit_get_config(struct intel_crtc_state *crtc_state);
 void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state);
 void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state);
 void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state);
-
+bool intel_pfit_mode_valid(struct intel_display *display,
+			   const struct drm_display_mode *mode,
+			   enum intel_output_format output_format,
+			   int num_joined_pipes,
+			   enum drm_mode_status *status);
 #endif /* __INTEL_PFIT_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d77798499c57..27001b52daf8 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -134,6 +134,24 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
 	}
 }
 
+bool
+skl_scaler_mode_valid(struct intel_display *display,
+		      const struct drm_display_mode *mode,
+		      enum intel_output_format output_format,
+		      int num_joined_pipes,
+		      enum drm_mode_status *status)
+{
+	if (num_joined_pipes < 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		if (DISPLAY_VER(display) >= 14 &&
+		    mode->hdisplay > 4096) {
+			*status = MODE_NO_420;
+			return false;
+		}
+	}
+
+	return true;
+}
+
 static int
 skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		  unsigned int scaler_user, int *scaler_id,
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 355ea15260ca..37c6543b4731 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -5,10 +5,16 @@
 #ifndef INTEL_SCALER_H
 #define INTEL_SCALER_H
 
+#include <linux/types.h>
+
+enum drm_mode_status;
+struct drm_display_mode;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsb;
+enum intel_output_format;
 struct intel_plane;
 struct intel_plane_state;
 
@@ -32,4 +38,10 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
 
 void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
 
+bool skl_scaler_mode_valid(struct intel_display *display,
+			   const struct drm_display_mode *mode,
+			   enum intel_output_format output_format,
+			   int num_joined_pipes,
+			   enum drm_mode_status *status);
+
 #endif
-- 
2.34.1


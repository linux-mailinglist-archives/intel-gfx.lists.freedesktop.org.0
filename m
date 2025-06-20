Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6519CAE1773
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jun 2025 11:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363B010E0E2;
	Fri, 20 Jun 2025 09:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G87ZmeNt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71AF110E0E2;
 Fri, 20 Jun 2025 09:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750411575; x=1781947575;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/W7rz8RYD198BXbUhthv3AN+KkBNSpWHRZJHU2CWSbg=;
 b=G87ZmeNtzt3sZg+VLQ4Du/u+GuPo7obvHwi1o8PKruiwtDT4qF2pGhmN
 3n8ZHZRUoyRZw7wWk/rQl8CcxjgoSoMvcW46FBPqjxCRe+NsfDE8yX4iz
 b97ISwfedxFiVD/8kKk2mDdifK9urE6uGzK2jrIGNOmH1lUU3sXHNl/s3
 KAaBr3Q9y9aoRrl4btVv/ZqdvLZX8gLpnf8xSI4iSdvs+DZZxbsRaDw/2
 GnSZavAcQfqdxvq9AmRBkcAsV3qSTGdf68jYvwyZF+Fvu0Nx4VxXXSJKD
 rYFmGpeK3M5TxMO4cU9z7JheES58WOoOlh9Iuqtjjo7Zqk5Vg+4I3+Xs5 Q==;
X-CSE-ConnectionGUID: MJGqRvRaSpaUaJoouJQZ/w==
X-CSE-MsgGUID: JEA5cdorQF2qgsivt7Gdgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52370632"
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="52370632"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 02:26:05 -0700
X-CSE-ConnectionGUID: cYT3FRqrSOK/Xs4wgsTluw==
X-CSE-MsgGUID: XabjgqGTR2O+ZKnK56DsIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,251,1744095600"; d="scan'208";a="174471973"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 20 Jun 2025 02:26:03 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Date: Fri, 20 Jun 2025 14:55:34 +0530
Message-Id: <20250620092533.3711401-1-suraj.kandpal@intel.com>
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

--v4
-mode_valid functions should return drm_mode_status [Jani]

Bspec: 49247, 50441
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
 drivers/gpu/drm/i915/display/skl_scaler.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
 6 files changed, 62 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 277b40b13948..f10650d79663 100644
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
@@ -1451,6 +1452,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 						     mode->hdisplay, target_clock);
 	max_dotclk *= num_joined_pipes;
 
+	sink_format = intel_dp_sink_format(connector, mode);
+	output_format = intel_dp_output_format(connector, sink_format);
+
+	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
+	if (status != MODE_OK)
+		return status;
+
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -1466,11 +1474,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
index 9961ff259298..03045d188817 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2053,6 +2053,10 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
+	status = intel_pfit_mode_valid(display, mode, sink_format, 0);
+	if (status != MODE_OK)
+		return status;
+
 	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
 	if (status != MODE_OK) {
 		if (ycbcr_420_only ||
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 13541be4d6df..68539e7c2a24 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -14,6 +14,7 @@
 #include "intel_lvds_regs.h"
 #include "intel_pfit.h"
 #include "intel_pfit_regs.h"
+#include "skl_scaler.h"
 
 static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
 {
@@ -546,6 +547,16 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	return intel_gmch_pfit_check_timings(crtc_state);
 }
 
+enum drm_mode_status
+intel_pfit_mode_valid(struct intel_display *display,
+		      const struct drm_display_mode *mode,
+		      enum intel_output_format output_format,
+		      int num_joined_pipes)
+{
+	return skl_scaler_mode_valid(display, mode, output_format,
+				     num_joined_pipes);
+}
+
 int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
index ef34f9b49d09..2f075748a34e 100644
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
+enum drm_mode_status
+intel_pfit_mode_valid(struct intel_display *display,
+		      const struct drm_display_mode *mode,
+		      enum intel_output_format output_format,
+		      int num_joined_pipes);
 #endif /* __INTEL_PFIT_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d77798499c57..b8193ebf0772 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -134,6 +134,22 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
 	}
 }
 
+enum drm_mode_status
+skl_scaler_mode_valid(struct intel_display *display,
+		      const struct drm_display_mode *mode,
+		      enum intel_output_format output_format,
+		      int num_joined_pipes)
+{
+	if (num_joined_pipes < 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		if (DISPLAY_VER(display) >= 14 &&
+		    mode->hdisplay > 4096) {
+			return MODE_NO_420;
+		}
+	}
+
+	return MODE_OK;
+}
+
 static int
 skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		  unsigned int scaler_user, int *scaler_id,
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 355ea15260ca..7beee5ee0e89 100644
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
 
+enum drm_mode_status
+skl_scaler_mode_valid(struct intel_display *display,
+		     const struct drm_display_mode *mode,
+		     enum intel_output_format output_format,
+		     int num_joined_pipes);
+
 #endif
-- 
2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5116AFC1B5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 06:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5877010E583;
	Tue,  8 Jul 2025 04:33:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gwqACl6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B51810E581;
 Tue,  8 Jul 2025 04:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751949223; x=1783485223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zhM/xDvdjCtN/gMM14TZXuAmMfTDhPfIkKBnKbtWM20=;
 b=gwqACl6j06bNkT8DxhnnqGFQ1TEaS4uASmSpnM+MMciRoSz6Gfu3oJK3
 0dpuYtP6GHv+GUaqdTWyqMbr8Jl9ST6qKvQJWB1MfR58u8zJ/UQCvYB9z
 hnJNLnqNEzACVNBUeaSek0uqmZYZZtrzZfF5XFUllw2Kg+WI7V4HjSnYu
 rSv7iYKx7nmgFZimWdApx9ts5qPOfigozvADUXOhX/1xVSqKZcUuFbCZ7
 15eS31hNHsohytj+q9/IdF7qqNy2ctecC/7Kh3kToj+l7yFuI4FVYSs5A
 mxXekfn01rYJqPj/Ni4uGAbOBSY8HX++/KTzhTKcP5/IxkzGqqZpeD24K g==;
X-CSE-ConnectionGUID: H9yukcFyRBywBHOq6aiLSg==
X-CSE-MsgGUID: eKFdCnybSHuFKsgTAdoKcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="57849833"
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="57849833"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 21:33:42 -0700
X-CSE-ConnectionGUID: SVp9L847S26OCditolhr4Q==
X-CSE-MsgGUID: aQKjl/KKRDidh9RjmQ9G/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="154812889"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 07 Jul 2025 21:33:40 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH 2/2] drm/i915/xe3lpd: Prune modes for YUV420
Date: Tue,  8 Jul 2025 10:03:28 +0530
Message-Id: <20250708043328.1086192-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250708043328.1086192-1-suraj.kandpal@intel.com>
References: <20250708043328.1086192-1-suraj.kandpal@intel.com>
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

--v5
-Use skl_scaler_max_src_size [Ankit]

Bspec: 49247, 50441
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
 drivers/gpu/drm/i915/display/skl_scaler.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
 6 files changed, 65 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df..62b812cc0b67 100644
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
index a6ba9da03542..ad18ea7af3d5 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -132,6 +132,25 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
 	}
 }
 
+enum drm_mode_status
+skl_scaler_mode_valid(struct intel_display *display,
+		      const struct drm_display_mode *mode,
+		      enum intel_output_format output_format,
+		      int num_joined_pipes)
+{
+	int max_h, max_w;
+
+	if (num_joined_pipes < 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		skl_scaler_max_src_size(display, &max_w, &max_h);
+		if (DISPLAY_VER(display) >= 14 &&
+		    mode->hdisplay > max_h) {
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
index 355ea15260ca..692716dd7616 100644
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
+		      const struct drm_display_mode *mode,
+		      enum intel_output_format output_format,
+		      int num_joined_pipes);
+
 #endif
-- 
2.34.1


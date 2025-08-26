Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D57B35509
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 09:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BE910E184;
	Tue, 26 Aug 2025 07:10:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXQTlbPG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3419B10E184
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 07:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756192202; x=1787728202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tq2uTZzoEbyWL5KpYwjFrYllaDx33D/OnbcmXcysHzY=;
 b=hXQTlbPGo+GpTGzml1+3aXv3C7xyrghjXfWGL2oVpnonE2FmlnkF2yvF
 tD4SMCt2+xRfQle4R3mUD5llw2lQCe6xMYjdvD1MRUz+JZYhqmn4Bfj1x
 8hyoBUYLwNQDN27qgQfyD1MVM6WCEVygsr7FTpqf1PxUxlDEhVGr/FyD4
 jY3q5xutvbdFPFEDWS9Z2TE67cSWyrItwhifSvzxmNjpI8tcesuGMPqw1
 0Zn0eaYGw+LYpucjW0nmnk1yMtZcXGVUwG7qqxB5Jn5wKxZUFSDfnpnlD
 NIqE579PkmecO0UirqyzFHz8mJix6CDuNcT0VLOZyndn8lWqXIeZMfNoC g==;
X-CSE-ConnectionGUID: rkekPHyZRGag878OGtoDeQ==
X-CSE-MsgGUID: +Jw/wJDXSQykFHVELv8HKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="57617677"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="57617677"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 00:10:02 -0700
X-CSE-ConnectionGUID: O0MlWkLARMGXJQd/KAOkVg==
X-CSE-MsgGUID: LxwayiIASJ29bYiphbcOAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169006014"
Received: from shawnle1-i9-build-machine.itwn.intel.com ([10.225.64.200])
 by fmviesa007.fm.intel.com with ESMTP; 26 Aug 2025 00:09:59 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [v3] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Date: Tue, 26 Aug 2025 07:05:47 +0000
Message-Id: <20250826070547.151296-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250806042053.3570558-1-shawn.c.lee@intel.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
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

While performing HDMI compliance testing, test equipment may request
different bpc output for signal measurement. However, display driver
typically determines the maximum available bpc based on HW bandwidth.

Introduce a new debugfs that allows user to configure dedicated bpc
manually, and making HDMI compliance test much easier.

v2: Using exist variable max_requested_bpc.
v3: Extend "intel_force_link_bpp" to support HDMI as suggested by Imre.

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 5 +----
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 4 ++++
 drivers/gpu/drm/i915/display/intel_link_bw.c | 6 +-----
 3 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 108ebd97f9e4..b31fb1e4bc1a 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -136,11 +136,8 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (HAS_PCH_SPLIT(display)) {
+	if (HAS_PCH_SPLIT(display))
 		crtc_state->has_pch_encoder = true;
-		if (!intel_fdi_compute_pipe_bpp(crtc_state))
-			return -EINVAL;
-	}
 
 	if (display->platform.g4x)
 		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cbee628eb26b..027e8ed0cea8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -55,6 +55,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_fdi.h"
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_regs.h"
@@ -2345,6 +2346,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
 		pipe_config->pixel_multiplier = 2;
 
+	if (!intel_fdi_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->has_audio =
 		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index 3caef7f9c7c4..d194a366ff10 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -449,6 +449,7 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
 	switch (connector->base.connector_type) {
 	case DRM_MODE_CONNECTOR_DisplayPort:
 	case DRM_MODE_CONNECTOR_eDP:
+	case DRM_MODE_CONNECTOR_HDMIA:
 		break;
 	case DRM_MODE_CONNECTOR_VGA:
 	case DRM_MODE_CONNECTOR_SVIDEO:
@@ -457,11 +458,6 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
 		if (HAS_FDI(display))
 			break;
 
-		return;
-	case DRM_MODE_CONNECTOR_HDMIA:
-		if (HAS_FDI(display) && !HAS_DDI(display))
-			break;
-
 		return;
 	default:
 		return;
-- 
2.34.1


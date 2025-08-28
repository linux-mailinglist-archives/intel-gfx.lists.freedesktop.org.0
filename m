Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA86B3966F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 10:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6297510E6D8;
	Thu, 28 Aug 2025 08:11:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MHvRWGOn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C5B10E6D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 08:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756368666; x=1787904666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h7bMDprU1rOwcKzavss0z5IHz9GmluY8HDfei2Y/Jug=;
 b=MHvRWGOnqco/LM81AhaCZ0LEEyS2hv0CDCnomqlXMBOawHhJWMwt0262
 dF3I0R1sW93N9VHu5dxjVEZQ6HcBCaJURtE7Q6GQx3AlFPDBD5ZGcjdZ5
 11S1fFPBjg7Of4i/xSBkg6mKHRvUfiGkGGh1ygN21cl0JhhawKvCeXt4W
 gCjsRqUYh672ytZq8v61VaQUpgwrIOmLXXzMbeUjHPXFhH/zYsnDE1Xrp
 hHfbdf1YuVnrzLH1WWdPciz+jlBwrvHRPpwkUmf8SY5CndeagD/yi4v13
 04m57Nj5GbO8F+sJwEGD1P4PF7KKzV+3h+kvWyGi7fX5iyYUoD5y4/gHB g==;
X-CSE-ConnectionGUID: CokjvtZnRsWHjGyCX2v4RQ==
X-CSE-MsgGUID: tSo3BkGTSCGXdmpSWZdveA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58483038"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58483038"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 01:11:06 -0700
X-CSE-ConnectionGUID: PiPXi0uTRGSv46iYr4k1kA==
X-CSE-MsgGUID: X5eWfoZaS+qmon9GjjTjNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="201012665"
Received: from shawnle1-i9-build-machine.itwn.intel.com ([10.225.64.200])
 by orviesa002.jf.intel.com with ESMTP; 28 Aug 2025 01:11:04 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 1/2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Date: Thu, 28 Aug 2025 08:06:48 +0000
Message-Id: <20250828080649.186452-1-shawn.c.lee@intel.com>
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
This change leverages the existing debugfs (intel_force_link_bpp)
to manage HDMI bpc, and making it easier to pass HDMI CTS.

v2: Using exist variable max_requested_bpc.
v3: Extend intel_force_link_bpp to support HDMI as suggested by Imre.
v4: Update commit message suggested by Jani.

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


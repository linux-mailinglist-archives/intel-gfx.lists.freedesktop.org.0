Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC69B3D964
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Sep 2025 08:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E618410E315;
	Mon,  1 Sep 2025 06:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPzVWp4j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6586810E315
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Sep 2025 06:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756706518; x=1788242518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WXF1JTHYHLlpYr1nmAnjQ7aJ3SHPsZ1v0peuOXzPk0E=;
 b=aPzVWp4jl2HNFrWE27GE7oYH0JwwNvzREpLnlFz1h8FHJ3DOD1HBLc1A
 QRNdHAZoVnTrahlUyd24joQLYj8F0v/nzlfpt5ZIKXbtRV8vwkirl8I29
 E9wHboTFVauaM/kcJT+P1X6G4Y9DFzaRd+FpiJpBkfxueLhnL6Pc78QZQ
 0vh7Z9iE7wJhV2L/zMRGRSk3NhiXzsE7SEjPzw3QqnWGNLxc0O+WyR7Js
 vuApCXymfn2jDi4q4ZZ1rHKprBb5K9qPrcdR0w8lIFMgroU9zIRl3kzI9
 g0L9/Ojl+bzRq6NvFkM4fXuKrxOcyUHcbZt229k0VbF6Z7rPeys7lzPif g==;
X-CSE-ConnectionGUID: GEt3HzDRRgGEXzLQ4ZX17g==
X-CSE-MsgGUID: sgxF5xZPQhCe271UL35hBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81485494"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81485494"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2025 23:01:58 -0700
X-CSE-ConnectionGUID: hEkLVf9wRV2nq2vgoR7lSg==
X-CSE-MsgGUID: Y0Lrjf5rRiOmvoU74c8VKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="171670656"
Received: from shawnle1-i9-build-machine.itwn.intel.com ([10.225.64.200])
 by fmviesa010.fm.intel.com with ESMTP; 31 Aug 2025 23:01:38 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 1/2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Date: Mon,  1 Sep 2025 05:57:20 +0000
Message-Id: <20250901055721.219995-2-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250901055721.219995-1-shawn.c.lee@intel.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250901055721.219995-1-shawn.c.lee@intel.com>
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
v5: Remove unused header file.

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 6 +-----
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 4 ++++
 drivers/gpu/drm/i915/display/intel_link_bw.c | 6 +-----
 3 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 108ebd97f9e4..f6e2d1ed5639 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -20,7 +20,6 @@
 #include "intel_dp_aux.h"
 #include "intel_dpio_phy.h"
 #include "intel_encoder.h"
-#include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
@@ -136,11 +135,8 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
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


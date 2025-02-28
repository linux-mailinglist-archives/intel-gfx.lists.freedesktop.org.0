Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CEFA490B8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 06:10:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20F010EBFC;
	Fri, 28 Feb 2025 05:10:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z9SIRaFd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4025410EBFC;
 Fri, 28 Feb 2025 05:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740719448; x=1772255448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0iT2f1/zHj3k/wEtAyjlkc+uav5eUrTAX+GjWClR3AU=;
 b=Z9SIRaFdUYnaRS2qYl+zK4a+Zh2g6usfQJQomCsnMBZLBt3xtrK8fHtk
 FD0LnKoK/Os4D8l6QwBUmghfdpAQOXUdU28QTGaflPO8j9qmOaalZyhSD
 sMDlWuBNl1F2shnN0iAZ3lfmHw4WlTWqktiPjy00naGx9D3H3C1hu3ktf
 D0SYCQFfkBwS8eUOtkxALMo79zTiAWXAt1todVnF4BVXmtfSyVOWSy5vn
 JzzZvOmrqSwrVKVAHgbWnKcYUMzdLxGuY5fH8yteevgQq7CWl/gqaB0mK
 vmBPvKoCpKG56TODlZDO5ASLLn4VR/TEYh27geu+j+YGvL01og4YkxycA g==;
X-CSE-ConnectionGUID: Q2HpKaRdSwuha8Rot4fC4A==
X-CSE-MsgGUID: x7rb9dwXS/yxV+TSducYWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="45555286"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="45555286"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 21:10:48 -0800
X-CSE-ConnectionGUID: I1sl29QGS2acVYTpx1PXlg==
X-CSE-MsgGUID: /C/B61nDSRaBKsVRex6AJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="122248165"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa004.jf.intel.com with ESMTP; 27 Feb 2025 21:10:46 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, william.tseng@intel.com,
 jani.nikula@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Date: Fri, 28 Feb 2025 10:40:41 +0530
Message-Id: <20250228051041.397020-1-suraj.kandpal@intel.com>
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

Some DSI panel vendors end up hardcoding PPS params because of which
it does not listen to the params sent from the source. We use the
default config tables for DSI panels when using DSC 1.1 rather than
calculate our own rc parameters.

--v2
-Use intel_crtc_has_type [Jani]

--v3
-Add Signed-off-by from William too [Ankit]

--v4
-Use a function to check Mipi dsi dsc 1.1 condition [Ankit]
-Add documentation for using this condition [Ankit]
-Rebase

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 3ed64c17bdff..2a6706517cfa 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -259,6 +259,13 @@ static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state *pipe_config
 	return 0;
 }
 
+static bool is_mipi_dsi_dsc_1_1(struct drm_dsc_config *vdsc_cfg,
+				struct intel_crtc_state *crtc_state)
+{
+	return vdsc_cfg->dsc_version_minor == 1 &&
+		intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI);
+}
+
 int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(pipe_config);
@@ -317,8 +324,14 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * From XE_LPD onwards we supports compression bpps in steps of 1
 	 * upto uncompressed bpp-1, hence add calculations for all the rc
 	 * parameters
+	 * We also don't want to calculate all rc parameters when the panel
+	 * is MIPI DSI and it's using DSC 1.1. The reason being that some
+	 * DSI panels vendors have hardcoded PPS params in the VBT causing
+	 * the parameters sent from the source to be ignore. This causes a
+	 * noise in the display.
 	 */
-	if (DISPLAY_VER(display) >= 13) {
+	if (DISPLAY_VER(display) >= 13 &&
+	    !is_mipi_dsi_dsc_1_1(vdsc_cfg, pipe_config)) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
 		if ((compressed_bpp == 8 ||
-- 
2.34.1


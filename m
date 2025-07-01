Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4631FAEF072
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 10:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9ABD10E51B;
	Tue,  1 Jul 2025 08:05:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wk5dWq1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E6810E51B;
 Tue,  1 Jul 2025 08:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751357150; x=1782893150;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=acpCjGNXhFmxmNs4I0ps14SjpJlq5Em/SZq4l5g+bus=;
 b=Wk5dWq1ZCKEjBvFPD1AVKfSL/OB8gY0UTbatShJDcyp20W804GiAjtTc
 4hcCFP1HUv6VxdikoJgpzAenH+dIIeF6CuqyPPYCexqvmcGyxPFxfoOBJ
 ceqUT0b4x5kkaLDnSjJBm+vD97XkwXDRkyowu8ryP0vIgBFwvLBcd5CrM
 jxg6ZqdRYZyxS0MHPHFasM2A8lp0iZiAkH/Kke6tjlQIAm4XBZrdZBsFY
 T0Eq6trjFRBn5Hqtryai8oWfHW72BR+S4gzQW9vtJkMg6lrXkQvLaqe/7
 rcdE8cJsnmfGplPAlKv7eSy8iCHJA69Ram+vwsA1OWxlF5o2L2j7/Y9xX A==;
X-CSE-ConnectionGUID: /ZJ1guL0SqWFJXPU88r65w==
X-CSE-MsgGUID: 69Ljuv21T6u9YE0EqXIH/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="65053503"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="65053503"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 01:05:50 -0700
X-CSE-ConnectionGUID: UsLRYiJaRx2qMeDCybY9Xw==
X-CSE-MsgGUID: sMOk9nM/So2IWAlFMb2kNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="184628718"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 01 Jul 2025 01:05:46 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, ville.syrjala@linux.intel.com,
 khaled.almahallawy@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Date: Tue,  1 Jul 2025 13:47:56 +0530
Message-ID: <20250701081756.2821286-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
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

RGB limited range should be selected only if explicitly asked by
userspace by the broadcast RGB property with LIMITED_RANGE. This
is mostly enabled in case of CEA modes.

Display port by default uses Full Range, fixed the same. This will help
set correct MSA information for colorimetry. Fixes a CTS issue wrt
colorimetry.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df..8758b9d60d5e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2708,8 +2708,6 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 {
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
 
 	/*
 	 * Our YCbCr output is always limited range.
@@ -2721,18 +2719,13 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
 		return false;
 
-	if (intel_conn_state->broadcast_rgb == INTEL_BROADCAST_RGB_AUTO) {
-		/*
-		 * See:
-		 * CEA-861-E - 5.1 Default Encoding Parameters
-		 * VESA DisplayPort Ver.1.2a - 5.1.1.1 Video Colorimetry
-		 */
-		return crtc_state->pipe_bpp != 18 &&
-			drm_default_rgb_quant_range(adjusted_mode) ==
-			HDMI_QUANTIZATION_RANGE_LIMITED;
-	} else {
-		return intel_conn_state->broadcast_rgb ==
-			INTEL_BROADCAST_RGB_LIMITED;
+	switch (intel_conn_state->broadcast_rgb) {
+	case INTEL_BROADCAST_RGB_LIMITED:
+		return true;
+	case INTEL_BROADCAST_RGB_FULL:
+	case INTEL_BROADCAST_RGB_AUTO:
+	default:
+		return false;
 	}
 }
 
-- 
2.42.0


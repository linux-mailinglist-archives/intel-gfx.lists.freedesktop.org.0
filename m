Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C711C728FA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB2810E6F2;
	Thu, 20 Nov 2025 07:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6lWyjf0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E8B310E6F2;
 Thu, 20 Nov 2025 07:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623163; x=1795159163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vmFpxvYS90fdHgsRK2idhjFJv7PqgFV0DR6AD/auLVc=;
 b=F6lWyjf0t+lvvqkFfPueUUH1YgRd5EVJoWg0+G6bg3dIBLSqJKR+ZZYu
 TKMFJNu5+jXwx6uzW0ID+42Zwi/h/yYoaE7Ejo4tRLFHfwsfte5mlY9iP
 fRL0J7W9aYGRGc/89Ddw4yJnvBrD5j1Lyp3OYFnmOEU4wfV4xmRFeceR5
 nMyEuMNUULQt4kGTrwmnOYKQyuvQGDooih16Q8SA+paV5jiPxCfcJWtE7
 K+QmFi3ZPrauzh1f7N9+SPJVizX2c4Xy1pJCEF5qPvozwS+HAJZO9xclz
 GydW+FCWZancmGe/C1Mkt36kCpl6r8POWbCGUbgDfaPkhWw2JERslkqoL Q==;
X-CSE-ConnectionGUID: /XYfqZxCRR+5Q7sIa8VU9w==
X-CSE-MsgGUID: N8RLK1wbR+u0jGpbwKEWcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559091"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559091"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:23 -0800
X-CSE-ConnectionGUID: yGoIGY7ZQtKWOhAO0XL4TQ==
X-CSE-MsgGUID: Wuw7aUDbTe+SiODnIldmfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073615"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:21 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 02/11] drm/i915/dp: Extract code to get slice and bpp to a
 separate function
Date: Thu, 20 Nov 2025 12:36:30 +0530
Message-ID: <20251120070640.727040-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

Refactor intel_dp_mode_valid() to use a function to get maximum slices
and compressed bpp.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 89 +++++++++++++++----------
 1 file changed, 55 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index da9d2de7b85a..66f469af4b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1435,6 +1435,54 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
+static void get_dsc_slice_and_bpp(struct intel_connector *connector,
+				  const struct drm_display_mode *mode,
+				  int target_clock,
+				  int num_joined_pipes,
+				  enum intel_output_format output_format,
+				  int max_link_clock,
+				  int max_lanes,
+				  u16 *dsc_max_compressed_bpp,
+				  u8 *dsc_slice_count)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int pipe_bpp;
+
+	/*
+	 * TBD pass the connector BPC,
+	 * for now U8_MAX so that max BPC on that platform would be picked
+	 */
+	pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
+
+	/*
+	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
+	 * integer value since we support only integer values of bpp.
+	 */
+	if (intel_dp_is_edp(intel_dp)) {
+		*dsc_max_compressed_bpp = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
+		*dsc_slice_count = drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, true);
+
+		return;
+	}
+
+	if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
+		*dsc_max_compressed_bpp =
+			intel_dp_dsc_get_max_compressed_bpp(display, max_link_clock,
+							    max_lanes, target_clock,
+							    mode->hdisplay, num_joined_pipes,
+							    output_format, pipe_bpp, 64);
+		*dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								target_clock,
+								mode->hdisplay,
+								num_joined_pipes);
+		return;
+	}
+
+	*dsc_max_compressed_bpp = 0;
+	*dsc_slice_count = 0;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1498,40 +1546,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (intel_dp_has_dsc(connector)) {
-		int pipe_bpp;
-
-		/*
-		 * TBD pass the connector BPC,
-		 * for now U8_MAX so that max BPC on that platform would be picked
-		 */
-		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
-
-		/*
-		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
-		 * integer value since we support only integer values of bpp.
-		 */
-		if (intel_dp_is_edp(intel_dp)) {
-			dsc_max_compressed_bpp =
-				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
-			dsc_slice_count =
-				drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
-								true);
-		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(display,
-								    max_link_clock,
-								    max_lanes,
-								    target_clock,
-								    mode->hdisplay,
-								    num_joined_pipes,
-								    output_format,
-								    pipe_bpp, 64);
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
-		}
+		get_dsc_slice_and_bpp(connector, mode, target_clock,
+				      num_joined_pipes,
+				      output_format,
+				      max_link_clock,
+				      max_lanes,
+				      &dsc_max_compressed_bpp,
+				      &dsc_slice_count);
 
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
-- 
2.45.2


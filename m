Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F191F5A8DE9
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 08:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A745B10E5AC;
	Thu,  1 Sep 2022 06:01:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58FC10E5AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 06:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662012091; x=1693548091;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2540V2KVCW+5+o4xnuXt7tt7eZ+D5Sal3LyfsekSN14=;
 b=VV8n2ydCK20irdsIdoOFOxPHMsBohwjz58Ot2bxRaCzmJviMfrjlDRu1
 zMXlKoqPnY1rEt2MvG0wIQfMRaPyqiA8Ir5VcY4GgCyRoivmwIKHBEdi6
 J72wBE/VQKhU0fv79As0r1bZjQElM8ZWRZVLr3Qv3SO7qhD0Cz3PCujT+
 Gdseibq2wn411r4X45OyuNGAAjnooUOtTD8aBNRf7k+4bjpaaYa7OvpG+
 c/MrGGjdtL15WwRx957Q06ThfGlGpW26wtOKHldnJfYYysqioa7QC4Mtr
 27n9b/RkD6d+g4+jeFtVS1hUDnjEQBLwOsY3P1JE3WvsdoJ2HFvDNVtum w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381920252"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="381920252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="754685715"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 11:30:58 +0530
Message-Id: <20220901060101.1000290-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/dp: Use crtc_state members in
 dp_is_ycbcr420
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

Use the new crtc_state members to check if DP DFP will use YCBCR420.
The earlier intel_dp->dfp members are not required as decision to use
color format conversion by the PCON is computed and stored in
crtc_state. Also drop the intel_dp argument in the helper function.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4c1a0d9f750c..f3c2aeda0c1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1192,22 +1192,21 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
 }
 
-static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
-				 const struct intel_crtc_state *crtc_state)
+static bool intel_dp_is_ycbcr420(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
-		 intel_dp->dfp.ycbcr_444_to_420) ||
+		 crtc_state->dp_dfp_config.ycbcr_444_to_420) ||
 		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB &&
-		 intel_dp->dfp.rgb_to_ycbcr &&
-		 intel_dp->dfp.ycbcr_444_to_420);
+		 crtc_state->dp_dfp_config.rgb_to_ycbcr &&
+		 crtc_state->dp_dfp_config.ycbcr_444_to_420);
 }
 
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     int bpc, bool respect_downstream_limits)
 {
-	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
+	bool ycbcr420_output = intel_dp_is_ycbcr420(crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 
 	/*
@@ -2014,7 +2013,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	if (ycbcr_420_only)
 		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
 
-	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
+	if (ycbcr_420_only && !intel_dp_is_ycbcr420(crtc_state)) {
 		drm_dbg_kms(&i915->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -2023,7 +2022,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
 	if (ret) {
-		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
+		if (intel_dp_is_ycbcr420(crtc_state) ||
 		    !connector->base.ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
-- 
2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F51AF7725
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 16:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C9510E0B0;
	Thu,  3 Jul 2025 14:20:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GI7JCFIo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7166288697;
 Thu,  3 Jul 2025 14:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751552451; x=1783088451;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kX8SkCf8xMjYKKI8aJSC3xRY9ikotsqs2xcM99rhiPc=;
 b=GI7JCFIoW8HpmSJBt43l8vg38mbI0HOCbBTvRUqiansQt45MJk+m73+/
 BPgvLsnSKjSx+xY3KMd0vfCsMNKYF7ZXhgy3iGDAwcDy+2J/wsN0AJ4/5
 bOfkMbBubapsbiEDeqeNXFP1AC3GAWYOb/9jw3PXbzJOLz6cGHbieUWEn
 O1DqwBO76VO680lPw0j0YlpP7Q/sYtlJVK6wIyYFShp1ytTMyEdprJVFf
 6oPBvqXz0rRvV8rzach0PfBUdPq0LmrH4MDM4G3UClSsc49pW5ij5bmLp
 rc9eLBXSnVmSIMndoeHyP3rRjZ2wx+dIUmmQRElL8Ya/ZtSaFr1U4RnBR w==;
X-CSE-ConnectionGUID: 4xEm2mIwQGClwTXrYJ5m7Q==
X-CSE-MsgGUID: jZo+42ayQ/GxOw4gYg6OOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="64479727"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="64479727"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 07:20:51 -0700
X-CSE-ConnectionGUID: sJAaaEEkQHSRPdXt6TNyhA==
X-CSE-MsgGUID: VrjMTD/UTxeTHKBorCcmgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="185396192"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 03 Jul 2025 07:20:49 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
Date: Thu,  3 Jul 2025 19:32:52 +0530
Message-Id: <20250703140252.3547953-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

If user-space has enabled HDR by passing HDR metadata and we can't support
10bpc fallback to DSC.

Now that we need the helper to determine the presence of HDR metadata at
multiple places make it non static.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h          |  1 +
 .../drm/i915/display/intel_dp_aux_backlight.c    | 13 -------------
 3 files changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df..abbba159e479 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1774,6 +1774,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	     bpp -= 2 * 3) {
 		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
 
+		if (intel_dp_in_hdr_mode(conn_state) && bpp < 30)
+			return -EINVAL;
+
 		mode_rate = intel_dp_link_required(clock, link_bpp);
 
 		for (i = 0; i < intel_dp->num_common_rates; i++) {
@@ -2910,6 +2913,19 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	}
 }
 
+bool
+intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
+{
+	struct hdr_output_metadata *hdr_metadata;
+
+	if (!conn_state->hdr_output_metadata)
+		return false;
+
+	hdr_metadata = conn_state->hdr_output_metadata->data;
+
+	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
+}
+
 static void
 intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 					    struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0657f5681196..5def589e3c0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
+bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 41228478b21c..12084a542fc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -225,19 +225,6 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
 			connector->base.base.id, connector->base.name);
 }
 
-static bool
-intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
-{
-	struct hdr_output_metadata *hdr_metadata;
-
-	if (!conn_state->hdr_output_metadata)
-		return false;
-
-	hdr_metadata = conn_state->hdr_output_metadata->data;
-
-	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
-}
-
 static void
 intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
-- 
2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B61AC49C2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 09:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8779D10E462;
	Tue, 27 May 2025 07:59:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P7AKf9CN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF0B10E462
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 07:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748332786; x=1779868786;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f8bf5iQ+x75BQemLddex03mnLNYXRkVjx0kcTsBpcIg=;
 b=P7AKf9CN1L6i0wwaKTITLHt3UAqEXoypxtgeXwBlhcvYlu+bsyz8ANnu
 c7b9QpkCoNvyMLv/pjohgteM/qLLLx+D7GL9SyNE/VfKuKI66PMKYei+g
 NqE4Wdk4KtT4DB9rZjLzcrFk3YUHeTL1WxMfLaAhHqu199uunhMxIA5+v
 F6Lm9BNLj7PXTriFbWqO2qs8aUgmGbOdddhWOZxhvF2NrlmwZfeAuOioS
 CmYXmHURbJSfY4At6/aRJvJR9xl3v1WqbKK4jkphGSxJMQBX5D9Enghmi
 VFD+OsqNzqHskEPNIdLl3EskCL6cbySumyhdZg97n4wU4yukQJ5fU3iAJ g==;
X-CSE-ConnectionGUID: W2/MCpaeQiC1ZtRKeHbHjg==
X-CSE-MsgGUID: Zzyiw9hjRnG2DjN8T31ikA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="50010435"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="50010435"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 00:59:45 -0700
X-CSE-ConnectionGUID: EuFs/DgATBeiS6jSO9jfxw==
X-CSE-MsgGUID: f4Y5ypatTTuB4NmFnaMK+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="147721990"
Received: from unknown (HELO shawnle1-i9-build-machine.itwn.intel.com)
 ([10.225.64.200])
 by orviesa004.jf.intel.com with ESMTP; 27 May 2025 00:59:44 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/dp: Enable DSC on external DP display if VBT allows
Date: Tue, 27 May 2025 07:59:06 +0000
Message-Id: <20250527075906.65542-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

A DSC setting has been available in VBT since version 251, which allows
users to enable or disable the DSC feature based on their system design.
With this in mind, DP driver should reference this setting and avoid
enabling DSC if this value is not allowed.

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c   |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_bios.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 5 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ba7b8938b17c..f08dd54fe4d4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3548,6 +3548,14 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 	return false;
 }
 
+bool intel_bios_encoder_ext_display_dsc_disabled(const struct intel_bios_encoder_data *devdata)
+{
+	if (!devdata || devdata->display->vbt.version < 251)
+		return false;
+
+	return devdata->child.disable_compression_for_ext_disp;
+}
+
 static const u8 adlp_aux_ch_map[] = {
 	[AUX_CH_A] = DP_AUX_A,
 	[AUX_CH_B] = DP_AUX_B,
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 6cd7a011b8c4..901ba63e205d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -258,6 +258,7 @@ bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_da
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_ext_display_dsc_disabled(const struct intel_bios_encoder_data *devdata);
 enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *devdata);
 enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
 int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 640c43bf62d4..eb1e6de0148a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1389,9 +1389,11 @@ int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 	return 1;
 }
 
-bool intel_dp_has_dsc(const struct intel_connector *connector)
+bool intel_dp_has_dsc(struct intel_dp *intel_dp,
+		      const struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!HAS_DSC(display))
 		return false;
@@ -1403,6 +1405,10 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	    connector->panel.vbt.edp.dsc_disable)
 		return false;
 
+	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
+	    intel_bios_encoder_ext_display_dsc_disabled(encoder->devdata))
+		return false;
+
 	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
 		return false;
 
@@ -1463,7 +1469,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	mode_rate = intel_dp_link_required(target_clock,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
-	if (intel_dp_has_dsc(connector)) {
+	if (intel_dp_has_dsc(intel_dp, connector)) {
 		enum intel_output_format sink_format, output_format;
 		int pipe_bpp;
 
@@ -1650,7 +1656,7 @@ bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state)
 {
-	if (!intel_dp_has_dsc(connector))
+	if (!intel_dp_has_dsc(intel_dp, connector))
 		return false;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 742ae26ac4a9..309dad5b1b47 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -83,7 +83,7 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
-bool intel_dp_has_dsc(const struct intel_connector *connector);
+bool intel_dp_has_dsc(struct intel_dp *intel_dp, const struct intel_connector *connector);
 int intel_dp_link_symbol_size(int rate);
 int intel_dp_link_symbol_clock(int rate);
 bool intel_dp_is_port_edp(struct intel_display *display, enum port port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c1fd6aceec2c..4f18059d9913 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1508,7 +1508,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	if (intel_dp_has_dsc(connector)) {
+	if (intel_dp_has_dsc(intel_dp, connector)) {
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
-- 
2.34.1


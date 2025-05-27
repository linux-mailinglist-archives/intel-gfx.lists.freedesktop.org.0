Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ADAAC51D8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 17:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A78A10E49E;
	Tue, 27 May 2025 15:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LBsyx7oz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 214F210E49E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 15:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748359163; x=1779895163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kV/J2IHNkHj27EzHLWJPRWnyaxIWdxMm3hrqxTH/GJg=;
 b=LBsyx7ozF7qPh+lr+wFTkzBoA0Hr7oX23gQ+BATTjvJUjk0KnAqjscc3
 BYDE5e4toiGtCLKevEjT1Ko8bLN6IFaNm9j3OFLcRnuV/AhVWKmOTp2nt
 t6Vrlpv2f6OP96toPMV9TmFnTGn841SEjACl8VZ186mFqc6evUw/ByefP
 nR5bxUaLx8Sn3AKmXLm9bjlwYntYPTfDsOltA60Yf7f3lNZ10+/20SsRM
 sjIPVSVrXQj0Q9ivu9OyKs0t67brsiwMWvgCych8I6vwAh/10Bm1fOnpI
 5ajDlOjllHc9+9RAnxOIMJQxODiwkMydL696xfBDAeCvAr80lUozBgTTm Q==;
X-CSE-ConnectionGUID: uRwxcknXT1u+nF+b64j9uw==
X-CSE-MsgGUID: urq1VQZLRuGhRKTTVSCZSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="60983482"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="60983482"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 08:19:20 -0700
X-CSE-ConnectionGUID: TcjepzYRT7mdfSaUYpMKgQ==
X-CSE-MsgGUID: jOcTZgSzSoawUBJDu9pXhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="147732217"
Received: from unknown (HELO shawnle1-i9-build-machine.itwn.intel.com)
 ([10.225.64.200])
 by fmviesa005.fm.intel.com with ESMTP; 27 May 2025 08:19:19 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [v2] drm/i915/dp: Enable DSC on external DP display if VBT allows
Date: Tue, 27 May 2025 15:18:55 +0000
Message-Id: <20250527151855.68325-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250527075906.65542-1-shawn.c.lee@intel.com>
References: <20250527075906.65542-1-shawn.c.lee@intel.com>
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

v2:
 - Remove some const for intel_connector to fix compile error.
 - Check this VBT setting for external HDMI/DP only. DSC will be allowed
   in all other cases.

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c   | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c     |  9 +++++++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 5 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9ce41e689d50..b2e59ca1bd6f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3549,6 +3549,18 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 	return false;
 }
 
+bool intel_bios_encoder_supports_dsc(const struct intel_bios_encoder_data *devdata)
+{
+	if (!devdata || devdata->display->vbt.version < 251)
+		return true;
+
+	if ((intel_bios_encoder_supports_dp(devdata) && !intel_bios_encoder_supports_edp(devdata)) ||
+	     intel_bios_encoder_supports_hdmi(devdata))
+		return !devdata->child.disable_compression_for_ext_disp;
+
+	return true;
+}
+
 static const u8 adlp_aux_ch_map[] = {
 	[AUX_CH_A] = DP_AUX_A,
 	[AUX_CH_B] = DP_AUX_B,
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 6cd7a011b8c4..d501070abafd 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -258,6 +258,7 @@ bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_da
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_supports_dsc(const struct intel_bios_encoder_data *devdata);
 enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *devdata);
 enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
 int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 208a953b04a2..f62570c1d346 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1392,9 +1392,11 @@ int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 	return 1;
 }
 
-bool intel_dp_has_dsc(const struct intel_connector *connector)
+bool intel_dp_has_dsc(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!HAS_DSC(display))
 		return false;
@@ -1406,6 +1408,9 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	    connector->panel.vbt.edp.dsc_disable)
 		return false;
 
+	if (!intel_bios_encoder_supports_dsc(encoder->devdata))
+		return false;
+
 	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
 		return false;
 
@@ -1650,7 +1655,7 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 }
 
 bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
-			   const struct intel_connector *connector,
+			   struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state)
 {
 	if (!intel_dp_has_dsc(connector))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index eff3414c05db..876e70246dfb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -83,7 +83,7 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
-bool intel_dp_has_dsc(const struct intel_connector *connector);
+bool intel_dp_has_dsc(struct intel_connector *connector);
 int intel_dp_link_symbol_size(int rate);
 int intel_dp_link_symbol_clock(int rate);
 bool intel_dp_is_port_edp(struct intel_display *display, enum port port);
@@ -171,7 +171,7 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *pipe_config);
 
 bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
-			   const struct intel_connector *connector,
+			   struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index cc00a73898f1..bf613562feab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -551,7 +551,7 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 
 static bool
 adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
-					     const struct intel_connector *connector,
+					     struct intel_connector *connector,
 					     const struct intel_crtc_state *crtc_state,
 					     struct link_config_limits *limits,
 					     bool dsc)
-- 
2.34.1


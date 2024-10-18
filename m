Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB9C9A4798
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D4A810E989;
	Fri, 18 Oct 2024 20:03:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDDArzSM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4AF10E987;
 Fri, 18 Oct 2024 20:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729281800; x=1760817800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nvER12E6+/RLtfeIyLv9rvgizNZYLNAzjWIlKMlFCvM=;
 b=mDDArzSMOLoQNqyYYLyEsE4NHmVrbBKaUKWawpivg0d37ESmFF0+bh7u
 j2ylok9XLl7ybveNviJgkmAEXDVaBKPeDwA8/JDr0pI8aLoDkdm2Gf6QG
 XxIvg2/qr5LokIzqbCb4P+o3CYzXZuyyi2flEfdOwfYUi0eeTSWhnFm6y
 J4w2paOKpu3Ubkr43/gzRqyHmXu31Yz6tuSu4ryEcv4hMxEUmpPH3mcAs
 GUwrsnmBrnx2Tpu1KVN79J1mtcjJN4EcbfbpR0GBW/vhcq+SE20HoMYO2
 orCQLr9mR8pgcqtLB/b92lM3e3x8DXdxIVpJOwMRtpMPLnebDtAFuOyGG w==;
X-CSE-ConnectionGUID: nBwMvM9yQSeB0esYFZoGgg==
X-CSE-MsgGUID: LoGlddt0RJC4t0d45hG0/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28286806"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28286806"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:20 -0700
X-CSE-ConnectionGUID: 10PS6QtiTk+rFbdYjc4evw==
X-CSE-MsgGUID: 8kHstlNUR2e5ctbCGpiHTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="102263873"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:20 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v4 6/7] drm/i915/xe3lpd: Add check to see if edp over type c
 is allowed
Date: Fri, 18 Oct 2024 13:03:10 -0700
Message-ID: <20241018200311.67324-7-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018200311.67324-1-matthew.s.atwood@intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Read PICA register to see if edp over type C is possible and then
add the appropriate tables for it.

--v2
-remove bool from intel_encoder have it in runtime_info [Jani]
-initialize the bool in runtime_info init [Jani]
-dont abbreviate the bool [Jani]

Bspec: 68846
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c    |  4 ++++
 .../gpu/drm/i915/display/intel_display_device.c |  4 ++++
 .../gpu/drm/i915/display/intel_display_device.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c         | 17 ++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h         |  5 +++++
 drivers/gpu/drm/i915/i915_reg.h                 |  3 +++
 6 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f878ef1a97ec..37c66b32325d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2256,9 +2256,13 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+			if (DISPLAY_VER(i915) >= 30 &&
+			    display_runtime->edp_typec_support)
+				return xe3lpd_c20_dp_edp_tables;
 			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
 				return xe2hpd_c20_edp_tables;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index aa22189e3853..8583c3529060 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -15,6 +15,7 @@
 #include "intel_display_params.h"
 #include "intel_display_power.h"
 #include "intel_display_reg_defs.h"
+#include "intel_dp.h"
 #include "intel_fbc.h"
 #include "intel_step.h"
 
@@ -1685,6 +1686,9 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		}
 	}
 
+	if (DISPLAY_VER(i915) >= 30)
+		intel_dp_check_edp_typec_support(display, display_runtime);
+
 	display_runtime->rawclk_freq = intel_read_rawclk(display);
 	drm_dbg_kms(&i915->drm, "rawclk rate: %d kHz\n", display_runtime->rawclk_freq);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 071a36b51f79..410f8b33a8a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -232,6 +232,7 @@ struct intel_display_runtime_info {
 	bool has_hdcp;
 	bool has_dmc;
 	bool has_dsc;
+	bool edp_typec_support;
 };
 
 struct intel_display_device_info {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e04913bc2ff..be21e2743801 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5571,6 +5571,16 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
 		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
 }
 
+void
+intel_dp_check_edp_typec_support(struct intel_display *display,
+				 struct intel_display_runtime_info *display_runtime)
+{
+	u32 ret = 0;
+
+	ret = intel_de_read(display, PICA_PHY_CONFIG_CONTROL);
+	display_runtime->edp_typec_support = ret & EDP_ON_TYPEC;
+}
+
 static int
 intel_dp_detect(struct drm_connector *connector,
 		struct drm_modeset_acquire_ctx *ctx,
@@ -6440,10 +6450,11 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
 		/*
-		 * Currently we don't support eDP on TypeC ports, although in
-		 * theory it could work on TypeC legacy ports.
+		 * Currently we don't support eDP on TypeC ports for DISPLAY_VER < 30,
+		 * although in theory it could work on TypeC legacy ports.
 		 */
-		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
+		if (DISPLAY_VER(dev_priv) < 30)
+			drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
 		type = DRM_MODE_CONNECTOR_eDP;
 		intel_encoder->type = INTEL_OUTPUT_EDP;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 60baf4072dc9..c6a80c4e2166 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -20,6 +20,8 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
+struct intel_display_runtime_info;
 struct intel_dp;
 struct intel_encoder;
 
@@ -204,5 +206,8 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
+void
+intel_dp_check_edp_typec_support(struct intel_display *display,
+				 struct intel_display_runtime_info *display_runtime);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8d758947f301..2743a2dd0a3d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4575,4 +4575,7 @@ enum skl_power_gate {
 
 #define MTL_MEDIA_GSI_BASE		0x380000
 
+#define PICA_PHY_CONFIG_CONTROL		_MMIO(0x16FE68)
+#define   EDP_ON_TYPEC			REG_BIT(31)
+
 #endif /* _I915_REG_H_ */
-- 
2.45.0


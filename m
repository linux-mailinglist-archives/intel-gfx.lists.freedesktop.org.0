Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FE199FC22
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F8510E638;
	Tue, 15 Oct 2024 23:11:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VGwO0p4B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0DE10E633;
 Tue, 15 Oct 2024 23:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033899; x=1760569899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PpoSZTypcCZl8kqg8GyCSyc9O44xYto9vYEYmlMK/+Y=;
 b=VGwO0p4BY1nl1VaL/YrEiHVc7+8c7dU9ckTHOCrqFKvU+2dEFSgCDFt1
 5ZSvS8RWitqXAeTZjCK8xm08/dfiOU5611pjwoAIwUj75JptdbY0EZiGn
 6HTD6v8/YGA5jbHOI/7kEEkFrmUTCZqcX8x0tYIXEONz03nmL9EI0yXaC
 fdKH6V8eQF00z4Xf0BsPUvDcq2a4CKefcmQ9Fp/CS01PdvqTbgULwDAhP
 vxvd+Pv+bR+UC3L3h+R6XQid+GwZV/jg5A1PneXBPUGnwqf4yAVz/0G5W
 +jz+o+O5B9oWdGBrWJfQDHRAsRPg8hFIq0y1C/dEbl50lXhjsvVVjCXU5 w==;
X-CSE-ConnectionGUID: leHa74naRV61ivSeQHdRuw==
X-CSE-MsgGUID: AxpoWj+PQiihmhHfBeYdmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600796"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600796"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:36 -0700
X-CSE-ConnectionGUID: qhX5A4ExSb654zqgK234wg==
X-CSE-MsgGUID: uoPxAWtVS4OSk6iha3lM/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120434"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:35 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3 6/7] drm/i915/xe3lpd: Add check to see if edp over type c
 is allowed
Date: Tue, 15 Oct 2024 16:11:23 -0700
Message-ID: <20241015231124.23982-7-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
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
index 6b27fabd61c3..378725766124 100644
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
@@ -6439,10 +6449,11 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
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
index fc30e0056b07..535383a0e484 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4584,4 +4584,7 @@ enum skl_power_gate {
 
 #define MTL_MEDIA_GSI_BASE		0x380000
 
+#define PICA_PHY_CONFIG_CONTROL		_MMIO(0x16FE68)
+#define   EDP_ON_TYPEC			REG_BIT(31)
+
 #endif /* _I915_REG_H_ */
-- 
2.45.0


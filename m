Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BDB9AD6E5
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845AF10E86E;
	Wed, 23 Oct 2024 21:47:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBCAJTcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5988810E1A6;
 Wed, 23 Oct 2024 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720026; x=1761256026;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GGETU6uKMqfjg3SC2KsVZ7hfgBpvjNKL2xvtOKxt2WU=;
 b=fBCAJTcq32NYWEh+pdit7hSd1qYay9Pr/q2iOSv3dUKm3683TCP0Y/sy
 ovlzs576ncz32UrEUl/T35el2Mqgu+Kp+QfRKxMfG6SyiyhYty5PHjoML
 niOW6IzjKBsEoh/ljEcb1Ngb82rgiULZRUV5ywTCvBZqvs/EEMokadGfE
 lXc8C/Gg8a9D4UOX2QWHtG3lNecxHrVIx6MXbZORUB9CUHCLIKPXcQO0g
 m+iAIlwBqjYURa3+QLX8yBlYgNt2cSDwQ3tmz401sgtUlTHWDlQFiY8S8
 o1QLI0BF+ZFGhFNiEWpC5aUDKqQ2YBhzB9fmK4O6q0fUM+pAJR563IgaL Q==;
X-CSE-ConnectionGUID: stLpuQqRQouPTLJJfGUXYw==
X-CSE-MsgGUID: 3ZbBN6tUSXSHaAV/sfD25w==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54732000"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54732000"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
X-CSE-ConnectionGUID: XvYRtG1QRh2in6AzTOukDQ==
X-CSE-MsgGUID: RB4jBeuoT6mQW7iMFRIptQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809800"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 03/12] drm/i915/xe3lpd: Add check to see if edp over type c
 is allowed
Date: Wed, 23 Oct 2024 14:46:52 -0700
Message-Id: <20241023214701.963830-4-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
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
index 8bd5a4d1b735..ef14e12828c3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2257,9 +2257,13 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
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
index 7e29619ba040..992cc51e07b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5572,6 +5572,16 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
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
@@ -6441,10 +6451,11 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
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
2.25.1


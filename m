Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CEB9B1070
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25E510EB8A;
	Fri, 25 Oct 2024 20:47:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gXPb2Ug7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E5110EB83;
 Fri, 25 Oct 2024 20:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729889268; x=1761425268;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jYS9tPDiJ/uzUuOnOVkd7OBPN+Q7K31DPQPpciUuCf8=;
 b=gXPb2Ug7anX4uYsdeiqsy5oeJ7h1AZ+IubK89SncxVzR341T4stACAhg
 52q04M/DQe3uVwNxITXdiM1jvDC3d68hr/tx/3Oa5S63nl4vxtBRjSGAU
 ZYoaaRIjkXY5DMKWhWQjK0y1lIhOC301c8fJhk/1gJwb+Pq1lIpzsyHRW
 ZlvZ6fcTR3AkF8TV+vPw8FlMZ/r/Q++nUpT6ONOUhj18To/RuXqS1KTRi
 lHa3cjdwd5GrIppHxqSQV2EHrzAeWqS5CXV3oRA1PozCWP/FoLbxL/Gdu
 bbl+ZS0/MAr2v2yJ/dqsOnLIgtWezvPO1IEtY+PSUfbj0aP58QIwgN6KE g==;
X-CSE-ConnectionGUID: njCs8Ga+S7KBwNJ2J8aJig==
X-CSE-MsgGUID: mCqKMdBRRDipG+2zaEuE1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="33484202"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="33484202"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
X-CSE-ConnectionGUID: wFzG3z7VQ6iw+WsFjT1L4g==
X-CSE-MsgGUID: GuFM7V/1QoSnAconCVgNPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81057185"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 03/11] drm/i915/xe3lpd: Add check to see if edp over type c
 is allowed
Date: Fri, 25 Oct 2024 13:47:35 -0700
Message-Id: <20241025204743.211510-4-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241025204743.211510-1-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
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

--v3
-Remove useless display version check [Jani]
-change the warn on condition [Jani]
-no need for a different function for edp type c check [Jani]
-dont add register in i915_reg [Jani]

Bspec: 68846
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 3 +++
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h   | 3 +++
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c             | 7 ++++---
 5 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8bd5a4d1b735..d05daa7a2b03 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2257,9 +2257,12 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+			if (DISPLAY_RUNTIME_INFO(display)->edp_typec_support)
+				return xe3lpd_c20_dp_edp_tables;
 			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
 				return xe2hpd_c20_edp_tables;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index ab3ae110b68f..e8ebb12155a4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -363,4 +363,7 @@
 #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
 #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
 
+#define PICA_PHY_CONFIG_CONTROL		_MMIO(0x16FE68)
+#define   EDP_ON_TYPEC			REG_BIT(31)
+
 #endif /* __INTEL_CX0_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index aa22189e3853..949838308ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -9,6 +9,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_device.h"
@@ -1685,6 +1686,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		}
 	}
 
+	if (DISPLAY_VER(i915) >= 30)
+		display_runtime->edp_typec_support =
+			intel_de_read(display, PICA_PHY_CONFIG_CONTROL) & EDP_ON_TYPEC;
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
index 7e29619ba040..9f015b530289 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6441,10 +6441,11 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
 		/*
-		 * Currently we don't support eDP on TypeC ports, although in
-		 * theory it could work on TypeC legacy ports.
+		 * Currently we don't support eDP on TypeC ports for DISPLAY_VER < 30,
+		 * although in theory it could work on TypeC legacy ports.
 		 */
-		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
+		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder) &&
+			    DISPLAY_VER(dev_priv) < 30);
 		type = DRM_MODE_CONNECTOR_eDP;
 		intel_encoder->type = INTEL_OUTPUT_EDP;
 
-- 
2.25.1


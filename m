Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797C0995A24
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C759810E613;
	Tue,  8 Oct 2024 22:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BreKkOpD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE2B10E60F;
 Tue,  8 Oct 2024 22:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427071; x=1759963071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4WYcOxeFEHx7fhoQsQjrYNitYn6S0kg+pmhaVq8NAnU=;
 b=BreKkOpDblOS+tpsgw0xg9N8bgdgLJ/FM22P9OlR0Q5k5PM8G6r3fiwM
 Gokx7WHfHtfiNG2H8ox2QUhyelWBrnCTOr9aWqLsDDaPUzHTEIy6KaGHz
 HYflBZnAFCg/r2PlRSs5X/3hgGcwd4/D2ekYCsGq9OojV3HAuBXgvc4Vx
 n12ZfF2zluvLR1hEh5dupmAJtWsWj1y4lFpIpq5+16fQxNkS/5LaoeeuG
 9TRQs/97zxtiiY9Nf3ljVw09Iex0QBp3KlJFIxlz3LtYax49CpJk2IVzi
 LJowYiaKbGAU0Q7aA/g2//AXx+CwckUjvb0wyuHnDGiYTg9a4mPlP9C3E A==;
X-CSE-ConnectionGUID: ml0vXaL9RV+ZqtpmnDQuXA==
X-CSE-MsgGUID: S+E36AleTtK3+Ro+S3QK/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037302"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037302"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:50 -0700
X-CSE-ConnectionGUID: NeBRjr7XQAytROD2nf/xUw==
X-CSE-MsgGUID: +uav4hpwSJKgqp8w6rkNRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811856"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:50 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over type c is
 allowed
Date: Tue,  8 Oct 2024 15:37:40 -0700
Message-ID: <20241008223741.82790-10-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
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

Bspec: 68846
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 ++
 .../gpu/drm/i915/display/intel_display_types.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
 4 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0d6f75ae35f5..1c8c2a2b05e1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2261,6 +2261,8 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
 			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
 				return xe2hpd_c20_edp_tables;
+			if (DISPLAY_VER(i915) >= 30 && encoder->typec_supp)
+				return xe3lpd_c20_dp_edp_tables;
 		}
 
 		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f..e9dc7707fbcd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -158,6 +158,7 @@ struct intel_encoder {
 	enum port port;
 	u16 cloneable;
 	u8 pipe_mask;
+	bool typec_supp;
 
 	/* Check and recover a bad link state. */
 	struct delayed_work link_check_work;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb096be02ad..917a503cc43b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5570,6 +5570,20 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
 		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
 }
 
+static void
+intel_dp_check_edp_typec_supp(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	bool is_tc_port = intel_encoder_is_tc(encoder);
+	u32 ret = 0;
+
+	if (encoder->type != INTEL_OUTPUT_EDP || !is_tc_port)
+		return;
+
+	ret = intel_de_read(i915, PICA_PHY_CONFIG_CONTROL);
+	encoder->typec_supp = ret & EDP_ON_TYPEC;
+}
+
 static int
 intel_dp_detect(struct drm_connector *connector,
 		struct drm_modeset_acquire_ctx *ctx,
@@ -5595,6 +5609,8 @@ intel_dp_detect(struct drm_connector *connector,
 	if (!intel_display_driver_check_access(dev_priv))
 		return connector->status;
 
+	intel_dp_check_edp_typec_supp(encoder);
+
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
 		status = edp_detect(intel_dp);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index da65500cd0c8..5f5a6ade5f8c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4583,4 +4583,7 @@ enum skl_power_gate {
 
 #define MTL_MEDIA_GSI_BASE		0x380000
 
+#define PICA_PHY_CONFIG_CONTROL 	_MMIO(0x16FE68)
+#define   EDP_ON_TYPEC			REG_BIT(31)
+
 #endif /* _I915_REG_H_ */
-- 
2.45.0


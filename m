Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77102999563
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 00:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF00710EA04;
	Thu, 10 Oct 2024 22:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DxQ/PmAm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B2D10E9FD;
 Thu, 10 Oct 2024 22:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728600204; x=1760136204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yIO+pQ2gSzP7XJZFt3CGogMC67FJ2V0oFQjciFkE12I=;
 b=DxQ/PmAmG+fDaY6AeQ/ww4rRC4CZpbubfh6BbS9b75oFsQSvx9T8/b6y
 A+gBi0VKWmnFHRHWcSGiX7TQra9mAGklGMsi4WklNBgcoNAl8A1bxVxNY
 qyFnHu/kKxvGXH5XL70pRXboa39IK690wVhcqTff8456pvvL46iwzNNd+
 BqPduMycfEzoO18VrNSKpArENj7YsvRd0HtPrDzqPURFgm3ecFGwIj/pp
 W8CCelzwI+CQI1xINPID8upJDbirfhoWSqHl/9MrK/ktW1JgdzTXIoTt0
 R6tCBLKtn067c5S1sNS+3TMkQwZi1c3wMb0rfHPvqfiwUwh2jo3EsI3tU g==;
X-CSE-ConnectionGUID: ny1mY7vuQO+6RJqwlyKQow==
X-CSE-MsgGUID: xQlxOj4jT6ik0rHiPloXDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39380877"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="39380877"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:24 -0700
X-CSE-ConnectionGUID: 5HGGirZnRqS6vK4f9pLVZQ==
X-CSE-MsgGUID: 14k0wLQ4RweP0s19sKmBZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76732078"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:23 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v2 09/10] drm/i915/xe3lpd: Add check to see if edp over type c
 is allowed
Date: Thu, 10 Oct 2024 15:43:10 -0700
Message-ID: <20241010224311.50133-10-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241010224311.50133-1-matthew.s.atwood@intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
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
index f1aea5ead41b..342cd508d6f6 100644
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
index fc30e0056b07..387ab40e3dd0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4584,4 +4584,7 @@ enum skl_power_gate {
 
 #define MTL_MEDIA_GSI_BASE		0x380000
 
+#define PICA_PHY_CONFIG_CONTROL 	_MMIO(0x16FE68)
+#define   EDP_ON_TYPEC			REG_BIT(31)
+
 #endif /* _I915_REG_H_ */
-- 
2.45.0


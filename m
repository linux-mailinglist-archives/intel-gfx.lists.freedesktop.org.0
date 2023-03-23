Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB7E6C6AB1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C7810EABC;
	Thu, 23 Mar 2023 14:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784CE10EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581248; x=1711117248;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=M9eWsM4env46ZyylC0EwCM5bwzY0Of9GYCjvBKcBSEI=;
 b=XLCJUcee/CwJ+YODTktEKgBY5xzRWkrdcbzpoM63gxVH1diPYJ3hBcBE
 fpi5IPoRqlkzpCctV/Egwf4v3GvrCPcMVx8C5lhdB/6g6tdMvgqnnR36o
 HiTvxXn+0MK7DPg30vi02D5xp0G4OImad6ZE6KhnzXUeaF42o4h1SB3IE
 mHuRGHd3X6hbMrfl/OANXqF7/D6FxOw3L3TiqG+/H0GSzXfZSTjY755N3
 4TBbaMkQKaZR9ZZojJLnxBXUmIKvwbPJ6vgkPhwbKQ61bm4hJ69jBtA6b
 3C/JSVjGj1uHMSu+LpEMpiQCGE1WKkKb8mAta1DX0vN4gOZ4NoJNeQ4Tv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892270"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892270"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722639"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722639"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:14 +0200
Message-Id: <20230323142035.1432621-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/29] drm/i915/tc: Add TC PHY hook to get the
 PHY HPD live status
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

Add a table of TC PHY hooks which can be used to call platform specific
TC PHY handlers, replacing the corresponding if ladders.

Add the hook to retrieve the PHY's HPD live status. Move the common part
fixing up the VBT legacy port flag to the generic helper.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 40 ++++++++++++++++++-------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 2a04c5ea44ade..a0508e2173007 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -22,8 +22,17 @@ enum tc_port_mode {
 	TC_PORT_LEGACY,
 };
 
+struct intel_tc_port;
+
+struct intel_tc_phy_ops {
+	u32 (*hpd_live_status)(struct intel_tc_port *tc);
+};
+
 struct intel_tc_port {
 	struct intel_digital_port *dig_port;
+
+	const struct intel_tc_phy_ops *phy_ops;
+
 	struct mutex lock;	/* protects the TypeC port mode */
 	intel_wakeref_t lock_wakeref;
 	enum intel_display_power_domain lock_power_domain;
@@ -329,10 +338,6 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	if (intel_de_read(i915, SDEISR) & isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
-	/* The sink can be connected only in a single mode. */
-	if (!drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1))
-		tc_port_fixup_legacy_flag(tc, mask);
-
 	return mask;
 }
 
@@ -495,6 +500,10 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 	}
 }
 
+static const struct intel_tc_phy_ops icl_tc_phy_ops = {
+	.hpd_live_status = icl_tc_phy_hpd_live_status,
+};
+
 /**
  * ADLP TC PHY handlers
  * --------------------
@@ -521,10 +530,6 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	if (intel_de_read(i915, SDEISR) & isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
-	/* The sink can be connected only in a single mode. */
-	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
-		tc_port_fixup_legacy_flag(tc, mask);
-
 	return mask;
 }
 
@@ -574,6 +579,10 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
+static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
+	.hpd_live_status = adlp_tc_phy_hpd_live_status,
+};
+
 /**
  * Generic TC PHY handlers
  * -----------------------
@@ -581,11 +590,15 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
+	u32 mask;
 
-	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_phy_hpd_live_status(tc);
+	mask = tc->phy_ops->hpd_live_status(tc);
+
+	/* The sink can be connected only in a single mode. */
+	if (!drm_WARN_ON_ONCE(&i915->drm, hweight32(mask) > 1))
+		tc_port_fixup_legacy_flag(tc, mask);
 
-	return icl_tc_phy_hpd_live_status(tc);
+	return mask;
 }
 
 static bool tc_phy_is_ready(struct intel_tc_port *tc)
@@ -1197,6 +1210,11 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	dig_port->tc = tc;
 	tc->dig_port = dig_port;
 
+	if (DISPLAY_VER(i915) >= 13)
+		tc->phy_ops = &adlp_tc_phy_ops;
+	else
+		tc->phy_ops = &icl_tc_phy_ops;
+
 	snprintf(tc->port_name, sizeof(tc->port_name),
 		 "%c/TC#%d", port_name(port), tc_port + 1);
 
-- 
2.37.1


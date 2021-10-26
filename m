Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B9A43ABE0
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 07:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18BDE6E2B4;
	Tue, 26 Oct 2021 05:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F846E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 05:52:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="227282535"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="227282535"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 22:52:10 -0700
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="446951162"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 22:52:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, uma.shankar@intel.com, jani.nikula@linux.intel.com,
 animesh.manna@intel.com
Date: Tue, 26 Oct 2021 11:08:21 +0530
Message-Id: <20211026053821.162028-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low voltage
 sku for max dp source rate
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

The low voltage sku check can be ignored as OEMs need to consider that
when designing the board and then put any limits in VBT.

Same is now changed in Bspec pages.

v2: Added debug print for combo PHY procmon reference values
to get voltage configuration of combo PHY ports. (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    |  4 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 32 ++-----------------
 2 files changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 634e8d449457..01ff86b3ff91 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -112,6 +112,10 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
 
 	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
+	drm_dbg(&dev_priv->drm,
+		"Combo PHY %c PROCMON values : 0x%x, 0x%x, 0x%x\n",
+		phy_name(phy), procmon->dw1, procmon->dw9, procmon->dw10);
+
 	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
 			    (0xff << 16) | 0xff, procmon->dw1);
 	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f5dc2126d140..693d7e097295 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -385,23 +385,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
 	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
 }
 
-static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
-{
-	u32 voltage;
-
-	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
-
-	return voltage == VOLTAGE_INFO_0_85V;
-}
-
 static int icl_max_source_rate(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
 
-	if (intel_phy_is_combo(dev_priv, phy) &&
-	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
+	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
 		return 540000;
 
 	return 810000;
@@ -409,23 +399,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
 
 static int ehl_max_source_rate(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
-
-	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
-		return 540000;
-
-	return 810000;
-}
-
-static int dg1_max_source_rate(struct intel_dp *intel_dp)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
-
-	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
+	if (intel_dp_is_edp(intel_dp))
 		return 540000;
 
 	return 810000;
@@ -468,7 +442,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 			max_rate = dg2_max_source_rate(intel_dp);
 		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
 			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
-			max_rate = dg1_max_source_rate(intel_dp);
+			max_rate = 810000;
 		else if (IS_JSL_EHL(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
 		else
-- 
2.25.1


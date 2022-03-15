Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D4E4D9600
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 09:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1966D10E3AD;
	Tue, 15 Mar 2022 08:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB4589CE1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 08:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647332172; x=1678868172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ywFdnpXuPOxRlo7DdoPgi72WSShmK21yQWvfE3dxNgM=;
 b=FjHzNCpWZvwNWN/vBHqTEXMkXq88CUt4Ul83wNFq3Wp0XEyswD9mGyQ2
 LfKUrZTO/b2Dt1NaXJXU5zloL3rgt/I62zS9ynQHMUlcqEc43lHq6Q6Qc
 kO/3im2+XN2HGDqFyg2SldC6FFjogif2THP78RlG87gZ81wo0bMT2vJnG
 oG0FQ+QsgbpQayEYTyIb96WApfLVBZopne4BJGOFuMH9K5A0sTxPI3jPC
 2NfChAlfmso9PoEY3GTIw8tp/QSBap0sWSR44QtzK86G/onaLtZeDUtum
 E9N0FhZQNqAfHpYQk9mGZkap0NkPBHqsmg4BuP+Z+dyoXmoUxai9B678n A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243694609"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="243694609"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:16:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="714069169"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:15:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 13:32:46 +0530
Message-Id: <20220315080247.1161844-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
References: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
 1 file changed, 3 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a4e4a286230f..94217ef58775 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -388,23 +388,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
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
@@ -412,23 +402,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
 
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
@@ -471,7 +445,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
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


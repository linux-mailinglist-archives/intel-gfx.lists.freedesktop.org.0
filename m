Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA4069E84A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 20:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAEB10E656;
	Tue, 21 Feb 2023 19:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300FB10E656
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 19:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677007845; x=1708543845;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jSyKgC5D65Ej+Me4nGBhBj1UybLyQnw978WqxIDJ5Xw=;
 b=UJMqWAhkzZdqN4u4XCh+ju3lcLbUaoIlUY2n1BvE+s2MsvjbzPX8/Llj
 qJu00fL8V6kaKED853njudXn61tRtob0k4OWe1LjosW650LDXDzI4YPd5
 GJNN0UySm1Lo5atNm0K0zP/HSEw686tgN78XNC8TPKOcgO5k/1riG6ANA
 1C9RRYJSrYVr0VIfoV5fYBm81/85nECAkGejCaHKYmaP2BaLMsJ/1xO6X
 nWb+QsQ5x1ZadSwrXi9dAxKdQMwFMIuC9XoQvLqlyNXe1fFuAucBdPVuX
 bGbrjysCkqMnvoHm0dLLxQSB1K/FMNjMrOBKJW6ACoaN45TujLtdr5C2U A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="334929202"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="334929202"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 11:30:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="781115710"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="781115710"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 11:30:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 11:30:38 -0800
Message-Id: <20230221193038.2876693-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gen12: Update combo PHY init sequence
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

The bspec was updated with a minor change to the 'DCC mode select'
setting to be programmed during combo PHY initialization.

Bspec: 49291
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c      | 9 +++------
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h | 4 ++--
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 27e98eabb006..0608ae95b6f5 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -233,8 +233,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
 
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
-				     DCC_MODE_SELECT_MASK,
-				     DCC_MODE_SELECT_CONTINUOSLY);
+				     DCC_MODE_SELECT_MASK, RUN_DCC_ONCE);
 	}
 
 	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
@@ -352,10 +351,8 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 			val |= ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2;
 			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
 
-			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
-			val &= ~DCC_MODE_SELECT_MASK;
-			val |= DCC_MODE_SELECT_CONTINUOSLY;
-			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
+			intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy),
+				     DCC_MODE_SELECT_MASK, RUN_DCC_ONCE);
 		}
 
 		icl_set_procmon_ref_values(dev_priv, phy);
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
index 2ed65193ca19..b0983edccf3f 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
@@ -90,8 +90,8 @@
 #define ICL_PORT_PCS_DW1_AUX(phy)		_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
 #define ICL_PORT_PCS_DW1_GRP(phy)		_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
 #define ICL_PORT_PCS_DW1_LN(ln, phy)		_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, phy))
-#define   DCC_MODE_SELECT_MASK			(0x3 << 20)
-#define   DCC_MODE_SELECT_CONTINUOSLY		(0x3 << 20)
+#define   DCC_MODE_SELECT_MASK			REG_GENMASK(21, 20)
+#define   RUN_DCC_ONCE				REG_FIELD_PREP(DCC_MODE_SELECT_MASK, 0)
 #define   COMMON_KEEPER_EN			(1 << 26)
 #define   LATENCY_OPTIM_MASK			(0x3 << 2)
 #define   LATENCY_OPTIM_VAL(x)			((x) << 2)
-- 
2.39.1


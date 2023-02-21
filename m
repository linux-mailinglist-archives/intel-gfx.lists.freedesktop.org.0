Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FFC69E8F9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 21:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE1C10E11A;
	Tue, 21 Feb 2023 20:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F8F10E11A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 20:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677010737; x=1708546737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y6LS+v0TK2RBK2th7zEYUUIiUHhM12Xh88wYwvgJxI4=;
 b=eToV3UzRjuM+Tq1hIo8a8e1xnRSFgc/xGLQrbyoLYOHpRKstvUnqd5Au
 WeyDFRV+9GFooUPahk4ojXsuBBYkkRyPKFVyeb6Y6nTaDGv6noo2yBroL
 KRkldaRU9vEbA88i9Ub57kuUymheH6ClilpARDUr4PTWb9jFvUr8/jrmx
 W8YpHQstUPHgeewtqMO5k6L42opFEHGA51fZ8CeepjKWqshjstVD7guVO
 GtJZ8k/913vQjBJskCrEo12WAs30OeFY/szichOkCbtASuKqmVNuxp0w8
 uSiQV+lRoT+1gyfLRV0aGk+ms1QX8DQEhchouLC8LimoPNcEwfo/RLxhN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="313117997"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="313117997"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 12:18:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="845841480"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="845841480"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 12:18:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 12:18:36 -0800
Message-Id: <20230221201836.2886794-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221193038.2876693-1-matthew.d.roper@intel.com>
References: <20230221193038.2876693-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gen12: Update combo PHY init
 sequence
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

v2:
 - Keep the opencoded rmw behavior instead of switching to
   intel_de_rmw().  We need to read from a _LN register, but write to
   the _GRP register to update all lanes.

Bspec: 49291
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c      | 5 ++---
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h | 4 ++--
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 27e98eabb006..922a6d87b553 100644
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
@@ -354,7 +353,7 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 
 			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
 			val &= ~DCC_MODE_SELECT_MASK;
-			val |= DCC_MODE_SELECT_CONTINUOSLY;
+			val |= RUN_DCC_ONCE;
 			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
 		}
 
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


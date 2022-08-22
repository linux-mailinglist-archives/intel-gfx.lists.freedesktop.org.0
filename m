Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF68359BF74
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 14:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C9FE18A772;
	Mon, 22 Aug 2022 12:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C9218A758
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 12:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661171154; x=1692707154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZgXRigwmH3ojsqVTUSbNS25yaKeLGvkuof61OFearWc=;
 b=TN6KOStGzLJbVc6Z1jtPS6QPt9aIEtXts2jD6/P4ouwGaW7ZLza6CkFi
 7D29JLNB5C51LUrBT+/0uOhOOjmps99+6JKmYof8Lh9Prf76KOrMjWuR7
 ybz9htMDALsj0J0koWX3WiV8mpyd5xQLKxql+NX9nr4SZe7W47EHxICUI
 0fidNNgO+Vvve4KkB4FG6fu9TRGPTqVr1PYEh1m1zr/yDjdnkpPLKJE42
 rDl/Oa1ehhtgbCmvx+Kn/A2EXoe05enh0sw7+HrkMIzSTES45w5DjJqpc
 d8ej24WGHBN3z1xkgsjlQ/HsMvFquVW8sEO1LGxfRmMNl+QVKqD7fu3kF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="379690455"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="379690455"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 05:25:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="638177946"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 05:25:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 17:55:13 +0530
Message-Id: <20220822122513.3607326-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/combo_phy: Set DCC_MODE to one time
 update mode
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

As per Bspec:49291 update, the DCC Mode select is to be set to one time
update mode, instead of continuous DCC calibration mode for Display > 12
combo phy.

This change is required to avoid glitches that occur, during on the fly
updates to DCC code, with continuous mode, resulting in flickers seen with
eDP HBR3 panels.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 64890f39c3cc..76e4e748823a 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -244,7 +244,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
 				     DCC_MODE_SELECT_MASK,
-				     DCC_MODE_SELECT_CONTINUOSLY);
+				     DCC_MODE_SELECT_ONCE);
 	}
 
 	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
@@ -367,7 +367,7 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 
 			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
 			val &= ~DCC_MODE_SELECT_MASK;
-			val |= DCC_MODE_SELECT_CONTINUOSLY;
+			val |= DCC_MODE_SELECT_ONCE;
 			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
 		}
 
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
index 2ed65193ca19..cf46f13401d1 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
@@ -92,6 +92,7 @@
 #define ICL_PORT_PCS_DW1_LN(ln, phy)		_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, phy))
 #define   DCC_MODE_SELECT_MASK			(0x3 << 20)
 #define   DCC_MODE_SELECT_CONTINUOSLY		(0x3 << 20)
+#define   DCC_MODE_SELECT_ONCE			(0x0 << 20)
 #define   COMMON_KEEPER_EN			(1 << 26)
 #define   LATENCY_OPTIM_MASK			(0x3 << 2)
 #define   LATENCY_OPTIM_VAL(x)			((x) << 2)
-- 
2.25.1


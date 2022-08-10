Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F40B58EEDD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 16:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A008A1E0;
	Wed, 10 Aug 2022 14:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B8D8ADA1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 14:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660143422; x=1691679422;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MjaccTxXd+U6/WXmHbvERcOulgfpNAjhTZu8vC31xeY=;
 b=jiMYVfRCDAO2gyMTeGGpis08JKnpCwTHerT+FLul22pHt8WpUhCHioFt
 230lAbxEf8ChqZYmc+UXeMD58GIHZZwKkgWygbbMbFioEod6nm9jsuDMt
 s1PJkBU+/HVin/MmcssHY7m/tW12Yh++7pHWy8JIGDn9ZsRU+wMcMvJK8
 XhrhQmzu8K3K0VLtG77f8oQesHNWEK+kUXOnG8e40naXrSVib2n9H9/zU
 0f+xCCjI/g1rZaC72Pz79xyoUNsnZyFDi3G5ysh1NV4QkrnpcTa3A/RhB
 Woewh8fpRFVFxe7jFHp+q/OjYZsqpVy7kybJCV1n4iOzqbiVoh5PKNosK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="377391665"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="377391665"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 07:57:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="664927708"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 07:57:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 20:26:26 +0530
Message-Id: <20220810145626.2075839-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/combo_phy: Add Workaround to avoid
 flicker with HBR3 eDP Panels
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

Wa_22012718247 : When Display PHY is configured in continuous
DCC calibration mode, the DCC (duty cycle correction) for the clock
erroneously goes through a state where the DCC code is 0x00 when it is
supposed to be transitioning from 0x10 to 0x0F. This glitch causes a
distortion in the clock, which leads to a bit error. The issue is known
to be causing flickering with eDP HBR3 panels.

The work around configures the DCC in one-time-update mode.
This mode updates the DCC code one time during training and then
it does not change.  This will prevent on-the-fly updates so that the
glitch does not occur.

v2: Added helper function for DCC_MODE (Imre).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy.c   | 16 ++++++++++++++--
 .../gpu/drm/i915/display/intel_combo_phy_regs.h  |  1 +
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 64890f39c3cc..b3be0e3ca984 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -226,6 +226,17 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
 	return false;
 }
 
+static u32 tgl_dcc_calibration_mode(struct drm_i915_private *dev_priv)
+{
+	/* Wa_22012718247:tgl,adlp,adls */
+	if (IS_TIGERLAKE(dev_priv) ||
+	    IS_ALDERLAKE_P(dev_priv) ||
+	    IS_ALDERLAKE_S(dev_priv))
+		return DCC_MODE_SELECT_ONCE;
+
+	return DCC_MODE_SELECT_CONTINUOSLY;
+}
+
 static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
@@ -244,7 +255,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
 				     DCC_MODE_SELECT_MASK,
-				     DCC_MODE_SELECT_CONTINUOSLY);
+				     tgl_dcc_calibration_mode(dev_priv));
 	}
 
 	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
@@ -366,8 +377,9 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
 
 			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
+
 			val &= ~DCC_MODE_SELECT_MASK;
-			val |= DCC_MODE_SELECT_CONTINUOSLY;
+			val |= tgl_dcc_calibration_mode(dev_priv);
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


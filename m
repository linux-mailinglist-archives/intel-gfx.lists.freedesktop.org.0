Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF375337EC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 10:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1971610F1B1;
	Wed, 25 May 2022 08:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27FB010F1B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 08:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653465777; x=1685001777;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YACmHlTIOjBcZdCAMHOFFHLTdRj4izCLqnHyxhFTTzw=;
 b=VO0lkNSpySZgaKcnpyDDzEM4KuQFyZXXXnCZEeCWiNgiDDCacum6IocS
 zSpKNqbkhTOwoAu83l2cMWJtcrgzAyjadOElWhNiAHszEkxA9pFow8N8S
 9gKEv75mV/MD1PTUtElEqH/N2R5q4BIdKHEjWtHaYhd9AIvLmThgH9e/f
 JXFI1BhBNTwIdyuLEHzq/YDfvUZFl/l9M2sU2omGXWv0oGlUrH99gN/+F
 qDpSH8dLL09exMCV3gWN4Vo1gfML2Hd/nBMRygV8vqNvhhtFgs0TbvrwE
 TmiAf3TkMTRnvtuhBd3t9TLwrZLjWg5C/lImsb2mObRhe4oWpz3LWKaRx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="273860353"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273860353"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:02:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="609022933"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:02:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 May 2022 13:34:01 +0530
Message-Id: <20220525080401.1253511-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/dg2: Support 4k@30 on HDMI
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

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

This patch adds a fix to support 297MHz of dot clock by calculating
the pll values using synopsis algorithm.
This will help to support 4k@30 mode for HDMI monitors on DG2.

v2: As per the algorithm, set MPLLB VCO range control bits to 3,
in register SNPS_PHY_MPLLB_DIV for 297Mhz. (Matt)

v3: Fix typo. (Ankit)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 0dd4775e8195..cc1270978b67 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -517,6 +517,37 @@ static const struct intel_mpllb_state dg2_hdmi_148_5 = {
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
 };
 
+/* values in the below table are calculted using the algo */
+static const struct intel_mpllb_state dg2_hdmi_297 = {
+	.clock = 297000,
+	.ref_control =
+		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
+	.mpllb_cp =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
+	.mpllb_div =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
+	.mpllb_div2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
+	.mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
+	.mpllb_fracn2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
+	.mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
+};
+
 static const struct intel_mpllb_state dg2_hdmi_594 = {
 	.clock = 594000,
 	.ref_control =
@@ -551,6 +582,7 @@ static const struct intel_mpllb_state * const dg2_hdmi_tables[] = {
 	&dg2_hdmi_27_0,
 	&dg2_hdmi_74_25,
 	&dg2_hdmi_148_5,
+	&dg2_hdmi_297,
 	&dg2_hdmi_594,
 	NULL,
 };
-- 
2.25.1


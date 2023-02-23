Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 069E66A0215
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 05:39:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B23010E002;
	Thu, 23 Feb 2023 04:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE4610E002
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 04:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677127141; x=1708663141;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iMIQK7cdhRtXzV9PnHEC9MA8CqjE5ykwBqmPI2Cb1HM=;
 b=bY5+aEBFKPzLnWuVvQk8Rd0JevBwjsogtXPAe5L9FAUEbUunxk/AXLVs
 TKggxTMpr4VnYjTruVfLwreNqCZQ2SSG21aDhtFQFD2IlzuZNkekew8E4
 01cGoO4OHTDsedqC8NJG7nhA5/hJwVQibPbV6kskQOoouFb0JQKKSeuKA
 WTMklHuwzfUpMB5spGJyTO2asBH1GVv0izlsI5hEvwMJ1TQylKQNfdFNp
 CWn4M+ZTFvS7oDZriYx9W2Q9Qss1IxEXaM5qpk2BhIg54CbtpHnTb/idS
 bYxYNY/G4/0HjLp8lSPZxED1DljCeCzYMPuQUEBd0mi6hP3oYRpKbRbQn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="313484222"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="313484222"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 20:39:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="622186551"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="622186551"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 20:38:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 10:06:19 +0530
Message-Id: <20230223043619.3941382-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add HDMI pixel clock frequencies
 267.30 and 319.89 MHz
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add snps phy table values for HDMI pixel clocks 267.30 MHz and
319.89 MHz. Values are based on the Bspec algorithm for
PLL programming for HDMI.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8008
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index c65c771f5c46..1cfb94b5cedb 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1419,6 +1419,36 @@ static const struct intel_mpllb_state dg2_hdmi_262750 = {
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
 };
 
+static const struct intel_mpllb_state dg2_hdmi_267300 = {
+	.clock = 267300,
+	.ref_control =
+		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
+	.mpllb_cp =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
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
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 74) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
+	.mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
+	.mpllb_fracn2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 30146) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 36699),
+	.mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
+};
+
 static const struct intel_mpllb_state dg2_hdmi_268500 = {
 	.clock = 268500,
 	.ref_control =
@@ -1509,6 +1539,36 @@ static const struct intel_mpllb_state dg2_hdmi_241500 = {
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
 };
 
+static const struct intel_mpllb_state dg2_hdmi_319890 = {
+	.clock = 319890,
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
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
+	.mpllb_div2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 94) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
+	.mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
+	.mpllb_fracn2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 64094) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13631),
+	.mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
+};
+
 static const struct intel_mpllb_state dg2_hdmi_497750 = {
 	.clock = 497750,
 	.ref_control =
@@ -1696,8 +1756,10 @@ static const struct intel_mpllb_state * const dg2_hdmi_tables[] = {
 	&dg2_hdmi_209800,
 	&dg2_hdmi_241500,
 	&dg2_hdmi_262750,
+	&dg2_hdmi_267300,
 	&dg2_hdmi_268500,
 	&dg2_hdmi_296703,
+	&dg2_hdmi_319890,
 	&dg2_hdmi_497750,
 	&dg2_hdmi_592000,
 	&dg2_hdmi_593407,
-- 
2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 518036BCDFE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8ADE10ECD7;
	Thu, 16 Mar 2023 11:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1041610E0A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965553; x=1710501553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0edxA/IgFen7g1QACv1Gnz1dDBKT2oJfaq39un8CROM=;
 b=d5nh24Mm8PLDZtNhDlb7kVXsM81hP1v7R3ExISFqSgqFJwgL9nTQRB8c
 EAWUFqQvd53nMbsEBS3IMcewRICzveVpI5zj1Gmdfu7FrE6GT7+aIncnv
 OERsc1ZJ1Qxxst78K6fExOl+Up+xLjXFHWhdoB9/podZxjRlbsS8OpTnl
 y9K296q5eQ9JoklqMMu89qFQh4O9t2u8h6oMtbylfNYGGZtltLTCczSCk
 m7cZTnT9yLbmaFEHqyFnO3bFsgMmCpVbavujnIEgWi/5g4HKMMzdLKgYO
 NOV3DBdw2OF4kKBaybqFC/NFMDXeCybB8kzp7hGE5FEJj8MyGxdB/ywvV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485902"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485902"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:19:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083244"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083244"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:19:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:25 +0200
Message-Id: <20230316111335.66915-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 12/22] drm/i915/mtl: C20 HDMI state
 calculations
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

Add C20 HDMI state calculations and put HDMI table definitions
in use.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 23ebea25aaa9..55ec256c0379 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1632,6 +1632,8 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 {
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		return mtl_c20_dp_tables;
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return mtl_c20_hdmi_tables;
 	}
 
 	MISSING_CASE(encoder->type);
@@ -1672,9 +1674,19 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 				   struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c20_phy_check_hdmi_link_rate(crtc_state->port_clock) != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				    crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
 	tables = intel_c20_pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
-- 
2.34.1


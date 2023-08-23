Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E3B785E1E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7267110E48A;
	Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08CEA10E0A9;
 Wed, 23 Aug 2023 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810556; x=1724346556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hE0xGQPtyfoEXdLOUbk/bCqqBwsqWrT4r2csZCF5NBI=;
 b=M0vTEMqpcRGvlH1yrTBU9pka1AbPpeRSLH2RJneiWVd6TrfhO2ai6PYw
 ZuTPKRGz5gfDNeYrq7H1JUNGe4NUqwfqC/rcSw/Tghivoa5wK+lSDeB7z
 PHVuhxsj9s8gu9+Ls15UcUkUXVDiM5Xjp7iqR2Oekn4N74ypoWwGpUNAa
 qcht3DnioVrCFov4u0fdbwX5yaRMbxpPoH2lGko+h0GM4wwaUSNuvczXl
 Owchog8U6qpI2AJBWHlle97GadQmQZBMOfzyzrX88MK5P9d4aAThpU1/w
 GuHvNR7nKJSGeS62lX9OGpDYuQ+Gnsmwr9wP1tLlPn0cWu8Ra/XdJWnie A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147464"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147464"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204771"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204771"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:03 -0700
Message-Id: <20230823170740.1180212-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/42] drm/i915/cx0: Enable/disable TX only for
 owned PHY lanes
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

Display must not enable or disable transmitters for not-owned PHY lanes.

BSpec: 64539
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230814131331.69516-4-gustavo.sousa@intel.com
(cherry picked from commit 6a62986bb52e3c96372d92486f9461190144a66b)
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2b112ed78943..93d3a63fe89a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2607,10 +2607,11 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 	int i;
 	u8 disables;
 	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
 	enum port port = encoder->port;
 
 	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
-		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
+		intel_cx0_rmw(i915, port, owned_lane_mask,
 			      PHY_C10_VDR_CONTROL(1), 0,
 			      C10_VDR_CTRL_MSGBUS_ACCESS,
 			      MB_WRITE_COMMITTED);
@@ -2625,11 +2626,13 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 		disables |= REG_FIELD_PREP8(REG_GENMASK8(1, 0), 0x1);
 	}
 
-	/* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
 	for (i = 0; i < 4; i++) {
 		int tx = i % 2 + 1;
 		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
 
+		if (!(owned_lane_mask & lane_mask))
+			continue;
+
 		intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTROL(tx, 2),
 			      CONTROL2_DISABLE_SINGLE_TX,
 			      disables & BIT(i) ? CONTROL2_DISABLE_SINGLE_TX : 0,
@@ -2637,7 +2640,7 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 	}
 
 	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
-		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
+		intel_cx0_rmw(i915, port, owned_lane_mask,
 			      PHY_C10_VDR_CONTROL(1), 0,
 			      C10_VDR_CTRL_UPDATE_CFG,
 			      MB_WRITE_COMMITTED);
-- 
2.40.1


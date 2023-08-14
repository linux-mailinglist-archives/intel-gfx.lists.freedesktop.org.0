Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D556777B97F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 15:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B3710E1F7;
	Mon, 14 Aug 2023 13:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A63510E1EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692018833; x=1723554833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IBQEdL/VwRJdEtpAzvLZ6pjUbMWDRzeUePz5TavnDeE=;
 b=NoZCcVoxLKZpkxUSit2RHGzQyqvdQFPFZC94QqoPlSx4pKCooQ2lxMWa
 wG8ueyK/5Aj/Pxj/+VeMtrG+UMXsS4Mj1agnwiztJzUHEVCrnUWdOEvn0
 gOZkUGaQnTk6L/ySFsuqmG1uPdkOkBXJyhf7BGh8EKhWc5+xqnyXozaw7
 wMbWF94Pz2joiWK+tZOPP6aF6GPmnjIiqHXUYHTSeLJcXy38hx8K1pXob
 6CVVxFs304ouZYFv+KrhH18vC9yzouXuC9gTPnSXOAaARWp+cgzk8ZIgS
 9lK/58iD0c4V0TzTxAzPPHDGol9e0KxR4874zqqxhDalp0/qHoXTF5f5v Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="374805439"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="374805439"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="907234169"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="907234169"
Received: from svikra2x-mobl.gar.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.145.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:51 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 10:13:30 -0300
Message-ID: <20230814131331.69516-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814131331.69516-1-gustavo.sousa@intel.com>
References: <20230814131331.69516-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/cx0: Enable/disable TX only for
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display must not enable or disable transmitters for not-owned PHY lanes.

BSpec: 64539
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
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
2.41.0


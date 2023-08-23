Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8BA785E1A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C7CC10E480;
	Wed, 23 Aug 2023 17:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC6D210E0CF;
 Wed, 23 Aug 2023 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810555; x=1724346555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fqSGclm/6MXCOWaDXstdiPt4LIsmXeDJ0QssT09zLfM=;
 b=mGB+TzGe5HD9iD4fB++pQrCjZ1DnoMNP6GN3NTxmDpfD5kQ6N/DM745T
 3PrVDJOkbKL3xpQzUZZTGI7yXduXLhZJqwPp5mJpDttUeqjzIO5Ewfch5
 0enHszf5I6Yh6+d02osEqcbNNTBngQpaD9voTtrONeDJ8YwG2T8e8azOG
 QsICW/2rc27cTpozpUYm/Wx/o0vC/4d9KfB2UJdo8wp0vmsQ5CE5grMJJ
 rkO0F2c1GOsYgQKauffYAXz/lLmm/99++10YQnQEHF+2LPkrlGK9qoM7C
 C8uIwkdeIu2ozRxLdVdyWjYIhpXJJHhUaFwTrx1jnG5QTGwHVrSZzIwaU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147463"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147463"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204768"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204768"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:02 -0700
Message-Id: <20230823170740.1180212-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/42] drm/i915: Simplify
 intel_cx0_program_phy_lane() with loop
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
Cc: Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

It is possible to generalize the "disable" value for the transmitters to
be a bit mask based on the port width and the port reversal boolean,
with a small exception for DP-alt mode with "x1" port width.

Simplify the code by using such a mask and a for-loop instead of using
switch-case statements.

v2:
  - Use (i < 2) instead of (i / 2 == 0) for PHY lane mask selection.
    (Jani)

BSpec: 64539
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230814131331.69516-3-gustavo.sousa@intel.com
(cherry picked from commit 0f5c2e5bd2fc8d2e09043b6bb3c81a889a483997)
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 79 +++++---------------
 1 file changed, 20 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b903ceb0b56a..2b112ed78943 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2604,7 +2604,8 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 				       struct intel_encoder *encoder, int lane_count,
 				       bool lane_reversal)
 {
-	u8 l0t1, l0t2, l1t1, l1t2;
+	int i;
+	u8 disables;
 	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
 	enum port port = encoder->port;
 
@@ -2614,66 +2615,26 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 			      C10_VDR_CTRL_MSGBUS_ACCESS,
 			      MB_WRITE_COMMITTED);
 
-	/* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
-	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
-	l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
-	l1t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2));
-	l1t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2));
-
-	l0t1 |= CONTROL2_DISABLE_SINGLE_TX;
-	l0t2 |= CONTROL2_DISABLE_SINGLE_TX;
-	l1t1 |= CONTROL2_DISABLE_SINGLE_TX;
-	l1t2 |= CONTROL2_DISABLE_SINGLE_TX;
-
-	if (lane_reversal) {
-		switch (lane_count) {
-		case 4:
-			l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			fallthrough;
-		case 3:
-			l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			fallthrough;
-		case 2:
-			l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			fallthrough;
-		case 1:
-			l1t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			break;
-		default:
-			MISSING_CASE(lane_count);
-		}
-	} else {
-		switch (lane_count) {
-		case 4:
-			l1t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			fallthrough;
-		case 3:
-			l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			fallthrough;
-		case 2:
-			l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			break;
-		case 1:
-			if (dp_alt_mode)
-				l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			else
-				l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
-			break;
-		default:
-			MISSING_CASE(lane_count);
-		}
+	if (lane_reversal)
+		disables = REG_GENMASK8(3, 0) >> lane_count;
+	else
+		disables = REG_GENMASK8(3, 0) << lane_count;
+
+	if (dp_alt_mode && lane_count == 1) {
+		disables &= ~REG_GENMASK8(1, 0);
+		disables |= REG_FIELD_PREP8(REG_GENMASK8(1, 0), 0x1);
 	}
 
-	/* disable MLs */
-	intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
-			l0t1, MB_WRITE_COMMITTED);
-	intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
-			l0t2, MB_WRITE_COMMITTED);
-	intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
-			l1t1, MB_WRITE_COMMITTED);
-	intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
-			l1t2, MB_WRITE_COMMITTED);
+	/* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
+	for (i = 0; i < 4; i++) {
+		int tx = i % 2 + 1;
+		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
+
+		intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTROL(tx, 2),
+			      CONTROL2_DISABLE_SINGLE_TX,
+			      disables & BIT(i) ? CONTROL2_DISABLE_SINGLE_TX : 0,
+			      MB_WRITE_COMMITTED);
+	}
 
 	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
 		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
-- 
2.40.1


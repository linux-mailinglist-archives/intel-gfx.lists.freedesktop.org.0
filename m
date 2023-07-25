Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4597762464
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 23:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F29810E1A7;
	Tue, 25 Jul 2023 21:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C6A10E18F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 21:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690320458; x=1721856458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OejKd+PWUR985PnXvIFs7XGBWMnKvTIHnYoZgFDQtK8=;
 b=exyx67cHevuQ3vMvLyPapF5pWSkLOnBXFqcrx1/RcY+5ChvoovbgXza9
 gzCkkaQuLJEPU5JZBqaC6vz4ou8LBggEuFrlvFeqfoMxB2mwi2NFOZSgX
 uP+14F3SkN1USWHRLWYlOdG/Y6qR9CmJ1evWR9MTJDusYzappG+yb6wz5
 x5suWHwBe5R74D9qEGSl0JiqP5FnFEqrmRDyoayOJePq8BGHVKio2GbTg
 7EENUG9MZTnolgRX48kkEDJKYthk2K2TOmH1ElCQZfNwWi+i/vToXV6l+
 1XwtlIaqRLolBvhWmvXFKgycXr8/A2YhK/kE2pYm/pkxrVRKE4XAeY/gf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434104397"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434104397"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="900117440"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="900117440"
Received: from joshigx-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.247.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:36 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 18:27:14 -0300
Message-ID: <20230725212716.3060259-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725212716.3060259-1-gustavo.sousa@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Simplify
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is possible to generalize the "disable" value for the transmitters to
be a bit mask based on the port width and the port reversal boolean,
with a small exception for DP-alt mode with "x1" port width.

Simplify the code by using such a mask and a for-loop instead of using
switch-case statements.

BSpec: 64539
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 79 +++++---------------
 1 file changed, 20 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b903ceb0b56a..f10ebdfd696a 100644
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
+		u8 lane_mask = i / 2 == 0 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
+
+		intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTROL(tx, 2),
+			      CONTROL2_DISABLE_SINGLE_TX,
+			      disables & BIT(i) ? CONTROL2_DISABLE_SINGLE_TX : 0,
+			      MB_WRITE_COMMITTED);
+	}
 
 	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
 		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
-- 
2.41.0


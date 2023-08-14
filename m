Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6926677B97D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 15:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5944A10E1EB;
	Mon, 14 Aug 2023 13:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB79310E1EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 13:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692018832; x=1723554832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DfDR7D+pgSaim5L0o339tGbYopa7MyAaJdfIFLxS23I=;
 b=cloyJTZVi1jV1ouGiveue4kLtS8pd0ORmgkPy4ANSu58YG7V6JkDL7rU
 DKAJGnY6nyLcYTcROzR3+JSQbacdQRf74xHjuOE5z3k2JmTJnBZyo1BxA
 R5R3LSLOytVk/1DQmUwlslDzPnH7SCQZLmJbKS7Z+nMm5EWzRnvBB8b3z
 v5dr943fym8nG7HPt+Kk0wfJAYPsMpxetZDO3QytnaX8AB+04kGNhODOH
 2dMGTKtlfS3069y0P6feo8FVWqrl0fNPhK8GOTZ4kK/UIQ88XOL83ubun
 V+UhSGrc6wY4AmvB3ytvya4AeY+IOthFUZWymry+VN6N5FdFVKhZ9hbe+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="374805433"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="374805433"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="907234151"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="907234151"
Received: from svikra2x-mobl.gar.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.145.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:49 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 10:13:29 -0300
Message-ID: <20230814131331.69516-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814131331.69516-1-gustavo.sousa@intel.com>
References: <20230814131331.69516-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Simplify
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
2.41.0


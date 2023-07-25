Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6010762465
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 23:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11BDB10E1B2;
	Tue, 25 Jul 2023 21:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D98B10E1A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 21:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690320461; x=1721856461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xZuYRJtF47K1ApLDWmCdIxM90suJP/7g9O3BtMa/2xo=;
 b=jnBkOcjvS1FVZY218KMTiW+dJMlm1okoi1FsXm7bzmRD5Qb1Lk9du5D5
 sMF1BOI6emByri3J6ezr+fj4P6usbm4apXAHw2v4aVicwmJ7Jmy/cRADj
 6RIS3Z/3eeUxV1G71w8kbUEb4LZpWvfqTjhyAivCZweKQbb0xirGalmgZ
 1vEWYNP8TZg80EOKxJs+8AVhGyPocP5W7NtcARfAx9ML/GbGTh9XMtKHz
 4KYwW8cGZ6ZrL+Pm+KWMLX7sv3GlqiUjrEzahKpmpn4vgLBlWP6KnEWK8
 qYx2QsFr/PW4xX3zO15vHlZVhctG8MUuX0htFilcTwQuMEPwEjGZReD9a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434104409"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434104409"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="900117454"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="900117454"
Received: from joshigx-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.247.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:39 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 18:27:16 -0300
Message-ID: <20230725212716.3060259-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725212716.3060259-1-gustavo.sousa@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/cx0: Program vswing only for owned
 lanes
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

According to the BSpec, voltage swing programming should be done for
owned PHY lanes. Do not program a not-owned PHY lane.

BSpec: 74103, 74104
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 +++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 236124786631..cfb2093feb3b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -375,6 +375,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
 	intel_wakeref_t wakeref;
 	int n_entries, ln;
 
@@ -387,13 +388,13 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	}
 
 	if (intel_is_c10phy(i915, phy)) {
-		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
 			      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
-		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CMN(3),
+		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CMN(3),
 			      C10_CMN3_TXVBOOST_MASK,
 			      C10_CMN3_TXVBOOST(intel_c10_get_tx_vboost_lvl(crtc_state)),
 			      MB_WRITE_UNCOMMITTED);
-		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_TX(1),
+		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_TX(1),
 			      C10_TX1_TERMCTL_MASK,
 			      C10_TX1_TERMCTL(intel_c10_get_tx_term_ctl(crtc_state)),
 			      MB_WRITE_COMMITTED);
@@ -401,32 +402,34 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	for (ln = 0; ln < crtc_state->lane_count; ln++) {
 		int level = intel_ddi_level(encoder, crtc_state, ln);
-		int lane, tx;
+		int lane = ln / 2;
+		int tx = ln % 2;
+		u8 lane_mask = lane == 0 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
 
-		lane = ln / 2;
-		tx = ln % 2;
+		if (!(lane_mask & owned_lane_mask))
+			continue;
 
-		intel_cx0_rmw(i915, encoder->port, BIT(lane), PHY_CX0_VDROVRD_CTL(lane, tx, 0),
+		intel_cx0_rmw(i915, encoder->port, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 0),
 			      C10_PHY_OVRD_LEVEL_MASK,
 			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.pre_cursor),
 			      MB_WRITE_COMMITTED);
-		intel_cx0_rmw(i915, encoder->port, BIT(lane), PHY_CX0_VDROVRD_CTL(lane, tx, 1),
+		intel_cx0_rmw(i915, encoder->port, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 1),
 			      C10_PHY_OVRD_LEVEL_MASK,
 			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.vswing),
 			      MB_WRITE_COMMITTED);
-		intel_cx0_rmw(i915, encoder->port, BIT(lane), PHY_CX0_VDROVRD_CTL(lane, tx, 2),
+		intel_cx0_rmw(i915, encoder->port, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 2),
 			      C10_PHY_OVRD_LEVEL_MASK,
 			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.post_cursor),
 			      MB_WRITE_COMMITTED);
 	}
 
 	/* Write Override enables in 0xD71 */
-	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_OVRD,
+	intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_OVRD,
 		      0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
 		      MB_WRITE_COMMITTED);
 
 	if (intel_is_c10phy(i915, phy))
-		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
 			      0, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
-- 
2.41.0


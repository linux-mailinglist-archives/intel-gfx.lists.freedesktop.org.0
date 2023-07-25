Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C61762463
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 23:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0CA10E19E;
	Tue, 25 Jul 2023 21:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B489910E19E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 21:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690320459; x=1721856459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C823LZUFk1+FdU0eVlM/ckQDqAwakDVj94HIfF2qe6M=;
 b=AlzLvDXsf60O8IHWWrNEQ3cporW5akyt684B/Zan4uxOo70rcT+O8LFK
 PVTTddPa9jcJb/h3IgrF3xon7q5dGHLrTU3Hvp8vTjZJYgOmB4eHl+1MI
 MQ/Ovw0WNn7ld21TgBDj9G9jHZH7eJd59HpodGpMjVaDjYcB83o49ag+y
 bBxRIptbFQ8dYZsj5XgSll3sGi1KJCykghx9E1hII3k598xpkPOBDUGu5
 aMWFquVl8sJUcWu5zwZRGRL8PZJgcnwM3rmszMqJw6oA5jZprUbFW9D1o
 QvZnloYloI5m0ftV4MtCAV+FX4E6qS5j7JzVXdbokLL7HmLBFfjCncnzA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434104405"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434104405"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="900117446"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="900117446"
Received: from joshigx-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.247.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:38 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 18:27:15 -0300
Message-ID: <20230725212716.3060259-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725212716.3060259-1-gustavo.sousa@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/cx0: Enable/disable TX only for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display must not enable or disable transmitters for not-owned PHY lanes.

BSpec: 64539
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f10ebdfd696a..236124786631 100644
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
 		u8 lane_mask = i / 2 == 0 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
 
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF70785E3B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5D510E4B1;
	Wed, 23 Aug 2023 17:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5EA10E0CF;
 Wed, 23 Aug 2023 17:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810556; x=1724346556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fsjJMle76+ET9nOfxhMDdy0/yqa/SuINsWlBgqxkdfs=;
 b=VMAPvwzyZCxcJm1QJlL+oQG8dhSy13WdylrDkG3xqXyOnaxw9nOnKICg
 4h7YH2eMjw6w6wmZd5yy+nu7/beRmKsaF4qKp5IsQkiVuNN7T4fwe1Xho
 3fdO261ch4q0eoCfWYsofuUmpZ7XtUPvaE8KFhhxaSuZEdiPhYYukdCiz
 3FiSWpGrt7yk4ll5nFT09eDw8Kw5zvPhDrws3m9K7mLfMEn4NaIBT/z4d
 6Q5fJpkjZ1Y74ROvxJApOTm2wk2z9AdyRpzLaCcnQrX6F/svfbPJIjQKB
 31BI8ybpb0BgjfBbyRxo6/fXyAh7qBxlYuEtLtkg1rCiXC4PJvexmIUes A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147470"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147470"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204784"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204784"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:07 -0700
Message-Id: <20230823170740.1180212-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out of the
 main _max_lane_count() func
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Luca Coelho <luciano.coelho@intel.com>

This makes the code a bit more symmetric and readable, especially when
we start adding more display version-specific alternatives.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Link: https://lore.kernel.org/r/20230721111121.369227-4-luciano.coelho@intel.com
---
 drivers/gpu/drm/i915/display/intel_tc.c | 32 +++++++++++++++----------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index de848b329f4b..43b8eeba26f8 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -311,23 +311,12 @@ static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
+static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	intel_wakeref_t wakeref;
-	u32 lane_mask;
-
-	if (!intel_phy_is_tc(i915, phy) || tc->mode != TC_PORT_DP_ALT)
-		return 4;
+	u32 lane_mask = 0;
 
-	assert_tc_cold_blocked(tc);
-
-	if (DISPLAY_VER(i915) >= 14)
-		return mtl_tc_port_get_max_lane_count(dig_port);
-
-	lane_mask = 0;
 	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		lane_mask = intel_tc_port_get_lane_mask(dig_port);
 
@@ -348,6 +337,23 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
+int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+
+	if (!intel_phy_is_tc(i915, phy) || tc->mode != TC_PORT_DP_ALT)
+		return 4;
+
+	assert_tc_cold_blocked(tc);
+
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_tc_port_get_max_lane_count(dig_port);
+
+	return intel_tc_port_get_max_lane_count(dig_port);
+}
+
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes)
 {
-- 
2.40.1


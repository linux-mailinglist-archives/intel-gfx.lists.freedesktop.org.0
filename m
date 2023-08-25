Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 380E17881E4
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 10:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B03110E62D;
	Fri, 25 Aug 2023 08:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32B910E62C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 08:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692951416; x=1724487416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0rOmXJ9oTD/IoASzSubJqsId2JoWpmqfqajq5XsrQ34=;
 b=nXARTNxwKeUc7oL6NdZ8DpT+cDMS5ZN2q0Pqdb6sMYAI2NnffEtUnwfE
 LrX5YW+dc0ymLi7ERylMJMDRkFzDr6lN0EDBqD05vaYizdx7x1wv3K0Bd
 Ayxgz6akm9oYtCuL3HwGjY5Al3p+LKKRsB07XppAY0NhbdOd3FxTDEluA
 9bldgv1bLjti3SCRguH557g/CQwdCxC/GkKKSqBt4g3fO7fkedfo3VcRY
 DSDbXiuxA1BFnyj6+Hi5JoHwZRJjgBixMWSLsSRmSoq5jmPZIJ4IkddCK
 1DbisuFKlmD0+temDU5yyJRe8baIfbArxpzvshOKDawgJP3auMpFy68LV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364859072"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364859072"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="881107705"
Received: from teclark-mobl2.amr.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.213.100])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:17:00 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 11:16:37 +0300
Message-Id: <20230825081638.275795-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230825081638.275795-1-luciano.coelho@intel.com>
References: <20230825081638.275795-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915/tc: move legacy code out of the
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
Cc: suraj.kandpal@linux.intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This makes the code a bit more symmetric and readable, especially when
we start adding more display version-specific alternatives.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
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
2.39.2


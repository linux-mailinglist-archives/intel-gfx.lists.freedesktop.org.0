Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 826DB75AA66
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AAF710E589;
	Thu, 20 Jul 2023 09:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 832AF10E589
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 09:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689844470; x=1721380470;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a9+N7zhRMKM2GGFeL9zOqyOpn4k+BavM+L0SF/upCBk=;
 b=Xu6kQdHER+mo7XcZYLEviGCf+bDrmpJOVMMgmzBU+6AY+AqDUAhfg5OO
 J90/ZONYgDseYo1V/oxThShMIruiG16/xEUB/fBWik7sRcPcS1Nz4ezb3
 mD8SgO/9Q/lqnuvrmIqIqBawpN7f9zPS3NRX4lEoNxYmNeo9bcGoY7+eN
 Bc9xKcqFw5CIKTtVM0A3n4FCMIp7cKD/OPDyVSQsEU6r6tAe7OIDeyjBu
 euHGiqzO5CcSzhXgs3Lbh2X4zZ2uzECikyFprs99srSbZAUlJ7bgHkgM/
 5D4wdPjx1D4dj8M7Gl9/SxeXQLrvek6IJfiT23Sn6cvZr5LhGS2kjafJo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="364140608"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="364140608"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="970981912"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="970981912"
Received: from ssauty-mobl1.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.56.229])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:29 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 12:14:10 +0300
Message-Id: <20230720091411.347654-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230720091411.347654-1-luciano.coelho@intel.com>
References: <20230720091411.347654-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/tc: move legacy code out of the
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This makes the code a bit more symmetric and readable, especially when
we start adding more display version-specific alternatives.

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


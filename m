Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CA975C591
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 13:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166DF10E667;
	Fri, 21 Jul 2023 11:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91FA10E659
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 11:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689937897; x=1721473897;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a9+N7zhRMKM2GGFeL9zOqyOpn4k+BavM+L0SF/upCBk=;
 b=Hbqykvkz0YcIxPW4X7DvBOsXQZzLAlhtXeyU/ClmfkDLzdKLUca8VdE3
 QZB7NRvGevZVYBEJoIFraswZCpp9C1l9zWPBgD3YjN4wkKS5sCz1aqBTx
 xxIQ/+aEor/QvZ3n7YmKeMto54GoiOC3u8KXlrZtpEbla8lnzi2P+pDAR
 Yd+mF7m+bobHOsYqb+sn6K19f8g6dtn63Ygyg3STP1b4GcrMqOomXiw2b
 Hp6K1RuEiEu6GpZejkxd+QhRcnK5u9XhKTAs/PYp4u7e5rbVScOl6fYqI
 5VGqQ1GtedinMIGABy3Kk8jzkuv2b6Il4iQy/VbhA9s3zbeMq0jRmtvBR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="397888666"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="397888666"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="675003997"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="675003997"
Received: from bublath-mobl2.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.57.120])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:36 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jul 2023 14:11:20 +0300
Message-Id: <20230721111121.369227-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230721111121.369227-1-luciano.coelho@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of the
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


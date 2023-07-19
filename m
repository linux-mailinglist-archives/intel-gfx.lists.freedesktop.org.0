Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FA37596C8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 15:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B41910E19D;
	Wed, 19 Jul 2023 13:29:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47F510E19D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 13:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689773339; x=1721309339;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nB7I3UK0lAMaJtv4Cn/yhXcJRp+m3M2gZwmmbzG+Fqs=;
 b=LrgWf7phlRvJ7a9x5R6JAzZIKM2X7s2sRK9r1XqbZQvjIal41mp2UwFj
 qWMY5tfBMQxiaj0xGB/l9SSjBvdXd0hZLMv7Rsmhczm7OyRzZOXq/6H7Q
 9jJRDBgtXa66uTeVgk8sNBzdPn05RILqIVtxgFS+xOgOdiPzz8nCf2LoD
 m+AhnlLQFAH/FpW7OpL20bH/JaJoIjauY3hhACWiSw8lAwLvhM6mIBSpt
 qq9sfVdNW9jmSjJvKh9qz+xA1cXccDrBtjHFASUuWcKQYXPFd5GLx4IF2
 VIib+KwfyZVfknPPMy6SG+6KJe8YCPiCOVYxTvgBbYstGOK6c3RKHZmWh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="363922000"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="363922000"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="717978539"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="717978539"
Received: from tscherue-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.252.56.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:35 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 16:28:21 +0300
Message-Id: <20230719132822.305612-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230719132822.305612-1-luciano.coelho@intel.com>
References: <20230719132822.305612-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/tc: move legacy code out of the
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
 drivers/gpu/drm/i915/display/intel_tc.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index de848b329f4b..11b6139eaf4f 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -311,13 +311,13 @@ static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
+static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	intel_wakeref_t wakeref;
-	u32 lane_mask;
+	u32 lane_mask = 0;
 
 	if (!intel_phy_is_tc(i915, phy) || tc->mode != TC_PORT_DP_ALT)
 		return 4;
@@ -327,7 +327,6 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 	if (DISPLAY_VER(i915) >= 14)
 		return mtl_tc_port_get_max_lane_count(dig_port);
 
-	lane_mask = 0;
 	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		lane_mask = intel_tc_port_get_lane_mask(dig_port);
 
@@ -348,6 +347,19 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
+int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (dig_port->tc_mode != TC_PORT_DP_ALT)
+		return 4;
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


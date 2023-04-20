Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F192F6E94F2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550BF10EC39;
	Thu, 20 Apr 2023 12:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7349C10E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994771; x=1713530771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Sr7Cdu+xAOi1HZBxse0UWjLkCPmxFFA0FqzELK6+W8=;
 b=ab6GyWFTN7nudARwK+iNKRjECFSlpP/gc7UQ7W5OXk4GAxj1kECLyi9U
 PQp+4UzpowyrJgn3Ty4N7rU6d3pMWk069pUTSL4TTrJQO6VYy4uIGVyfF
 RIrux68PbeVR6mR0NzmqQLBeFkecP/2ULZTI9P0MnRQ8oHLxPpNQF41rF
 1x1haxTs9XErezS3uZBIw2kUTiwgqJES+/T2aq+FLRICWtxW64wNnBuJB
 BPpElliCUEq8oOpWb8WFHvJEaG1PkXJGVb6IoeYFF1u94DtaB5YG/SnqN
 cyOBtVXUjB6iJgrZemr4E8i3iSluua9NKLvOTOl2B/gYL+6Ucra2vzAcR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051932"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051932"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146074"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146074"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:46:09 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:49 +0300
Message-Id: <20230420124050.3617608-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/13] drm/i915/mtl: Pin assignment for TypeC
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

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Unlike previous platforms that used PORT_TX_DFLEXDPSP
for max_lane calculation, MTL uses only PORT_TX_DFLEXPA1
from which the max_lanes has to be calculated.

Bspec: 50235, 65380

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 28 +++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b192265a3d78..4fca711a58bc 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -16,6 +16,10 @@
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
 
+#define DP_PIN_ASSIGNMENT_C	0x3
+#define DP_PIN_ASSIGNMENT_D	0x4
+#define DP_PIN_ASSIGNMENT_E	0x5
+
 enum tc_port_mode {
 	TC_PORT_DISCONNECTED,
 	TC_PORT_TBT_ALT,
@@ -281,6 +285,27 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
+static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	intel_wakeref_t wakeref;
+	u32 pin_mask;
+
+	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+		pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
+
+	switch (pin_mask) {
+	default:
+		MISSING_CASE(pin_mask);
+		fallthrough;
+	case DP_PIN_ASSIGNMENT_D:
+		return 2;
+	case DP_PIN_ASSIGNMENT_C:
+	case DP_PIN_ASSIGNMENT_E:
+		return 4;
+	}
+}
+
 int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -294,6 +319,9 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 
 	assert_tc_cold_blocked(tc);
 
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_tc_port_get_pin_assignment_mask(dig_port);
+
 	lane_mask = 0;
 	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		lane_mask = intel_tc_port_get_lane_mask(dig_port);
-- 
2.34.1


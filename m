Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AD165EB86
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9A310E713;
	Thu,  5 Jan 2023 13:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6043210E713
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923623; x=1704459623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nNDV3hMOqpKyUTiXyAdr0/2Kf0Yre4j8uJtI5f79hFQ=;
 b=ePx2Wc4w6jkzc4Q8hrfGmaosOHjzffKTlSK+dbLpYXpV5zbro3FzsjMF
 coiqWETaFGAYs9+O4hO0LCjRhljQUrO1d6LicpLQ68HPBYChmdSEZcYXB
 bJA3PJ0fLXZXVSsiMz3sVU1QuJYsH6JxGmW5Dw18cvkA3n5kKxoBVE90F
 GZkyS372jZX+feWm9cYKVwlvyoYL5q08K69fQGCSCD+4kMZZi/lsT9ouk
 LFXhZzwjrB72IViAGBSB2ikdJgKBn8ZauGYCsIdj6xQc28dODBHmd6nnm
 +xPRNfmzI0QBYLEmdjSVWb7xK5JoBmkr6zaFIRcv7TY1/JsiMAuAqU3Rt Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697978"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697978"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541450"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541450"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 05:00:20 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:46 +0200
Message-Id: <20230105125446.960504-22-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 21/21] drm/i915/mtl: Pin assignment for TypeC
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Unlike previous platforms that used PORT_TX_DFLEXDPSP
for max_lane calculation, MTL uses only PORT_TX_DFLEXPA1
from which the max_lanes has to be calculated.

Bspec: 50235, 65380
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-21-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_tc.c | 30 +++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index de851fddb255..e7d5301fc35e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -15,6 +15,10 @@
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
 
+#define DP_PIN_ASSIGNMENT_C	0x3
+#define DP_PIN_ASSIGNMENT_D	0x4
+#define DP_PIN_ASSIGNMENT_E	0x5
+
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
 	static const char * const names[] = {
@@ -147,6 +151,29 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 	       DP_PIN_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
 }
 
+static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	intel_wakeref_t wakeref;
+	u32 pin_mask;
+
+	assert_tc_cold_blocked(dig_port);
+
+	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+		pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
+
+	switch(pin_mask) {
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
@@ -156,6 +183,9 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 	if (dig_port->tc_mode != TC_PORT_DP_ALT)
 		return 4;
 
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_tc_port_get_pin_assignment_mask(dig_port);
+
 	assert_tc_cold_blocked(dig_port);
 
 	lane_mask = 0;
-- 
2.34.1


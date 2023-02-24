Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2666A19E9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A8910E8B3;
	Fri, 24 Feb 2023 10:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8B610E8AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233993; x=1708769993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IwPYV4oAA8CfG3FNxbtEZqr0ogXh0Y3BWHYn/P8yJcI=;
 b=j4Fn0lZ4uxy0SZcv+uQuMZtbT5TSZ+1wNJ6E68qP/y65rHmZssmGxEes
 e0niBQBDOdBloVlEYvh3KTBH+TV8sJ5n/2HkBPICmqHM1K7Dcs99xq7qq
 EXid7J3Xjh9KKw68rkut3ZtIzVRd1KMxpgYBKiTi2vMEpkZPCL1t00bnA
 7AYkhnzRaqEJnG/j0x6obzIuS44ourLFvitF/kTrasaJ3gV+xMVZO7TGs
 b5IGsFTtVdP5mxE19hAyxmh+xBK218YB2UrQimJQy3rij0JWkWdM+T6aG
 Cr8bohbQLp0E9j4r97QrWa5+ohLDftSOec/GVYZZ9+pNwl8a0Ly395l/Z w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129932"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129932"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846670"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846670"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:42 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:56 +0200
Message-Id: <20230224101356.2390838-23-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 22/22] drm/i915/mtl: Pin assignment for TypeC
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
Cc: Matt Roper <matthew.d.roper@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_tc.c | 30 +++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 5756daac91d9..694d74088980 100644
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B95A97A2528
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BA5E10E66F;
	Fri, 15 Sep 2023 17:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E62C10E66F;
 Fri, 15 Sep 2023 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800012; x=1726336012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hClkUmKNtPwN+1T8/LZ1sd9IsLmMBSP6cw8gCzsPxPs=;
 b=UtQnqMnsSNwmlTXe3kJG7afus7NQAXRQd+ZfsVi3Y7Vq1uJsYX8yqAZN
 Vt8GQNHVShMoXr4sBn2qBpQgbkyFkhJQiQd1kQpG2Mk26N7704L1dnfqa
 TGJJvJziU9nXw27p3g1/6wbOOop7u1Xcujo5kqvsuPEGjkqPvG7ilbggY
 LOpmndI+lM/qEyfDCyMZFp23g0+Z7YPdz1Vphn4xFL5N7M7u0gC0hBUyR
 4a2c9wFNEODvCEP//E5FYRgeVAQx4B+RWMhw0oUI5vjiyqSyS2HaI83O+
 u42sb4DbmFZdNoQPbisvBkl52Y39GG/b7XCpDj3Fbai6aupM16ZIeNA1r A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779278"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779278"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818284"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818284"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:39 -0700
Message-Id: <20230915174651.1928176-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 18/30] drm/i915/xe2lpd: Read pin assignment
 from IOM
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Luca Coelho <luciano.coelho@intel.com>

Starting from display version 20, we need to read the pin assignment
from the IOM TCSS_DDI_STATUS register instead of reading it from the
FIA.

We use the pin assignment to decide the maximum lane count.  So, to
support this change, add a new lnl_tc_port_get_max_lane_count() function
that reads from the TCSS_DDI_STATUS register and decides the maximum
lane count based on that.

BSpec: 69594
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 28 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h         |  1 +
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 678693978892..e9ced251c170 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -290,6 +290,31 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
+static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	intel_wakeref_t wakeref;
+	u32 val, pin_assignment;
+
+	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+		val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
+
+	pin_assignment =
+		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
+
+	switch (pin_assignment) {
+	default:
+		MISSING_CASE(pin_assignment);
+		fallthrough;
+	case DP_PIN_ASSIGNMENT_D:
+		return 2;
+	case DP_PIN_ASSIGNMENT_C:
+	case DP_PIN_ASSIGNMENT_E:
+		return 4;
+	}
+}
+
 static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -348,6 +373,9 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 
 	assert_tc_cold_blocked(tc);
 
+	if (DISPLAY_VER(i915) >= 20)
+		return lnl_tc_port_get_max_lane_count(dig_port);
+
 	if (DISPLAY_VER(i915) >= 14)
 		return mtl_tc_port_get_max_lane_count(dig_port);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2f115d339913..efcf1461988f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6351,6 +6351,7 @@ enum skl_power_gate {
 #define TCSS_DDI_STATUS(tc)			_MMIO(_PICK_EVEN(tc, \
 								 _TCSS_DDI_STATUS_1, \
 								 _TCSS_DDI_STATUS_2))
+#define  TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK	REG_GENMASK(28, 25)
 #define  TCSS_DDI_STATUS_READY			REG_BIT(2)
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
-- 
2.40.1


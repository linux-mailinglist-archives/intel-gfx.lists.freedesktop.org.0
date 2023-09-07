Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4617974B3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7063E10E83D;
	Thu,  7 Sep 2023 15:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F5910E819;
 Thu,  7 Sep 2023 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101206; x=1725637206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EqcqLPN04FhjK/OuGk0mkmM7d2w/1/f8LE8AeiDWQcQ=;
 b=aclYDskHwVjOlDG4o6rrBg0pZAR0gyMATnYYRe+G8hB5xFyuujo0XRkq
 yHOuQ0+UpQmjnvIELDPd3ph3OeRmFZT2mSdBmH2c63S2iOPHfn+3Sls/B
 BrmsBaRvP2+xfBXp+7hE9si9NAeNs32KNpb5Ar2P0jBTrNIr9CAXkxQ1h
 NQLsr2anDdlt/0tHMMpl6cK795BbNrLchW00qeQ3BRBWKng1cveMud0TU
 AWES2H05pxpPz/B+9iWxo6kEJSN7lpwoRd0RplPZ0s8rfzHAIk2CjUgXl
 yBei15wF00pYSEnVHe9rsG49Cd10ODe8TUANq/4Jp+pmc339ssodWYmK2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445794"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445794"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930285"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930285"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:47 -0700
Message-Id: <20230907153757.2249452-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/27] drm/i915/xe2lpd: Read pin assignment
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
 Matt Roper <matthew.d.roper@intel.com>, Luca Coelho <luciano.coelho@intel.com>
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


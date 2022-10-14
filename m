Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C365FEE23
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D94510EADF;
	Fri, 14 Oct 2022 12:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB3E10EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751942; x=1697287942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2swJqb3hiddUQEg65V/8VeIv7rtz8Puco8NSgzRW7Z4=;
 b=GnLMm1Lywur3+T7dmoc1QBMTtE2PhoH8ng1P8XXy/Pm6y4ai7weJ2iQl
 i0649GlpD2c/kPd2gwzJBAzapM8uT9VLyjQqM1UoD0pEhDbfYPhaVoAjc
 5rwAA/ZKq2U4oVxJkU3kB5ZTwHGk2qn7clGsqT2kVNI2CSwLoKxwVclDw
 KrS7wCeSFET0ewljRynmZLvIKGfhXIT60I86Jl6lJFtk5cBUWoefYgvRn
 UEVRNDOmYBLaUXpnid1qf1yByW7C6Kuva8WHmcmIxM/6CvgMfJTH94pQL
 sU2nUbP3SQ9LMo/OJ7Cst7S38QySuk+jXG/pC+VlqAyz3POhB2W8GsQyy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104704"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104704"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739839"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739839"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:20 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:40 +0300
Message-Id: <20221014124740.774835-21-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/20] drm/i915/mtl: Pin assignment for TypeC
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
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 30 +++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index dba10bcc6b66..1bc81adf1ad7 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -13,6 +13,10 @@
 #include "intel_tc.h"
 #include "intel_tc_phy_regs.h"
 
+#define DP_PIN_ASSIGNMENT_C	0x3
+#define DP_PIN_ASSIGNMENT_D	0x4
+#define DP_PIN_ASSIGNMENT_E	0x5
+
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
 	static const char * const names[] = {
@@ -149,6 +153,29 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
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
@@ -158,6 +185,9 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 	if (dig_port->tc_mode != TC_PORT_DP_ALT)
 		return 4;
 
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_tc_port_get_pin_assignment_mask(dig_port);
+
 	assert_tc_cold_blocked(dig_port);
 
 	lane_mask = 0;
-- 
2.34.1


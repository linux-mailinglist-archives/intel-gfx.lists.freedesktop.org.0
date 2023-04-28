Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A816F14D6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 12:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B398A10ECC6;
	Fri, 28 Apr 2023 09:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31BC510ECB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675994; x=1714211994;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qt3SE/DOwiY8PmmIhoxWiI4CWRspc887KW+ZnXhwOcQ=;
 b=H9gNH9JLSgyrbxAgPJHD3e+j25lgnlLRzlU6JO++MY7JVta6mkbtw31P
 AUqI62Q/TBIfoB54fB/EczOBYSgs3Gn5L9i6Fi3WvL5Jao1Y+a9raZnjM
 wLfDg9HAtY0c1DFUDRvXZA7DAsnH3wnQbH2sOs7L+N1GO5iRXLGCgdXZh
 pZ00wEERZzcDS9dhGvNXviUDwSiPZWBQsYGFxU8RYKh020LDl/i0wW4zU
 qIwmQrgXUoG752T9vy/yyJAKzZbqkHu4nm2glrkNRmSp9HtMjQw8JFgqv
 y8Ow2rj5AU7tHVtwp56vjkAhT7rLfA9l7yUhziPYFw0CTV8VLLdXIpaJU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698245"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698245"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295771"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295771"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:51 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:31 +0300
Message-Id: <20230428095433.4109054-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/13] drm/i915/mtl: TypeC HPD live status
 query
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

From: Imre Deak <imre.deak@intel.com>

The HPD live status for MTL has to be read from different set of
registers. MTL deserves a new function for this purpose
and cannot reuse the existing  HPD live status detection

Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 30 ++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 951b12ac51dc..b192265a3d78 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -886,6 +886,34 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
  * XELPDP TC PHY handlers
  * ----------------------
  */
+static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_digital_port *dig_port = tc->dig_port;
+	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
+	u32 pica_isr_bits = i915->display.hotplug.hpd[hpd_pin];
+	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
+	intel_wakeref_t wakeref;
+	u32 pica_isr;
+	u32 pch_isr;
+	u32 mask = 0;
+
+	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+		pica_isr = intel_de_read(i915, PICAINTERRUPT_ISR);
+		pch_isr = intel_de_read(i915, SDEISR);
+	}
+
+	if (pica_isr & (pica_isr_bits & XELPDP_DP_ALT_HOTPLUG_MASK))
+		mask |= BIT(TC_PORT_DP_ALT);
+	if (pica_isr & (pica_isr_bits & XELPDP_TBT_HOTPLUG_MASK))
+		mask |= BIT(TC_PORT_TBT_ALT);
+
+	if (tc->legacy_port && (pch_isr & pch_isr_bit))
+		mask |= BIT(TC_PORT_LEGACY);
+
+	return mask;
+}
+
 static bool
 xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
 {
@@ -1039,7 +1067,7 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
 
 static const struct intel_tc_phy_ops xelpdp_tc_phy_ops = {
 	.cold_off_domain = tgl_tc_phy_cold_off_domain,
-	.hpd_live_status = adlp_tc_phy_hpd_live_status,
+	.hpd_live_status = xelpdp_tc_phy_hpd_live_status,
 	.is_ready = adlp_tc_phy_is_ready,
 	.is_owned = xelpdp_tc_phy_is_owned,
 	.get_hw_state = xelpdp_tc_phy_get_hw_state,
-- 
2.34.1


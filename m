Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFB36E94EA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DBD10EC23;
	Thu, 20 Apr 2023 12:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C573110E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994769; x=1713530769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QngXFIQoiQ31ho0sV1NwtdW/3iCweyYIaeB+OLvuBz8=;
 b=V0a5crJ/9jy8cYaKcLvu9R9cWPMChDqTRIgDIiUeL7YlZ1LENupBBOOG
 V0vTpQ0B4GyELgBk9YsenQNwXPmNNLKlH3Jg2Zf1aQ5u+A6GZ3as4pAuY
 0+F9Lvtfx99C8ISfC0dqPPMhv1QGoNOblwGTPl76V+U/2TMNBMbzg8C0E
 XKF+qy0fy6C5I+vkwX4iVShiw6tQ4OznyYZ8AFwq1yKQiyFVRETbVZweT
 GcXM62S3vJvgxvAcuSMepv8v3U8KzpM9OydPwNpb/aB8lYsiZJcIIAWsr
 KRWjxilOZUVzdaiG69Jh1vsQO6KTrrBROhqunIqnAOeFLBAKZDFU75aaG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051927"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051927"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:46:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146066"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146066"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:46:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:48 +0300
Message-Id: <20230420124050.3617608-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/mtl: TypeC HPD live status query
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


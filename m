Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF5E6BCE02
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6096510ECCA;
	Thu, 16 Mar 2023 11:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8CA10ECBE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965566; x=1710501566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LTpemj40iKHNdWnqmCUxWx9GaHs2ssrfGmkzRPqigJE=;
 b=H6Qj05SQhAbCvXhbaJXKzxsdU4dp2v8/sG4UB3ko8HZZHjEbMZko3/Aa
 Mt48Q4AY8oMzJ72DycObmWlBgok0VcF/yQylXJr+bkAXETtFr66XGQ9Qz
 W59dp+GXZji2pP3DJWhy0u9QDEhSnXgKlw6Mgjq8yGi+qKX5sCcaUWSJf
 Yj6UhOyy+2azKA1pAs+ffQaqCUgAi/ZVMrCdD/fmm7A+0bwJQ0ppaU8O4
 N/OdlGBVmF05QCIKj/WLzYkk8l98Jf5tXvAXCePF7k9xJ1TJU8tiPKWvm
 dVopZSSCf9NxRGzWcEoF8Zaga8JecfhmOcAWKCxx2BV7Z0dEtkk/YVnUd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485992"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485992"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083312"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083312"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:19:24 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:34 +0200
Message-Id: <20230316111335.66915-22-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 21/22] drm/i915/mtl: TypeC HPD live status
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

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 30 +++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 89dfc19de1b8..5756daac91d9 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -297,10 +297,40 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	return mask;
 }
 
+static u32 xelpdp_tc_port_live_status_mask(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
+	struct intel_uncore *uncore = &i915->uncore;
+	u32 val, mask = 0;
+	enum hpd_pin pin;
+
+	val = intel_uncore_read(uncore, PICAINTERRUPT_ISR);
+	pin = HPD_PORT_TC1 + tc_port - TC_PORT_1;
+	if (val & XELPDP_DP_ALT_HOTPLUG(pin))
+		mask |= BIT(TC_PORT_DP_ALT);
+	if (val & XELPDP_TBT_HOTPLUG(pin))
+		mask |= BIT(TC_PORT_TBT_ALT);
+
+	if (dig_port->tc_legacy_port &&
+	    intel_uncore_read(uncore, SDEISR) & isr_bit)
+		mask |= BIT(TC_PORT_LEGACY);
+
+	/* The sink can be connected only in a single mode. */
+	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
+		tc_port_fixup_legacy_flag(dig_port, mask);
+
+	return mask;
+}
+
 static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_tc_port_live_status_mask(dig_port);
+
 	if (DISPLAY_VER(i915) >= 13)
 		return adl_tc_port_live_status_mask(dig_port);
 
-- 
2.34.1


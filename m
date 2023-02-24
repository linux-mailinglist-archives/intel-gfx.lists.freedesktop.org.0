Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 014926A19EE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C0510E873;
	Fri, 24 Feb 2023 10:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 474E510E852
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233993; x=1708769993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LTpemj40iKHNdWnqmCUxWx9GaHs2ssrfGmkzRPqigJE=;
 b=U4NYX47LuI/RR8u4uhw+fVYGYT98wLfzOnGaheVW4W4CLZH31aQphiWY
 aGKCpBn3V75OayVlz7T00WPbbaKHTdUsVLzYcCudxXVxyieoC9m6MWe5K
 Ec5OCJA4C6M2PdQcFUsxqHN9WweTSCznx5D5z+QNjI+p93eNopTkj4ZFz
 DQ6TyHNZBEJSqqgMZUTFeF+4d3ab6Q6gqcGQub+qHSg6IJ4MdKvjJYaLR
 JjlauVbQeyzmOlVEZXvQFhu7+akKBHFvPamMyiGi77z0B00J0/FVyCQz7
 t/qzQitT4LxaTNuAkICucmX9Y7KNWZ3PxrUsTayzoIjZzI0wzihZ29QUK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129929"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129929"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846660"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846660"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:40 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:55 +0200
Message-Id: <20230224101356.2390838-22-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 21/22] drm/i915/mtl: TypeC HPD live status
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA9E65EB83
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3831D10E712;
	Thu,  5 Jan 2023 13:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958B910E713
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923621; x=1704459621;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oqRklpR4SHBUAWK0IOqFhDuVSN8r5AQu3ooBm7Jq9vc=;
 b=egoMv7ddmD+HLOKdjCkZyz1KorK3zOdXkC4V2q0P02zxHfeK5xdQV+rH
 seZtagysDMSYs3WbW7maos26t2T9bpdDa1IuWEK+iKXFSJaviEJ/TY6yX
 a9hv2iILwy2id6mOwiu9jgOQY/vGYceKDIGHidGsVkuXYyXEEBDe0tAwT
 4gGaAO0Ydb3SFdp5w/EUWQyKW77UHGHULNt75oesdN6uduYwZb7fDEQbV
 gHtDBN3CbrKgNkO/Slup0o/yPMxeccDp9mlNXkhSn3K7uQGFVuYOMUmUH
 Mj91y5eJMrpAtukeEFilFgvujerZQ1l5tahk0fQ9SX13RWLaDgzxrBI0a g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697957"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697957"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541419"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541419"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 05:00:17 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:45 +0200
Message-Id: <20230105125446.960504-21-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 20/21] drm/i915/mtl: TypeC HPD live status
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
Cc: jani.nikula@intel.com
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
index 74d8d8e0e0df..de851fddb255 100644
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


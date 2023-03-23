Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB356C6ABA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FCB10EAC2;
	Thu, 23 Mar 2023 14:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455DA10EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581262; x=1711117262;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QzuKZ83hofiom+PFFuw52WbNpcyhtL5489lX8e8dZEs=;
 b=g+qmtI4eNFDFRxHpHgOfXGyAO/4JXNP8D58PRrA6czSMTYZrN4lBgSAU
 l5oBgqeLG0E27PJBGncTJh/XfYfcSqCPXZA7LT72yjVeeL6BTdeUI+OS7
 kyRJbvfQssiZJbNCfxmUk8QST66R+NyJkjXED+gInX1Zbnc1PyAvUD+um
 B+ztD1ioH5zAQLdQRJi+bTK+CiHlS651EQRW+jAQnguo945DIbaD/xE8t
 ywUnV0iIApAZzliTVXJByZ1+Ex9RYZ/Xwk2dGN5BSsn+tRHiFHc2+fF/7
 P76yat1cH7R3A5Qlbw/osm534BeLe60l0M2Isq10R05rWfXFd5eGFatVf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892336"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892336"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722715"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722715"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:28 +0200
Message-Id: <20230323142035.1432621-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 22/29] drm/i915/adlp/tc: Use the DE HPD ISR
 register for hotplug detection
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

The spec says to use the CPU ISR registers for DP-alt/TBT HPD detection
on ADLP, so do that instead of using the related IOM/TCSS registers.

Bspec: 55480, 55482, 49212, 49305

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8f159ded501f8..3122f7ce8c9a0 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -688,22 +688,19 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
-	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
-	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
-	u32 val, mask = 0;
+	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
+	u32 cpu_isr_bits = i915->display.hotplug.hpd[hpd_pin];
+	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
+	u32 cpu_isr;
+	u32 mask = 0;
 
-	/*
-	 * On ADL-P HW/FW will wake from TCCOLD to complete the read access of
-	 * registers in IOM. Note that this doesn't apply to PHY and FIA
-	 * registers.
-	 */
-	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
-	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
+	cpu_isr = intel_de_read(i915, GEN11_DE_HPD_ISR);
+	if (cpu_isr & (cpu_isr_bits & GEN11_DE_TC_HOTPLUG_MASK))
 		mask |= BIT(TC_PORT_DP_ALT);
-	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT)
+	if (cpu_isr & (cpu_isr_bits & GEN11_DE_TBT_HOTPLUG_MASK))
 		mask |= BIT(TC_PORT_TBT_ALT);
 
-	if (intel_de_read(i915, SDEISR) & isr_bit)
+	if (intel_de_read(i915, SDEISR) & pch_isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
 	return mask;
-- 
2.37.1


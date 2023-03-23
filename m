Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F956C6ABD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A13F10EAC4;
	Thu, 23 Mar 2023 14:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2650110EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581263; x=1711117263;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ghNFF8HRzwLPYCGNjnugSlAPF5iGiNOrmiDTemyqKP4=;
 b=e+mvGTkZ6rhKDBnaeie776/htNllavUn8Sf3sPPlnMwgTA47QSzh/M8e
 gvT5KRuSpDohS5xOA277PQdi5LOD81JF4mTgyBMoWh9x+pOyFCUWglmj+
 hOOZ5btADAXp876nglg6JL5sV/dhVE1zCmEQ5Vtun7fdgce/cCEOMTbXp
 D3G+DICpKLAw3DO1rYxWk/6zXA188fsnRwGDCef/VMt78/na28mLDt+qg
 6bRTWISS0NCfxxaTKPUEubv++WOotnkwDBKFAGoyic+qB+A8g8YusOzTL
 EG399Z52wcUaRLmGxK1KF30oOkc26vX+OKjSbjNXPmMsT2FuUbmaMXRbv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892340"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892340"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722721"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722721"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:02 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:29 +0200
Message-Id: <20230323142035.1432621-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/29] drm/i915/tc: Get power ref for reading
 the HPD live status register
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

Enable the power required for the HPD live status register access
instead of depending on the caller blocking the TC-cold power state
(during HW readout and connector probing).

A follow up patch will remove connecting/disconnecting the PHY around
connector probing, so querying the HPD status can happen in this case
without TC-cold being blocked.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 27 +++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3122f7ce8c9a0..08a23ab081d74 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -411,24 +411,29 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
+	intel_wakeref_t wakeref;
+	u32 fia_isr;
+	u32 pch_isr;
 	u32 mask = 0;
-	u32 val;
 
-	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(tc->phy_fia));
+	with_intel_display_power(i915, tc_phy_cold_off_domain(tc), wakeref) {
+		fia_isr = intel_de_read(i915, PORT_TX_DFLEXDPSP(tc->phy_fia));
+		pch_isr = intel_de_read(i915, SDEISR);
+	}
 
-	if (val == 0xffffffff) {
+	if (fia_isr == 0xffffffff) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %s: PHY in TCCOLD, nothing connected\n",
 			    tc->port_name);
 		return mask;
 	}
 
-	if (val & TC_LIVE_STATE_TBT(tc->phy_fia_idx))
+	if (fia_isr & TC_LIVE_STATE_TBT(tc->phy_fia_idx))
 		mask |= BIT(TC_PORT_TBT_ALT);
-	if (val & TC_LIVE_STATE_TC(tc->phy_fia_idx))
+	if (fia_isr & TC_LIVE_STATE_TC(tc->phy_fia_idx))
 		mask |= BIT(TC_PORT_DP_ALT);
 
-	if (intel_de_read(i915, SDEISR) & isr_bit)
+	if (pch_isr & isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
 	return mask;
@@ -691,16 +696,22 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
 	u32 cpu_isr_bits = i915->display.hotplug.hpd[hpd_pin];
 	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
+	intel_wakeref_t wakeref;
 	u32 cpu_isr;
+	u32 pch_isr;
 	u32 mask = 0;
 
-	cpu_isr = intel_de_read(i915, GEN11_DE_HPD_ISR);
+	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+		cpu_isr = intel_de_read(i915, GEN11_DE_HPD_ISR);
+		pch_isr = intel_de_read(i915, SDEISR);
+	}
+
 	if (cpu_isr & (cpu_isr_bits & GEN11_DE_TC_HOTPLUG_MASK))
 		mask |= BIT(TC_PORT_DP_ALT);
 	if (cpu_isr & (cpu_isr_bits & GEN11_DE_TBT_HOTPLUG_MASK))
 		mask |= BIT(TC_PORT_TBT_ALT);
 
-	if (intel_de_read(i915, SDEISR) & pch_isr_bit)
+	if (pch_isr & pch_isr_bit)
 		mask |= BIT(TC_PORT_LEGACY);
 
 	return mask;
-- 
2.37.1


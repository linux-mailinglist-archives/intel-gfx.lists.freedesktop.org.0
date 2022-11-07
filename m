Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0856161FB26
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1348F10E4F0;
	Mon,  7 Nov 2022 17:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4C610E4F0
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841780; x=1699377780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hMySilHjRqq+Xk6J3aM53z/tsWj/Bo/haLpug86S2Fc=;
 b=dQ+fVdH01K3PIv7MjFCCar6LAzVdUY6YvqUoXlJ/YuQwHahuUNC5c473
 8VtYK4nx1Qb713hmtsGaXd0rwChPm+T+KQoZFeuu0N2tpEqbxjtMCFAbD
 EMUYg8QoFfryyO9SeOTrk68Gadcdnq2aGnMqHpFJFZX6Yf9UAINZyGAe7
 U1GlzV36cbjBDG/Q/yU/ZgvK+A8jvap4PnUGiq0X2C+wmcNdz4936BLV8
 lzPhOmDXE+xRmM2n5XZy0Q8ZSwOJjIZC5Vm2920vX/hA/2ggTfea20KDa
 ZuKBETeCKyM9jBwzRk1J6vor972nkZ5fYt5uyiUiEhpiiesgzbWh9ctE8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247140"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247140"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248447"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248447"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:24 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:11 +0200
Message-Id: <20221107170917.3566758-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
References: <20221107170917.3566758-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915: Use the AUX_IO power domain
 only for eDP/PSR port
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

Use the AUX_IO_A display power domain only for eDP on port A where PSR
is also supported. This is the case where DC states need to be enabled
while the output is enabled - ensured by AUX_IO_A domain not enabling
the DC_OFF power well. Otherwise port A can be treated the same way as
other ports with an external DP output: using the AUX_<port> domain
which disables the unrequired DC states.

This change prepares for the next patch enabling DC states on all ports
supporting eDP/PSR besides port A.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e95bde5cf060e..4154f454ab52a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -846,7 +846,8 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
 }
 
 static enum intel_display_power_domain
-intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
+intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
+			       const struct intel_crtc_state *crtc_state)
 {
 	/* ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
 	 * DC states enabled at the same time, while for driver initiated AUX
@@ -860,8 +861,10 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
 	 * Note that PSR is enabled only on Port A even though this function
 	 * returns the correct domain for other ports too.
 	 */
-	return dig_port->aux_ch == AUX_CH_A ? POWER_DOMAIN_AUX_IO_A :
-					      intel_aux_power_domain(dig_port);
+	if (dig_port->aux_ch == AUX_CH_A && crtc_state->has_psr)
+		return POWER_DOMAIN_AUX_IO_A;
+	else
+		return intel_aux_power_domain(dig_port);
 }
 
 static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
@@ -897,7 +900,8 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
 		dig_port->aux_wakeref =
 			intel_display_power_get(dev_priv,
-						intel_ddi_main_link_aux_domain(dig_port));
+						intel_ddi_main_link_aux_domain(dig_port,
+									       crtc_state));
 	}
 }
 
@@ -2739,7 +2743,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
 		intel_display_power_put(dev_priv,
-					intel_ddi_main_link_aux_domain(dig_port),
+					intel_ddi_main_link_aux_domain(dig_port,
+								       old_crtc_state),
 					fetch_and_zero(&dig_port->aux_wakeref));
 
 	if (is_tc_port)
@@ -3065,7 +3070,8 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
 		dig_port->aux_wakeref =
 			intel_display_power_get(dev_priv,
-						intel_ddi_main_link_aux_domain(dig_port));
+						intel_ddi_main_link_aux_domain(dig_port,
+									       crtc_state));
 	}
 
 	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
-- 
2.37.1


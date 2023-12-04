Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9614F803223
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 13:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD21B10E36D;
	Mon,  4 Dec 2023 12:05:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB7F110E39A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 12:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701691533; x=1733227533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nLUF7EO7CLJ0Og10rZBHJzcfXERqmApee59qaKPXbXI=;
 b=J3xprxBimhWVL4nsXVBZhegBS8dw9w90UmTwGImoBira90U90Ls0mRmD
 lb/cM+kePGd0u44j68x1V+vdyFt32JeVFDTyC3ip/zhZD3pOH5nMGypHA
 /NIFy1eZKOaMEp4S01fTnJDUIZtqUjmR1uxGcaTwJ0RkpB+zFJLZ0y8y6
 owGp/Oy17PDHM6HAwqSs0DQrrq38h4/opbJjg63VScpxpAT181vQNW7qJ
 8CkAF0OlJNMTfn5xsOYqiBbSvAu0bXTODqcAGCZlhOHgA7w3DcIhcElor
 NME2FQZB8G0mdpqcxjRPvpdyBdQodbpXd0TrMayV3uYvG623k1+y1HbV2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="460216922"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="460216922"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 04:05:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="836565376"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="836565376"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 04 Dec 2023 04:05:22 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 13:58:55 +0200
Message-Id: <20231204115856.176240-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204115856.176240-1-mika.kahola@intel.com>
References: <20231204115856.176240-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Convert link bitrate to
 corresponding PLL clock
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

Compute clock during PLL readout. This prevents warn when only c20 phy
is connected during modprobe. The intel_c20pll_calc_port_clock()
function returns link bitrate which in DP2.0 and HDMI cases does not match
with the clock rate. Hence, conversion function is needed to convert
link bitrate to corresponding PLL clock rate.

while at it, update clock on C10 pll state as well.

Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 38 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +-
 3 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2e6412fc2258..02efe2786c6a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1871,6 +1871,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 }
 
 static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
+					  struct intel_crtc_state *crtc_state,
 					  struct intel_c10pll_state *pll_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
@@ -1894,6 +1895,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 
 	pll_state->cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
 	pll_state->tx = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
+	pll_state->clock = crtc_state->port_clock;
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
@@ -2445,12 +2447,33 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		     XELPDP_SSC_ENABLE_PLLB, val);
 }
 
+static int intel_link_bitrate_to_clock(struct intel_encoder *encoder,
+				       struct intel_crtc_state *crtc_state,
+				       int link_bit_rate)
+{
+	const struct intel_c20pll_state * const *tables;
+	int i;
+
+	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (link_bit_rate == tables[i]->link_bit_rate)
+			return tables[i]->clock;
+	}
+
+	return -EINVAL;
+}
+
 static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+					  struct intel_crtc_state *crtc_state,
 					  struct intel_c20pll_state *pll_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	bool cntx;
 	intel_wakeref_t wakeref;
+	int clock;
 	int i;
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
@@ -2500,6 +2523,13 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
+	pll_state->link_bit_rate = intel_c20pll_calc_port_clock(encoder, pll_state);
+	clock = intel_link_bitrate_to_clock(encoder, crtc_state,
+					    pll_state->link_bit_rate);
+
+	if (clock >= 0)
+		pll_state->clock = clock;
+
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3053,15 +3083,16 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 }
 
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state,
 				   struct intel_cx0pll_state *pll_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	if (intel_is_c10phy(i915, phy))
-		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
+		intel_c10pll_readout_hw_state(encoder, crtc_state, &pll_state->c10);
 	else
-		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
+		intel_c20pll_readout_hw_state(encoder, crtc_state, &pll_state->c20);
 }
 
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
@@ -3145,7 +3176,8 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		return;
 
-	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
+	intel_cx0pll_readout_hw_state(encoder, (struct intel_crtc_state*)new_crtc_state,
+				      &mpll_hw_state);
 
 	if (intel_is_c10phy(i915, phy))
 		intel_c10pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c10);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c6682677253a..eac7354e9a4e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -32,6 +32,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state,
 				   struct intel_cx0pll_state *pll_state);
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 38f28c480b38..508d3363e89f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3953,7 +3953,7 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
 	} else {
-		intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pll_state);
+		intel_cx0pll_readout_hw_state(encoder, crtc_state, &crtc_state->cx0pll_state);
 		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->cx0pll_state);
 	}
 
-- 
2.34.1


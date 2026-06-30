Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lBD5EUuuQ2riewoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38286E3D9B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=R2oZc5q0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4479310EC49;
	Tue, 30 Jun 2026 11:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C8210EC43;
 Tue, 30 Jun 2026 11:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782820423; x=1814356423;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CL5Yg44Yp5UUJpFEIgemuor8UavX2LN9NOUhYfxE/eE=;
 b=R2oZc5q0ezr3os2WJXBghH2le1AuaZBsZdWIr64oetdwZNif1+RTavb8
 mvaJA8tWUUz4gnL4Ket7NrhicerPn6H2j/0aKKWpaSczdZtRifWe4aluX
 lPkheyEOyCD9pkI8hqO/xDutRf0hVjRmZbJ0i1pqWDMpvgkPL+o9tStbm
 XIrGACk0CxzCjusNbFN7xOOhIGjlcqxHrqwG4uqBuVQysHKkEfAfRj44J
 BXBJiCjstDtZI1Z2jcFPfJbq9URrGUOWKIXUnuHSbgO/gtzAznSCDC4nN
 Q0Yeey0JqcV5ZPPC0yUSzVMDeWboI2GRgDatvvlLK+dRAjr7JL/RjMBOS g==;
X-CSE-ConnectionGUID: 529yOqVuTsiKeaM08osTMg==
X-CSE-MsgGUID: WnbhC4CBQ0GOQoMqXsS7dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="101074299"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="101074299"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 04:53:43 -0700
X-CSE-ConnectionGUID: K43pHxyjSrKk+Sh7iL+BrA==
X-CSE-MsgGUID: LJXQ5nVwSCKjpd456X0Ukg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="248876761"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jun 2026 04:53:42 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 2/4] drm/i915/display: Add DG2 MPLLB DPLL manager support
Date: Tue, 30 Jun 2026 11:53:34 +0000
Message-ID: <20260630115336.1059976-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630115336.1059976-1-mika.kahola@intel.com>
References: <20260630115336.1059976-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[intel.com:server fail,gabe.freedesktop.org:server fail,lists.freedesktop.org:server fail];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C38286E3D9B

Add DG2-specific DPLL manager infrastructure for MPLLB-backed port PLLs.

Introduce PLL id mapping, DG2-specific DPLL callbacks for
enable/disable/readout/frequency calculation, and manager callbacks
for compute/get/dump/compare. The platform is not switched over yet.

DG2's PLL-to-encoder lookup prefers the active encoder using the PLL,
but fall back to a matching encoder for the fixed port-to-PLL mapping
when no active user can be identified.

This keeps the active-user fix for operational paths while allowing
readout and verification paths to resolve the PHY even when
pll->active_mask does not identify an active user.

v2: Use intel_encoder_is_dig_port() to filter out
    MST virtual encoders (Imre)

Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 210 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  22 ++
 2 files changed, 232 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 0f933101b7dd..3f9ed7f63eb2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -42,6 +42,7 @@
 #include "intel_lt_phy.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
+#include "intel_snps_phy.h"
 #include "intel_tc.h"
 
 /**
@@ -4735,6 +4736,215 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.compare_hw_state = xe3plpd_compare_hw_state,
 };
 
+enum intel_dpll_id dg2_port_to_pll_id(enum port port)
+{
+	switch (port) {
+	case PORT_A:
+		return DPLL_ID_DG2_DPLL_A;
+	case PORT_B:
+		return DPLL_ID_DG2_DPLL_B;
+	case PORT_C:
+		return DPLL_ID_DG2_DPLL_C;
+	case PORT_D_XELPD:
+		return DPLL_ID_DG2_DPLL_D;
+	case PORT_TC1:
+		return DPLL_ID_DG2_DPLL_E;
+	default:
+		MISSING_CASE(port);
+		return DPLL_ID_DG2_DPLL_A;
+	}
+}
+
+static struct intel_encoder *dg2_get_intel_encoder(struct intel_display *display,
+						   const struct intel_dpll *pll)
+{
+	struct intel_encoder *encoder;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		if (dg2_port_to_pll_id(encoder->port) == pll->info->id &&
+		    intel_encoder_is_dig_port(encoder))
+			return encoder;
+	}
+
+	return NULL;
+}
+
+static void dg2_mpllb_enable(struct intel_display *display,
+			     struct intel_dpll *pll,
+			     const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_mpllb_enable_phy(encoder, &dpll_hw_state->mpllb);
+}
+
+static void dg2_mpllb_disable(struct intel_display *display,
+			      struct intel_dpll *pll)
+{
+	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_mpllb_disable(encoder);
+}
+
+static bool dg2_mpllb_get_hw_state(struct intel_display *display,
+				   struct intel_dpll *pll,
+				   struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
+	enum phy phy;
+	i915_reg_t enable_reg;
+	struct ref_tracker *wakeref;
+	bool ret = false;
+	u32 val;
+
+	if (!encoder)
+		return false;
+
+	wakeref = intel_display_power_get_if_enabled(display,
+						     POWER_DOMAIN_DISPLAY_CORE);
+	if (!wakeref)
+		return false;
+
+	phy = intel_encoder_to_phy(encoder);
+	enable_reg = (phy <= PHY_D ? DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
+
+	val = intel_de_read(display, enable_reg);
+	if (!(val & PLL_ENABLE))
+		goto out;
+
+	intel_mpllb_readout_hw_state(encoder, &dpll_hw_state->mpllb);
+	ret = true;
+
+out:
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	return ret;
+}
+
+static int dg2_mpllb_get_freq(struct intel_display *display,
+			      const struct intel_dpll *pll,
+			      const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = dg2_get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return 0;
+
+	return intel_mpllb_calc_port_clock(encoder, &dpll_hw_state->mpllb);
+}
+
+static const struct intel_dpll_funcs mpllb_pll_funcs = {
+	.enable = dg2_mpllb_enable,
+	.disable = dg2_mpllb_disable,
+	.get_hw_state = dg2_mpllb_get_hw_state,
+	.get_freq = dg2_mpllb_get_freq,
+};
+
+static const struct dpll_info dg2_plls[] = {
+	{ .name = "MPLLB A", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_A, },
+	{ .name = "MPLLB B", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_B, },
+	{ .name = "MPLLB C", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_C, },
+	{ .name = "MPLLB D", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_D, },
+	{ .name = "MPLLB E", .funcs = &mpllb_pll_funcs, .id = DPLL_ID_DG2_DPLL_E, },
+	{}
+};
+
+static int dg2_compute_dplls(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc,
+			     struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	int ret;
+
+	ret = intel_mpllb_calc_state(crtc_state, encoder);
+	if (ret)
+		return ret;
+
+	port_dpll->hw_state = crtc_state->dpll_hw_state;
+
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+
+	crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder,
+							     &port_dpll->hw_state.mpllb);
+
+	return 0;
+}
+
+static int dg2_get_dplls(struct intel_atomic_state *state,
+			 struct intel_crtc *crtc,
+			 struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	enum intel_dpll_id dpll_id = dg2_port_to_pll_id(encoder->port);
+
+	port_dpll->pll = intel_find_dpll(state, crtc,
+					 &port_dpll->hw_state,
+					 BIT(dpll_id));
+	if (!port_dpll->pll)
+		return -EINVAL;
+
+	intel_reference_dpll(state, crtc,
+			     port_dpll->pll, &port_dpll->hw_state);
+
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+
+	return 0;
+}
+
+static void dg2_dump_hw_state(struct drm_printer *p,
+			      const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	const struct intel_mpllb_state *hw_state = &dpll_hw_state->mpllb;
+
+	drm_printf(p, "dpll_hw_state: mpllb_cp: 0x%x, mpllb_div: 0x%x, "
+		   "mpllb_div2: 0x%x, mpllb_fracn1: 0x%x, "
+		   "mpllb_fracn2: 0x%x, mpllb_sscen: 0x%x, "
+		   "mpllb_sscstep: 0x%x, ref_control: 0x%x\n",
+		   hw_state->mpllb_cp, hw_state->mpllb_div,
+		   hw_state->mpllb_div2, hw_state->mpllb_fracn1,
+		   hw_state->mpllb_fracn2, hw_state->mpllb_sscen,
+		   hw_state->mpllb_sscstep, hw_state->ref_control);
+}
+
+static bool dg2_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				 const struct intel_dpll_hw_state *_b)
+{
+	const struct intel_mpllb_state *a = &_a->mpllb;
+	const struct intel_mpllb_state *b = &_b->mpllb;
+
+	return a->mpllb_cp == b->mpllb_cp &&
+		a->mpllb_div == b->mpllb_div &&
+		a->mpllb_div2 == b->mpllb_div2 &&
+		a->mpllb_fracn1 == b->mpllb_fracn1 &&
+		a->mpllb_fracn2 == b->mpllb_fracn2 &&
+		a->mpllb_sscen == b->mpllb_sscen &&
+		a->mpllb_sscstep == b->mpllb_sscstep;
+}
+
+__maybe_unused
+static const struct intel_dpll_mgr dg2_pll_mgr = {
+	.dpll_info = dg2_plls,
+	.compute_dplls = dg2_compute_dplls,
+	.get_dplls = dg2_get_dplls,
+	.put_dplls = icl_put_dplls,
+	.update_active_dpll = icl_update_active_dpll,
+	.update_ref_clks = icl_update_dpll_ref_clks,
+	.dump_hw_state = dg2_dump_hw_state,
+	.compare_hw_state = dg2_compare_hw_state,
+};
+
 /**
  * intel_dpll_init - Initialize DPLLs
  * @display: intel_display device
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d408ccf6f902..f4b84733a58c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -169,9 +169,31 @@ enum intel_dpll_id {
 	 * @DPLL_ID_DG1_DPLL3: DG1 combo PHY DPLL3
 	 */
 	DPLL_ID_DG1_DPLL3 = 3,
+
+	/**
+	 * @DPLL_ID_DG2_DPLL_A: DG2 port PLL for PHY A (PORT_A)
+	 */
+	DPLL_ID_DG2_DPLL_A = 0,
+	/**
+	 * @DPLL_ID_DG2_DPLL_B: DG2 port PLL for PHY B (PORT_B)
+	 */
+	DPLL_ID_DG2_DPLL_B = 1,
+	/**
+	 * @DPLL_ID_DG2_DPLL_C: DG2 port PLL for PHY C (PORT_C)
+	 */
+	DPLL_ID_DG2_DPLL_C = 2,
+	/**
+	 * @DPLL_ID_DG2_DPLL_D: DG2 port PLL for PHY D (PORT_D_XELPD)
+	 */
+	DPLL_ID_DG2_DPLL_D = 3,
+	/**
+	 * @DPLL_ID_DG2_DPLL_E: DG2 port PLL for PHY F (PORT_TC1)
+	 */
+	DPLL_ID_DG2_DPLL_E = 4,
 };
 
 #define I915_NUM_PLLS 9
+enum intel_dpll_id dg2_port_to_pll_id(enum port port);
 
 enum icl_port_dpll_id {
 	ICL_PORT_DPLL_DEFAULT,
-- 
2.43.0


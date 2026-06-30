Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZRdrC02uQ2rkewoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DF16E3DAC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PJg2Hbxq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423C110EC47;
	Tue, 30 Jun 2026 11:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9561210EC47;
 Tue, 30 Jun 2026 11:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782820425; x=1814356425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jNv87HEhJK5BI9cWt8cDdOLFpLmV6lYUCCVEQtDquD4=;
 b=PJg2Hbxqr4iKh86Bn/XJpu2zu5cmxECHW2Q1nIJXkmAU3SoVwEr3Cw0/
 vd6WpGTYs+rt+AAcUYtRZQdGfvHLNXb7VFel4uRjP7+FGy4oaS7Yn9AHq
 f2xuj3/X3mwT8nZvhYjIePsfTrCSaV23st7FzeAe2SKe5z1+FrSBP3H29
 uJr3suIobMIsFwBdIlunvxOGUJGBPUTqnO6A6gWw5MrhZJo0orAY9pEQi
 viaRJsNWaw5iS2wBwBMKgaoB463t4VPCufoQQnoyXYEbPUoWw+I5rmXuj
 YCXB+towCp87I9h7b18H5t42z31duImdRL1/nsL8MIMDSrgXUVKwIElBy A==;
X-CSE-ConnectionGUID: EIOhnKJ0TMOcViPWnzoVLA==
X-CSE-MsgGUID: Kw3Wo9KWRTKkvAdTnaJDCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="101074303"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="101074303"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 04:53:45 -0700
X-CSE-ConnectionGUID: sJQLDo1bSlKiMxsXnxJo8w==
X-CSE-MsgGUID: X8IODt4HRXKxHYFUWZ96Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="248876765"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jun 2026 04:53:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 3/4] drm/i915/display: Prepare DG2 DDI and compute paths
 for DPLL framework
Date: Tue, 30 Jun 2026 11:53:35 +0000
Message-ID: <20260630115336.1059976-4-mika.kahola@intel.com>
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
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail,lists.freedesktop.org:server fail];
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
X-Rspamd-Queue-Id: B7DF16E3DAC

Prepare DG2 users to obtain clock state and reserve PLLs through the
shared DPLL framework.

Replace the DG2-specific compute hook with the generic framework-backed
helpers.

Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c  | 28 ++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dpll.c | 22 ++----------------
 2 files changed, 27 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 25314ec65ae7..3429ddba5683 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4312,11 +4312,33 @@ static void mtl_ddi_tc_phy_get_config(struct intel_encoder *encoder,
 				       mtl_port_to_pll_id(display, encoder->port));
 }
 
+static struct intel_dpll *dg2_ddi_get_pll(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	return intel_get_dpll_by_id(display, dg2_port_to_pll_id(encoder->port));
+}
+
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
-				struct intel_crtc_state *crtc_state)
+			       struct intel_crtc_state *crtc_state)
 {
-	intel_mpllb_readout_hw_state(encoder, &crtc_state->dpll_hw_state.mpllb);
-	crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder, &crtc_state->dpll_hw_state.mpllb);
+	struct icl_port_dpll *port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	struct intel_dpll *pll = dg2_ddi_get_pll(encoder);
+
+	if (pll)
+		intel_ddi_get_clock(encoder, crtc_state, pll);
+
+	/*
+	 * Keep the hw readout robust against unexpected NULL PLL lookups,
+	 * so modeset verify always has intel_dpll populated for DG2.
+	 */
+	if (!crtc_state->intel_dpll) {
+		port_dpll->pll = pll;
+		intel_mpllb_readout_hw_state(encoder, &port_dpll->hw_state.mpllb);
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+		crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder,
+								     &port_dpll->hw_state.mpllb);
+	}
 
 	intel_ddi_get_config(encoder, crtc_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index f40807a5566b..20fd091cb9db 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -22,7 +22,6 @@
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
 #include "intel_pps.h"
-#include "intel_snps_phy.h"
 #include "vlv_dpio_phy_regs.h"
 #include "vlv_sideband.h"
 
@@ -1194,24 +1193,6 @@ static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
 	return intel_dpll_reserve(state, crtc, encoder);
 }
 
-static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
-	int ret;
-
-	ret = intel_mpllb_calc_state(crtc_state, encoder);
-	if (ret)
-		return ret;
-
-	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
-
-	return 0;
-}
-
 static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -1682,7 +1663,8 @@ static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
 };
 
 static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
-	.crtc_compute_clock = dg2_crtc_compute_clock,
+	.crtc_compute_clock = hsw_crtc_compute_clock,
+	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
 static const struct intel_dpll_global_funcs hsw_dpll_funcs = {
-- 
2.43.0


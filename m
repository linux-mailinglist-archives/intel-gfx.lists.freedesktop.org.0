Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMiXH8XrCmo89gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:36:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D8856ACB7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7663410E7A1;
	Mon, 18 May 2026 10:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eb+LPnN7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B18D10E5BF;
 Mon, 18 May 2026 10:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779100609; x=1810636609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Olyw0mWp1QgYcLr6Rt3ZNVl4k5m8EKgu+P3QcI1fffU=;
 b=eb+LPnN7ngigLrwlVWYYwxsKLV34N4iZQPegVbf1qr5qKKysoWZZq0++
 uSyR/tmxaxqp7v4nD9B9VYjmWHSCvov3Pqv9RtaHZiMXMywrxLd4/vdFS
 CIpn4/7zrBPJULGf5w0eWAnypOEft7ruGuAnB+OjMSywSr+LVPuS9d/C6
 MtyAJ5uVxRPYQxDaBHMJcB+D1BDQcGkl/N7Y8JRnIfZwfb561YbliWZjq
 c6KlsqIbRzljqbUBSfPZTF9g/9xU+KMS2LN3/r/oZ0VMHhxKl5hpuxsY+
 C8eJ2k3RpoPGTT/IvenerhyOCKTZa0NbYez7juVpKuWwfvspwbjNcglZy Q==;
X-CSE-ConnectionGUID: Xrqi1CgKQti/DX4cyP6QOQ==
X-CSE-MsgGUID: jfOmdMbDRsGiKSI3ZBjIYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="83820617"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="83820617"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 03:36:48 -0700
X-CSE-ConnectionGUID: 58Kt79AnScO4e9foWhRtgg==
X-CSE-MsgGUID: 06tB8hiNRXW3dVYValOYZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="263173317"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa001.fm.intel.com with ESMTP; 18 May 2026 03:36:47 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 3/4] drm/i915/display: Prepare DG2 DDI and compute paths for
 DPLL framework
Date: Mon, 18 May 2026 10:36:41 +0000
Message-ID: <20260518103642.3678448-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260518103642.3678448-1-mika.kahola@intel.com>
References: <20260518103642.3678448-1-mika.kahola@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 31D8856ACB7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Prepare DG2 users to obtain clock state and reserve PLLs through the
shared DPLL framework.

Replace the DG2-specific compute hook with the generic framework-backed
helpers.

Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c  | 28 ++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dpll.c | 22 ++----------------
 2 files changed, 27 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 86520848892e..b6799ed24de4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4307,11 +4307,33 @@ static void mtl_ddi_tc_phy_get_config(struct intel_encoder *encoder,
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


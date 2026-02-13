Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGK1BIEYj2mJIgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FCE13608E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B92110E813;
	Fri, 13 Feb 2026 12:26:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSi6poBV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D141F10E803;
 Fri, 13 Feb 2026 12:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770985590; x=1802521590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K+B3NN42gE9kTbfZ/zn8rA9u7n117QBENmvg2j2n9iY=;
 b=jSi6poBVeZ93TZF8nmhDdBzG1LIltQt28tmkJYY9S5LTfgpM9G5cCUpO
 uyU10kusD8/jJi+MX9ofhF6QZPOejT7OpTpMPSsTGF1wedHxVaT5TUtc2
 vDOb7vOiUGLOkTRuhiAGSiVS5fS6Bc6m6n3uYTDnOvcwo1O64PtgaqtBO
 ezClc3Qu2yZHctXxMgp/zLZwVirqfPzFRWh+D5/+jNJTkK+8385dOVJ6J
 21ErFROn2U8y4XdhQ7V7yq0evCL+B4WsYDZD5EKzI/isbE0v4feu5wmwu
 oWC5Y+L1EMD+PE8p3rTDprsVYYbv0pAuOCu5fCZtlD2K6KUujrGQj78Jb w==;
X-CSE-ConnectionGUID: dD1IewPhTBmrjS8QAsZhxw==
X-CSE-MsgGUID: J17cAG4FSduVs52ddPVDag==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72158117"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72158117"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 04:26:30 -0800
X-CSE-ConnectionGUID: nLRVX4TPT5uqmOV46avTRA==
X-CSE-MsgGUID: Vw88+S+1Tce3MdjKvnmk6w==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 13 Feb 2026 04:26:28 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 09/19] drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
Date: Fri, 13 Feb 2026 12:26:05 +0000
Message-ID: <20260213122615.1083654-10-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260213122615.1083654-1-mika.kahola@intel.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B7FCE13608E
X-Rspamd-Action: no action

Add .dump_hw_state function pointer for xe3plpd platform
to support dpll framework. While at it, switch to use
drm_printer structure to print hw state information.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 +++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 20 +++++++++----------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 ++-
 4 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 295f14416be7..57b0ed062b41 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5052,15 +5052,14 @@ pipe_config_lt_phy_pll_mismatch(struct drm_printer *p, bool fastset,
 				const struct intel_lt_phy_pll_state *a,
 				const struct intel_lt_phy_pll_state *b)
 {
-	struct intel_display *display = to_intel_display(crtc);
 	char *chipname = "LTPHY";
 
 	pipe_config_mismatch(p, fastset, crtc, name, chipname);
 
 	drm_printf(p, "expected:\n");
-	intel_lt_phy_dump_hw_state(display, a);
+	intel_lt_phy_dump_hw_state(p, a);
 	drm_printf(p, "found:\n");
-	intel_lt_phy_dump_hw_state(display, b);
+	intel_lt_phy_dump_hw_state(p, b);
 }
 
 bool
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b50f02303356..26b78063dd94 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4649,6 +4649,12 @@ static int xe3plpd_compute_dplls(struct intel_atomic_state *state,
 		return xe3plpd_compute_non_tc_phy_dpll(state, crtc, encoder);
 }
 
+static void xe3plpd_dump_hw_state(struct drm_printer *p,
+				  const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	intel_lt_phy_dump_hw_state(p, &dpll_hw_state->ltpll);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.dpll_info = xe3plpd_plls,
@@ -4657,6 +4663,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
 	.update_ref_clks = icl_update_dpll_ref_clks,
+	.dump_hw_state = xe3plpd_dump_hw_state,
 };
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 48cb8be4c6ac..2d6cbfa79b5c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2140,27 +2140,27 @@ void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
-void intel_lt_phy_dump_hw_state(struct intel_display *display,
+void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 				const struct intel_lt_phy_pll_state *hw_state)
 {
 	int i, j;
 
-	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode: %d\n",
-		    hw_state->ssc_enabled, hw_state->tbt_mode);
+	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode: %d\n",
+		   hw_state->ssc_enabled, hw_state->tbt_mode);
 
 	for (i = 0; i <= 12; i++)
-		drm_dbg_kms(display->drm, "addr [%d] msb = 0x%.4x, lsb = 0x%.4x\n",
-			    i, hw_state->addr_msb[i], hw_state->addr_lsb[i]);
+		drm_printf(p, "addr [%d] msb = 0x%.4x, lsb = 0x%.4x\n",
+			   i, hw_state->addr_msb[i], hw_state->addr_lsb[i]);
 
 	for (i = 0; i < 3; i++) {
-		drm_dbg_kms(display->drm, "config[%d] = 0x%.4x,\n",
-			    i, hw_state->config[i]);
+		drm_printf(p, "config[%d] = 0x%.4x,\n",
+			   i, hw_state->config[i]);
 	}
 
 	for (i = 0; i <= 12; i++)
 		for (j = 3; j >= 0; j--)
-			drm_dbg_kms(display->drm, "vdr_data[%d][%d] = 0x%.4x,\n",
-				    i, j, hw_state->data[i][j]);
+			drm_printf(p, "vdr_data[%d][%d] = 0x%.4x,\n",
+				   i, j, hw_state->data[i][j]);
 }
 
 bool
@@ -2331,7 +2331,7 @@ static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
 	drm_printf(&p, "PLL state %s (%s):\n",
 		   pll_state_name,
 		   is_precomputed_state ? "precomputed" : "computed");
-	intel_lt_phy_dump_hw_state(display, pll_state);
+	intel_lt_phy_dump_hw_state(&p, pll_state);
 }
 
 static void intel_lt_phy_pll_verify_params(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index d720e3265e83..597b671bd39d 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_printer;
 struct intel_atomic_state;
 struct intel_display;
 struct intel_dpll_hw_state;
@@ -27,7 +28,7 @@ int intel_lt_phy_calc_port_clock(struct intel_display *display,
 				 const struct intel_lt_phy_pll_state *lt_state);
 void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
-void intel_lt_phy_dump_hw_state(struct intel_display *display,
+void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 				const struct intel_lt_phy_pll_state *hw_state);
 bool
 intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
-- 
2.43.0


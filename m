Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yORHCzh0smlbMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F9326E9F5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 580E410E9B7;
	Thu, 12 Mar 2026 08:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L3NiccXE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD5DA10E9B0;
 Thu, 12 Mar 2026 08:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773302833; x=1804838833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ghflF5UveHoIUIytLzFEgRbdLx4yZyCk8pM4BzlFg1M=;
 b=L3NiccXEiUrAwAtah6rP2DA0Z8VZgCZiMWbeaOx5nrVuD90XcXn8EUlm
 4A6qwRLa0PG/HS/0fCYSB9gMFRZV1P8o3lI8qrrFpVWQPpCGVIrWktlpb
 fWBDS0//igUQPjOeJRvhyRcLBEHNovsyYg0kzXR6dCy6zWewGHf0Qt5g8
 6XD6o4zV+PQkgJvlp5+zp4jEuhUMFyhiuzDiEVXvjRSwXIk0zSqnBhOEo
 smZDjU7ihmoOoHRb/iJCNw2w/KXo/JwUEQvlp5SSnkoea3p8ceBO0ydI/
 ABn92YcYDCiEcmcI6utUhYLQIsXLtCOH5lqdGKkd5RG/NJE8CuM3sBfAp w==;
X-CSE-ConnectionGUID: 5XbKqwotQuyPT2cad1oYXg==
X-CSE-MsgGUID: dXhBNDZlSAOgcZHzuJoclw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85013727"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85013727"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:07:13 -0700
X-CSE-ConnectionGUID: iPzK+RM/Q3erW2f++wVffg==
X-CSE-MsgGUID: /D60TT7UTAy3/mhS2YgCtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="223206843"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa004.fm.intel.com with ESMTP; 12 Mar 2026 01:07:12 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
Date: Thu, 12 Mar 2026 08:06:44 +0000
Message-ID: <20260312080657.2648265-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312080657.2648265-1-mika.kahola@intel.com>
References: <20260312080657.2648265-1-mika.kahola@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: D1F9326E9F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add .dump_hw_state function pointer for xe3plpd platform
to support dpll framework. While at it, switch to use
drm_printer structure to print hw state information.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 +++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 ++-
 4 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b18ce0c36a64..26601ddc94cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5064,15 +5064,14 @@ pipe_config_lt_phy_pll_mismatch(struct drm_printer *p, bool fastset,
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
index ed5cfd6641b1..e9a0631a2012 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2165,23 +2165,23 @@ void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
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
@@ -2336,7 +2336,7 @@ static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
 	drm_printf(&p, "PLL state %s (%s):\n",
 		   pll_state_name,
 		   is_precomputed_state ? "precomputed" : "computed");
-	intel_lt_phy_dump_hw_state(display, pll_state);
+	intel_lt_phy_dump_hw_state(&p, pll_state);
 }
 
 static void intel_lt_phy_pll_verify_params(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 61ec0e5d8888..b208bbd6f8ca 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_printer;
 struct intel_atomic_state;
 struct intel_display;
 struct intel_encoder;
@@ -26,7 +27,7 @@ int intel_lt_phy_calc_port_clock(struct intel_display *display,
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


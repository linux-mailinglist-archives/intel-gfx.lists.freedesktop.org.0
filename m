Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LRWMYkYj2mJIgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644EA1360AB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD1110E80E;
	Fri, 13 Feb 2026 12:26:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Avmp326a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CF910E814;
 Fri, 13 Feb 2026 12:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770985602; x=1802521602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RvooJWze1cJT4cKiigKrZA1DBhgX10gry7e54UTL7hA=;
 b=Avmp326aCoW+BBVvbPfFIfbvXywEokU5jwyKdHcQr4hDVV8hkNY7FO81
 /yIxfiXWksx1q6lao7E/c3xmFZlqzVB7cKbNpN+CYXvkjTWREdxzHdj+T
 AcY6QIuKbgwDdObY3/OgrutyBpx0YhAtyONieuA0nhXDvgnL0RFTKxZ2w
 9C8ErnzyGnWcZYyuHB2TPYsWowhN5Ri8X4B34s4EHW7CdA5kmjQZKvWSk
 bxM+Tqaen5G8c08wXTdOkigEBVo72CjtCLiniZd9OHKWGfxCG8pazdl6Q
 h9GuJQmCdyhbORlDG4R9ZI7FKH4qqSM5HVNkde74gy5q9UL/q30d/0dWU Q==;
X-CSE-ConnectionGUID: aDBtjDSrSBmmRaJJ2i+Mhg==
X-CSE-MsgGUID: eGftUSw/Rv2rdPY1frIZPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72158145"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72158145"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 04:26:41 -0800
X-CSE-ConnectionGUID: NC946HukRJGbAD8biMdJLQ==
X-CSE-MsgGUID: SUeZ3I7JTSCd1v1WMyr45Q==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 13 Feb 2026 04:26:40 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 19/19] drm/i915/lt_phy: Enable dpll framework for xe3plpd
Date: Fri, 13 Feb 2026 12:26:15 +0000
Message-ID: <20260213122615.1083654-20-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 644EA1360AB
X-Rspamd-Action: no action

xe3plpd platform is supported by dpll framework remove a separate
check for hw comparison and rely solely on dpll framework
hw comparison.

Finally, all required hooks are now in place so initialize
PLL manager for xe3plpd platform and remove the redirections
to the legacy code paths for clock enable/disable as well as
state mismatch checks that are no longer needed.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 31 -------------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 +++--
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |  8 +----
 4 files changed, 6 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9f3c8cd02a33..e59b5857bdb5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5286,7 +5286,7 @@ void intel_ddi_init(struct intel_display *display,
 	if (HAS_LT_PHY(display)) {
 		encoder->enable_clock = intel_xe3plpd_pll_enable_clock;
 		encoder->disable_clock = intel_xe3plpd_pll_disable_clock;
-		encoder->port_pll_type = intel_mtl_port_pll_type;
+		encoder->port_pll_type = icl_ddi_tc_port_pll_type;
 		if (intel_encoder_is_tc(encoder))
 			encoder->get_config = mtl_ddi_tc_phy_get_config;
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 57b0ed062b41..b0e92e1bd98c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5045,23 +5045,6 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
-static void
-pipe_config_lt_phy_pll_mismatch(struct drm_printer *p, bool fastset,
-				const struct intel_crtc *crtc,
-				const char *name,
-				const struct intel_lt_phy_pll_state *a,
-				const struct intel_lt_phy_pll_state *b)
-{
-	char *chipname = "LTPHY";
-
-	pipe_config_mismatch(p, fastset, crtc, name, chipname);
-
-	drm_printf(p, "expected:\n");
-	intel_lt_phy_dump_hw_state(p, a);
-	drm_printf(p, "found:\n");
-	intel_lt_phy_dump_hw_state(p, b);
-}
-
 bool
 intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			  const struct intel_crtc_state *pipe_config,
@@ -5176,16 +5159,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
-#define PIPE_CONF_CHECK_PLL_LT(name) do { \
-	if (!intel_lt_phy_pll_compare_hw_state(&current_config->name, \
-					       &pipe_config->name)) { \
-		pipe_config_lt_phy_pll_mismatch(&p, fastset, crtc, __stringify(name), \
-						&current_config->name, \
-						&pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
 #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
 	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
 	PIPE_CONF_CHECK_I(name.crtc_htotal); \
@@ -5412,10 +5385,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (display->dpll.mgr || HAS_GMCH(display))
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
-	/* FIXME convert MTL+ platforms over to dpll_mgr */
-	if (HAS_LT_PHY(display))
-		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
-
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 	PIPE_CONF_CHECK_X(dsi_pll.div);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 534cc691979f..bbd2bcfc7ea3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4724,7 +4724,6 @@ static bool xe3plpd_compare_hw_state(const struct intel_dpll_hw_state *_a,
 	return intel_lt_phy_pll_compare_hw_state(a, b);
 }
 
-__maybe_unused
 static const struct intel_dpll_mgr xe3plpd_pll_mgr = {
 	.dpll_info = xe3plpd_plls,
 	.compute_dplls = xe3plpd_compute_dplls,
@@ -4750,9 +4749,11 @@ void intel_dpll_init(struct intel_display *display)
 
 	mutex_init(&display->dpll.lock);
 
-	if (DISPLAY_VER(display) >= 35 || display->platform.dg2)
-		/* No shared DPLLs on NVL or DG2; port PLLs are part of the PHY */
+	if (display->platform.dg2)
+		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
+	else if (DISPLAY_VER(display) >= 35)
+		dpll_mgr = &xe3plpd_pll_mgr;
 	else if (DISPLAY_VER(display) >= 14)
 		dpll_mgr = &mtl_pll_mgr;
 	else if (display->platform.alderlake_p)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 1dc53918a054..f68c3164332e 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -12,6 +12,7 @@
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display.h"
+#include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dpll.h"
@@ -2284,9 +2285,6 @@ void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_xe3plpd_pll_enable(encoder, NULL, &crtc_state->dpll_hw_state);
 }
 
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
@@ -2305,10 +2303,6 @@ void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder)
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_disable_clock(encoder);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_xe3plpd_pll_disable(encoder);
-
 }
 
 static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
-- 
2.43.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A87F605FBA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788C710ED08;
	Thu, 20 Oct 2022 12:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1BE10ED08
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 12:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666267629; x=1697803629;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nezT95J1CG5z4tFDwvcWF3erlYPR4PH/PEM/pBMFsJk=;
 b=Bnq3+rTkJK52jgwmQkqfHPRyqUg3FgcffnB4sLNxnUG8lYsAnulxemtw
 LQxAlwK5tUr++RnCnWxpZikh2axTAfwaNSuNb2pnTZGTXVtMYGVm/wNLT
 viLGRf1usIchbET+mqBmGaGMR/FOLkG6LBM3xno0D9aDSRPo62RBmx7P+
 d9Cc7YlGy1QRyqqQ3wIPTudsavbFGXKxgf4sbUhxj6cMq+3oTL97RaDcq
 rn9B7f0yznOW5aA16SXcOOO8EQwSqZwKavlsF05knUo/99n8GArFYo0lX
 dWf3AN3wxYNoILREGFDY5PJsQG4vFvsfp9qQAnC+4GieBYvYUgbQbtf+/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="370901130"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="370901130"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="663006379"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="663006379"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 20 Oct 2022 05:07:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 15:07:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 15:07:06 +0300
Message-Id: <20221020120706.25728-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Activate DRRS after state readout
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On BDW+ we have just the one set of DP M/N registers. The
values we write into said registers depends on whether we
want DRRS to be in high or low gear. This causes issues
for the state checker which currently has to assume either
set of M/N (high or low refresh rate) values may appear there.
That sort of works for M/N itself, but all other values
derived from the M/N (dotclock, pixel rate) are not handled
correctly, leading to potential for state checker mismatches.

Let's avoid all those problems by simply keeping DRRS in
high gear until the state checker has done its hardware
state readout.

Note that hitting this issue presumable became very hard
after commit 1b333c679a0f ("drm/i915: Do DRRS disable/enable
during pre/post_plane_update()") since the state check would
have to laze about for one full second (delay used by
intel_drrs_schedule_work()) to see the low refresh rate.
But it is still theoretically possible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 43 ++++----------------
 1 file changed, 7 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 606f9140d024..906a5ad2bbfa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1261,8 +1261,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (needs_cursorclk_wa(old_crtc_state) &&
 	    !needs_cursorclk_wa(new_crtc_state))
 		icl_wa_cursorclkgating(dev_priv, pipe, false);
-
-	intel_drrs_activate(new_crtc_state);
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
@@ -5646,39 +5644,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.y2); \
 } while (0)
 
-/* This is required for BDW+ where there is only one set of registers for
- * switching between high and low RR.
- * This macro can be used whenever a comparison has to be made between one
- * hw state and multiple sw state variables.
- */
-#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
-	if (!intel_compare_link_m_n(&current_config->name, \
-				    &pipe_config->name) && \
-	    !intel_compare_link_m_n(&current_config->alt_name, \
-				    &pipe_config->name)) { \
-		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected tu %i data %i/%i link %i/%i, " \
-				     "or tu %i data %i/%i link %i/%i, " \
-				     "found tu %i, data %i/%i link %i/%i)", \
-				     current_config->name.tu, \
-				     current_config->name.data_m, \
-				     current_config->name.data_n, \
-				     current_config->name.link_m, \
-				     current_config->name.link_n, \
-				     current_config->alt_name.tu, \
-				     current_config->alt_name.data_m, \
-				     current_config->alt_name.data_n, \
-				     current_config->alt_name.link_m, \
-				     current_config->alt_name.link_n, \
-				     pipe_config->name.tu, \
-				     pipe_config->name.data_m, \
-				     pipe_config->name.data_n, \
-				     pipe_config->name.link_m, \
-				     pipe_config->name.link_n); \
-		ret = false; \
-	} \
-} while (0)
-
 #define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
 	if ((current_config->name ^ pipe_config->name) & (mask)) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
@@ -5747,7 +5712,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
 		if (!fastset || !pipe_config->seamless_m_n)
-			PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
+			PIPE_CONF_CHECK_M_N(dp_m_n);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
 		PIPE_CONF_CHECK_M_N(dp_m2_n2);
@@ -7615,6 +7580,12 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
 
+		/*
+		 * Activate DRRS after state readout to avoid
+		 * dp_m_n vs. dp_m2_n2 confusion on BDW+.
+		 */
+		intel_drrs_activate(new_crtc_state);
+
 		/*
 		 * DSB cleanup is done in cleanup_work aligning with framebuffer
 		 * cleanup. So copy and reset the dsb structure to sync with
-- 
2.35.1


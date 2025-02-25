Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0428FA436F6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:09:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A875A10E5AC;
	Tue, 25 Feb 2025 08:09:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="axcTSMqd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DF010E5AA;
 Tue, 25 Feb 2025 08:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470977; x=1772006977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z7W1MpohI4UyDiDo4nRpg66yVkxIn8rlBG7s9DZkubc=;
 b=axcTSMqdvSf3xDQnRimYPuwn7EQ0aJbx0QuTsqMA9AETSPMnX/EqzCPg
 Gltcji7vCFHdMvkpBdCrThpy6NkZ/2qEYHs30cv9Si4802auSMFUT2FkC
 djpjV4S0vjiOgMjKL2QJwa3E5/HpwOW4uY9XPSxoPa/Op+CcCz8x318fs
 sF9AG9s7XCojq1tAqzOCbARfhdRV+df3vNPV4vVBMx7koDrt8VXskJ8kj
 /RoXBw2haE1X7CVpj7sQAU2lqIfLuY/ytcfKDgorRu6kfZfz+kJ471qQK
 RsGWmxHQG6Qir3CUAGA6bC+d5nHg6ajWnJ4SY9GIXTnV51xdLNM8yrdK4 Q==;
X-CSE-ConnectionGUID: jM8AsxctQBmjySYeWsxGwA==
X-CSE-MsgGUID: ++s/zJvpQ/6nBBI2oBH4EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634519"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634519"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:37 -0800
X-CSE-ConnectionGUID: ZlxeGVCvTHqSxAEiVaT7SA==
X-CSE-MsgGUID: 9gzGwlifSSeCbbhODrIQqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519269"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/11] drm/i915/dpll: Rename macro for_each_shared_dpll
Date: Tue, 25 Feb 2025 13:39:18 +0530
Message-Id: <20250225080927.157437-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225080927.157437-1-suraj.kandpal@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
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

Rename the macro for_each_shared_dpll to for_each_dpll since
this loop will not necessarily be used for only shared
dpll in future.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_pch_refclk.c  |  2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9de7e512c0ab..079c7af4d7da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -642,7 +642,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		   display->dpll.ref_clks.nssc,
 		   display->dpll.ref_clks.ssc);
 
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		drm_printf(&p, "DPLL%i: %s, id: %i\n", pll->index,
 			   pll->info->name, pll->info->id);
 		drm_printf(&p, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 54ae2078daa5..d03789dfc9c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -124,8 +124,8 @@ intel_atomic_duplicate_dpll_state(struct intel_display *display,
 	struct intel_shared_dpll *pll;
 	int i;
 
-	/* Copy shared dpll state */
-	for_each_shared_dpll(display, pll, i)
+	/* Copy dpll state */
+	for_each_dpll(display, pll, i)
 		dpll_state[pll->index] = pll->state;
 }
 
@@ -162,7 +162,7 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		if (pll->info->id == id)
 			return pll;
 	}
@@ -345,7 +345,7 @@ intel_dpll_mask_all(struct intel_display *display)
 	unsigned long dpll_mask = 0;
 	int i;
 
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		drm_WARN_ON(display->drm, dpll_mask & BIT(pll->info->id));
 
 		dpll_mask |= BIT(pll->info->id);
@@ -518,7 +518,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 	if (!state->dpll_set)
 		return;
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		swap(pll->state, dpll_state[pll->index]);
 }
 
@@ -4545,7 +4545,7 @@ void intel_dpll_readout_hw_state(struct intel_display *display)
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		readout_dpll_hw_state(display, pll);
 }
 
@@ -4574,7 +4574,7 @@ void intel_dpll_sanitize_state(struct intel_display *display)
 
 	intel_cx0_pll_power_save_wa(display);
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		sanitize_dpll_state(display, pll);
 }
 
@@ -4723,6 +4723,6 @@ void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		verify_single_dpll_state(display, pll, NULL, NULL);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index db0d5f972d6e..3775d2b0fbe9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -30,7 +30,7 @@
 #include "intel_display_power.h"
 #include "intel_wakeref.h"
 
-#define for_each_shared_dpll(__display, __pll, __i) \
+#define for_each_dpll(__display, __pll, __i) \
 	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
 		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 33467de3d115..ebec879bacf7 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -530,7 +530,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		u32 temp;
 
 		temp = intel_de_read(display, PCH_DPLL(pll->info->id));
-- 
2.34.1


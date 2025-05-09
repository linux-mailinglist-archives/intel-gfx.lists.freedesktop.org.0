Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A68AB0925
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939DE10E3B1;
	Fri,  9 May 2025 04:28:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P4sZ8zKD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095BE10E2DE;
 Fri,  9 May 2025 04:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764890; x=1778300890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xh2sQpsYlUy3xM2zHy2TXOZUXdR3QrCDaOJINhwcE3M=;
 b=P4sZ8zKDUF8IdUF86PVYjaQM+Nhe4XZXIKyd2Y7Xt/z1q/miJ82x4Xsl
 U9oFWzx0vfbfZbkRavm9/0KhTXaO0E/ePT4+8TOC62UAga42ARTbDbJ11
 6z7EDP3SHVHPgTj/1Wh2Bxk5Cx3rjn+LjP+BLQXQYuu/eQ3bU2q1+XKCV
 P/7FBIMq7Wfok7J3qgLOOrAZX98cjfJIbKLMmSpSVeYBQ6F1VndtAE5D1
 mRicDhovJRrw3Vup+CnsDrqXozbEMlQfMatsw85ijH+tqJwrNFO/6e+R/
 8R+3yWuNI2/a+eN5l/zdJwBRXQ02YrJGMtz3p5bkDpYumXHgo4F5K3H6F g==;
X-CSE-ConnectionGUID: yIlqGGHHRhOjHziaZ2t7iw==
X-CSE-MsgGUID: jqtvPrt0TjO0wvdZs/7NNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58793996"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58793996"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:10 -0700
X-CSE-ConnectionGUID: qxdR0Q6ISjG0B9m7QaUZOw==
X-CSE-MsgGUID: SakwyzBARvWvBECJ/MEKxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430497"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 04/18] drm/i915/dpll: Rename macro for_each_shared_dpll
Date: Fri,  9 May 2025 09:57:15 +0530
Message-Id: <20250509042729.1152004-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509042729.1152004-1-suraj.kandpal@intel.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
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
index 8d0a1779dd19..3770ce9469d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -627,7 +627,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		   display->dpll.ref_clks.nssc,
 		   display->dpll.ref_clks.ssc);
 
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		drm_printf(&p, "DPLL%i: %s, id: %i\n", pll->index,
 			   pll->info->name, pll->info->id);
 		drm_printf(&p, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6b4eb230f4b3..9974fdb6eaeb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -127,8 +127,8 @@ intel_atomic_duplicate_dpll_state(struct intel_display *display,
 	struct intel_shared_dpll *pll;
 	int i;
 
-	/* Copy shared dpll state */
-	for_each_shared_dpll(display, pll, i)
+	/* Copy dpll state */
+	for_each_dpll(display, pll, i)
 		dpll_state[pll->index] = pll->state;
 }
 
@@ -165,7 +165,7 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		if (pll->info->id == id)
 			return pll;
 	}
@@ -348,7 +348,7 @@ intel_dpll_mask_all(struct intel_display *display)
 	unsigned long dpll_mask = 0;
 	int i;
 
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		drm_WARN_ON(display->drm, dpll_mask & BIT(pll->info->id));
 
 		dpll_mask |= BIT(pll->info->id);
@@ -521,7 +521,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 	if (!state->dpll_set)
 		return;
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		swap(pll->state, dpll_state[pll->index]);
 }
 
@@ -4542,7 +4542,7 @@ void intel_dpll_readout_hw_state(struct intel_display *display)
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		readout_dpll_hw_state(display, pll);
 }
 
@@ -4571,7 +4571,7 @@ void intel_dpll_sanitize_state(struct intel_display *display)
 
 	intel_cx0_pll_power_save_wa(display);
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		sanitize_dpll_state(display, pll);
 }
 
@@ -4720,6 +4720,6 @@ void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		verify_single_dpll_state(display, pll, NULL, NULL);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index fe6c676737bb..d93072486831 100644
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
index 693b90e3dfc3..8bec55deff9f 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -535,7 +535,7 @@ static void ilk_init_pch_refclk(struct intel_display *display)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		u32 temp;
 
 		temp = intel_de_read(display, PCH_DPLL(pll->info->id));
-- 
2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E3BA789F0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD5E10E6EF;
	Wed,  2 Apr 2025 08:32:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PawjRaKN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9E510E6EE;
 Wed,  2 Apr 2025 08:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582725; x=1775118725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NajpHnkgvc0iMexKOpBGZ6PbHKmyJ4KjjLMJHRJDdwU=;
 b=PawjRaKNCrHs+aw54yPdYNP/5RV0gDMZtOcpohJF9bnugtHiHfTUXOP3
 fr5BEBi3qjGpjAMONGZP0oksvVWjfDbyy7GdxQrnHvbtfdfBxQflBSBc4
 ZRxPaeM0hdXGZbsbsdWJpHiMpTi7CtXPPIYIOdzCPCyx/UjcCnNaw0uEq
 AsEN9mdrKW//uJX89hRgaOfkGptTPQAFpgsDpR1F09JKn6Of0eChxkJ+P
 11c/PJU04lR8/75r141Ja8g5My2cUhw3XVK0glfcZmrzFtClUcIbrzEUR
 u8jommCPaQqdIWYqxGCl/X3Z/n/WQTj1pzg6QxbzMq5uaY+r+Vwtlsozz Q==;
X-CSE-ConnectionGUID: b47IhSR6RTOkJh5NHnHO3w==
X-CSE-MsgGUID: pRqVhg2jRIqlb5/db5mmww==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828654"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828654"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:04 -0700
X-CSE-ConnectionGUID: KpvmjC3rTMK/kseT5enECw==
X-CSE-MsgGUID: 7Xf8+ycCTJ61jx0chnlFRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612301"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/16] drm/i915/dpll: Rename macro for_each_shared_dpll
Date: Wed,  2 Apr 2025 14:01:50 +0530
Message-Id: <20250402083204.1523470-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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
index 4c784bb7e14b..a317c6646382 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -634,7 +634,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		   display->dpll.ref_clks.nssc,
 		   display->dpll.ref_clks.ssc);
 
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		drm_printf(&p, "DPLL%i: %s, id: %i\n", pll->index,
 			   pll->info->name, pll->info->id);
 		drm_printf(&p, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6edb4570d764..bbb51119ef5b 100644
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
 
@@ -4543,7 +4543,7 @@ void intel_dpll_readout_hw_state(struct intel_display *display)
 	struct intel_shared_dpll *pll;
 	int i;
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		readout_dpll_hw_state(display, pll);
 }
 
@@ -4572,7 +4572,7 @@ void intel_dpll_sanitize_state(struct intel_display *display)
 
 	intel_cx0_pll_power_save_wa(display);
 
-	for_each_shared_dpll(display, pll, i)
+	for_each_dpll(display, pll, i)
 		sanitize_dpll_state(display, pll);
 }
 
@@ -4721,6 +4721,6 @@ void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
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
index 1307a478861a..611f3b8dffef 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -536,7 +536,7 @@ static void ilk_init_pch_refclk(struct intel_display *display)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for_each_shared_dpll(display, pll, i) {
+	for_each_dpll(display, pll, i) {
 		u32 temp;
 
 		temp = intel_de_read(display, PCH_DPLL(pll->info->id));
-- 
2.34.1


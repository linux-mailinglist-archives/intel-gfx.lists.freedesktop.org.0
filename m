Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70E17C6E31
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D003110E4B9;
	Thu, 12 Oct 2023 12:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFE1110E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697114132; x=1728650132;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qxLuIR6KesmDftiTXga9vmQIkr4pFqi4vqj6t87ydXY=;
 b=MdeBoOmI51cO9NDLJ+PaUuWAla85KNMPAoDBaUkaDeGLgP96vTSaARXe
 eAU5IbHqw5sThcnALv/gm+UbrWFfn54LNoHtAM8Ueq9zbyZFV3FpMAE22
 me6iRAUs9Y+6c2M+wMG6lUbkNyGGbyEaNQWOvcltw31y6WGPoQemwkzcK
 yy5N3IE+3bqJSeDZRZmL5tpeGss1kwWXVHZaCVSTXU9dbO3UIDB34uY5I
 5SpDfS05mEMTfDU9ylEwgNJbu3hRhVVOd79izYmq1C9Gnj15BVd3n8ReA
 MWQ1ik2wbkCwopYXIMcT0awH1bkfOs6xR57ajl0NUEAGoW4og79tVWFgT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382142583"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382142583"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:35:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844982147"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844982147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:35:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:35:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:35:20 +0300
Message-ID: <20231012123522.26045-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Abstract the extra JSL/EHL DPLL4
 power domain better
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

Just include the JSL/EHL DPLL4 extra power domain in the dpll_info
struct. This way the same approach could be used by other platforms
as well (should the need arise), and we don't have to sprinkle
platform checks all over the place.

Note that I'm perhaps slightly abusing things here as
power_domain==0 (which is actually POWER_DOMAIN_DISPLAY_CORE) now
indicates that no extra power domain is needed. I suppose using
POWER_DOMAIN_INVALID would be more correct, but then we'd have to
sprinkle that to all the other DPLLs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++--------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  6 ++++
 2 files changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b7997b096796..4e524cb8ed83 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3838,17 +3838,8 @@ static void combo_pll_enable(struct drm_i915_private *i915,
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
-	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4) {
-
-		/*
-		 * We need to disable DC states when this DPLL is enabled.
-		 * This can be done by taking a reference on DPLL4 power
-		 * domain.
-		 */
-		pll->wakeref = intel_display_power_get(i915,
-						       POWER_DOMAIN_DC_OFF);
-	}
+	if (pll->info->power_domain)
+		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
 
 	icl_pll_power_enable(i915, pll, enable_reg);
 
@@ -3946,10 +3937,8 @@ static void combo_pll_disable(struct drm_i915_private *i915,
 
 	icl_pll_disable(i915, pll, enable_reg);
 
-	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4)
-		intel_display_power_put(i915, POWER_DOMAIN_DC_OFF,
-					pll->wakeref);
+	if (pll->info->power_domain)
+		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
 }
 
 static void tbt_pll_disable(struct drm_i915_private *i915,
@@ -4041,7 +4030,8 @@ static const struct intel_dpll_mgr icl_pll_mgr = {
 static const struct dpll_info ehl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "DPLL 4", .funcs = &combo_pll_funcs, .id = DPLL_ID_EHL_DPLL4, },
+	{ .name = "DPLL 4", .funcs = &combo_pll_funcs, .id = DPLL_ID_EHL_DPLL4,
+	  .power_domain = POWER_DOMAIN_DC_OFF, },
 	{}
 };
 
@@ -4369,12 +4359,8 @@ static void readout_dpll_hw_state(struct drm_i915_private *i915,
 
 	pll->on = intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
 
-	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
-	    pll->on &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4) {
-		pll->wakeref = intel_display_power_get(i915,
-						       POWER_DOMAIN_DC_OFF);
-	}
+	if (pll->on && pll->info->power_domain)
+		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
 
 	pll->state.pipe_mask = 0;
 	for_each_intel_crtc(&i915->drm, crtc) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index dd4796a61751..2e7ea0d8d3ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -27,6 +27,7 @@
 
 #include <linux/types.h>
 
+#include "intel_display_power.h"
 #include "intel_wakeref.h"
 
 #define for_each_shared_dpll(__i915, __pll, __i) \
@@ -270,6 +271,11 @@ struct dpll_info {
 	 */
 	enum intel_dpll_id id;
 
+	/**
+	 * @power_domain: extra power domain required by the DPLL
+	 */
+	enum intel_display_power_domain power_domain;
+
 #define INTEL_DPLL_ALWAYS_ON	(1 << 0)
 	/**
 	 * @flags:
-- 
2.41.0


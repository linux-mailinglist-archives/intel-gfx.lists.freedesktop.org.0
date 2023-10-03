Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB97B7B724B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 22:06:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB7710E318;
	Tue,  3 Oct 2023 20:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775A510E318
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 20:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696363597; x=1727899597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XXt02HqbW6rQek4yQgLboeXorHMRJjXAEMBfQm5wkZ8=;
 b=ffBv0eXQOWuqTbLz28k8S6OtqXHD/sUDdeZdsbgDweSelYafE6Y8r+gR
 CaykWiLOymDuRybt1BKiG+jGmTFaJYTMtswqN0SZ+pDlx9mXjILoH9tJ1
 uUjt6k5bl0xnMQq0tGDxZHXVhyaaUKrXvFvrHYN60fUM6Xqw5KzLD2mi/
 2qkwR13MjClnqsn18LImHc1z/bAKm2WDosLt+6DW4NR2i9CNNfZu/A8BV
 mDxRCv0daqZ7zVgsPOmSS4d/O1/FOF9PA/YfLvT4tNif6CfyParPBTA0/
 wmuUsjl1tT0DFaslDGfTvmZqsJJ2Y9drMCvM9tF7BqRskKOsGR/SqBVkM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380242838"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380242838"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 13:06:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="816829674"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="816829674"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 03 Oct 2023 13:06:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 23:06:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 23:06:19 +0300
Message-ID: <20231003200620.11633-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
References: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915: Introduce
 for_each_shared_dpll()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

No one really cares how we store the shared_dplls. Currently
it happens to be an array, but we could change that to a more
flexible scheme at some point. Hide the implementation details
behind an iterator macro.

The slight downside is the pll variable moving out of the
loop scope, but maybe someday soon we'll start to convert
everything over to having declarations within for-statements...

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  5 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  4 +-
 4 files changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 670a38aebd0c..f6d7c4d45fae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -645,6 +645,7 @@ static int i915_display_info(struct seq_file *m, void *unused)
 static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct intel_shared_dpll *pll;
 	int i;
 
 	drm_modeset_lock_all(&dev_priv->drm);
@@ -653,9 +654,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		   dev_priv->display.dpll.ref_clks.nssc,
 		   dev_priv->display.dpll.ref_clks.ssc);
 
-	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
-
+	for_each_shared_dpll(dev_priv, pll, i) {
 		seq_printf(m, "DPLL%i: %s, id: %i\n", pll->index,
 			   pll->info->name, pll->info->id);
 		seq_printf(m, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 5b0ad34132c6..f197f91e5bf7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -115,14 +115,12 @@ static void
 intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
 				  struct intel_shared_dpll_state *shared_dpll)
 {
+	struct intel_shared_dpll *pll;
 	int i;
 
 	/* Copy shared dpll state */
-	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
-
+	for_each_shared_dpll(dev_priv, pll, i)
 		shared_dpll[pll->index] = pll->state;
-	}
 }
 
 static struct intel_shared_dpll_state *
@@ -154,11 +152,10 @@ struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct drm_i915_private *dev_priv,
 			    enum intel_dpll_id id)
 {
+	struct intel_shared_dpll *pll;
 	int i;
 
-	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
-
+	for_each_shared_dpll(dev_priv, pll, i) {
 		if (pll->info->id == id)
 			return pll;
 	}
@@ -317,12 +314,11 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 static unsigned long
 intel_dpll_mask_all(struct drm_i915_private *i915)
 {
+	struct intel_shared_dpll *pll;
 	unsigned long dpll_mask = 0;
 	int i;
 
-	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &i915->display.dpll.shared_dplls[i];
-
+	for_each_shared_dpll(i915, pll, i) {
 		drm_WARN_ON(&i915->drm, dpll_mask & BIT(pll->info->id));
 
 		dpll_mask |= BIT(pll->info->id);
@@ -489,16 +485,14 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll = state->shared_dpll;
+	struct intel_shared_dpll *pll;
 	int i;
 
 	if (!state->dpll_set)
 		return;
 
-	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
-
+	for_each_shared_dpll(dev_priv, pll, i)
 		swap(pll->state, shared_dpll[pll->index]);
-	}
 }
 
 static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *dev_priv,
@@ -4401,10 +4395,11 @@ void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
 
 void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
 {
+	struct intel_shared_dpll *pll;
 	int i;
 
-	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++)
-		readout_dpll_hw_state(i915, &i915->display.dpll.shared_dplls[i]);
+	for_each_shared_dpll(i915, pll, i)
+		readout_dpll_hw_state(i915, pll);
 }
 
 static void sanitize_dpll_state(struct drm_i915_private *i915,
@@ -4428,10 +4423,11 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
 
 void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 {
+	struct intel_shared_dpll *pll;
 	int i;
 
-	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++)
-		sanitize_dpll_state(i915, &i915->display.dpll.shared_dplls[i]);
+	for_each_shared_dpll(i915, pll, i)
+		sanitize_dpll_state(i915, pll);
 }
 
 /**
@@ -4542,9 +4538,9 @@ void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
 
 void intel_shared_dpll_verify_disabled(struct drm_i915_private *i915)
 {
+	struct intel_shared_dpll *pll;
 	int i;
 
-	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++)
-		verify_single_dpll_state(i915, &i915->display.dpll.shared_dplls[i],
-					 NULL, NULL);
+	for_each_shared_dpll(i915, pll, i)
+		verify_single_dpll_state(i915, pll, NULL, NULL);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 53d5dfede5ec..a18ab2680a8f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -29,6 +29,10 @@
 
 #include "intel_wakeref.h"
 
+#define for_each_shared_dpll(__i915, __pll, __i) \
+	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
+		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]) ; (__i)++)
+
 enum tc_port;
 struct drm_i915_private;
 struct intel_atomic_state;
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index c6a03abf44ca..713cfba71475 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -492,6 +492,7 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
+	struct intel_shared_dpll *pll;
 	int i;
 	u32 val, final;
 	bool has_lvds = false;
@@ -527,8 +528,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
+	for_each_shared_dpll(dev_priv, pll, i) {
 		u32 temp;
 
 		temp = intel_de_read(dev_priv, PCH_DPLL(pll->info->id));
-- 
2.41.0


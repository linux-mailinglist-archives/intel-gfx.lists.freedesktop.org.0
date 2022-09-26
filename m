Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DC25EB104
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 21:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458A010E793;
	Mon, 26 Sep 2022 19:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E85E10E76D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664219633; x=1695755633;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vIQ1qFzNqUiqiLI3j772Jj/KUg536Aq4NsCmdHB+tpk=;
 b=Oh3a7e+Z/6a0X+CTi+TI0MPNSSkzL+OOKcvaImLvHO89blNkJ6dbBZUo
 CZ6tV16VBw3jXxDlvhl5UfN5v9mUionSVbUOpcyWn99eiDvzvRVVClS/X
 kelIgPggt1gTlEG6g4GCyfey+j+/cSXC4+RsqNItB/ZvdILZERRrUBA4B
 dLnjFSSAb9n0aj0XihxmtyG/vwSpnI/GnSDiGYtrgzTHPn2QSSE7y8m8M
 scsMdL/GSk6/ke3ZkZCwz572YIx2F7JfJpB2feBhp4d1IpN45kkivD4zp
 RVeD0gV2E/pwlvsaRXk5MAYaEzQu/NGSNF+cw7q/wrDaGOxQCMnvIVzI1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="280841935"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="280841935"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 12:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616525369"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616525369"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 26 Sep 2022 12:13:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 22:13:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 22:13:40 +0300
Message-Id: <20220926191341.5495-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: Introduce
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  5 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  4 +-
 4 files changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index c5f47df0f362..c85f60f0ced8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -932,6 +932,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct drm_device *dev = &dev_priv->drm;
+	struct intel_shared_dpll *pll;
 	int i;
 
 	drm_modeset_lock_all(dev);
@@ -940,9 +941,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 		   dev_priv->display.dpll.ref_clks.nssc,
 		   dev_priv->display.dpll.ref_clks.ssc);
 
-	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
-
+	for_each_shared_dpll(dev_priv, pll, i) {
 		seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
 			   pll->info->id);
 		seq_printf(m, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 25e6f7a427b0..3dd414d663f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -110,14 +110,12 @@ static void
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
@@ -149,11 +147,10 @@ struct intel_shared_dpll *
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
@@ -311,12 +308,11 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
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
@@ -449,16 +445,14 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
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
@@ -4431,10 +4425,11 @@ void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
 
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
@@ -4458,10 +4453,11 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
 
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
@@ -4571,9 +4567,9 @@ void intel_shared_dpll_state_verify(struct intel_crtc *crtc,
 
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
index b8dce4e9ac54..d419f4f98d28 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -36,6 +36,10 @@
 	(void) (&__a == &__b);			\
 	__a > __b ? (__a - __b) : (__b - __a); })
 
+#define for_each_shared_dpll(__i915, __pll, __i) \
+	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
+		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]); (__i)++)
+
 enum tc_port;
 struct drm_i915_private;
 struct intel_atomic_state;
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 4db4b8d57e21..bb4e70aa9f6e 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -497,6 +497,7 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
+	struct intel_shared_dpll *pll;
 	int i;
 	u32 val, final;
 	bool has_lvds = false;
@@ -532,8 +533,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	}
 
 	/* Check if any DPLLs are using the SSC source */
-	for (i = 0; i < dev_priv->display.dpll.num_shared_dpll; i++) {
-		struct intel_shared_dpll *pll = &dev_priv->display.dpll.shared_dplls[i];
+	for_each_shared_dpll(dev_priv, pll, i) {
 		u32 temp;
 
 		temp = intel_de_read(dev_priv, PCH_DPLL(pll->info->id));
-- 
2.35.1


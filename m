Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A4C8569BE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5980610E9DC;
	Thu, 15 Feb 2024 16:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ByRvebDp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D373210E9DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015281; x=1739551281;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wOBUqn8qb/qssp37mAJA7Rp+2cA6nn3VQgeI7F4qPhc=;
 b=ByRvebDpsCIpDzFj+nj5+/wB/yJYHv5hJtiHYc7j0Z3Kaaikbua/6dHF
 8P4l1qZNYuzKahYhb9hJfHxQnvU5anRMbvhLsPtT52Dcpklnlvkf9InPF
 fPnOFNFBQ4B75qnRHCpzggDmYLyWOl9UWSvW74FJDZL0DlNZbZs5JpLgN
 tdb0UguQvkwx9XUOEG7ypHeobRIlUcbeqEwq9MCyviwwJKlsppJQDo9V7
 kgd+LUeRzlhZvFQK+eaGPZmMYfVUzUL4QVsZ7f/SK4PE9Dzd81oBtEWyW
 akAZM72kKlr0PNHJKMoWQ2H7aivZ9lSXIJeyjzZEGC3JxM+MkwNk6bUAy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19630003"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19630003"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434835"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434835"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/12] drm/i915: Convert intel_dpll_dump_hw_state() to
 drm_printer
Date: Thu, 15 Feb 2024 18:40:49 +0200
Message-ID: <20240215164055.30585-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Utilize drm_printer in pipe_config_pll_mismatch() to avoid
a bit of code duplication.

To achieve this we need to plumb the printer all way to the
dpll_mgr .dump_hw_state() functions. Those are also used by
intel_crtc_state_dump() which needs to be adjusted as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  27 ++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 105 ++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
 4 files changed, 67 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 4bcf446c75f4..59d2b3d39951 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -205,9 +205,12 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
+	struct drm_printer p;
 	char buf[64];
 	int i;
 
+	p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
+
 	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
 		    crtc->base.base.id, crtc->base.name,
 		    str_yes_no(pipe_config->hw.enable), context);
@@ -356,7 +359,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		    pipe_config->ips_enabled, pipe_config->double_wide,
 		    pipe_config->has_drrs);
 
-	intel_dpll_dump_hw_state(i915, &pipe_config->dpll_hw_state);
+	intel_dpll_dump_hw_state(i915, &p, &pipe_config->dpll_hw_state);
 
 	if (IS_CHERRYVIEW(i915))
 		drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e5010049d52e..d7f39ad84138 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4927,26 +4927,27 @@ pipe_config_pll_mismatch(bool fastset,
 			 const struct intel_dpll_hw_state *b)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_printer p;
 
 	if (fastset) {
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
-		drm_dbg_kms(&i915->drm,
-			    "[CRTC:%d:%s] fastset requirement not met in %s\n",
-			    crtc->base.base.id, crtc->base.name, name);
-		drm_dbg_kms(&i915->drm, "expected:\n");
-		intel_dpll_dump_hw_state(i915, a);
-		drm_dbg_kms(&i915->drm, "found:\n");
-		intel_dpll_dump_hw_state(i915, b);
+		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
+
+		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	} else {
-		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
-			crtc->base.base.id, crtc->base.name, name);
-		drm_err(&i915->drm, "expected:\n");
-		intel_dpll_dump_hw_state(i915, a);
-		drm_err(&i915->drm, "found:\n");
-		intel_dpll_dump_hw_state(i915, b);
+		p = drm_err_printer(&i915->drm, NULL);
+
+		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	}
+
+	drm_dbg_kms(&i915->drm, "expected:\n");
+	intel_dpll_dump_hw_state(i915, &p, a);
+	drm_dbg_kms(&i915->drm, "found:\n");
+	intel_dpll_dump_hw_state(i915, &p, b);
 }
 
 bool
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ff480f171f75..9542e62186e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -107,7 +107,7 @@ struct intel_dpll_mgr {
 				   struct intel_crtc *crtc,
 				   struct intel_encoder *encoder);
 	void (*update_ref_clks)(struct drm_i915_private *i915);
-	void (*dump_hw_state)(struct drm_i915_private *i915,
+	void (*dump_hw_state)(struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state);
 	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
 				 const struct intel_dpll_hw_state *b);
@@ -634,16 +634,15 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void ibx_dump_hw_state(struct drm_i915_private *i915,
+static void ibx_dump_hw_state(struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&i915->drm,
-		    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
-		    "fp0: 0x%x, fp1: 0x%x\n",
-		    hw_state->dpll,
-		    hw_state->dpll_md,
-		    hw_state->fp0,
-		    hw_state->fp1);
+	drm_printf(p, "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
+		   "fp0: 0x%x, fp1: 0x%x\n",
+		   hw_state->dpll,
+		   hw_state->dpll_md,
+		   hw_state->fp0,
+		   hw_state->fp1);
 }
 
 static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *a,
@@ -1225,11 +1224,11 @@ static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
 		i915->display.dpll.ref_clks.nssc = 135000;
 }
 
-static void hsw_dump_hw_state(struct drm_i915_private *i915,
+static void hsw_dump_hw_state(struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&i915->drm, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
-		    hw_state->wrpll, hw_state->spll);
+	drm_printf(p, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
+		   hw_state->wrpll, hw_state->spll);
 }
 
 static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *a,
@@ -1939,14 +1938,11 @@ static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
 	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
 }
 
-static void skl_dump_hw_state(struct drm_i915_private *i915,
+static void skl_dump_hw_state(struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&i915->drm, "dpll_hw_state: "
-		      "ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
-		      hw_state->ctrl1,
-		      hw_state->cfgcr1,
-		      hw_state->cfgcr2);
+	drm_printf(p, "dpll_hw_state: ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
+		   hw_state->ctrl1, hw_state->cfgcr1, hw_state->cfgcr2);
 }
 
 static bool skl_compare_hw_state(const struct intel_dpll_hw_state *a,
@@ -2402,23 +2398,16 @@ static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
 	/* DSI non-SSC ref 19.2MHz */
 }
 
-static void bxt_dump_hw_state(struct drm_i915_private *i915,
+static void bxt_dump_hw_state(struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&i915->drm, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
-		    "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
-		    "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
-		    hw_state->ebb0,
-		    hw_state->ebb4,
-		    hw_state->pll0,
-		    hw_state->pll1,
-		    hw_state->pll2,
-		    hw_state->pll3,
-		    hw_state->pll6,
-		    hw_state->pll8,
-		    hw_state->pll9,
-		    hw_state->pll10,
-		    hw_state->pcsdw12);
+	drm_printf(p, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
+		   "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
+		   "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
+		   hw_state->ebb0, hw_state->ebb4,
+		   hw_state->pll0, hw_state->pll1, hw_state->pll2, hw_state->pll3,
+		   hw_state->pll6, hw_state->pll8, hw_state->pll9, hw_state->pll10,
+		   hw_state->pcsdw12);
 }
 
 static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *a,
@@ -4026,28 +4015,26 @@ static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
 	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
 }
 
-static void icl_dump_hw_state(struct drm_i915_private *i915,
+static void icl_dump_hw_state(struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	drm_dbg_kms(&i915->drm,
-		    "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
-		    "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
-		    "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
-		    "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
-		    "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
-		    "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
-		    hw_state->cfgcr0, hw_state->cfgcr1,
-		    hw_state->div0,
-		    hw_state->mg_refclkin_ctl,
-		    hw_state->mg_clktop2_coreclkctl1,
-		    hw_state->mg_clktop2_hsclkctl,
-		    hw_state->mg_pll_div0,
-		    hw_state->mg_pll_div1,
-		    hw_state->mg_pll_lf,
-		    hw_state->mg_pll_frac_lock,
-		    hw_state->mg_pll_ssc,
-		    hw_state->mg_pll_bias,
-		    hw_state->mg_pll_tdc_coldst_bias);
+	drm_printf(p, "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
+		   "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
+		   "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
+		   "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
+		   "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
+		   "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
+		   hw_state->cfgcr0, hw_state->cfgcr1, hw_state->div0,
+		   hw_state->mg_refclkin_ctl,
+		   hw_state->mg_clktop2_coreclkctl1,
+		   hw_state->mg_clktop2_hsclkctl,
+		   hw_state->mg_pll_div0,
+		   hw_state->mg_pll_div1,
+		   hw_state->mg_pll_lf,
+		   hw_state->mg_pll_frac_lock,
+		   hw_state->mg_pll_ssc,
+		   hw_state->mg_pll_bias,
+		   hw_state->mg_pll_tdc_coldst_bias);
 }
 
 static bool icl_compare_hw_state(const struct intel_dpll_hw_state *a,
@@ -4514,22 +4501,24 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
 }
 
 /**
- * intel_dpll_dump_hw_state - write hw_state to dmesg
+ * intel_dpll_dump_hw_state - dump hw_state
  * @i915: i915 drm device
- * @hw_state: hw state to be written to the log
+ * @p: where to print the state to
+ * @hw_state: hw state to be dumped
  *
- * Write the relevant values in @hw_state to dmesg using drm_dbg_kms.
+ * Dumo out the relevant values in @hw_state.
  */
 void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
+			      struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state)
 {
 	if (i915->display.dpll.mgr) {
-		i915->display.dpll.mgr->dump_hw_state(i915, hw_state);
+		i915->display.dpll.mgr->dump_hw_state(p, hw_state);
 	} else {
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
 		 */
-		ibx_dump_hw_state(i915, hw_state);
+		ibx_dump_hw_state(p, hw_state);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index cc0e1386309d..d4d97e40440a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -36,6 +36,7 @@
 
 enum tc_port;
 struct drm_i915_private;
+struct drm_printer;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -377,6 +378,7 @@ void intel_dpll_readout_hw_state(struct drm_i915_private *i915);
 void intel_dpll_sanitize_state(struct drm_i915_private *i915);
 
 void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
+			      struct drm_printer *p,
 			      const struct intel_dpll_hw_state *hw_state);
 bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
 				 const struct intel_dpll_hw_state *a,
-- 
2.43.0


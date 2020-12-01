Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C93E82CA7D6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 17:13:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F876E550;
	Tue,  1 Dec 2020 16:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B206E56D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 16:13:46 +0000 (UTC)
IronPort-SDR: O2BcH8tVAFTGlHjtEn1UNb5iSDOk1ZbB6veIcp1T3p9yTiRQYzXuhkw26TFfJIl4NifA2Zk/d/
 AOEnps8UjHVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="160625332"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="160625332"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:13:44 -0800
IronPort-SDR: O7W0eArjsOEqGwm/DNYDBCh7IVuLMe78HAKRjjuXJQr4+kD/lLJghR6wMqHTE4pMB6l9bu9ZOy
 X/Km+BklyX+w==
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="481158923"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 08:13:42 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 18:13:39 +0200
Message-Id: <20201201161340.2879202-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130212200.2811939-3-imre.deak@intel.com>
References: <20201130212200.2811939-3-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915: Factor out helpers to get/put
 a set of tracked power domains
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor out helper functions to get/put a set of power domains that are
tracked using their wakeref handles. The same is needed by the next
patch adding tracking for enabled CRTC power domains.

v2: s/uint64_t/u64/ (Chris)

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 62 +++++--------------
 .../drm/i915/display/intel_display_power.c    | 57 +++++++++++++++++
 .../drm/i915/display/intel_display_power.h    | 29 +++++++++
 3 files changed, 100 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d812d7ae5e65..d80d15d96d4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11226,16 +11226,13 @@ static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 
 static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 				     struct intel_crtc_state *pipe_config,
-				     u64 *power_domain_mask,
-				     intel_wakeref_t *wakerefs)
+				     struct intel_display_power_domain_set *power_domain_set)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum intel_display_power_domain power_domain;
 	unsigned long panel_transcoder_mask = BIT(TRANSCODER_EDP);
 	unsigned long enabled_panel_transcoders = 0;
 	enum transcoder panel_transcoder;
-	intel_wakeref_t wf;
 	u32 tmp;
 
 	if (INTEL_GEN(dev_priv) >= 11)
@@ -11306,16 +11303,10 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	drm_WARN_ON(dev, (enabled_panel_transcoders & BIT(TRANSCODER_EDP)) &&
 		    enabled_panel_transcoders != BIT(TRANSCODER_EDP));
 
-	power_domain = POWER_DOMAIN_TRANSCODER(pipe_config->cpu_transcoder);
-	drm_WARN_ON(dev, *power_domain_mask & BIT_ULL(power_domain));
-
-	wf = intel_display_power_get_if_enabled(dev_priv, power_domain);
-	if (!wf)
+	if (!intel_display_power_get_in_set_if_enabled(dev_priv, power_domain_set,
+						       POWER_DOMAIN_TRANSCODER(pipe_config->cpu_transcoder)))
 		return false;
 
-	wakerefs[power_domain] = wf;
-	*power_domain_mask |= BIT_ULL(power_domain);
-
 	tmp = intel_de_read(dev_priv, PIPECONF(pipe_config->cpu_transcoder));
 
 	return tmp & PIPECONF_ENABLE;
@@ -11323,14 +11314,11 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 
 static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 					 struct intel_crtc_state *pipe_config,
-					 u64 *power_domain_mask,
-					 intel_wakeref_t *wakerefs)
+					 struct intel_display_power_domain_set *power_domain_set)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum intel_display_power_domain power_domain;
 	enum transcoder cpu_transcoder;
-	intel_wakeref_t wf;
 	enum port port;
 	u32 tmp;
 
@@ -11340,16 +11328,10 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 		else
 			cpu_transcoder = TRANSCODER_DSI_C;
 
-		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
-		drm_WARN_ON(dev, *power_domain_mask & BIT_ULL(power_domain));
-
-		wf = intel_display_power_get_if_enabled(dev_priv, power_domain);
-		if (!wf)
+		if (!intel_display_power_get_in_set_if_enabled(dev_priv, power_domain_set,
+							       POWER_DOMAIN_TRANSCODER(cpu_transcoder)))
 			continue;
 
-		wakerefs[power_domain] = wf;
-		*power_domain_mask |= BIT_ULL(power_domain);
-
 		/*
 		 * The PLL needs to be enabled with a valid divider
 		 * configuration, otherwise accessing DSI registers will hang
@@ -11432,30 +11414,22 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM], wf;
-	enum intel_display_power_domain power_domain;
-	u64 power_domain_mask;
+	struct intel_display_power_domain_set power_domain_set = { };
 	bool active;
 	u32 tmp;
 
 	pipe_config->master_transcoder = INVALID_TRANSCODER;
 
-	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
-	wf = intel_display_power_get_if_enabled(dev_priv, power_domain);
-	if (!wf)
+	if (!intel_display_power_get_in_set_if_enabled(dev_priv, &power_domain_set,
+						       POWER_DOMAIN_PIPE(crtc->pipe)))
 		return false;
 
-	wakerefs[power_domain] = wf;
-	power_domain_mask = BIT_ULL(power_domain);
-
 	pipe_config->shared_dpll = NULL;
 
-	active = hsw_get_transcoder_state(crtc, pipe_config,
-					  &power_domain_mask, wakerefs);
+	active = hsw_get_transcoder_state(crtc, pipe_config, &power_domain_set);
 
 	if (IS_GEN9_LP(dev_priv) &&
-	    bxt_get_dsi_transcoder_state(crtc, pipe_config,
-					 &power_domain_mask, wakerefs)) {
+	    bxt_get_dsi_transcoder_state(crtc, pipe_config, &power_domain_set)) {
 		drm_WARN_ON(&dev_priv->drm, active);
 		active = true;
 	}
@@ -11519,14 +11493,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->ips_linetime =
 			REG_FIELD_GET(HSW_IPS_LINETIME_MASK, tmp);
 
-	power_domain = POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe);
-	drm_WARN_ON(&dev_priv->drm, power_domain_mask & BIT_ULL(power_domain));
-
-	wf = intel_display_power_get_if_enabled(dev_priv, power_domain);
-	if (wf) {
-		wakerefs[power_domain] = wf;
-		power_domain_mask |= BIT_ULL(power_domain);
-
+	if (intel_display_power_get_in_set_if_enabled(dev_priv, &power_domain_set,
+						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
 		if (INTEL_GEN(dev_priv) >= 9)
 			skl_get_pfit_config(pipe_config);
 		else
@@ -11560,9 +11528,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 out:
-	for_each_power_domain(power_domain, power_domain_mask)
-		intel_display_power_put(dev_priv,
-					power_domain, wakerefs[power_domain]);
+	intel_display_power_put_all_in_set(dev_priv, &power_domain_set);
 
 	return active;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index fe2d90bba536..b48dbb7bdaf4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2412,6 +2412,63 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
 }
 #endif
 
+void
+intel_display_power_get_in_set(struct drm_i915_private *i915,
+			       struct intel_display_power_domain_set *power_domain_set,
+			       enum intel_display_power_domain domain)
+{
+	intel_wakeref_t __maybe_unused wf;
+
+	drm_WARN_ON(&i915->drm, power_domain_set->mask & BIT_ULL(domain));
+
+	wf = intel_display_power_get(i915, domain);
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+	power_domain_set->wakerefs[domain] = wf;
+#endif
+	power_domain_set->mask |= BIT_ULL(domain);
+}
+
+bool
+intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
+					  struct intel_display_power_domain_set *power_domain_set,
+					  enum intel_display_power_domain domain)
+{
+	intel_wakeref_t wf;
+
+	drm_WARN_ON(&i915->drm, power_domain_set->mask & BIT_ULL(domain));
+
+	wf = intel_display_power_get_if_enabled(i915, domain);
+	if (!wf)
+		return false;
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+	power_domain_set->wakerefs[domain] = wf;
+#endif
+	power_domain_set->mask |= BIT_ULL(domain);
+
+	return true;
+}
+
+void
+intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
+				    struct intel_display_power_domain_set *power_domain_set,
+				    u64 mask)
+{
+	enum intel_display_power_domain domain;
+
+	drm_WARN_ON(&i915->drm, mask & ~power_domain_set->mask);
+
+	for_each_power_domain(domain, mask) {
+		intel_wakeref_t __maybe_unused wf = -1;
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
+#endif
+		intel_display_power_put(i915, domain, wf);
+		power_domain_set->mask &= ~BIT_ULL(domain);
+	}
+}
+
 #define I830_PIPES_POWER_DOMAINS (		\
 	BIT_ULL(POWER_DOMAIN_PIPE_A) |		\
 	BIT_ULL(POWER_DOMAIN_PIPE_B) |		\
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 4aa0a09cf14f..583d3df57fb2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -224,6 +224,13 @@ struct i915_power_domains {
 	struct i915_power_well *power_wells;
 };
 
+struct intel_display_power_domain_set {
+	u64 mask;
+#ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
+	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
+#endif
+};
+
 #define for_each_power_domain(domain, mask)				\
 	for ((domain) = 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
 		for_each_if(BIT_ULL(domain) & (mask))
@@ -314,6 +321,28 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 }
 #endif
 
+void
+intel_display_power_get_in_set(struct drm_i915_private *i915,
+			       struct intel_display_power_domain_set *power_domain_set,
+			       enum intel_display_power_domain domain);
+
+bool
+intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
+					  struct intel_display_power_domain_set *power_domain_set,
+					  enum intel_display_power_domain domain);
+
+void
+intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
+				    struct intel_display_power_domain_set *power_domain_set,
+				    u64 mask);
+
+static inline void
+intel_display_power_put_all_in_set(struct drm_i915_private *i915,
+				   struct intel_display_power_domain_set *power_domain_set)
+{
+	intel_display_power_put_mask_in_set(i915, power_domain_set, power_domain_set->mask);
+}
+
 enum dbuf_slice {
 	DBUF_S1,
 	DBUF_S2,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

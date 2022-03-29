Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 879064EB214
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B4010F15B;
	Tue, 29 Mar 2022 16:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E08EE10F15B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572390; x=1680108390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=70mqSCTqXxRtXd4xwhU/sfk3YyDA+oOgPpqApsiRHsc=;
 b=IKDMglRnSU0Tx5sT20PKSlbpKpQ2TxlxJjyHSr2SzQ1HKOnykRmWYF5k
 qEz+Ubxa/A3Fx3jSiHQn8bDUj7x4Qacdtulutyto1Tsl4H7vwZGyNQyiV
 I8U2WJs8z2fDLmkfzXEpsfOvzmsQhnaVm5DiiiXv0GacOzIDPdNKYg2lq
 6IpD9b+VkeSY4pbZBFTbkfN+IrzHrO/omY7SQhOxgXi8ZRpxK/eQBDwOu
 1I8LbZ0qCUg/eELjeV/4Oh1U4nqImY8njJNRfD0+XsRY3PLQ6fz0GD4vK
 LviCjlCK4HTfiBfz+TTftvEZwA45TFxP+qqAwK5X0YfCHo38dQwzrwNtL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259278025"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259278025"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521513947"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:54 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:27 +0300
Message-Id: <20220329164336.1199359-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/18] drm/i915: Convert the u64 power well
 domains mask to a bitmap
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

To remove the aliasing of the power domain enum values in a follow-up
patch in this patchset (requiring a bigger mask) and allow for defining
additional power domains in the future (at least some upcoming TypeC
changes requires this) convert the u64 i915_power_well_desc::domains
mask to a bitmap.

For simplicity I changed the for_each_power_domain_well() macros to
accept one domain only instead of a mask, as there isn't any current
user passing multiple domains.

v2: Don't add a typedef for the bitmap struct. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  65 ++++++-----
 .../drm/i915/display/intel_display_power.c    | 108 +++++++++++-------
 .../drm/i915/display/intel_display_power.h    |  18 +--
 .../i915/display/intel_display_power_map.c    |   4 +-
 .../i915/display/intel_display_power_well.c   |   4 +-
 .../i915/display/intel_display_power_well.h   |   5 +-
 6 files changed, 116 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28ba0319357e6..fa6580cdbc4b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2273,66 +2273,71 @@ intel_legacy_aux_to_power_domain(enum aux_ch aux_ch)
 	}
 }
 
-static u64 get_crtc_power_domains(struct intel_crtc_state *crtc_state)
+static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
+				   struct intel_power_domain_mask *mask)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct drm_encoder *encoder;
 	enum pipe pipe = crtc->pipe;
-	u64 mask;
+
+	bitmap_zero(mask->bits, POWER_DOMAIN_NUM);
 
 	if (!crtc_state->hw.active)
-		return 0;
+		return;
 
-	mask = BIT_ULL(POWER_DOMAIN_PIPE(pipe));
-	mask |= BIT_ULL(POWER_DOMAIN_TRANSCODER(cpu_transcoder));
+	set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
+	set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
 	if (crtc_state->pch_pfit.enabled ||
 	    crtc_state->pch_pfit.force_thru)
-		mask |= BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe));
+		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
 
 	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
 				  crtc_state->uapi.encoder_mask) {
 		struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
 
-		mask |= BIT_ULL(intel_encoder->power_domain);
+		set_bit(intel_encoder->power_domain, mask->bits);
 	}
 
 	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
-		mask |= BIT_ULL(POWER_DOMAIN_AUDIO_MMIO);
+		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
 
 	if (crtc_state->shared_dpll)
-		mask |= BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
+		set_bit(POWER_DOMAIN_DISPLAY_CORE, mask->bits);
 
 	if (crtc_state->dsc.compression_enable)
-		mask |= BIT_ULL(intel_dsc_power_domain(crtc, cpu_transcoder));
-
-	return mask;
+		set_bit(intel_dsc_power_domain(crtc, cpu_transcoder), mask->bits);
 }
 
-static u64
-modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state)
+static void
+modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
+			       struct intel_power_domain_mask *old_domains)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum intel_display_power_domain domain;
-	u64 domains, new_domains, old_domains;
+	struct intel_power_domain_mask domains, new_domains;
 
-	domains = get_crtc_power_domains(crtc_state);
+	get_crtc_power_domains(crtc_state, &domains);
 
-	new_domains = domains & ~crtc->enabled_power_domains.mask;
-	old_domains = crtc->enabled_power_domains.mask & ~domains;
+	bitmap_andnot(new_domains.bits,
+		      domains.bits,
+		      crtc->enabled_power_domains.mask.bits,
+		      POWER_DOMAIN_NUM);
+	bitmap_andnot(old_domains->bits,
+		      crtc->enabled_power_domains.mask.bits,
+		      domains.bits,
+		      POWER_DOMAIN_NUM);
 
-	for_each_power_domain(domain, new_domains)
+	for_each_power_domain(domain, &new_domains)
 		intel_display_power_get_in_set(dev_priv,
 					       &crtc->enabled_power_domains,
 					       domain);
-
-	return old_domains;
 }
 
 static void modeset_put_crtc_power_domains(struct intel_crtc *crtc,
-					   u64 domains)
+					   struct intel_power_domain_mask *domains)
 {
 	intel_display_power_put_mask_in_set(to_i915(crtc->base.dev),
 					    &crtc->enabled_power_domains,
@@ -8545,7 +8550,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	u64 put_domains[I915_MAX_PIPES] = {};
+	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
 	intel_wakeref_t wakeref = 0;
 	int i;
 
@@ -8562,9 +8567,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
 		    new_crtc_state->update_pipe) {
-
-			put_domains[crtc->pipe] =
-				modeset_get_crtc_power_domains(new_crtc_state);
+			modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
 		}
 	}
 
@@ -8663,7 +8666,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		intel_post_plane_update(state, crtc);
 
-		modeset_put_crtc_power_domains(crtc, put_domains[crtc->pipe]);
+		modeset_put_crtc_power_domains(crtc, &put_domains[crtc->pipe]);
 
 		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
 
@@ -10502,11 +10505,11 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 	for_each_intel_crtc(dev, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
-		u64 put_domains;
+		struct intel_power_domain_mask put_domains;
 
-		put_domains = modeset_get_crtc_power_domains(crtc_state);
-		if (drm_WARN_ON(dev, put_domains))
-			modeset_put_crtc_power_domains(crtc, put_domains);
+		modeset_get_crtc_power_domains(crtc_state, &put_domains);
+		if (drm_WARN_ON(dev, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)))
+			modeset_put_crtc_power_domains(crtc, &put_domains);
 	}
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index b9ba8500bf984..9dc1be8cc1582 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -22,13 +22,13 @@
 #include "intel_snps_phy.h"
 #include "vlv_sideband.h"
 
-#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
+#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
 	for_each_power_well(__dev_priv, __power_well)				\
-		for_each_if((__power_well)->domains & (__domain_mask))
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
 
-#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
+#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
-		for_each_if((__power_well)->domains & (__domain_mask))
+		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
 
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain)
@@ -191,7 +191,7 @@ bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 
 	is_enabled = true;
 
-	for_each_power_domain_well_reverse(dev_priv, power_well, BIT_ULL(domain)) {
+	for_each_power_domain_well_reverse(dev_priv, power_well, domain) {
 		if (intel_power_well_is_always_on(power_well))
 			continue;
 
@@ -307,10 +307,13 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 
 #define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
 
-static u64 __async_put_domains_mask(struct i915_power_domains *power_domains)
+static void __async_put_domains_mask(struct i915_power_domains *power_domains,
+				     struct intel_power_domain_mask *mask)
 {
-	return power_domains->async_put_domains[0] |
-	       power_domains->async_put_domains[1];
+	bitmap_or(mask->bits,
+		  power_domains->async_put_domains[0].bits,
+		  power_domains->async_put_domains[1].bits,
+		  POWER_DOMAIN_NUM);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
@@ -321,8 +324,11 @@ assert_async_put_domain_masks_disjoint(struct i915_power_domains *power_domains)
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
 						     power_domains);
-	return !drm_WARN_ON(&i915->drm, power_domains->async_put_domains[0] &
-			    power_domains->async_put_domains[1]);
+
+	return !drm_WARN_ON(&i915->drm,
+			    bitmap_intersects(power_domains->async_put_domains[0].bits,
+					      power_domains->async_put_domains[1].bits,
+					      POWER_DOMAIN_NUM));
 }
 
 static bool
@@ -331,14 +337,17 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
 						     power_domains);
+	struct intel_power_domain_mask async_put_mask;
 	enum intel_display_power_domain domain;
 	bool err = false;
 
 	err |= !assert_async_put_domain_masks_disjoint(power_domains);
-	err |= drm_WARN_ON(&i915->drm, !!power_domains->async_put_wakeref !=
-			   !!__async_put_domains_mask(power_domains));
+	__async_put_domains_mask(power_domains, &async_put_mask);
+	err |= drm_WARN_ON(&i915->drm,
+			   !!power_domains->async_put_wakeref !=
+			   !bitmap_empty(async_put_mask.bits, POWER_DOMAIN_NUM));
 
-	for_each_power_domain(domain, __async_put_domains_mask(power_domains))
+	for_each_power_domain(domain, &async_put_mask)
 		err |= drm_WARN_ON(&i915->drm,
 				   power_domains->domain_use_count[domain] != 1);
 
@@ -346,14 +355,14 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
 }
 
 static void print_power_domains(struct i915_power_domains *power_domains,
-				const char *prefix, u64 mask)
+				const char *prefix, struct intel_power_domain_mask *mask)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
 						     power_domains);
 	enum intel_display_power_domain domain;
 
-	drm_dbg(&i915->drm, "%s (%lu):\n", prefix, hweight64(mask));
+	drm_dbg(&i915->drm, "%s (%d):\n", prefix, bitmap_weight(mask->bits, POWER_DOMAIN_NUM));
 	for_each_power_domain(domain, mask)
 		drm_dbg(&i915->drm, "%s use_count %d\n",
 			intel_display_power_domain_str(domain),
@@ -371,9 +380,9 @@ print_async_put_domains_state(struct i915_power_domains *power_domains)
 		power_domains->async_put_wakeref);
 
 	print_power_domains(power_domains, "async_put_domains[0]",
-			    power_domains->async_put_domains[0]);
+			    &power_domains->async_put_domains[0]);
 	print_power_domains(power_domains, "async_put_domains[1]",
-			    power_domains->async_put_domains[1]);
+			    &power_domains->async_put_domains[1]);
 }
 
 static void
@@ -397,11 +406,13 @@ verify_async_put_domains_state(struct i915_power_domains *power_domains)
 
 #endif /* CONFIG_DRM_I915_DEBUG_RUNTIME_PM */
 
-static u64 async_put_domains_mask(struct i915_power_domains *power_domains)
+static void async_put_domains_mask(struct i915_power_domains *power_domains,
+				   struct intel_power_domain_mask *mask)
+
 {
 	assert_async_put_domain_masks_disjoint(power_domains);
 
-	return __async_put_domains_mask(power_domains);
+	__async_put_domains_mask(power_domains, mask);
 }
 
 static void
@@ -410,8 +421,8 @@ async_put_domains_clear_domain(struct i915_power_domains *power_domains,
 {
 	assert_async_put_domain_masks_disjoint(power_domains);
 
-	power_domains->async_put_domains[0] &= ~BIT_ULL(domain);
-	power_domains->async_put_domains[1] &= ~BIT_ULL(domain);
+	clear_bit(domain, power_domains->async_put_domains[0].bits);
+	clear_bit(domain, power_domains->async_put_domains[1].bits);
 }
 
 static bool
@@ -419,16 +430,19 @@ intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
 				       enum intel_display_power_domain domain)
 {
 	struct i915_power_domains *power_domains = &dev_priv->power_domains;
+	struct intel_power_domain_mask async_put_mask;
 	bool ret = false;
 
-	if (!(async_put_domains_mask(power_domains) & BIT_ULL(domain)))
+	async_put_domains_mask(power_domains, &async_put_mask);
+	if (!test_bit(domain, async_put_mask.bits))
 		goto out_verify;
 
 	async_put_domains_clear_domain(power_domains, domain);
 
 	ret = true;
 
-	if (async_put_domains_mask(power_domains))
+	async_put_domains_mask(power_domains, &async_put_mask);
+	if (!bitmap_empty(async_put_mask.bits, POWER_DOMAIN_NUM))
 		goto out_verify;
 
 	cancel_delayed_work(&power_domains->async_put_work);
@@ -450,7 +464,7 @@ __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
 	if (intel_display_power_grab_async_put_ref(dev_priv, domain))
 		return;
 
-	for_each_power_domain_well(dev_priv, power_well, BIT_ULL(domain))
+	for_each_power_domain_well(dev_priv, power_well, domain)
 		intel_power_well_get(dev_priv, power_well);
 
 	power_domains->domain_use_count[domain]++;
@@ -531,20 +545,22 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 	struct i915_power_domains *power_domains;
 	struct i915_power_well *power_well;
 	const char *name = intel_display_power_domain_str(domain);
+	struct intel_power_domain_mask async_put_mask;
 
 	power_domains = &dev_priv->power_domains;
 
 	drm_WARN(&dev_priv->drm, !power_domains->domain_use_count[domain],
 		 "Use count on domain %s is already zero\n",
 		 name);
+	async_put_domains_mask(power_domains, &async_put_mask);
 	drm_WARN(&dev_priv->drm,
-		 async_put_domains_mask(power_domains) & BIT_ULL(domain),
+		 test_bit(domain, async_put_mask.bits),
 		 "Async disabling of domain %s is pending\n",
 		 name);
 
 	power_domains->domain_use_count[domain]--;
 
-	for_each_power_domain_well_reverse(dev_priv, power_well, BIT_ULL(domain))
+	for_each_power_domain_well_reverse(dev_priv, power_well, domain)
 		intel_power_well_put(dev_priv, power_well);
 }
 
@@ -573,7 +589,8 @@ queue_async_put_domains_work(struct i915_power_domains *power_domains,
 }
 
 static void
-release_async_put_domains(struct i915_power_domains *power_domains, u64 mask)
+release_async_put_domains(struct i915_power_domains *power_domains,
+			  struct intel_power_domain_mask *mask)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(power_domains, struct drm_i915_private,
@@ -621,12 +638,15 @@ intel_display_power_put_async_work(struct work_struct *work)
 		goto out_verify;
 
 	release_async_put_domains(power_domains,
-				  power_domains->async_put_domains[0]);
+				  &power_domains->async_put_domains[0]);
 
 	/* Requeue the work if more domains were async put meanwhile. */
-	if (power_domains->async_put_domains[1]) {
-		power_domains->async_put_domains[0] =
-			fetch_and_zero(&power_domains->async_put_domains[1]);
+	if (!bitmap_empty(power_domains->async_put_domains[1].bits, POWER_DOMAIN_NUM)) {
+		bitmap_copy(power_domains->async_put_domains[0].bits,
+			    power_domains->async_put_domains[1].bits,
+			    POWER_DOMAIN_NUM);
+		bitmap_zero(power_domains->async_put_domains[1].bits,
+			    POWER_DOMAIN_NUM);
 		queue_async_put_domains_work(power_domains,
 					     fetch_and_zero(&new_work_wakeref));
 	} else {
@@ -678,9 +698,9 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 
 	/* Let a pending work requeue itself or queue a new one. */
 	if (power_domains->async_put_wakeref) {
-		power_domains->async_put_domains[1] |= BIT_ULL(domain);
+		set_bit(domain, power_domains->async_put_domains[1].bits);
 	} else {
-		power_domains->async_put_domains[0] |= BIT_ULL(domain);
+		set_bit(domain, power_domains->async_put_domains[0].bits);
 		queue_async_put_domains_work(power_domains,
 					     fetch_and_zero(&work_wakeref));
 	}
@@ -711,6 +731,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 void intel_display_power_flush_work(struct drm_i915_private *i915)
 {
 	struct i915_power_domains *power_domains = &i915->power_domains;
+	struct intel_power_domain_mask async_put_mask;
 	intel_wakeref_t work_wakeref;
 
 	mutex_lock(&power_domains->lock);
@@ -719,8 +740,8 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
 	if (!work_wakeref)
 		goto out_verify;
 
-	release_async_put_domains(power_domains,
-				  async_put_domains_mask(power_domains));
+	async_put_domains_mask(power_domains, &async_put_mask);
+	release_async_put_domains(power_domains, &async_put_mask);
 	cancel_delayed_work(&power_domains->async_put_work);
 
 out_verify:
@@ -799,13 +820,13 @@ intel_display_power_get_in_set(struct drm_i915_private *i915,
 {
 	intel_wakeref_t __maybe_unused wf;
 
-	drm_WARN_ON(&i915->drm, power_domain_set->mask & BIT_ULL(domain));
+	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
 
 	wf = intel_display_power_get(i915, domain);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	power_domain_set->wakerefs[domain] = wf;
 #endif
-	power_domain_set->mask |= BIT_ULL(domain);
+	set_bit(domain, power_domain_set->mask.bits);
 }
 
 bool
@@ -815,7 +836,7 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 {
 	intel_wakeref_t wf;
 
-	drm_WARN_ON(&i915->drm, power_domain_set->mask & BIT_ULL(domain));
+	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
 
 	wf = intel_display_power_get_if_enabled(i915, domain);
 	if (!wf)
@@ -824,7 +845,7 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	power_domain_set->wakerefs[domain] = wf;
 #endif
-	power_domain_set->mask |= BIT_ULL(domain);
+	set_bit(domain, power_domain_set->mask.bits);
 
 	return true;
 }
@@ -832,11 +853,12 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 void
 intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 				    struct intel_display_power_domain_set *power_domain_set,
-				    u64 mask)
+				    struct intel_power_domain_mask *mask)
 {
 	enum intel_display_power_domain domain;
 
-	drm_WARN_ON(&i915->drm, mask & ~power_domain_set->mask);
+	drm_WARN_ON(&i915->drm,
+		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
 
 	for_each_power_domain(domain, mask) {
 		intel_wakeref_t __maybe_unused wf = -1;
@@ -845,7 +867,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
 #endif
 		intel_display_power_put(i915, domain, wf);
-		power_domain_set->mask &= ~BIT_ULL(domain);
+		clear_bit(domain, power_domain_set->mask.bits);
 	}
 }
 
@@ -947,8 +969,6 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 	dev_priv->dmc.target_dc_state =
 		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 
-	BUILD_BUG_ON(POWER_DOMAIN_NUM > 64);
-
 	mutex_init(&power_domains->lock);
 
 	INIT_DELAYED_WORK(&power_domains->async_put_work,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 5ae81e3300224..66fef12ef3db4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -139,6 +139,10 @@ enum intel_display_power_domain {
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
 	 (tran) + POWER_DOMAIN_TRANSCODER_A)
 
+struct intel_power_domain_mask {
+	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
+};
+
 struct i915_power_domains {
 	/*
 	 * Power wells needed for initialization at driver init and suspend
@@ -156,21 +160,21 @@ struct i915_power_domains {
 
 	struct delayed_work async_put_work;
 	intel_wakeref_t async_put_wakeref;
-	u64 async_put_domains[2];
+	struct intel_power_domain_mask async_put_domains[2];
 
 	struct i915_power_well *power_wells;
 };
 
 struct intel_display_power_domain_set {
-	u64 mask;
+	struct intel_power_domain_mask mask;
 #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
 	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
 #endif
 };
 
-#define for_each_power_domain(domain, mask)				\
-	for ((domain) = 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
-		for_each_if(BIT_ULL(domain) & (mask))
+#define for_each_power_domain(__domain, __mask)				\
+	for ((__domain) = 0; (__domain) < POWER_DOMAIN_NUM; (__domain)++)	\
+		for_each_if(test_bit((__domain), (__mask)->bits))
 
 int intel_power_domains_init(struct drm_i915_private *dev_priv);
 void intel_power_domains_cleanup(struct drm_i915_private *dev_priv);
@@ -251,13 +255,13 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 void
 intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 				    struct intel_display_power_domain_set *power_domain_set,
-				    u64 mask);
+				    struct intel_power_domain_mask *mask);
 
 static inline void
 intel_display_power_put_all_in_set(struct drm_i915_private *i915,
 				   struct intel_display_power_domain_set *power_domain_set)
 {
-	intel_display_power_put_mask_in_set(i915, power_domain_set, power_domain_set->mask);
+	intel_display_power_put_mask_in_set(i915, power_domain_set, &power_domain_set->mask);
 }
 
 void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index b7aa13d6a33f3..a9e0ebf18fca5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -2084,13 +2084,13 @@ static void init_power_well_domains(const struct i915_power_well_desc *desc,
 		return;
 
 	if (desc->domain_list->count == 0) {
-		power_well->domains = GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0);
+		bitmap_fill(power_well->domains.bits, POWER_DOMAIN_NUM);
 
 		return;
 	}
 
 	for (j = 0; j < desc->domain_list->count; j++)
-		power_well->domains |= BIT_ULL(desc->domain_list->list[j]);
+		set_bit(desc->domain_list->list[j], power_well->domains.bits);
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index b3d648dfeaea3..5d8145bcb90eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -153,9 +153,9 @@ const char *intel_power_well_name(struct i915_power_well *power_well)
 	return power_well->desc->name;
 }
 
-u64 intel_power_well_domains(struct i915_power_well *power_well)
+struct intel_power_domain_mask *intel_power_well_domains(struct i915_power_well *power_well)
 {
-	return power_well->domains;
+	return &power_well->domains;
 }
 
 int intel_power_well_refcount(struct i915_power_well *power_well)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index 0926b858d7155..bd60fb4166e74 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -8,6 +8,7 @@
 #include <linux/types.h>
 
 #include "intel_display.h"
+#include "intel_display_power.h"
 
 struct drm_i915_private;
 struct i915_power_well;
@@ -102,7 +103,7 @@ struct i915_power_well_desc {
 
 struct i915_power_well {
 	const struct i915_power_well_desc *desc;
-	u64 domains;
+	struct intel_power_domain_mask domains;
 	/* power well enable/disable usage count */
 	int count;
 	/* cached hw enabled state */
@@ -129,7 +130,7 @@ bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
 					 enum i915_power_well_id power_well_id);
 bool intel_power_well_is_always_on(struct i915_power_well *power_well);
 const char *intel_power_well_name(struct i915_power_well *power_well);
-u64 intel_power_well_domains(struct i915_power_well *power_well);
+struct intel_power_domain_mask *intel_power_well_domains(struct i915_power_well *power_well);
 int intel_power_well_refcount(struct i915_power_well *power_well);
 
 void chv_phy_powergate_lanes(struct intel_encoder *encoder,
-- 
2.30.2


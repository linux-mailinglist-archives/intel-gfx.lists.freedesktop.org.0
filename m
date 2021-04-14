Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F94235F2CB
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC2D6E928;
	Wed, 14 Apr 2021 11:50:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2536E91D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:59 +0000 (UTC)
IronPort-SDR: DBOk3oNyHU22QENYdwNnohm6DRc0OPHfdUVvlBLdys8pcZVAWsNaPXQxIcecFSkp6JyNg8LAom
 ClJtcOVVO7kw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732313"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732313"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:58 -0700
IronPort-SDR: 1lJedIjVv8o3ydDGvmXQSwN2361OO0HMNBRUqwB4mXti2oaOp2aHYbFPvU4NbL492twgRMiqSV
 kOfWodUK77rg==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965223"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:56 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:16 +0100
Message-Id: <20210414115028.168504-17-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 16/28] drm/i915: Use INTEL_GEN everywhere
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Coccinelle patch:

 @@
 identifier p;
 @@
 -INTEL_INFO(p)->gen
 +INTEL_GEN(p)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c         |  4 ++--
 drivers/gpu/drm/i915/i915_gem_gtt.c     |  2 +-
 drivers/gpu/drm/i915/i915_gem_stolen.c  |  2 +-
 drivers/gpu/drm/i915/intel_audio.c      |  2 +-
 drivers/gpu/drm/i915/intel_bios.c       |  2 +-
 drivers/gpu/drm/i915/intel_cdclk.c      |  2 +-
 drivers/gpu/drm/i915/intel_ddi.c        |  2 +-
 drivers/gpu/drm/i915/intel_display.c    | 12 ++++++------
 drivers/gpu/drm/i915/intel_dp.c         |  4 ++--
 drivers/gpu/drm/i915/intel_lvds.c       |  2 +-
 drivers/gpu/drm/i915/intel_mocs.c       |  2 +-
 drivers/gpu/drm/i915/intel_panel.c      |  2 +-
 drivers/gpu/drm/i915/intel_pm.c         |  8 ++++----
 drivers/gpu/drm/i915/intel_psr.c        |  4 ++--
 drivers/gpu/drm/i915/intel_ringbuffer.c |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c     |  6 +++---
 16 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 349f127330c8..fc68b35854df 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -5424,10 +5424,10 @@ i915_gem_load_init_fences(struct drm_i915_private *dev_priv)
 {
 	int i;
 
-	if (INTEL_INFO(dev_priv)->gen >= 7 && !IS_VALLEYVIEW(dev_priv) &&
+	if (INTEL_GEN(dev_priv) >= 7 && !IS_VALLEYVIEW(dev_priv) &&
 	    !IS_CHERRYVIEW(dev_priv))
 		dev_priv->num_fence_regs = 32;
-	else if (INTEL_INFO(dev_priv)->gen >= 4 ||
+	else if (INTEL_GEN(dev_priv) >= 4 ||
 		 IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
 		 IS_G33(dev_priv) || IS_PINEVIEW(dev_priv))
 		dev_priv->num_fence_regs = 16;
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index 955ce7bee448..0c0f1affddad 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -2109,7 +2109,7 @@ static int __hw_ppgtt_init(struct i915_hw_ppgtt *ppgtt,
 	ppgtt->base.i915 = dev_priv;
 	ppgtt->base.dma = &dev_priv->drm.pdev->dev;
 
-	if (INTEL_INFO(dev_priv)->gen < 8)
+	if (INTEL_GEN(dev_priv) < 8)
 		return gen6_ppgtt_init(ppgtt);
 	else
 		return gen8_ppgtt_init(ppgtt);
diff --git a/drivers/gpu/drm/i915/i915_gem_stolen.c b/drivers/gpu/drm/i915/i915_gem_stolen.c
index d3f222fa6356..f18da9e2be8e 100644
--- a/drivers/gpu/drm/i915/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/i915_gem_stolen.c
@@ -356,7 +356,7 @@ int i915_gem_init_stolen(struct drm_i915_private *dev_priv)
 	reserved_base = 0;
 	reserved_size = 0;
 
-	switch (INTEL_INFO(dev_priv)->gen) {
+	switch (INTEL_GEN(dev_priv)) {
 	case 2:
 	case 3:
 		break;
diff --git a/drivers/gpu/drm/i915/intel_audio.c b/drivers/gpu/drm/i915/intel_audio.c
index 522d54fecb53..ff455c724775 100644
--- a/drivers/gpu/drm/i915/intel_audio.c
+++ b/drivers/gpu/drm/i915/intel_audio.c
@@ -704,7 +704,7 @@ void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
 		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
-	} else if (IS_HASWELL(dev_priv) || INTEL_INFO(dev_priv)->gen >= 8) {
+	} else if (IS_HASWELL(dev_priv) || INTEL_GEN(dev_priv) >= 8) {
 		dev_priv->display.audio_codec_enable = hsw_audio_codec_enable;
 		dev_priv->display.audio_codec_disable = hsw_audio_codec_disable;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/intel_bios.c b/drivers/gpu/drm/i915/intel_bios.c
index 4e74aa2f16bc..aa4df6548771 100644
--- a/drivers/gpu/drm/i915/intel_bios.c
+++ b/drivers/gpu/drm/i915/intel_bios.c
@@ -391,7 +391,7 @@ parse_sdvo_panel_data(struct drm_i915_private *dev_priv,
 static int intel_bios_ssc_frequency(struct drm_i915_private *dev_priv,
 				    bool alternate)
 {
-	switch (INTEL_INFO(dev_priv)->gen) {
+	switch (INTEL_GEN(dev_priv)) {
 	case 2:
 		return alternate ? 66667 : 48000;
 	case 3:
diff --git a/drivers/gpu/drm/i915/intel_cdclk.c b/drivers/gpu/drm/i915/intel_cdclk.c
index ee788d5be5e3..aab6d1538fff 100644
--- a/drivers/gpu/drm/i915/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/intel_cdclk.c
@@ -2233,7 +2233,7 @@ static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
 		return max_cdclk_freq;
 	else if (IS_CHERRYVIEW(dev_priv))
 		return max_cdclk_freq*95/100;
-	else if (INTEL_INFO(dev_priv)->gen < 4)
+	else if (INTEL_GEN(dev_priv) < 4)
 		return 2*max_cdclk_freq*90/100;
 	else
 		return max_cdclk_freq*90/100;
diff --git a/drivers/gpu/drm/i915/intel_ddi.c b/drivers/gpu/drm/i915/intel_ddi.c
index cfcd9cb37d5d..8ca376aca8bd 100644
--- a/drivers/gpu/drm/i915/intel_ddi.c
+++ b/drivers/gpu/drm/i915/intel_ddi.c
@@ -2152,7 +2152,7 @@ static void intel_ddi_clk_select(struct intel_encoder *encoder,
 
 		I915_WRITE(DPLL_CTRL2, val);
 
-	} else if (INTEL_INFO(dev_priv)->gen < 9) {
+	} else if (INTEL_GEN(dev_priv) < 9) {
 		I915_WRITE(PORT_CLK_SEL(port), hsw_pll_to_ddi_pll_sel(pll));
 	}
 
diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index 60ba5bb3f34c..0d5207dbfdac 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -2029,12 +2029,12 @@ static unsigned int intel_cursor_alignment(const struct drm_i915_private *dev_pr
 
 static unsigned int intel_linear_alignment(const struct drm_i915_private *dev_priv)
 {
-	if (INTEL_INFO(dev_priv)->gen >= 9)
+	if (INTEL_GEN(dev_priv) >= 9)
 		return 256 * 1024;
 	else if (IS_I965G(dev_priv) || IS_I965GM(dev_priv) ||
 		 IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		return 128 * 1024;
-	else if (INTEL_INFO(dev_priv)->gen >= 4)
+	else if (INTEL_GEN(dev_priv) >= 4)
 		return 4 * 1024;
 	else
 		return 0;
@@ -6307,7 +6307,7 @@ static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 	const struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	/* GDG double wide on either pipe, otherwise pipe A only */
-	return INTEL_INFO(dev_priv)->gen < 4 &&
+	return INTEL_GEN(dev_priv) < 4 &&
 		(crtc->pipe == PIPE_A || IS_I915G(dev_priv));
 }
 
@@ -8194,7 +8194,7 @@ static void haswell_set_pipemisc(struct drm_crtc *crtc)
 	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 	struct intel_crtc_state *config = intel_crtc->config;
 
-	if (IS_BROADWELL(dev_priv) || INTEL_INFO(dev_priv)->gen >= 9) {
+	if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >= 9) {
 		u32 val = 0;
 
 		switch (intel_crtc->config->pipe_bpp) {
@@ -13947,7 +13947,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	 * gen2/3 display engine uses the fence if present,
 	 * so the tiling mode must match the fb modifier exactly.
 	 */
-	if (INTEL_INFO(dev_priv)->gen < 4 &&
+	if (INTEL_GEN(dev_priv) < 4 &&
 	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
 		DRM_DEBUG_KMS("tiling_mode must match fb modifier exactly on gen2/3\n");
 		goto err;
@@ -14162,7 +14162,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 {
 	intel_init_cdclk_hooks(dev_priv);
 
-	if (INTEL_INFO(dev_priv)->gen >= 9) {
+	if (INTEL_GEN(dev_priv) >= 9) {
 		dev_priv->display.get_pipe_config = haswell_get_pipe_config;
 		dev_priv->display.get_initial_plane_config =
 			skylake_get_initial_plane_config;
diff --git a/drivers/gpu/drm/i915/intel_dp.c b/drivers/gpu/drm/i915/intel_dp.c
index f10a14330e7c..abbe1e4e0af5 100644
--- a/drivers/gpu/drm/i915/intel_dp.c
+++ b/drivers/gpu/drm/i915/intel_dp.c
@@ -1467,7 +1467,7 @@ static i915_reg_t skl_aux_data_reg(struct drm_i915_private *dev_priv,
 static i915_reg_t intel_aux_ctl_reg(struct drm_i915_private *dev_priv,
 				    enum port port)
 {
-	if (INTEL_INFO(dev_priv)->gen >= 9)
+	if (INTEL_GEN(dev_priv) >= 9)
 		return skl_aux_ctl_reg(dev_priv, port);
 	else if (HAS_PCH_SPLIT(dev_priv))
 		return ilk_aux_ctl_reg(dev_priv, port);
@@ -1478,7 +1478,7 @@ static i915_reg_t intel_aux_ctl_reg(struct drm_i915_private *dev_priv,
 static i915_reg_t intel_aux_data_reg(struct drm_i915_private *dev_priv,
 				     enum port port, int index)
 {
-	if (INTEL_INFO(dev_priv)->gen >= 9)
+	if (INTEL_GEN(dev_priv) >= 9)
 		return skl_aux_data_reg(dev_priv, port, index);
 	else if (HAS_PCH_SPLIT(dev_priv))
 		return ilk_aux_data_reg(dev_priv, port, index);
diff --git a/drivers/gpu/drm/i915/intel_lvds.c b/drivers/gpu/drm/i915/intel_lvds.c
index ef80499113ee..4677ac0b10d7 100644
--- a/drivers/gpu/drm/i915/intel_lvds.c
+++ b/drivers/gpu/drm/i915/intel_lvds.c
@@ -189,7 +189,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i915_private *dev_priv,
 	/* Convert from 100ms to 100us units */
 	pps->t4 = val * 1000;
 
-	if (INTEL_INFO(dev_priv)->gen <= 4 &&
+	if (INTEL_GEN(dev_priv) <= 4 &&
 	    pps->t1_t2 == 0 && pps->t5 == 0 && pps->t3 == 0 && pps->tx == 0) {
 		DRM_DEBUG_KMS("Panel power timings uninitialized, "
 			      "setting defaults\n");
diff --git a/drivers/gpu/drm/i915/intel_mocs.c b/drivers/gpu/drm/i915/intel_mocs.c
index f4c46b0b8f0a..abb7a8c1e340 100644
--- a/drivers/gpu/drm/i915/intel_mocs.c
+++ b/drivers/gpu/drm/i915/intel_mocs.c
@@ -187,7 +187,7 @@ static bool get_mocs_settings(struct drm_i915_private *dev_priv,
 		table->table = broxton_mocs_table;
 		result = true;
 	} else {
-		WARN_ONCE(INTEL_INFO(dev_priv)->gen >= 9,
+		WARN_ONCE(INTEL_GEN(dev_priv) >= 9,
 			  "Platform that should have a MOCS table does not.\n");
 	}
 
diff --git a/drivers/gpu/drm/i915/intel_panel.c b/drivers/gpu/drm/i915/intel_panel.c
index e702a6487aa9..78a53c8b1789 100644
--- a/drivers/gpu/drm/i915/intel_panel.c
+++ b/drivers/gpu/drm/i915/intel_panel.c
@@ -497,7 +497,7 @@ static u32 i9xx_get_backlight(struct intel_connector *connector)
 	u32 val;
 
 	val = I915_READ(BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
-	if (INTEL_INFO(dev_priv)->gen < 4)
+	if (INTEL_GEN(dev_priv) < 4)
 		val >>= 1;
 
 	if (panel->backlight.combination_mode) {
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index b2f5e3b9ada8..6f98d144924e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6943,7 +6943,7 @@ static void gen6_update_ring_freq(struct drm_i915_private *dev_priv)
 			 * No floor required for ring frequency on SKL.
 			 */
 			ring_freq = gpu_freq;
-		} else if (INTEL_INFO(dev_priv)->gen >= 8) {
+		} else if (INTEL_GEN(dev_priv) >= 8) {
 			/* max(2 * GT, DDR). NB: GT is 50MHz units */
 			ring_freq = max(min_ring_freq, gpu_freq);
 		} else if (IS_HASWELL(dev_priv)) {
@@ -7554,7 +7554,7 @@ unsigned long i915_chipset_val(struct drm_i915_private *dev_priv)
 {
 	unsigned long val;
 
-	if (INTEL_INFO(dev_priv)->gen != 5)
+	if (INTEL_GEN(dev_priv) != 5)
 		return 0;
 
 	spin_lock_irq(&mchdev_lock);
@@ -7638,7 +7638,7 @@ static void __i915_update_gfx_val(struct drm_i915_private *dev_priv)
 
 void i915_update_gfx_val(struct drm_i915_private *dev_priv)
 {
-	if (INTEL_INFO(dev_priv)->gen != 5)
+	if (INTEL_GEN(dev_priv) != 5)
 		return;
 
 	spin_lock_irq(&mchdev_lock);
@@ -7689,7 +7689,7 @@ unsigned long i915_gfx_val(struct drm_i915_private *dev_priv)
 {
 	unsigned long val;
 
-	if (INTEL_INFO(dev_priv)->gen != 5)
+	if (INTEL_GEN(dev_priv) != 5)
 		return 0;
 
 	spin_lock_irq(&mchdev_lock);
diff --git a/drivers/gpu/drm/i915/intel_psr.c b/drivers/gpu/drm/i915/intel_psr.c
index e9feffdea899..2ef374f936b9 100644
--- a/drivers/gpu/drm/i915/intel_psr.c
+++ b/drivers/gpu/drm/i915/intel_psr.c
@@ -126,7 +126,7 @@ static void vlv_psr_enable_sink(struct intel_dp *intel_dp)
 static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
 				       enum port port)
 {
-	if (INTEL_INFO(dev_priv)->gen >= 9)
+	if (INTEL_GEN(dev_priv) >= 9)
 		return DP_AUX_CH_CTL(port);
 	else
 		return EDP_PSR_AUX_CTL;
@@ -135,7 +135,7 @@ static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
 static i915_reg_t psr_aux_data_reg(struct drm_i915_private *dev_priv,
 					enum port port, int index)
 {
-	if (INTEL_INFO(dev_priv)->gen >= 9)
+	if (INTEL_GEN(dev_priv) >= 9)
 		return DP_AUX_CH_DATA(port, index);
 	else
 		return EDP_PSR_AUX_DATA(index);
diff --git a/drivers/gpu/drm/i915/intel_ringbuffer.c b/drivers/gpu/drm/i915/intel_ringbuffer.c
index c8f95456e430..5718f37160c5 100644
--- a/drivers/gpu/drm/i915/intel_ringbuffer.c
+++ b/drivers/gpu/drm/i915/intel_ringbuffer.c
@@ -655,7 +655,7 @@ static int init_render_ring(struct intel_engine_cs *engine)
 	if (IS_GEN(dev_priv, 6, 7))
 		I915_WRITE(INSTPM, _MASKED_BIT_ENABLE(INSTPM_FORCE_ORDERING));
 
-	if (INTEL_INFO(dev_priv)->gen >= 6)
+	if (INTEL_GEN(dev_priv) >= 6)
 		I915_WRITE_IMR(engine, ~engine->irq_keep_mask);
 
 	return init_workarounds_ring(engine);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index e09981a3113c..5ae9a62712ca 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1883,9 +1883,9 @@ static reset_func intel_get_gpu_reset(struct drm_i915_private *dev_priv)
 	if (!i915_modparams.reset)
 		return NULL;
 
-	if (INTEL_INFO(dev_priv)->gen >= 8)
+	if (INTEL_GEN(dev_priv) >= 8)
 		return gen8_reset_engines;
-	else if (INTEL_INFO(dev_priv)->gen >= 6)
+	else if (INTEL_GEN(dev_priv) >= 6)
 		return gen6_reset_engines;
 	else if (IS_GEN5(dev_priv))
 		return ironlake_do_reset;
@@ -1893,7 +1893,7 @@ static reset_func intel_get_gpu_reset(struct drm_i915_private *dev_priv)
 		return g4x_do_reset;
 	else if (IS_G33(dev_priv) || IS_PINEVIEW(dev_priv))
 		return g33_do_reset;
-	else if (INTEL_INFO(dev_priv)->gen >= 3)
+	else if (INTEL_GEN(dev_priv) >= 3)
 		return i915_do_reset;
 	else
 		return NULL;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

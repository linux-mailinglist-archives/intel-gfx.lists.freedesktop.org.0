Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8417642E9E4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C450A6ECE7;
	Fri, 15 Oct 2021 07:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1036ECE7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291350775"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="291350775"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="627231250"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 15 Oct 2021 00:16:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:24 +0300
Message-Id: <20211015071625.593-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Move intel_ddi_fdi_post_disable()
 to fdi code
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

Reanme intel_ddi_fdi_post_disable() to hsw_fdi_disable() and
relocate it next to all the other code dealing with FDI_RX.
intel_ddi.c has now been cleansed of FDI_RX.

In order to avoid exposing intel_disable_ddi_buf() outside
intel_ddi.c we can just open code the DDI_BUF_CTL write. The
enable side already has all that stuff open coded so
this actually is more symmetric. But we do need to remeber
to bring the intel_wait_ddi_buf_idle() call over from
inside intel_disable_ddi_buf().

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c | 37 +-----------------------
 drivers/gpu/drm/i915/display/intel_ddi.h |  1 +
 drivers/gpu/drm/i915/display/intel_fdi.c | 37 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h |  1 +
 5 files changed, 41 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index fe807c8e793d..db27ae2a8406 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -264,7 +264,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 	lpt_disable_pch_transcoder(dev_priv);
 	lpt_disable_iclkip(dev_priv);
 
-	intel_ddi_fdi_post_disable(state, encoder, old_crtc_state, old_conn_state);
+	hsw_fdi_disable(encoder);
 
 	drm_WARN_ON(&dev_priv->drm, !old_crtc_state->has_pch_encoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8bbbeec01607..ab52eab346fe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1939,7 +1939,7 @@ void intel_ddi_enable_clock(struct intel_encoder *encoder,
 		encoder->enable_clock(encoder, crtc_state);
 }
 
-static void intel_ddi_disable_clock(struct intel_encoder *encoder)
+void intel_ddi_disable_clock(struct intel_encoder *encoder)
 {
 	if (encoder->disable_clock)
 		encoder->disable_clock(encoder);
@@ -2867,41 +2867,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 		intel_tc_port_put_link(dig_port);
 }
 
-void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
-				struct intel_encoder *encoder,
-				const struct intel_crtc_state *old_crtc_state,
-				const struct drm_connector_state *old_conn_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val;
-
-	/*
-	 * Bspec lists this as both step 13 (before DDI_BUF_CTL disable)
-	 * and step 18 (after clearing PORT_CLK_SEL). Based on a BUN,
-	 * step 13 is the correct place for it. Step 18 is where it was
-	 * originally before the BUN.
-	 */
-	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
-	val &= ~FDI_RX_ENABLE;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
-
-	intel_disable_ddi_buf(encoder, old_crtc_state);
-	intel_ddi_disable_clock(encoder);
-
-	val = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
-	val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
-	val |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
-	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), val);
-
-	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
-	val &= ~FDI_PCDCLK;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
-
-	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
-	val &= ~FDI_RX_PLL_ENABLE;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
-}
-
 static void trans_port_sync_stop_link_train(struct intel_atomic_state *state,
 					    struct intel_encoder *encoder,
 					    const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index d6971717ef9c..6f4551c9d5b7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -30,6 +30,7 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
 				const struct drm_connector_state *old_conn_state);
 void intel_ddi_enable_clock(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
+void intel_ddi_disable_clock(struct intel_encoder *encoder);
 void intel_ddi_get_clock(struct intel_encoder *encoder,
 			 struct intel_crtc_state *crtc_state,
 			 struct intel_shared_dpll *pll);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index d1c1600c66cb..2b5f80f3b4e0 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -886,6 +886,43 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		       DP_TP_CTL_ENABLE);
 }
 
+void hsw_fdi_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	u32 val;
+
+	/*
+	 * Bspec lists this as both step 13 (before DDI_BUF_CTL disable)
+	 * and step 18 (after clearing PORT_CLK_SEL). Based on a BUN,
+	 * step 13 is the correct place for it. Step 18 is where it was
+	 * originally before the BUN.
+	 */
+	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
+	val &= ~FDI_RX_ENABLE;
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
+
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+	val &= ~DDI_BUF_CTL_ENABLE;
+	intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), val);
+
+	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
+
+	intel_ddi_disable_clock(encoder);
+
+	val = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
+	val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
+	val |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
+	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), val);
+
+	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
+	val &= ~FDI_PCDCLK;
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
+
+	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
+	val &= ~FDI_RX_PLL_ENABLE;
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
+}
+
 void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 5a361730f80a..1cdb86172702 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -23,6 +23,7 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state);
 void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
 void hsw_fdi_link_train(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
+void hsw_fdi_disable(struct intel_encoder *encoder);
 void intel_fdi_pll_freq_update(struct drm_i915_private *i915);
 
 void intel_fdi_link_train(struct intel_crtc *crtc,
-- 
2.32.0


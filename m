Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A69E57B8450
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2CF10E38F;
	Wed,  4 Oct 2023 15:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB1210E38F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434994; x=1727970994;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Q3JGoADfpeDBDIUlbB9r2E1Di/eOPzcNRYZ70vypQQo=;
 b=RvlLg6Qqa2OgAmpN3tq2SgcrRuXRzkl61mmtQcl2qVnSpy872w8IHld0
 Vs4c1t66yIcbFQhJZMHNGedzCtmmtKwSTOBrAs0qHe+hM+uHn6HQ/nNiw
 y7EpIcKC/kGBxFaLLWimMr+97CPY7l+NibuX4zdPQp9H06HIHrqz30m/D
 IG+gMYa8RkoOfcsDWsIjikJvcTt+N1x09uiwh/aNzmsGH6XxeFXmz9lzF
 JZaN/w+ycPAIMRE5W0CMiwfgQ1LBbwokHYv+RyHg3FLOKqkKaBnp4k64M
 AOO9Zre4S+WCBkvqe4L5udncvMFcFDRymiMwIdRN2YoaRolfA3hcDqme/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483806"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483806"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441197"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441197"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:03 +0300
Message-ID: <20231004155607.7719-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: Simplify snps/c10x DPLL state
 checker calling convetion
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

Passing in the atomic state + crtc state is a bit weird. The latter
can be just the crtc (which is the normal calling convention used
in a lot of other places).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 5 +++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h        | 3 ++-
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_snps_phy.c       | 5 +++--
 drivers/gpu/drm/i915/display/intel_snps_phy.h       | 3 ++-
 5 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1aba265afe41..0ef28f4be36e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3005,12 +3005,13 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 }
 
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
-			       const struct intel_crtc_state *new_crtc_state)
+			       struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_c10pll_state mpllb_hw_state = { 0 };
 	const struct intel_c10pll_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10;
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_encoder *encoder;
 	enum phy phy;
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 43f2fdb662c5..0e0a38dac8cd 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -16,6 +16,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_c10pll_state;
 struct intel_c20pll_state;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_hdmi;
@@ -34,7 +35,7 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
 int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_c10pll_state *pll_state);
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
-			       const struct intel_crtc_state *new_crtc_state);
+			       struct intel_crtc *crtc);
 void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_c20pll_state *pll_state);
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index bbee79aad0cd..b876ec34b1a3 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -237,8 +237,8 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	verify_connector_state(state, crtc);
 	verify_crtc_state(state, crtc);
 	intel_shared_dpll_state_verify(state, crtc);
-	intel_mpllb_state_verify(state, new_crtc_state);
-	intel_c10pll_state_verify(state, new_crtc_state);
+	intel_mpllb_state_verify(state, crtc);
+	intel_c10pll_state_verify(state, crtc);
 }
 
 void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index bdceb6bd474c..c0285365efae 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1993,12 +1993,13 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
 }
 
 void intel_mpllb_state_verify(struct intel_atomic_state *state,
-			      const struct intel_crtc_state *new_crtc_state)
+			      struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_mpllb_state mpllb_hw_state = { 0 };
 	const struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->mpllb_state;
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_encoder *encoder;
 
 	if (!IS_DG2(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 9d1d0c6a9cfe..515abf7c5902 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -10,6 +10,7 @@
 
 struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_mpllb_state;
@@ -33,6 +34,6 @@ int intel_snps_phy_check_hdmi_link_rate(int clock);
 void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
 void intel_mpllb_state_verify(struct intel_atomic_state *state,
-			      const struct intel_crtc_state *new_crtc_state);
+			      struct intel_crtc *crtc);
 
 #endif /* __INTEL_SNPS_PHY_H__ */
-- 
2.41.0


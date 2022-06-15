Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D6054C8EC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 14:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C7AD10E5D1;
	Wed, 15 Jun 2022 12:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB33C10E5D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655297302; x=1686833302;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fae8UOVcI3+rtXc6FB3/DBtxtwx+ApSm22d0kjUYRV8=;
 b=ihpHANzR9+LRFOCj+FPiNVOjU/En5ULS54MBHaL6F0bGRRnsMos5JEjE
 3C8BMajTq9ZK017wsAJDz/T3SH5soLzzG924Uc61I3S4Lcnc5fmsn84o2
 wq35jn2p0ah+QPef5yDXBVtFeCDUNRJUSw6dPsJB7x0HlMMN4MWlOjAD7
 enf5RpMdjx6kUEGTA5cHXhG1tF1x28ASqVuU1u2ShxRgOzwJc8mccK7oB
 q5u3hff2anFpPQZsQL9tcQO1L/dQLF8qrWPPtaH2ROp2tmd1YN+KEDN4N
 GYgDy1R7RLkg1m50DIHPmqJdKE9/l7x7/X8RlaTuJ2G3z0QxvJ0mbBF43 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279985329"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="279985329"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="911639442"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 15:47:58 +0300
Message-Id: <8913d606928bc5f4dd171808f93f3201012802d7.1655297182.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655297182.git.jani.nikula@intel.com>
References: <cover.1655297182.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/mpllb: move mpllb state check to
 intel_snps_phy.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Keep the mpllb implementation details together in intel_snps_phy.c. Also
declutter intel_display.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 46 +------------------
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 43 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  5 +-
 3 files changed, 48 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 064fa2391e85..e0ed9425e0d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6582,50 +6582,6 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-static void
-verify_mpllb_state(struct intel_atomic_state *state,
-		   struct intel_crtc_state *new_crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_mpllb_state mpllb_hw_state = { 0 };
-	struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->mpllb_state;
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct intel_encoder *encoder;
-
-	if (!IS_DG2(i915))
-		return;
-
-	if (!new_crtc_state->hw.active)
-		return;
-
-	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
-	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
-
-#define MPLLB_CHECK(__name)						\
-	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
-			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
-			crtc->base.base.id, crtc->base.name,		\
-			__stringify(__name),				\
-			mpllb_sw_state->__name, mpllb_hw_state.__name)
-
-	MPLLB_CHECK(mpllb_cp);
-	MPLLB_CHECK(mpllb_div);
-	MPLLB_CHECK(mpllb_div2);
-	MPLLB_CHECK(mpllb_fracn1);
-	MPLLB_CHECK(mpllb_fracn2);
-	MPLLB_CHECK(mpllb_sscen);
-	MPLLB_CHECK(mpllb_sscstep);
-
-	/*
-	 * ref_control is handled by the hardware/firemware and never
-	 * programmed by the software, but the proper values are supplied
-	 * in the bspec for verification purposes.
-	 */
-	MPLLB_CHECK(ref_control);
-
-#undef MPLLB_CHECK
-}
-
 static void
 intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			  struct intel_atomic_state *state,
@@ -6639,7 +6595,7 @@ intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	verify_connector_state(state, crtc);
 	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
 	intel_shared_dpll_verify_state(crtc, old_crtc_state, new_crtc_state);
-	verify_mpllb_state(state, new_crtc_state);
+	intel_mpllb_verify_state(state, new_crtc_state);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index b48f42f1832a..ae8792bbef58 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -813,3 +813,46 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
 
 	return MODE_CLOCK_RANGE;
 }
+
+void intel_mpllb_verify_state(struct intel_atomic_state *state,
+			      struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_mpllb_state mpllb_hw_state = { 0 };
+	struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->mpllb_state;
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct intel_encoder *encoder;
+
+	if (!IS_DG2(i915))
+		return;
+
+	if (!new_crtc_state->hw.active)
+		return;
+
+	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
+
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)
+
+	MPLLB_CHECK(mpllb_cp);
+	MPLLB_CHECK(mpllb_div);
+	MPLLB_CHECK(mpllb_div2);
+	MPLLB_CHECK(mpllb_fracn1);
+	MPLLB_CHECK(mpllb_fracn2);
+	MPLLB_CHECK(mpllb_sscen);
+	MPLLB_CHECK(mpllb_sscstep);
+
+	/*
+	 * ref_control is handled by the hardware/firemware and never
+	 * programmed by the software, but the proper values are supplied
+	 * in the bspec for verification purposes.
+	 */
+	MPLLB_CHECK(ref_control);
+
+#undef MPLLB_CHECK
+}
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 11dcd6deb070..aeb1dd098040 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -9,8 +9,9 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
-struct intel_encoder;
+struct intel_atomic_state;
 struct intel_crtc_state;
+struct intel_encoder;
 struct intel_mpllb_state;
 enum phy;
 
@@ -31,5 +32,7 @@ int intel_mpllb_calc_port_clock(struct intel_encoder *encoder,
 int intel_snps_phy_check_hdmi_link_rate(int clock);
 void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
+void intel_mpllb_verify_state(struct intel_atomic_state *state,
+			      struct intel_crtc_state *new_crtc_state);
 
 #endif /* __INTEL_SNPS_PHY_H__ */
-- 
2.30.2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DCB54DE67
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B6A6113D4E;
	Thu, 16 Jun 2022 09:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513FB113DC4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372925; x=1686908925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fp4IK9juUlNB9CC63BHHBSB04sDJRFoeMTHUoFEktMM=;
 b=gXiyv7dajw0ODTTfKX0KoNuCgo7grkzcjEmxsv1mPT8jUEzIHWzyVQyg
 M/SWYXB2cZ93Q7ltJww+2WCfZC1l2vMkiP2ePxBgMv39pVb0KZb/M8xcX
 4of2MzH1FsrVhMZzW0Ay5jQdU+hKO7jaaGDMMfnGBNDhGibLzGiqwOSys
 dDQAnDnvxkI6Ar5Gy3kudBeQ+C4NgAxjIYfNfMriGgrEPqHCw6HxZUgKP
 MYUKVwp7+fk5AAVXF20OrCpjwYg/oL6uVuTdep9KHHNIFLA1WNsuGAq8N
 uP7TQZnljfmfO7rHmgvqvIIzcg1G/lceKPTbs2UgzGs9uwEvGSgfVPM7f g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="267900641"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="267900641"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:44 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="589573868"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:48:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:14 +0300
Message-Id: <e7340bb0e399aeb2676c4820461187eeb1d4db15.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915/mpllb: move mpllb state check
 to intel_snps_phy.c
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

v2: intel_mpllb_verify_state -> void intel_mpllb_state_verify (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 46 +------------------
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 43 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  5 +-
 3 files changed, 48 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 46aade2c19da..487c3ee4159b 100644
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
 	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
-	verify_mpllb_state(state, new_crtc_state);
+	intel_mpllb_state_verify(state, new_crtc_state);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index b48f42f1832a..0bdbedc67d7d 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -813,3 +813,46 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
 
 	return MODE_CLOCK_RANGE;
 }
+
+void intel_mpllb_state_verify(struct intel_atomic_state *state,
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
index 11dcd6deb070..557ef820bc0b 100644
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
+void intel_mpllb_state_verify(struct intel_atomic_state *state,
+			      struct intel_crtc_state *new_crtc_state);
 
 #endif /* __INTEL_SNPS_PHY_H__ */
-- 
2.30.2


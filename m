Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2205B5922
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A742F10E3A8;
	Mon, 12 Sep 2022 11:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2A110E39B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981509; x=1694517509;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VgrHLqkg9tPpVlt22nIY4nKlabJeC99jWw4Wi4AH+xU=;
 b=Bk3jmNTJzPMUVq8jbR5caG67VFkQRdhHseYpALs1mHqHGIDmNGb2xdD9
 pZhxaR0lFbhHJHIJ/PCkZt0otgbPYGfY+lIoq233Ilj6lcydS4AiFUkXR
 dz60dWM3VGKssfsN4YU4HRsPV6MG3BUtSWp3/AyY+//PjH5u/CKmJmQHl
 tBMaVoQ4VzelLnv9uDw2X+ogmxPl31Fle/fX/mt14OGP2Sqd274lTMMq2
 k/7SF5TvMlu0c2yukjjWmOZJg14CQPpSVjbX/SAils1YBC00SLvYO5bwx
 rjPS1hL+1ensXJOOTKVsAkYVo/JiWORjjfRFdgSqJeSE6mlAz0eo95l5A A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="324072010"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324072010"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="593452363"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 12 Sep 2022 04:18:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:03 +0300
Message-Id: <20220912111814.17466-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915: Use BIT() when dealing with
 output types
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

Most places that deal with output types already use BIT()
but a few places still use manual shifts. Convert the
stragglers over to BIT().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_crt.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c       | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 9 +++++----
 drivers/gpu/drm/i915/display/intel_dvo.c           | 4 ++--
 5 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5fbd2ae95869..5606c667e422 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -585,7 +585,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	} else {
 		intel_encoder->pipe_mask = ~0;
 	}
-	intel_encoder->cloneable = 1 << INTEL_OUTPUT_ANALOG;
+	intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG);
 	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
 	/*
 	 * BSpec is unclear about HDMI+HDMI cloning on g4x, but it seems
@@ -593,7 +593,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	 * only one port anyway, nothing is lost by allowing it.
 	 */
 	if (IS_G4X(dev_priv))
-		intel_encoder->cloneable |= 1 << INTEL_OUTPUT_HDMI;
+		intel_encoder->cloneable |= BIT(INTEL_OUTPUT_HDMI);
 
 	dig_port->hdmi.hdmi_reg = hdmi_reg;
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 4a8ff2f97608..eba58345619a 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1044,7 +1044,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	intel_connector_attach_encoder(intel_connector, &crt->base);
 
 	crt->base.type = INTEL_OUTPUT_ANALOG;
-	crt->base.cloneable = (1 << INTEL_OUTPUT_DVO) | (1 << INTEL_OUTPUT_HDMI);
+	crt->base.cloneable = BIT(INTEL_OUTPUT_DVO) | BIT(INTEL_OUTPUT_HDMI);
 	if (IS_I830(dev_priv))
 		crt->base.pipe_mask = BIT(PIPE_A);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2d0018ae34b1..53b7ee6e8a0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4565,8 +4565,8 @@ static bool encoders_cloneable(const struct intel_encoder *a,
 			       const struct intel_encoder *b)
 {
 	/* masks could be asymmetric, so check both ways */
-	return a == b || (a->cloneable & (1 << b->type) &&
-			  b->cloneable & (1 << a->type));
+	return a == b || (a->cloneable & BIT(b->type) &&
+			  b->cloneable & BIT(a->type));
 }
 
 static bool check_single_encoder_cloning(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3b7945aad22a..11f083cf1124 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2040,15 +2040,16 @@ static inline bool
 intel_crtc_has_type(const struct intel_crtc_state *crtc_state,
 		    enum intel_output_type type)
 {
-	return crtc_state->output_types & (1 << type);
+	return crtc_state->output_types & BIT(type);
 }
+
 static inline bool
 intel_crtc_has_dp_encoder(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->output_types &
-		((1 << INTEL_OUTPUT_DP) |
-		 (1 << INTEL_OUTPUT_DP_MST) |
-		 (1 << INTEL_OUTPUT_EDP));
+		(BIT(INTEL_OUTPUT_DP) |
+		 BIT(INTEL_OUTPUT_DP_MST) |
+		 BIT(INTEL_OUTPUT_EDP));
 }
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 5572e43026e4..167c9b7318f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -491,8 +491,8 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		intel_encoder->pipe_mask = ~0;
 
 		if (dvo->type != INTEL_DVO_CHIP_LVDS)
-			intel_encoder->cloneable = (1 << INTEL_OUTPUT_ANALOG) |
-				(1 << INTEL_OUTPUT_DVO);
+			intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
+				BIT(INTEL_OUTPUT_DVO);
 
 		switch (dvo->type) {
 		case INTEL_DVO_CHIP_TMDS:
-- 
2.35.1


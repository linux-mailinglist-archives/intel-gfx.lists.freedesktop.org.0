Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDF03D20ED
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 11:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5A76EEB4;
	Thu, 22 Jul 2021 09:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BE16EEB3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 09:30:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="233418059"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="233418059"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 02:30:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="565021526"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2021 02:30:07 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 17:37:11 +0800
Message-Id: <20210722093711.32338-6-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210722093711.32338-1-shawn.c.lee@intel.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
 <20210722093711.32338-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915: Get proper min cdclk if vDSC
 enabled
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VDSC engine can process only 1 pixel per Cd clock. In case
VDSC is used and max slice count == 1, max supported pixel
clock should be 100% of CD clock. Then do min_cdclk and
pixel clock comparison to get proper min cdclk.

v2:
- Check for dsc enable and slice count ==1 then allow to
  double confirm min cdclk value.
- Add more checking in dsi_dsc_compute_config() to avoid
  crtc_clock exceeds dev_priv->max_cdclk_freq.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c     | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 60413bbf565f..c51ba3b9051e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1592,6 +1592,8 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
 	int dsc_max_bpc = DISPLAY_VER(dev_priv) >= 12 ? 12 : 10;
 	bool use_dsc;
 	int ret;
@@ -1612,6 +1614,22 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
+	/*
+	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
+	 * is greater than the maximum Cdclock and if slice count is even
+	 * then we need to use 2 VDSC instances.
+	 */
+	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
+	    crtc_state->bigjoiner) {
+		if (crtc_state->dsc.slice_count < 2) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Cannot split stream to use 2 VDSC instances\n");
+			return -EINVAL;
+		}
+
+		crtc_state->dsc.dsc_split = true;
+	}
+
 	ret = intel_dsc_compute_params(encoder, crtc_state);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 71067a62264d..3e09f6370d27 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2159,6 +2159,16 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	/* Account for additional needs from the planes */
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
+	/*
+	 * VDSC engine can process only 1 pixel per Cd clock.
+	 * In case VDSC is used and max slice count == 1,
+	 * max supported pixel clock should be 100% of CD clock.
+	 * Then do min_cdclk and pixel clock comparison to get cdclk.
+	 */
+	if (crtc_state->dsc.compression_enable &&
+	    crtc_state->dsc.slice_count == 1)
+		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
+
 	/*
 	 * HACK. Currently for TGL platforms we calculate
 	 * min_cdclk initially based on pixel_rate divided
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B5F302747
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69766E243;
	Mon, 25 Jan 2021 15:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4456E243
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:53:26 +0000 (UTC)
IronPort-SDR: FW2GlY7iBGtG+z88xzn00/VFpN0OA0PdCyeqMgnLx61jv109/Axdo02YBOz2Qp7gmddjc5Ib6x
 Xp1E0cX/lEIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="178970163"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="178970163"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:25 -0800
IronPort-SDR: xGdtsKl2lYH/maZaJr6yi1rgSz2kSikF2P4HrMHvMr94eJ8fXOwdnJH+5VqaL/QGlURBmJ0fqM
 sadSLxdgIq/g==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="572558174"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:33 +0200
Message-Id: <0c86adc7dde88001315993f10c1d9a90458b9a90.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/edp: enable eDP MSO during link
 training
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the source and sink support MSO, enable it during link training.

FIXME: We need to parse DisplayID 2.0 for pixel overlap. Assume 0
overlap for now.

v2: Limit MSO to pipe A using ->pipe_mask

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 37 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c  | 13 +++++++--
 2 files changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4c441139bdb0..0a163c9ccf83 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3633,6 +3633,34 @@ static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
 	pipe_config->mso.pixel_overlap = REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1);
 }
 
+static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 dss1 = 0;
+
+	if (!HAS_MSO(i915))
+		return;
+
+	if (crtc_state->mso.enable) {
+		/* Splitter enable is supported for pipe A only. */
+		if (drm_WARN_ON(&i915->drm, pipe != PIPE_A))
+			return;
+
+		dss1 |= SPLITTER_ENABLE;
+		dss1 |= OVERLAP_PIXELS(crtc_state->mso.pixel_overlap);
+		if (crtc_state->mso.link_count == 2)
+			dss1 |= SPLITTER_CONFIGURATION_2_SEGMENT;
+		else
+			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
+	}
+
+	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
+		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
+		     OVERLAP_PIXELS_MASK, dss1);
+}
+
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
@@ -3733,6 +3761,11 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 					       lane_reversal);
 	}
 
+	/*
+	 * 7.g Program CoG/MSO configuration bits in DSS_CTL1 if selected.
+	 */
+	intel_ddi_mso_configure(crtc_state);
+
 	/*
 	 * 7.g Configure and enable DDI_BUF_CTL
 	 * 7.h Wait for DDI_BUF_CTL DDI Idle Status = 0b (Not Idle), timeout
@@ -5614,6 +5647,10 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			goto err;
 
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
+
+		/* Splitter enable for eDP MSO is supported for pipe A only. */
+		if (dig_port->dp.mso_link_count)
+			encoder->pipe_mask = BIT(PIPE_A);
 	}
 
 	/* In theory we don't need the encoder->type check, but leave it just in
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 397c7f21b8f3..20e60399ce2a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1759,6 +1759,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
+	if (intel_dp->mso_link_count) {
+		pipe_config->mso.enable = true;
+		pipe_config->mso.link_count = intel_dp->mso_link_count;
+		/* FIXME: Read this from DisplayID 2.0 */
+		pipe_config->mso.pixel_overlap = 0;
+	}
+
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
@@ -3561,8 +3568,10 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 	if (mso) {
 		drm_dbg_kms(&i915->drm, "Sink MSO %ux%u configuration\n",
 			    mso, drm_dp_max_lane_count(intel_dp->dpcd) / mso);
-		drm_err(&i915->drm, "No source MSO support, disabling\n");
-		mso = 0;
+		if (!HAS_MSO(i915)) {
+			drm_err(&i915->drm, "No source MSO support, disabling\n");
+			mso = 0;
+		}
 	}
 
 	intel_dp->mso_link_count = mso;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

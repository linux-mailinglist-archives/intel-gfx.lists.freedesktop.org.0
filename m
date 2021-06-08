Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533863A0CAA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 08:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F3516E04A;
	Wed,  9 Jun 2021 06:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6694B6E039
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 06:45:46 +0000 (UTC)
IronPort-SDR: Hr6oG5miXd69KSyookLqmZbchEByWIZEAjTJWU4EQ9G/JebK5b725c8Op5KqQKUSvRH1NpsVw/
 7/ChL/r1HFBw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203161299"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="203161299"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:45:46 -0700
IronPort-SDR: 2gDnACKdCCwgwv2NWb8pnD685LffME+WhjAelrk3asJDvF+NVPBv13VwezRD/nov2LYb1PwUJq
 1pDCpjGic2JA==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="448183699"
Received: from nischal-desktop.iind.intel.com ([10.223.74.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:45:44 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed,  9 Jun 2021 05:23:30 +0530
Message-Id: <20210608235330.21057-2-nischal.varide@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608235330.21057-1-nischal.varide@intel.com>
References: <20210602061739.29134-2-nischal.varide@intel.com>
 <20210608235330.21057-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/1] drm/i915/xelpd: Enabling dithering after
 the CC1
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

If the panel is 12bpc then Dithering is not enabled in the Legacy
dithering block , instead its Enabled after the C1 CC1 pipe post
color space conversion.For a 6bpc pannel Dithering is enabled in
Legacy block.

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index dab892d2251b..e11b3dbf0b95 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1574,6 +1574,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 {
 	u32 gamma_mode = 0;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (crtc_state->hw.degamma_lut)
 		gamma_mode |= PRE_CSC_GAMMA_ENABLE;
@@ -1588,6 +1589,12 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 	else
 		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
 
+	if (DISPLAY_VER(i915) >= 13) {
+		if (!crtc_state->dither_force_disable &&
+				(crtc_state->pipe_bpp == 36))
+			gamma_mode |= POST_CC1_GAMMA_ENABLE;
+	}
+
 	return gamma_mode;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index caf0414e0b50..5345779cfce2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5762,7 +5762,16 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	if (crtc_state->dither)
+	/*
+	 * If 12bpc panel then, Enables dithering after the CC1 pipe
+	 * post color space conversion and not here for display_ver
+	 * greater than or equal to thirteen.
+	 */
+
+	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))
+		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
+
+	if (crtc_state->dither && (crtc_state->pipe_bpp == 36) && (DISPLAY_VER(dev_priv) < 13))
 		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
 
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 24307c49085f..fa800a77ea49 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7743,6 +7743,7 @@ enum {
 #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
 #define  PRE_CSC_GAMMA_ENABLE	(1 << 31)
 #define  POST_CSC_GAMMA_ENABLE	(1 << 30)
+#define  POST_CC1_GAMMA_ENABLE  (1 << 26)
 #define  GAMMA_MODE_MODE_MASK	(3 << 0)
 #define  GAMMA_MODE_MODE_8BIT	(0 << 0)
 #define  GAMMA_MODE_MODE_10BIT	(1 << 0)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 927933A3F6B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 11:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622676EE62;
	Fri, 11 Jun 2021 09:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BA76EE62
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 09:47:02 +0000 (UTC)
IronPort-SDR: 7AYl9yCEYX87SjeH7hxcz5pvyQhrwE79YXz6Nfl0oEwPUVKaaDmwAlcI+JweD+Dt0s1ylI42Gr
 I6ZiRUQIrmfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="269344073"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="269344073"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 02:47:01 -0700
IronPort-SDR: LGgqT7rUlXkVjf+aek7YV/UH92BVFfqIUYKkI350i/fQ0U9CofM5Fc3WEoE/ZrTMgiOhQXTXvD
 V1CNmVpuaJzg==
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="477652038"
Received: from nischal-desktop.iind.intel.com ([10.223.74.174])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 02:46:59 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org, nischal.varide@intel.com,
 uma.shankar@intel.com, anshuman.gupta@intel.com, jani.nikula@intel.com
Date: Fri, 11 Jun 2021 08:24:47 +0530
Message-Id: <20210611025447.17234-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/xelpd: Enabling dithering after the CC1
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
index dab892d2251b..c7af583200c4 100644
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
+			gamma_mode |= POST_CC1_DITHER_ENABLE;
+	}
+
 	return gamma_mode;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 362bff9beb5c..3a7feb246745 100644
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
index e915ec034c98..33dba13fa94d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7743,6 +7743,7 @@ enum {
 #define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
 #define  PRE_CSC_GAMMA_ENABLE	(1 << 31)
 #define  POST_CSC_GAMMA_ENABLE	(1 << 30)
+#define  POST_CC1_DITHER_ENABLE (1 << 26)
 #define  GAMMA_MODE_MODE_MASK	(3 << 0)
 #define  GAMMA_MODE_MODE_8BIT	(0 << 0)
 #define  GAMMA_MODE_MODE_10BIT	(1 << 0)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

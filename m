Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0BE307EA7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCB66E9E7;
	Thu, 28 Jan 2021 19:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA04C6E9E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
IronPort-SDR: U3m6hnOMhcP2A9HX/PmCpYVSWfihmwvxUmRadYVFjnTglDG9gVuJRJQAjToBaaMB1oK9za/zCR
 aXBDGtH1Yp2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384044"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384044"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:38 -0800
IronPort-SDR: T7MhoRNTmyvGCUk7l92xl+FTfdJLqpbJueHeAdIzYNWPJIlKgd+EidzOPjGU+lSePKAAuPzhHm
 abz1EstOg1Bg==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110199"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:24:13 -0800
Message-Id: <20210128192413.1715802-19-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/18] drm/i915/display13: Enabling dithering
 after the CC1 pipe
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
Cc: Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nischal Varide <nischal.varide@intel.com>

If the panel is 12bpc then Dithering is not enabled in the Legacy
dithering block , instead its Enabled after the C1 CC1 pipe post
color space conversion.For a 6bpc pannel Dithering is enabled in
Legacy block.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  9 ++++++++-
 drivers/gpu/drm/i915/i915_reg.h              |  3 ++-
 3 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ff7dcb7088bf..9a0572bbc5db 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1604,6 +1604,20 @@ static u32 icl_csc_mode(const struct intel_crtc_state *crtc_state)
 	return csc_mode;
 }
 
+static u32 dither_after_cc1_12bpc(const struct intel_crtc_state *crtc_state)
+{
+	u32 gamma_mode = crtc_state->gamma_mode;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (HAS_DISPLAY13(i915)) {
+		if (!crtc_state->dither_force_disable &&
+		    (crtc_state->pipe_bpp == 36))
+			gamma_mode |= GAMMA_MODE_DITHER_AFTER_CC1;
+	}
+
+	return gamma_mode;
+}
+
 static int icl_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
@@ -1614,6 +1628,8 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->gamma_mode = icl_gamma_mode(crtc_state);
 
+	crtc_state->gamma_mode = dither_after_cc1_12bpc(crtc_state);
+
 	crtc_state->csc_mode = icl_csc_mode(crtc_state);
 
 	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4dc4b1be0809..e3dbcd956fc6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8098,9 +8098,15 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	if (crtc_state->dither)
+	/*
+	 * If 12bpc panel then, Enables dithering after the CC1 pipe
+	 * post color space conversion and not here
+	 */
+
+	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))
 		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
 
+
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 	    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444)
 		val |= PIPEMISC_OUTPUT_COLORSPACE_YUV;
@@ -10760,6 +10766,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	 */
 	pipe_config->dither = (pipe_config->pipe_bpp == 6*3) &&
 		!pipe_config->dither_force_disable;
+
 	drm_dbg_kms(&i915->drm,
 		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
 		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 128b835c0adb..27f25214a839 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6132,7 +6132,7 @@ enum {
 #define   PIPEMISC_DITHER_8_BPC		(0 << 5)
 #define   PIPEMISC_DITHER_10_BPC	(1 << 5)
 #define   PIPEMISC_DITHER_6_BPC		(2 << 5)
-#define   PIPEMISC_DITHER_12_BPC	(3 << 5)
+#define   PIPEMISC_DITHER_12_BPC	(4 << 5)
 #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
 #define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
 #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
@@ -7668,6 +7668,7 @@ enum {
 #define  GAMMA_MODE_MODE_12BIT	(2 << 0)
 #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
 #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
+#define  GAMMA_MODE_DITHER_AFTER_CC1 (1 << 26)
 
 /* DMC/CSR */
 #define CSR_PROGRAM(i)		_MMIO(0x80000 + (i) * 4)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

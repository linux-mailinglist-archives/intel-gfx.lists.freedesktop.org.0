Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2552F97D4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 03:23:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE5789A88;
	Mon, 18 Jan 2021 02:23:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27AA289A88
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 02:23:03 +0000 (UTC)
IronPort-SDR: KQXKQ8X/rDQmEkT3wIpdIFmX7q5rj2ZTIZqwPMS+RhGzHaabtXqj3C2TnpczhbyOrJHUNEID4b
 4qQP94oH6JMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240291042"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="240291042"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 18:23:01 -0800
IronPort-SDR: c5Zpdub4JPcX/WLSTbpg1ugxzSOzi9pBLwS2jmR+3bhh9/zhzzqcJtrkH6ThSpOrSgiLeQyBzx
 Vs/UG/PjSA+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="355026896"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.22])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jan 2021 18:22:59 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 10:27:53 +0800
Message-Id: <20210118022753.8798-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210114092236.20477-1-shawn.c.lee@intel.com>
References: <20210114092236.20477-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v3] drm/i915: support two CSC module on gen11
 and later
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are two CSC on pipeline on gen11 and later platform.
User space application is allowed to enable CTM and RGB
to YCbCr coversion at the same time now.

v2: check csc capability in {}_color_check function.
v3: can't support two CSC at the same time in {ivb,glk}_color_check.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Shankar Uma <uma.shankar@intel.com>

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 13 -------------
 2 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 172d398081ee..ff7dcb7088bf 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1485,6 +1485,7 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
 
 static int ivb_color_check(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 	int ret;
 
@@ -1492,6 +1493,13 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
+	    crtc_state->hw.ctm) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "YCBCR and CTM together are not possible\n");
+		return -EINVAL;
+	}
+
 	crtc_state->gamma_enable =
 		(crtc_state->hw.gamma_lut ||
 		 crtc_state->hw.degamma_lut) &&
@@ -1525,12 +1533,20 @@ static u32 glk_gamma_mode(const struct intel_crtc_state *crtc_state)
 
 static int glk_color_check(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int ret;
 
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
 
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
+	    crtc_state->hw.ctm) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "YCBCR and CTM together are not possible\n");
+		return -EINVAL;
+	}
+
 	crtc_state->gamma_enable =
 		crtc_state->hw.gamma_lut &&
 		!crtc_state->c8_planes;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b728792e0c27..b614987eddf1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6355,19 +6355,6 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		return -EINVAL;
 	}
 
-	if ((pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-	     pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) &&
-	     pipe_config->hw.ctm) {
-		/*
-		 * There is only one pipe CSC unit per pipe, and we need that
-		 * for output conversion from RGB->YCBCR. So if CTM is already
-		 * applied we can't support YCBCR420 output.
-		 */
-		drm_dbg_kms(&dev_priv->drm,
-			    "YCBCR420 and CTM together are not possible\n");
-		return -EINVAL;
-	}
-
 	/*
 	 * Pipe horizontal size must be even in:
 	 * - DVO ganged mode
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

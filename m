Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F34B2F7253
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 06:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D9AC6E153;
	Fri, 15 Jan 2021 05:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E286E153
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 05:41:29 +0000 (UTC)
IronPort-SDR: 3DHyXfEYeBj1M38U9uewf2j2iHgW7Y0CW9/utd58AQIGltlqNeyVPdN4bcsfj/PIVTnm7j9Ufe
 7N5SF83OMBqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="178651573"
X-IronPort-AV: E=Sophos;i="5.79,348,1602572400"; d="scan'208";a="178651573"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 21:41:28 -0800
IronPort-SDR: UI4Dskw6Yus8G1cuTwCBX4q0QL2+SYTLGbni+XcPtmDQTJHuM4iSu9sKvgFMpuzb6kgsgcz+SI
 q5PjWlvV9Xgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,348,1602572400"; d="scan'208";a="352717445"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.22])
 by orsmga006.jf.intel.com with ESMTP; 14 Jan 2021 21:41:27 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 13:46:04 +0800
Message-Id: <20210115054604.27726-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210114092236.20477-1-shawn.c.lee@intel.com>
References: <20210114092236.20477-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v2] drm/i915: support two CSC module on gen11
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

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Shankar Uma <uma.shankar@intel.com>

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 45 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 13 ------
 2 files changed, 45 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 172d398081ee..22edcd0c9ad5 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1322,10 +1322,35 @@ static u32 i9xx_gamma_mode(struct intel_crtc_state *crtc_state)
 		return GAMMA_MODE_MODE_10BIT; /* i965+ only */
 }
 
+static int check_csc(const struct intel_crtc_state *pipe_config)
+{
+	struct drm_i915_private *dev_priv = to_i915(pipe_config->uapi.crtc->dev);
+
+	if ((INTEL_GEN(dev_priv) < 11) &&
+	    (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+	     pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) &&
+	     pipe_config->hw.ctm) {
+		/*
+		 * There is only one pipe CSC unit per pipe, and we need that
+		 * for output conversion from RGB->YCBCR. So if CTM is already
+		 * applied we can't support YCBCR420 output.
+		 */
+		drm_dbg_kms(&dev_priv->drm,
+			    "YCBCR420 and CTM together are not possible\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int i9xx_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
 
+	ret = check_csc(crtc_state);
+	if (ret)
+		return ret;
+
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
@@ -1374,6 +1399,10 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
 
+	ret = check_csc(crtc_state);
+	if (ret)
+		return ret;
+
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
@@ -1427,6 +1456,10 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
 
+	ret = check_csc(crtc_state);
+	if (ret)
+		return ret;
+
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
@@ -1488,6 +1521,10 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 	int ret;
 
+	ret = check_csc(crtc_state);
+	if (ret)
+		return ret;
+
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
@@ -1527,6 +1564,10 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
 
+	ret = check_csc(crtc_state);
+	if (ret)
+		return ret;
+
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
@@ -1592,6 +1633,10 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 {
 	int ret;
 
+	ret = check_csc(crtc_state);
+	if (ret)
+		return ret;
+
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 66990e48c0d4..e60cbe8b0203 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7835,19 +7835,6 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
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

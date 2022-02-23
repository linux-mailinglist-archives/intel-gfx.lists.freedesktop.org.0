Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938624C13BE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C7210F3B5;
	Wed, 23 Feb 2022 13:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC3810F3AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622030; x=1677158030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gWgceQF1fuwOgn8SZj8s1J8FU7vkIsNSSHlectrT4Ks=;
 b=YV9g+UGCt0CyB7BIFu7sy+gYZamHFEck+HWWT4jkG/jwhVUN8FRdlcOF
 3lrbcAfqCE73oZdPdwN2h9Zxn1aBGSZK+WjcJwp0DaQ6XECVuqN9BuNjg
 hNP4WQNy8xukmhOYR5GDmqwfIW0OFONmajhds9sSCY5onGZYIjwo4pWA0
 2Jq+/WLsezS6mCf0g6PATBbC5HPL6IziJKicZNPIUEIT/DvG6U4zc1vR/
 U3FhIe+0sU71hPR8o3HxYLSbNFdi5BBgbSZ2vRfxJ8SUfyTdZ1tsQYLUz
 MSqPgoY3QUFbmyme/sSh61PYszarx+rAzo5dBgbDg3ABq1Kpts9jO+AFc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="251694113"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="251694113"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="637417403"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 23 Feb 2022 05:13:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:10 +0200
Message-Id: <20220223131315.18016-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/13] drm/i915: Extract
 intel_crtc_compute_pipe_mode()
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

Pull intel_crtc_compute_pipe_mode() out from
intel_crtc_compute_config(). Since it's semi related
we'll suck in the max dotclock/double wide checks in
as well.

And we'll pimp the debugs while at it.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++++++------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 111c2458dac2..84829f31d73b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2836,17 +2836,12 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int intel_crtc_compute_config(struct intel_crtc *crtc,
-				     struct intel_crtc_state *crtc_state)
+static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 	int clock_limit = i915->max_dotclk_freq;
-	int ret;
-
-	ret = intel_crtc_compute_pipe_src(crtc_state);
-	if (ret)
-		return ret;
 
 	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
 
@@ -2872,12 +2867,29 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
 	if (pipe_mode->crtc_clock > clock_limit) {
 		drm_dbg_kms(&i915->drm,
-			    "requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
+			    "[CRTC:%d:%s] requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
+			    crtc->base.base.id, crtc->base.name,
 			    pipe_mode->crtc_clock, clock_limit,
 			    yesno(crtc_state->double_wide));
 		return -EINVAL;
 	}
 
+	return 0;
+}
+
+static int intel_crtc_compute_config(struct intel_crtc *crtc,
+				     struct intel_crtc_state *crtc_state)
+{
+	int ret;
+
+	ret = intel_crtc_compute_pipe_src(crtc_state);
+	if (ret)
+		return ret;
+
+	ret = intel_crtc_compute_pipe_mode(crtc_state);
+	if (ret)
+		return ret;
+
 	intel_crtc_compute_pixel_rate(crtc_state);
 
 	if (crtc_state->has_pch_encoder)
-- 
2.34.1


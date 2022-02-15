Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C644B745D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A362D10E52A;
	Tue, 15 Feb 2022 18:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BDD10E527
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949952; x=1676485952;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6wQhBX3pXv0pqo+l89Vy/MqmIZ/AlMAGpvedXEMzOaM=;
 b=hPgl3leRurWt/zX4MRP5AJMOJ3V7mSN2jUdLDV+b/YhJ+5VSu6K25FTs
 tV9lwxCfhxPXLLdg/cphcrCDBomEEfXvdthuzA0BV8ybRSUuNv2p/N5PJ
 wGzWEOfowaUG31eXUNZ2AwpokFqFQAd4eLWYv+zek/WIdsDqVchUk8JtH
 mlQhib0Yks0BBEEbdnlAWh6S4HfrOjzAKfmgNybIwkD2F8TT7EkgdA6ye
 bnk68Fp+vwHmBuqbkm4ymwjgNbO6SRbvdiulntMrKQvEdp5iCi6DWPGkt
 9cL7sKrO1KskC4kPFEgc2IRFFzroBR5X+i5dGFJWBF3PrVDsjlYr4xvkE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="275001587"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="275001587"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="570954826"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2022 10:32:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:32:03 +0200
Message-Id: <20220215183208.6143-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Extract
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++++++------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d3fddd3f452..6ff58164929c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2832,17 +2832,12 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
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
 
@@ -2868,12 +2863,29 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
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


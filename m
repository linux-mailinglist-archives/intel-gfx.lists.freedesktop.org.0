Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD6154D056
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 19:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C87112803;
	Wed, 15 Jun 2022 17:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE96112803
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 17:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655315334; x=1686851334;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XaKJGtG5lmCOyuU6I8Ut1ECg2PZcPEix1vk5fOSVLYs=;
 b=RFzWM88SW/7Q5rygeJmIdUO2ZBZjZtBsJoc2ZI8NqQdVPSjEdRSLuyW/
 DD353t+090zl2pCjX27cWiF9/2Sp8x+fRpsbinQsze1eUgnzknm2nn2Aq
 JGiUaKweFhrdfmEUq4rVAaBCpMZepoVA7unJkdYlXV1Q1Pcv9UdbKedtv
 v6EM4xW8Tnv4uLrzgsUkebJrdktQX50BvYIbGdaaliUMK4QesXJOxlxcU
 y3ptg+QUJA41+JLWu8Niz1nvoAOxALEmFJ7JwWazP1dRIbZyOXSuTLOzS
 ons2+QinT+jKFNXwqlZPw+a9xTk1o8Na4dFmIGru3D/hkMuWN6gTk4C85 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279103021"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="279103021"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 10:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="612852266"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 15 Jun 2022 10:48:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jun 2022 20:48:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 20:48:50 +0300
Message-Id: <20220615174851.20658-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Extract
 intel_sanitize_fifo_underrun_reporting()
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

Pull the underrun status sanitation into its own helper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++---------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d9c8aeef686..e38d0a85889b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9897,11 +9897,46 @@ static struct intel_connector *intel_encoder_find_connector(struct intel_encoder
 	return NULL;
 }
 
+static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (!crtc_state->hw.active && !HAS_GMCH(i915))
+		return;
+
+	/*
+	 * We start out with underrun reporting disabled to avoid races.
+	 * For correct bookkeeping mark this on active crtcs.
+	 *
+	 * Also on gmch platforms we dont have any hardware bits to
+	 * disable the underrun reporting. Which means we need to start
+	 * out with underrun reporting disabled also on inactive pipes,
+	 * since otherwise we'll complain about the garbage we read when
+	 * e.g. coming up after runtime pm.
+	 *
+	 * No protection against concurrent access is required - at
+	 * worst a fifo underrun happens which also sets this to false.
+	 */
+	crtc->cpu_fifo_underrun_disabled = true;
+
+	/*
+	 * We track the PCH trancoder underrun reporting state
+	 * within the crtc. With crtc for pipe A housing the underrun
+	 * reporting state for PCH transcoder A, crtc for pipe B housing
+	 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
+	 * and marking underrun reporting as disabled for the non-existing
+	 * PCH transcoders B and C would prevent enabling the south
+	 * error interrupt (see cpt_can_enable_serr_int()).
+	 */
+	if (intel_has_pch_trancoder(i915, crtc->pipe))
+		crtc->pch_fifo_underrun_disabled = true;
+}
+
 static void intel_sanitize_crtc(struct intel_crtc *crtc,
 				struct drm_modeset_acquire_ctx *ctx)
 {
 	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 
 	if (crtc_state->hw.active) {
@@ -9928,33 +9963,7 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 	    !intel_crtc_is_bigjoiner_slave(crtc_state))
 		intel_crtc_disable_noatomic(crtc, ctx);
 
-	if (crtc_state->hw.active || HAS_GMCH(dev_priv)) {
-		/*
-		 * We start out with underrun reporting disabled to avoid races.
-		 * For correct bookkeeping mark this on active crtcs.
-		 *
-		 * Also on gmch platforms we dont have any hardware bits to
-		 * disable the underrun reporting. Which means we need to start
-		 * out with underrun reporting disabled also on inactive pipes,
-		 * since otherwise we'll complain about the garbage we read when
-		 * e.g. coming up after runtime pm.
-		 *
-		 * No protection against concurrent access is required - at
-		 * worst a fifo underrun happens which also sets this to false.
-		 */
-		crtc->cpu_fifo_underrun_disabled = true;
-		/*
-		 * We track the PCH trancoder underrun reporting state
-		 * within the crtc. With crtc for pipe A housing the underrun
-		 * reporting state for PCH transcoder A, crtc for pipe B housing
-		 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
-		 * and marking underrun reporting as disabled for the non-existing
-		 * PCH transcoders B and C would prevent enabling the south
-		 * error interrupt (see cpt_can_enable_serr_int()).
-		 */
-		if (intel_has_pch_trancoder(dev_priv, crtc->pipe))
-			crtc->pch_fifo_underrun_disabled = true;
-	}
+	intel_sanitize_fifo_underrun_reporting(crtc_state);
 }
 
 static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
-- 
2.35.1


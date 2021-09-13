Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2F94095A7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132B26ECAC;
	Mon, 13 Sep 2021 14:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1ADE6ECAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:45:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="208922910"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="208922910"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:44:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="469468128"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 13 Sep 2021 07:44:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:44:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 17:44:27 +0300
Message-Id: <20210913144440.23008-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/16] drm/i915: Extract intel_dp_use_bigjoiner()
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

Suck the "do we need bigjoiner?" checks into a helper instead of
duplicating them in two differentt places.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 161c33b2c869..e898834cc5f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -805,6 +805,17 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
+static bool intel_dp_use_bigjoiner(struct intel_dp *intel_dp,
+				   int hdisplay, int clock)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (!intel_dp_can_bigjoiner(intel_dp))
+		return false;
+
+	return clock > i915->max_dotclk_freq || hdisplay > 5120;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *connector,
 		    struct drm_display_mode *mode)
@@ -840,8 +851,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode->clock < 10000)
 		return MODE_CLOCK_LOW;
 
-	if ((target_clock > max_dotclk || mode->hdisplay > 5120) &&
-	    intel_dp_can_bigjoiner(intel_dp)) {
+	if (intel_dp_use_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
 	}
@@ -1457,9 +1467,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		    limits.max_lane_count, limits.max_rate,
 		    limits.max_bpp, adjusted_mode->crtc_clock);
 
-	if ((adjusted_mode->crtc_clock > i915->max_dotclk_freq ||
-	     adjusted_mode->crtc_hdisplay > 5120) &&
-	    intel_dp_can_bigjoiner(intel_dp))
+	if (intel_dp_use_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+				   adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner = true;
 
 	/*
-- 
2.32.0


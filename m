Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8504E4C13BB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE0B10F3A8;
	Wed, 23 Feb 2022 13:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E773710F39E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622019; x=1677158019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9M4UhguOUgkG/lehrOF1YCocLMQ/wvVXHfncdjEFZxw=;
 b=c9qyeV/LmjojAiAghrEQKM24ImT5W4X0K7ec1cDe8ix9qM054mKaFrux
 NTSDDKlp74lE2tqtaeb0BVU9VtK3PBN0No+EO7QugSTTlozUuskwu1IVQ
 NfeQIEL2CA4kyEnC4RG7o66V6UYh25HcJI6MeMT6+x7vDVdh2S5/Dj/8A
 LvvRqCZPahw7cWbraUyzrpTgJ9RXeuCqNiJ1SqWqM7EJYGHFnBj6ah975
 3XsoUmUzB0ZkqVzSnxuUgMlqShGZIay/M8qcFpy8aug0Z/kYsaUahuU67
 vuC1YInS+67Aa3trA7CdP39L8Zf3nBhA5GwWdAVyS+P1v2EWY3KItq3C7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="251694073"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="251694073"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="628076309"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 23 Feb 2022 05:13:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:08 +0200
Message-Id: <20220223131315.18016-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/13] drm/i915: Extract
 intel_bigjoiner_adjust_timings()
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

Deduplicate the code to convert the full timings to
per-pipe timings for bigjoiner usage.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++-----------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 43ef14e8d9d3..650577b5e1fc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2728,6 +2728,21 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 			ilk_pipe_pixel_rate(crtc_state);
 }
 
+static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
+					   struct drm_display_mode *mode)
+{
+	if (!crtc_state->bigjoiner)
+		return;
+
+	mode->crtc_clock /= 2;
+	mode->crtc_hdisplay /= 2;
+	mode->crtc_hblank_start /= 2;
+	mode->crtc_hblank_end /= 2;
+	mode->crtc_hsync_start /= 2;
+	mode->crtc_hsync_end /= 2;
+	mode->crtc_htotal /= 2;
+}
+
 static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
 					  struct drm_display_mode *mode)
 {
@@ -2760,19 +2775,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 
 	drm_mode_copy(pipe_mode, adjusted_mode);
 
-	if (crtc_state->bigjoiner) {
-		/*
-		 * transcoder is programmed to the full mode,
-		 * but pipe timings are half of the transcoder mode
-		 */
-		pipe_mode->crtc_hdisplay /= 2;
-		pipe_mode->crtc_hblank_start /= 2;
-		pipe_mode->crtc_hblank_end /= 2;
-		pipe_mode->crtc_hsync_start /= 2;
-		pipe_mode->crtc_hsync_end /= 2;
-		pipe_mode->crtc_htotal /= 2;
-		pipe_mode->crtc_clock /= 2;
-	}
+	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
 
 	if (crtc_state->splitter.enable) {
 		intel_splitter_adjust_timings(crtc_state, pipe_mode);
@@ -2808,17 +2811,9 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
 	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
 
-	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
-	if (crtc_state->bigjoiner) {
-		pipe_mode->crtc_clock /= 2;
-		pipe_mode->crtc_hdisplay /= 2;
-		pipe_mode->crtc_hblank_start /= 2;
-		pipe_mode->crtc_hblank_end /= 2;
-		pipe_mode->crtc_hsync_start /= 2;
-		pipe_mode->crtc_hsync_end /= 2;
-		pipe_mode->crtc_htotal /= 2;
+	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
+	if (crtc_state->bigjoiner)
 		crtc_state->pipe_src_w /= 2;
-	}
 
 	intel_splitter_adjust_timings(crtc_state, pipe_mode);
 
-- 
2.34.1


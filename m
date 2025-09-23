Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D7AB97000
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C3B10E677;
	Tue, 23 Sep 2025 17:20:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANRaGF8j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD6610E675;
 Tue, 23 Sep 2025 17:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648047; x=1790184047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZWF4UVhWO8DWlXyfmE9C1hYDIRSDYKt8fGBuqE1cD/Y=;
 b=ANRaGF8j9e6ObwHut+ykgnPvy2mZlFTzaAgMzKrU9IyHVJZ7qqxvWAzV
 32LN7ZlBSBepKlUpC3z8tes99AFIW+ArTpBX/6n4xzcdkULP7IqR41a+y
 d1E6gamnjPHPTssR07Zzm2o7K5EvTPNMK/LhvhWCSz5fsF2JkBhepRW1X
 at6BqCYkP5R/6z6D2zj0w8PsVghsL9B2MN9rlQTuLMruFn4gnO86OCTTe
 w6YbVn9fkqgYzyqrDY2UX7oS897k7FdiTVCDABQWWpkmEOM4dDQpCdVRz
 QQVzdaRG99ddhE0lW7N/F+TouhwuTuM5Tik8LbFyyfnNpBUoNhlSWhfJp A==;
X-CSE-ConnectionGUID: Y450Xu7gTKaJP11rYVKS1w==
X-CSE-MsgGUID: naYfgBsxSZCnGCG8GRXO1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375402"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375402"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:47 -0700
X-CSE-ConnectionGUID: p8eiv1yPRimvc97BNCoLjw==
X-CSE-MsgGUID: jPz13wGyS3GaJBssi1sLTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747926"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 15/20] drm/i915/cdclk: Move intel_bw_crtc_min_cdclk() handling
 into intel_crtc_compute_min_cdclk()
Date: Tue, 23 Sep 2025 20:19:37 +0300
Message-ID: <20250923171943.7319-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

intel_bw_crtc_min_cdclk() depends only on per-crtc state,
so there is no real point in having it complicate the global
bw_min_cdclk. Instead let's just account for it in
intel_crtc_compute_min_cdclk().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 17 ++++-------------
 drivers/gpu/drm/i915/display/intel_bw.h    |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c |  1 +
 3 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 7499ddec2b14..b53bcb693e79 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -871,13 +871,14 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 }
 
 /* "Maximum Pipe Read Bandwidth" */
-static int intel_bw_crtc_min_cdclk(struct intel_display *display,
-				   unsigned int data_rate)
+int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	if (DISPLAY_VER(display) < 12)
 		return 0;
 
-	return DIV_ROUND_UP_ULL(mul_u32_u32(data_rate, 10), 512);
+	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
 }
 
 static unsigned int intel_bw_num_active_planes(struct intel_display *display,
@@ -1292,10 +1293,6 @@ static bool intel_bw_state_changed(struct intel_display *display,
 
 		if (intel_dbuf_bw_changed(display, old_dbuf_bw, new_dbuf_bw))
 			return true;
-
-		if (intel_bw_crtc_min_cdclk(display, old_bw_state->data_rate[pipe]) !=
-		    intel_bw_crtc_min_cdclk(display, new_bw_state->data_rate[pipe]))
-			return true;
 	}
 
 	return false;
@@ -1386,16 +1383,10 @@ intel_bw_dbuf_min_cdclk(struct intel_display *display,
 int intel_bw_min_cdclk(struct intel_display *display,
 		       const struct intel_bw_state *bw_state)
 {
-	enum pipe pipe;
 	int min_cdclk;
 
 	min_cdclk = intel_bw_dbuf_min_cdclk(display, bw_state);
 
-	for_each_pipe(display, pipe)
-		min_cdclk = max(min_cdclk,
-				intel_bw_crtc_min_cdclk(display,
-							bw_state->data_rate[pipe]));
-
 	return min_cdclk;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index c064e80a7a7f..4bb3a637b295 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -29,6 +29,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
+int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7526b7cc946c..681fe862b6f8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2827,6 +2827,7 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 		return 0;
 
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
+	min_cdclk = max(min_cdclk, intel_bw_crtc_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, hsw_ips_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, intel_audio_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, vlv_dsi_min_cdclk(crtc_state));
-- 
2.49.1


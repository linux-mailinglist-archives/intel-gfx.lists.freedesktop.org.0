Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E427BA9433
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 15:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6268410E41B;
	Mon, 29 Sep 2025 13:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ca8eoWqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E6110E417;
 Mon, 29 Sep 2025 13:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759150831; x=1790686831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wLlQQgC+l8blwhXtZxfm/7lcRYoTNjnq4zaEo0saqfo=;
 b=ca8eoWqjH4VOesV6JFg/3FQ51I9PLZwVxfEtMgpEn9QrAubzbprvu8wk
 PU14H+/cFw+IOmFdQpdOlyGenqfq22oJF4ak4ij9HCzGolNRG2SxQBOk6
 r1Bj6CNfSbNWjpKr7ZkzOFn9JG2WMUB6Nqs+mN4pMLyHy5C2IsN2mWuSc
 K9zh9bLU5E74QPH2zOtHg1N8TZybNoe9WLWBrqMF2KwNnSeFCsyfUfw2S
 7vOA6q4Qhg7w3n/ZH+E7tO4vHycKsw+SrwSrEzsAlCd2LqrD9psJCcZfb
 G9Ryht58OeH5Of/QyuCu0zeuJyzDJGbVrxczY+o8ALcz2Jr5u0kqkVxPC A==;
X-CSE-ConnectionGUID: 30eae+BFTNaTiGnWjb+83A==
X-CSE-MsgGUID: vij2TSQOQJSCmHI9yqdU1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="78812056"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="78812056"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:00:31 -0700
X-CSE-ConnectionGUID: JqoMyrW3RVSLyvjs/vk5/w==
X-CSE-MsgGUID: 2Zeilk6ARv+R3CvOMzGVDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="178612535"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.245.161])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:00:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/2] drm/i915/alpm: Remove parameters suffix from
 intel_dp->alpm_parameters
Date: Mon, 29 Sep 2025 16:00:03 +0300
Message-ID: <20250929130003.28365-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250929130003.28365-1-jouni.hogander@intel.com>
References: <20250929130003.28365-1-jouni.hogander@intel.com>
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

Now as intel_dp->alpm_parameters doesn't really contain any parameters it
doesn't make sense to call it as alpm_parameters -> remove parameters
suffix.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 26 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 9f4a9d8b4dec..6372f533f65b 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -49,7 +49,7 @@ void intel_alpm_init(struct intel_dp *intel_dp)
 		return;
 
 	intel_dp->alpm_dpcd = dpcd;
-	mutex_init(&intel_dp->alpm_parameters.lock);
+	mutex_init(&intel_dp->alpm.lock);
 }
 
 static int get_silence_period_symbols(const struct intel_crtc_state *crtc_state)
@@ -257,12 +257,12 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	int waketime_in_lines, first_sdp_position;
 	int context_latency, guardband;
 
-	if (intel_dp->alpm_parameters.lobf_disable_debug) {
+	if (intel_dp->alpm.lobf_disable_debug) {
 		drm_dbg_kms(display->drm, "LOBF is disabled by debug flag\n");
 		return;
 	}
 
-	if (intel_dp->alpm_parameters.sink_alpm_error)
+	if (intel_dp->alpm.sink_alpm_error)
 		return;
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -312,7 +312,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 					  !crtc_state->has_lobf))
 		return;
 
-	mutex_lock(&intel_dp->alpm_parameters.lock);
+	mutex_lock(&intel_dp->alpm.lock);
 	/*
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
@@ -350,14 +350,14 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(crtc_state->alpm_state.check_entry_lines);
 
 	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
-	mutex_unlock(&intel_dp->alpm_parameters.lock);
+	mutex_unlock(&intel_dp->alpm.lock);
 }
 
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state)
 {
 	lnl_alpm_configure(intel_dp, crtc_state);
-	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
+	intel_dp->alpm.transcoder = crtc_state->cpu_transcoder;
 }
 
 void intel_alpm_port_configure(struct intel_dp *intel_dp,
@@ -420,10 +420,10 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 			continue;
 
 		if (old_crtc_state->has_lobf) {
-			mutex_lock(&intel_dp->alpm_parameters.lock);
+			mutex_lock(&intel_dp->alpm.lock);
 			intel_de_write(display, ALPM_CTL(display, cpu_transcoder), 0);
 			drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
-			mutex_unlock(&intel_dp->alpm_parameters.lock);
+			mutex_unlock(&intel_dp->alpm.lock);
 		}
 	}
 }
@@ -517,7 +517,7 @@ i915_edp_lobf_debug_get(void *data, u64 *val)
 	struct intel_connector *connector = data;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 
-	*val = intel_dp->alpm_parameters.lobf_disable_debug;
+	*val = intel_dp->alpm.lobf_disable_debug;
 
 	return 0;
 }
@@ -528,7 +528,7 @@ i915_edp_lobf_debug_set(void *data, u64 val)
 	struct intel_connector *connector = data;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 
-	intel_dp->alpm_parameters.lobf_disable_debug = val;
+	intel_dp->alpm.lobf_disable_debug = val;
 
 	return 0;
 }
@@ -556,12 +556,12 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 void intel_alpm_disable(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
+	enum transcoder cpu_transcoder = intel_dp->alpm.transcoder;
 
 	if (DISPLAY_VER(display) < 20 || !intel_dp->alpm_dpcd)
 		return;
 
-	mutex_lock(&intel_dp->alpm_parameters.lock);
+	mutex_lock(&intel_dp->alpm.lock);
 
 	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
 		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
@@ -572,7 +572,7 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
 	drm_dbg_kms(display->drm, "Disabling ALPM\n");
-	mutex_unlock(&intel_dp->alpm_parameters.lock);
+	mutex_unlock(&intel_dp->alpm.lock);
 }
 
 bool intel_alpm_get_error(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 57879cc5546e..d2313e11f118 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1866,7 +1866,7 @@ struct intel_dp {
 
 		bool lobf_disable_debug;
 		bool sink_alpm_error;
-	} alpm_parameters;
+	} alpm;
 
 	u8 alpm_dpcd;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2eab591a8ef5..11873a15610f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5553,7 +5553,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	if (intel_alpm_get_error(intel_dp)) {
 		intel_alpm_disable(intel_dp);
-		intel_dp->alpm_parameters.sink_alpm_error = true;
+		intel_dp->alpm.sink_alpm_error = true;
 	}
 
 	if (intel_dp_test_short_pulse(intel_dp))
-- 
2.43.0


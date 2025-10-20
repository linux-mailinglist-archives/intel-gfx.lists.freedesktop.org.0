Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDD7BF3051
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8308310E4C2;
	Mon, 20 Oct 2025 18:51:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eefwaf3h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B9110E4C5;
 Mon, 20 Oct 2025 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986287; x=1792522287;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UVovhWTB4bErG4oA8z2VZ75T5OGFFojgH1pjCOT2b/E=;
 b=eefwaf3hX53S+cBN3Nhva/fxlwHpku5N8ApRc9F8eW0jcDL0wozRKgwP
 8G1rK3e7kMJbf33SoTpu/saPur7FL+5Wv02l0lEV3o6+pMTO/TIHubVdr
 iKs7IZuYHoVGlsWyys07MVz5Ua0tCH4aXoA+KCa8p2l9opxPz5Fy3y1RV
 iBgAemHg4JOeHRfQmPUTYOfp3Erj+eb+WDrgFs5YyperhdGw6qAGRrG4c
 91dPsgWT9pUNU+caTd1lZTMU+g6Z02NJKXj7h/KsSSl/P3hShZvHkOa0X
 pW2yitvAifOU7DA5TYm9QtBbxtg6GgQ/pHxWNMeoeYQfpczakWa9M+RLr w==;
X-CSE-ConnectionGUID: pvoZ++4XRJKlvEeROR1tzQ==
X-CSE-MsgGUID: iQ0WSeXKQMaGWghSjFdn2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80734006"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="80734006"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:27 -0700
X-CSE-ConnectionGUID: adeY9apXRM6Wt2nmYotjSw==
X-CSE-MsgGUID: DldWIJo7QyG2OM8wFK4ThQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="220552622"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:25 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/22] drm/i915/vrr: Extract intel_vrr_tg_disable()
Date: Mon, 20 Oct 2025 21:50:28 +0300
Message-ID: <20251020185038.4272-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

Now that we always disable the VRR timing generator the same way
we can extract the duplicated code into a helper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 42 +++++++++++-------------
 1 file changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19b38ad77189..3ed6a56fb779 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -692,6 +692,22 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
 		       intel_vrr_hw_flipline(crtc_state) - 1);
 }
 
+static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_display *display = to_intel_display(old_crtc_state);
+	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+		       trans_vrr_ctl(old_crtc_state));
+
+	if (intel_de_wait_for_clear(display,
+				    TRANS_VRR_STATUS(display, cpu_transcoder),
+				    VRR_STATUS_VRR_EN_LIVE, 1000))
+		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
+
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+}
+
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -717,29 +733,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void intel_vrr_wait_for_live_status_clear(struct intel_display *display,
-						 enum transcoder cpu_transcoder)
-{
-	if (intel_de_wait_for_clear(display,
-				    TRANS_VRR_STATUS(display, cpu_transcoder),
-				    VRR_STATUS_VRR_EN_LIVE, 1000))
-		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
-}
-
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
-	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       trans_vrr_ctl(old_crtc_state));
-		intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
-		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
-	}
+	if (!intel_vrr_always_use_vrr_tg(display))
+		intel_vrr_tg_disable(old_crtc_state);
 
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
@@ -771,7 +773,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!HAS_VRR(display))
 		return;
@@ -779,12 +780,7 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-		       trans_vrr_ctl(crtc_state));
-
-	intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
-
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	intel_vrr_tg_disable(crtc_state);
 }
 
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
-- 
2.49.1


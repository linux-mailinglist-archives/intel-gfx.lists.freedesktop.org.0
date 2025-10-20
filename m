Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB83BF304B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6844E10E4C0;
	Mon, 20 Oct 2025 18:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ns2cElzI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A7F10E4C0;
 Mon, 20 Oct 2025 18:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986280; x=1792522280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SkgBhmudjpFh7MNyFuRwb0BVDDGjy2JGx/XPBBaAfMs=;
 b=ns2cElzIeZr0W/pQeKeLHZs8hUwuTM3BlHzLaAuVV3yYdGp5tPX35GBj
 CPZ3VOqGcIjp4nfNZScFJHixnbWOnpkk6ah+1Inzn2bqazwF20ZXI3VAZ
 U6yj2/wywrcfkpC91d+tM8HK7PIdm7lJFQilXDIrBAOOxc3jORjYqaPbD
 fX2i4I5+Vfs8uWcOlrFx+shkvJIrK72R5I5z07sTa5LTW6nS2Y44KSD1F
 rzc09Ajfs3hB5PLjoISlspZ4xmWDfmFsYUpwAvJxVjv5HNK7j4Ctmc3nQ
 cclIHFcYzhUCCsC+oYSLVZCcA9duRXHfr2iP2Ej2mifj+9m463uqbJ1YR Q==;
X-CSE-ConnectionGUID: yHAlV011RimeTOByMv3eSw==
X-CSE-MsgGUID: wzr0JATfQKGgxY3Rq6V+4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63026240"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63026240"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:20 -0700
X-CSE-ConnectionGUID: 46GiB9lcTUuY3zarJJPVaw==
X-CSE-MsgGUID: 1MeWPSNvSbueclmO22PbuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="183875678"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:18 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/22] drm/i915/vrr: Move EMP_AS_SDP_TL write into
 intel_vrr_set_transcoder_timings()
Date: Mon, 20 Oct 2025 21:50:26 +0300
Message-ID: <20251020185038.4272-11-ville.syrjala@linux.intel.com>
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

EMP_AS_SDL_TL replaces the TRANS_VRR_VSUNC for the purposes of
setting the AS SDP transmission line. Move the EMP_AS_SDL_TL into
intel_vrr_set_transcoder_timings() since that's where we write
TRANS_VRR_VSYNC as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 35 ++++++++----------------
 1 file changed, 12 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6e8f8e673312..562a5feadaab 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -571,6 +571,18 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       TRANS_VRR_VSYNC(display, cpu_transcoder),
 			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
+
+	/*
+	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
+	 * double buffering point and transmission line for VRR packets for
+	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
+	 * Since currently we support VRR only for DP/eDP, so this is programmed
+	 * to for Adaptive Sync SDP to Vsync start.
+	 */
+	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
+		intel_de_write(display,
+			       EMP_AS_SDP_TL(display, cpu_transcoder),
+			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
 }
 
 void intel_vrr_send_push(struct intel_dsb *dsb,
@@ -649,25 +661,6 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	return false;
 }
 
-static
-void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-
-	/*
-	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
-	 * double buffering point and transmission line for VRR packets for
-	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
-	 * Since currently we support VRR only for DP/eDP, so this is programmed
-	 * to for Adaptive Sync SDP to Vsync start.
-	 */
-	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
-		intel_de_write(display,
-			       EMP_AS_SDP_TL(display, cpu_transcoder),
-			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
-}
-
 static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -710,8 +703,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_vrr_set_vrr_timings(crtc_state);
 
 	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_vrr_set_db_point_and_transmission_line(crtc_state);
-
 		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 			       TRANS_PUSH_EN);
 
@@ -773,8 +764,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	intel_vrr_set_db_point_and_transmission_line(crtc_state);
-
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
-- 
2.49.1


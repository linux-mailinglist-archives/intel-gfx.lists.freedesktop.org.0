Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC179EBB99
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E0810E97A;
	Tue, 10 Dec 2024 21:10:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktMkx9wD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAE2310E97B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865049; x=1765401049;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wG0NKo0/w57AS7FNY9pE2ND8EkUJRb5eB4h1V/XbbW4=;
 b=ktMkx9wDOf5QSf3A5eTdhDgud6IYVSyHmXgyn91CN9NTu6U6+E/yqGqb
 Bc3TVB1rowJqteSE+Kj+Tud1ZwXq2I6QYx5UHtgEIB+zYRiOlIK2pymgM
 1fPVlc7EWwtVtT9hoiOEd6xzyr49ifR0hCIpAIg33nASC9I4BuzXJ3Q72
 ReRzjEKIpSZe6xW8YcHc6GjbfUIVJngVxg0L8l7fkHic3svj3cFbi2xp8
 v8WhulpaL3XI00JegQnW/OqSj9eynMBEt9i/vg2hBp8LgNeMHNnD1IMv5
 705v3qzHPfF+Uk+pJWx2FXxFJ9xLkL7ADabKb0438sKinidjJyzoQvmh8 g==;
X-CSE-ConnectionGUID: egHIcgBjR1C3h8BdP5IlhQ==
X-CSE-MsgGUID: VD1TBOD6T7GOlgCne2f8EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620214"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620214"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:49 -0800
X-CSE-ConnectionGUID: LZ40biTDSiydreR4DPeD9A==
X-CSE-MsgGUID: O4iF+7IoTCaKJeUYyuHLEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735132"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/18] drm/i915/vrr: Fix vmin/vmax/flipline on TGL when using
 vblank delay
Date: Tue, 10 Dec 2024 23:10:03 +0200
Message-ID: <20241210211007.5976-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Turns out that TGL needs its vmin/vmax/flipling adjusted based
on the vblank delay, otherwise the hardware pushes the vtotals
fiurther out. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 32 +++++++++++++++++++-----
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 15017254d250..c08dd1e5cffc 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -118,30 +118,41 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 	if (DISPLAY_VER(display) >= 13)
 		return crtc_state->vrr.guardband;
 	else
-		/* The hw imposes the extra scanline before frame start */
+		/* hardware imposes one extra scanline somewhere */
 		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
 }
 
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	/* Min vblank actually determined by flipline */
-	return intel_vrr_vmin_flipline(crtc_state);
+	if (DISPLAY_VER(display) >= 13)
+		return intel_vrr_vmin_flipline(crtc_state);
+	else
+		return intel_vrr_vmin_flipline(crtc_state) +
+			intel_vrr_vblank_delay(crtc_state);
 }
 
 int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->vrr.vmax;
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) >= 13)
+		return crtc_state->vrr.vmax;
+	else
+		return crtc_state->vrr.vmax +
+			intel_vrr_vblank_delay(crtc_state);
 }
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	/* Min vblank actually determined by flipline */
-	return intel_vrr_vmin_flipline(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
 }
 
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
 }
 
 static bool
@@ -290,9 +301,18 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.guardband =
 			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
 	} else {
+		/* hardware imposes one extra scanline somewhere */
 		crtc_state->vrr.pipeline_full =
 			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
 			    crtc_state->framestart_delay - 1);
+
+		/*
+		 * vmin/vmax/flipline also need to be adjusted by
+		 * the vblank delay to maintain correct vtotals.
+		 */
+		crtc_state->vrr.vmin -= intel_vrr_vblank_delay(crtc_state);
+		crtc_state->vrr.vmax -= intel_vrr_vblank_delay(crtc_state);
+		crtc_state->vrr.flipline -= intel_vrr_vblank_delay(crtc_state);
 	}
 }
 
-- 
2.45.2


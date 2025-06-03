Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 106CBACCD9E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 21:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B1A10E0F2;
	Tue,  3 Jun 2025 19:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m4uxqiAX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30CDB10E0F2;
 Tue,  3 Jun 2025 19:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748979420; x=1780515420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WuHvltP111jqUxmif8tjQih1wNGYRdh2OXkHL4VaRP8=;
 b=m4uxqiAXpLJ++QaZaOClse2CFwCpey4AOwyqhZLHgCsK/GM4BcM9rSDg
 I7bEYVXbhmWQ3ta66gOxMRgLrFJYLvlpednzysDExPitaktlccOASQtxV
 4us5Jaz2m0hmc9O4qLsDw4Z0cXXC8qqg8BgRYWBb+VVhIIG6cKLJVw9Lo
 NUQ0XEifKk13EwKP34mGdrxm2c+1XFNtz36Eu0ApKKgJIdcBObXsEUUkq
 49ZGLqrftwcVyGcJJh2gHlGlJ62Mb8kBcEQI2glQdIRyoN/KNOefGEUUB
 Z8sHu3hNw8RWoiysfM9/SGVM/luYApbxJmbd4WFyAag8KILsB9O8qyyqc w==;
X-CSE-ConnectionGUID: TNo2Y9MeR+mVtGF32f06+Q==
X-CSE-MsgGUID: 9Zdm4bbeRuGmMowP4Qg/BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="50275966"
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="50275966"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 12:37:00 -0700
X-CSE-ConnectionGUID: GUhlxLaKSci5mQfQq17E7w==
X-CSE-MsgGUID: XuC/hFxfTC6BLlYi1MVMpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,207,1744095600"; d="scan'208";a="144844737"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2025 12:36:58 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 ville.syrjala@intel.com, jani.nikula@intel.com
Subject: [PATCH v6 01/17] drm/i915/vrr: Refactor vmin/vmax stuff
Date: Wed,  4 Jun 2025 01:05:06 +0530
Message-ID: <20250603193522.2567092-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
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

Refactor vmin/vmax functions for better computation.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 41 +++++++++++-------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c55b8144e234..6e7ec9931188 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -146,37 +146,41 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
 }
 
-int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
+static int intel_vrr_vtotal(const struct intel_crtc_state *crtc_state, int vmin_vmax)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	/* Min vblank actually determined by flipline */
 	if (DISPLAY_VER(display) >= 13)
-		return intel_vrr_vmin_flipline(crtc_state);
+		return vmin_vmax;
 	else
-		return intel_vrr_vmin_flipline(crtc_state) +
-			intel_vrr_real_vblank_delay(crtc_state);
+		return vmin_vmax + intel_vrr_real_vblank_delay(crtc_state);
 }
 
-int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
+static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
+				  int vmin_vmax)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
+	return intel_vrr_vtotal(crtc_state, vmin_vmax) -
+			intel_vrr_vblank_exit_length(crtc_state);
+}
 
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_state->vrr.vmax;
-	else
-		return crtc_state->vrr.vmax +
-			intel_vrr_real_vblank_delay(crtc_state);
+int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vtotal(crtc_state, intel_vrr_vmin_flipline(crtc_state));
+}
+
+int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vtotal(crtc_state, crtc_state->vrr.vmax);
 }
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vblank_start(crtc_state, intel_vrr_vmin_flipline(crtc_state));
 }
 
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vblank_start(crtc_state, crtc_state->vrr.vmax);
 }
 
 static bool
@@ -257,14 +261,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 static
 int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
-
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_vtotal;
-	else
-		return crtc_vtotal -
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_vtotal(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
 }
 
 static
-- 
2.48.1


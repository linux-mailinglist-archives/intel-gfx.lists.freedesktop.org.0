Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDC5A9E818
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 08:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C87310E383;
	Mon, 28 Apr 2025 06:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B4cKJa9J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A251710E383;
 Mon, 28 Apr 2025 06:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745821387; x=1777357387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DsI3R4pnckNSZMGWSMMb76/Jq3kahLt7YtZyEaGyUPg=;
 b=B4cKJa9JDM29grFuicKlAYKczUvWldj7rUEijYfMgCkFEB9NyEGa5+fb
 tLYvcVoT+7WH4SxcGU6ZV4rA+uF1qSxTe25fd/LFQ5MxxPQN7hdEvNs/H
 +m/tm6DaQdJliityhVL/fL3QVaejXHB4Nxh8iv8Vxzq7jU6jBC9GpCTdf
 VpStYLMNj8TW3JDKpkacHPJ893Hid9a1qNQcfQpW2v4LpLU9aG2MKGU3o
 dN163fhLbmMEkcAmaUUTSNcpHO1kVHsX2XJpsV+6i8gOpeOWSYfYffun2
 GsbQQabUiifb15ZpQbqo7NoEdFQXAxLPdPEaHNvl8sBS2QifjZQuB8xYp w==;
X-CSE-ConnectionGUID: xUuxuTzyTg2qCi1ARIo/rA==
X-CSE-MsgGUID: 9joNlsjRQjCM9DbuyysH5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51204174"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51204174"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:23:06 -0700
X-CSE-ConnectionGUID: hvNsy7e4SWyUkY60t+N/TQ==
X-CSE-MsgGUID: 83BBc2YiQHK8o9WS9U2FmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138231202"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa005.fm.intel.com with ESMTP; 27 Apr 2025 23:23:00 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v3 02/15] drm/i915/vrr: Refactor vmin/vmax stuff
Date: Mon, 28 Apr 2025 11:50:45 +0530
Message-ID: <20250428062058.2811655-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 41 +++++++++++-------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 45445198129f..adfd231eb578 100644
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
-		return crtc_vtotal +
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_vtotal(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
 }
 
 static
-- 
2.48.1


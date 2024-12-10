Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD7F9EBB96
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B38410E975;
	Tue, 10 Dec 2024 21:10:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dRLln4tJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBDE10E977
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865041; x=1765401041;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y5zKX4SLvnaWEsCD1Mn05mtkNPd3y1RKMd7o7snKAeg=;
 b=dRLln4tJxaLFOUYV6p3fIOm45McHl3lug26OjX1fRP6+LnDZWRslc3Rh
 ROH03ssLsGTe1MxWnyYgllwdkcHVL7xRHhuqTNtabJvnVc7dnb7F9YAtx
 b9Ok9g1cy9i1BGApSdOWeo+/2EiYkE5k9YWQjirEGsonyM1D3omjFsnrZ
 nxecZ9bGBM7bQL3Zfy/Z+56ayr3M7w/VHLIcyOgVye2GSQk9ouokyKv+k
 bmD3zkhR4ff0K/HwZEFGj6NTN5kTgCN1JLau+GkdRJMEefAGO/BJupSMU
 BPnPmiABRBJag28MgSvewsKhWQIjxBmGpFJc6hiP3lLfkYlri+Hb6j2YN Q==;
X-CSE-ConnectionGUID: Ql2acPGKTAObjVrxfoSMwA==
X-CSE-MsgGUID: uZcScVEOSGSmLQrHieZ75A==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620204"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620204"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:40 -0800
X-CSE-ConnectionGUID: ZiPgWmQsS+22stX35W/EKg==
X-CSE-MsgGUID: ZQUhtnGNTEmLYHGFLsof/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/18] drm/i915: Extract intel_crtc_active_timings()
Date: Tue, 10 Dec 2024 23:10:00 +0200
Message-ID: <20241210211007.5976-12-ville.syrjala@linux.intel.com>
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

Declutter intel_crtc_update_active_timings() a bit by
moving the code that determines the timings into a separate
function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 33 ++++++++++++++-------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 3cf3cff0687a..2a99bde457db 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -507,6 +507,23 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
 	wait_for_pipe_scanline_moving(crtc, true);
 }
 
+static void intel_crtc_active_timings(struct drm_display_mode *mode,
+				      int *vmax_vblank_start,
+				      const struct intel_crtc_state *crtc_state,
+				      bool vrr_enable)
+{
+	drm_mode_init(mode, &crtc_state->hw.adjusted_mode);
+	*vmax_vblank_start = 0;
+
+	if (!vrr_enable)
+		return;
+
+	mode->crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
+	mode->crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
+	mode->crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+	*vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+}
+
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 				      bool vrr_enable)
 {
@@ -517,19 +534,13 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	int vmax_vblank_start = 0;
 	unsigned long irqflags;
 
-	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
+	intel_crtc_active_timings(&adjusted_mode, &vmax_vblank_start,
+				  crtc_state, vrr_enable);
 
-	if (vrr_enable) {
-		drm_WARN_ON(display->drm,
-			    (mode_flags & I915_MODE_FLAG_VRR) == 0);
-
-		adjusted_mode.crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
-		adjusted_mode.crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
-		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
-	} else {
+	if (vrr_enable)
+		drm_WARN_ON(display->drm, (mode_flags & I915_MODE_FLAG_VRR) == 0);
+	else
 		mode_flags &= ~I915_MODE_FLAG_VRR;
-	}
 
 	/*
 	 * Belts and suspenders locking to guarantee everyone sees 100%
-- 
2.45.2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A659EBB98
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7321B10E5D6;
	Tue, 10 Dec 2024 21:10:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MdHwkBFp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26FFD10E980
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865046; x=1765401046;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1cCvj4WRhPQM27IjuUk18tXSd+eeoMwhF9qOBtmvNTM=;
 b=MdHwkBFpad5zIwwGfkVoN/+l4MWPNXhwOAG/QGk7G+dm2/1OqknT4Sr5
 3QKlM6iERumIuuEyZGeF29NEsrKapfKH+xAFNEseBRPCG9rPMBf1Qgn6G
 FPKuQPQfmObP0xH8LLZOzVAV180dY6IyVSNiDWQhKwi11Do/ZCcQyJXuq
 4Ptb1AG3/NbI4dDrOptlPaTMuyct4hTCcS6wP7lqLLCqMAtvVTllAvLoc
 TPD7YcO6frt7KXGe9i44TXvPZSXlxgeqFYHpBkG1iAsRq/pivsBShBVnP
 0rOpT7cl3Zmi/wM5/4wBfz8t2hTD+uCV0pqdeshKKLctTMN/MNN40X7AS Q==;
X-CSE-ConnectionGUID: hkR+BJSySceszu/DWUG1dg==
X-CSE-MsgGUID: kFOGDFl7QBShTto8aXpjsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620211"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620211"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:46 -0800
X-CSE-ConnectionGUID: 4pZ1Sb7vQJ2B8kscNBXGvA==
X-CSE-MsgGUID: 8Lc0edANQnS59JPoIeG2rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735129"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/18] drm/i915/vrr: Drop the extra vmin adjustment for ADL+
Date: Tue, 10 Dec 2024 23:10:02 +0200
Message-ID: <20241210211007.5976-14-ville.syrjala@linux.intel.com>
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

Apparently on ICL/TGL need the annoying vmin adjustemnt. On
ADL+ we can program flipling==vmin and the hardware actually
respects that properly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 39 ++++++++++++++++--------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a0ddc288c1a3..15017254d250 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -82,6 +82,19 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
 		crtc_state->hw.adjusted_mode.crtc_vdisplay;
 }
 
+static int intel_vrr_flipline_offset(struct intel_display *display)
+{
+	/* ICL/TGL hardware imposes flipline>=vmin+1 */
+	return DISPLAY_VER(display) < 13 ? 1 : 0;
+}
+
+static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return crtc_state->vrr.vmin + intel_vrr_flipline_offset(display);
+}
+
 /*
  * Without VRR registers get latched at:
  *  vblank_start
@@ -111,8 +124,8 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	/* Min vblank actually determined by flipline that is always >=vmin+1 */
-	return crtc_state->vrr.vmin + 1;
+	/* Min vblank actually determined by flipline */
+	return intel_vrr_vmin_flipline(crtc_state);
 }
 
 int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
@@ -122,8 +135,8 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	/* Min vblank actually determined by flipline that is always >=vmin+1 */
-	return crtc_state->vrr.vmin + 1 - intel_vrr_vblank_exit_length(crtc_state);
+	/* Min vblank actually determined by flipline */
+	return intel_vrr_vmin_flipline(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
 }
 
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
@@ -220,15 +233,17 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (vmin >= vmax)
 		return;
 
-	/*
-	 * flipline determines the min vblank length the hardware will
-	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
-	 * to make sure we can get the actual min vblank length.
-	 */
-	crtc_state->vrr.vmin = vmin - 1;
+	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.vmax = vmax;
 
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+
+	/*
+	 * flipline determines the min vblank length the hardware will
+	 * generate, and on ICL/TGL flipline>=vmin+1, hence we reduce
+	 * vmin by one to make sure we can get the actual min vblank length.
+	 */
+	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
 	/*
 	 * When panel is VRR capable and userspace has
@@ -273,7 +288,7 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(display) >= 13) {
 		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
+			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
 	} else {
 		crtc_state->vrr.pipeline_full =
 			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
-- 
2.45.2


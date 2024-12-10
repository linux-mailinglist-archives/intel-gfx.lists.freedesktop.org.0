Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DC09EBB97
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23ECE10E977;
	Tue, 10 Dec 2024 21:10:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c7SMO6v4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B18310E977
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865043; x=1765401043;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HSeoJHTxXZLAG4M+S9EQ5PQd3kF43sMLTZd56oZu77A=;
 b=c7SMO6v464CrfkVoRvWOrqClfc1uz6InXtjIbBQzT5WfS6cuuSAA+jAG
 d8P4INKPPKLfxxM+p2Fzw51yTxw+ZxpUcIfY6+dqJ9Qn+CpQ28AeMW8/C
 PRREURwgmE+oMSUPvrH59f+OrG6kyjaYkCHXgTncfBbqzixXvfoHugFfV
 s1gKT0iWbc9iiLjXMTfcNYFjOIW7Q+yX3fM0ZImvi/bqoW13ZR7RuSrX9
 e+szqpywjflfLV5Escpuw7sjIJDFIPsuJIRr7/PWYVJ0DzA7oYe76WAV7
 BYqviMq1Mzyft2OgX3MZUlbXhRtg3vAZsaLg/KhEq8ty6mGIfOd5w12/4 g==;
X-CSE-ConnectionGUID: h/LNYyKaRAamL2tNGX/zPQ==
X-CSE-MsgGUID: +5H6gv7vSz2MJPM0uquw+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620209"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620209"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:43 -0800
X-CSE-ConnectionGUID: 3Zmhw0TpSGOyvM9rCUgv8g==
X-CSE-MsgGUID: 85uvoZq4Q4WKHey8QRZ7mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735124"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/18] drm/i915/vrr: Introduce intel_vrr_vblank_delay()
Date: Tue, 10 Dec 2024 23:10:01 +0200
Message-ID: <20241210211007.5976-13-ville.syrjala@linux.intel.com>
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

Introduce a VRR specific function for determining the current
vblank delay. Currently thus will give the same answer as
intel_mode_vblank_delay() but that will change later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 18 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vblank.c |  7 ++++++-
 drivers/gpu/drm/i915/display/intel_vrr.c    |  6 ++++++
 drivers/gpu/drm/i915/display/intel_vrr.h    |  1 +
 4 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 673f75703785..89d3496bcbdb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -109,9 +109,16 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
 }
 
-static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
+static int dsb_vblank_delay(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
-	return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
+	const struct intel_crtc_state *crtc_state =
+		intel_pre_commit_crtc_state(state, crtc);
+
+	if (pre_commit_is_vrr_active(state, crtc))
+		return intel_vrr_vblank_delay(crtc_state);
+	else
+		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
 }
 
 static int dsb_vtotal(struct intel_atomic_state *state,
@@ -520,10 +527,11 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		intel_pre_commit_crtc_state(state, crtc);
 	/* FIXME calibrate sensibly */
 	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
-	int vblank_delay = dsb_vblank_delay(crtc_state);
 	int start, end;
 
 	if (pre_commit_is_vrr_active(state, crtc)) {
+		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
+
 		end = intel_vrr_vmin_vblank_start(crtc_state);
 		start = end - vblank_delay - latency;
 		intel_dsb_wait_scanline_out(state, dsb, start, end);
@@ -532,6 +540,8 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 		start = end - vblank_delay - latency;
 		intel_dsb_wait_scanline_out(state, dsb, start, end);
 	} else {
+		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
+
 		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
 		start = end - vblank_delay - latency;
 		intel_dsb_wait_scanline_out(state, dsb, start, end);
@@ -612,7 +622,7 @@ void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
 	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
-					     dsb_vblank_delay(crtc_state)) + 1;
+					     dsb_vblank_delay(state, crtc)) + 1;
 
 	intel_dsb_wait_usec(dsb, usecs);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 2a99bde457db..fb80e0bef08a 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -647,6 +647,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	const struct intel_crtc_state *crtc_state;
 	const struct drm_display_mode *adjusted_mode;
+	int vblank_delay;
 
 	evade->crtc = crtc;
 
@@ -668,8 +669,12 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 		else
 			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+
+		vblank_delay = intel_vrr_vblank_delay(crtc_state);
 	} else {
 		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
+
+		vblank_delay = intel_mode_vblank_delay(adjusted_mode);
 	}
 
 	/* FIXME needs to be calibrated sensibly */
@@ -687,7 +692,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	 */
 	if (intel_color_uses_dsb(new_crtc_state) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
-		evade->min -= intel_mode_vblank_delay(adjusted_mode);
+		evade->min -= vblank_delay;
 }
 
 /* must be called with vblank interrupt already enabled! */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 0d40402fe043..a0ddc288c1a3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -76,6 +76,12 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
 	}
 }
 
+int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
+		crtc_state->hw.adjusted_mode.crtc_vdisplay;
+}
+
 /*
  * Without VRR registers get latched at:
  *  vblank_start
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 75db88ae9cc4..8e8961adce39 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -30,5 +30,6 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
+int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2


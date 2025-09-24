Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F9AB9A3ED
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD8CA10E732;
	Wed, 24 Sep 2025 14:29:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d4fnBAsq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46B3A10E745;
 Wed, 24 Sep 2025 14:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758724164; x=1790260164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z2GX6q4G+N+jq9tRPncgc6GO6UyHcmnimqRvSrYmMww=;
 b=d4fnBAsq+oUR2isF49ixleK2Phi3knGo7JmKgTH2USmyeqXklhlFxQta
 mjTz5p0TkmadEQzSvfSJVApYdrySTrW8zMEjkVBm9jz10RhA09nQwY/Z6
 uEz8HX7EZbOC0Cnz5pTGy/tbLgHKpkMHStsFg/0+ImW3zQP9QxJexAalt
 aZ7kv8xlSJPuTrzEjtNxEosjn+Lsa2oKMiVT/gXksS8qFr6EvsOg7S9j+
 aL8++VoGn+HcWYjhvFniqXUgOgxpa0YgBRiWK7aPd+VZFNQHowJxRGtg/
 Es3ke8K2x8Fc5QgWKQ9NkCQ+W0CN/d7qRmTMyAM+y/878cJkOY2rBCGjN w==;
X-CSE-ConnectionGUID: MwkGN7kuRu6jc3LcAmsxCA==
X-CSE-MsgGUID: e/MavlrkTQigzafV6EvVVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61075925"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="61075925"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:24 -0700
X-CSE-ConnectionGUID: 1RcjlfAIQNS0CIbxeRBzrQ==
X-CSE-MsgGUID: Rss0vvLPRmmbfR4k21aOZg==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/10] drm/i915/dsb: Inline dsb_vblank_delay() into
 intel_dsb_wait_for_delayed_vblank()
Date: Wed, 24 Sep 2025 19:45:42 +0530
Message-ID: <20250924141542.3122126-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
References: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Drop the now single-use dsb_vblank_delay() helper and inline its logic
directly into intel_dsb_wait_for_delayed_vblank().

This will help to keep all VRR related wait stuff in one place.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 56 ++++++++++--------------
 1 file changed, 24 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ae8574880ef2..44a465ff52d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -115,24 +115,6 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
 }
 
-static int dsb_vblank_delay(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc)
-{
-	const struct intel_crtc_state *crtc_state =
-		intel_pre_commit_crtc_state(state, crtc);
-
-	if (pre_commit_is_vrr_active(state, crtc))
-		/*
-		 * When the push is sent during vblank it will trigger
-		 * on the next scanline, hence we have up to one extra
-		 * scanline until the delayed vblank occurs after
-		 * TRANS_PUSH has been written.
-		 */
-		return crtc_state->set_context_latency + 1;
-	else
-		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
-}
-
 static int dsb_vtotal(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
@@ -821,24 +803,34 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
 	struct intel_crtc *crtc = dsb->crtc;
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
-	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
-					     dsb_vblank_delay(state, crtc));
+	int usecs;
 
-	/*
-	 * If the push happened before the vmin decision boundary
-	 * we don't know how far we are from the undelayed vblank.
-	 * Wait until we're past the vmin safe window, at which
-	 * point we're SCL lines away from the delayed vblank.
-	 *
-	 * If the push happened after the vmin decision boundary
-	 * the hardware itself guarantees that we're SCL lines
-	 * away from the delayed vblank, and we won't be inside
-	 * the vmin safe window so this extra wait does nothing.
-	 */
-	if (pre_commit_is_vrr_active(state, crtc))
+	if (pre_commit_is_vrr_active(state, crtc)) {
+		/*
+		 * If the push happened before the vmin decision boundary
+		 * we don't know how far we are from the undelayed vblank.
+		 * Wait until we're past the vmin safe window, at which
+		 * point we're SCL lines away from the delayed vblank.
+		 *
+		 * If the push happened after the vmin decision boundary
+		 * the hardware itself guarantees that we're SCL lines
+		 * away from the delayed vblank, and we won't be inside
+		 * the vmin safe window so this extra wait does nothing.
+		 */
 		intel_dsb_wait_scanline_out(state, dsb,
 					    intel_vrr_safe_window_start(crtc_state),
 					    intel_vrr_vmin_safe_window_end(crtc_state));
+		/*
+		 * When the push is sent during vblank it will trigger
+		 * on the next scanline, hence we have up to one extra
+		 * scanline until the delayed vblank occurs after
+		 * TRANS_PUSH has been written.
+		 */
+		usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
+						 crtc_state->set_context_latency + 1);
+	} else {
+		usecs = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
+	}
 
 	intel_dsb_wait_usec(dsb, usecs);
 }
-- 
2.45.2


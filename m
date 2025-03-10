Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCA8A5A30D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF8310E4BC;
	Mon, 10 Mar 2025 18:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h7XuUiw4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1465010E4BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741631733; x=1773167733;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HW4bvteJYlU5/xTqn6d30JkSyAhXc9S4DsdIYIgANbs=;
 b=h7XuUiw47VHY+ZZvM5i5DPb3ISGNjmzS0hUmfNZCmXIrSPP29QwRoEnE
 uo6NQfl1a2s9GFvWKD6Uc5DjwQ+8BPHoWvCsNEy4gCuJC4uZHZ8xaYmHV
 1+PaBzoMmAqQZwqja1iukQ3fbV9NsFu8SiuR8VVt6PMzViGRiqdWHaNnV
 +pe+96s9+if2vr5478VNpS5xfBtwOdyadjgC5rbFw+zqq1XbJxhobCUrp
 DlQYdk+LlWV9cHhe8500c7Te2pb2Eohj1OaNK5CRSzdG4BNg+9sSosnqk
 3GJnx09owaiwTBNFepHT5ckT6smQuw9e6rO4DzdSDk3QLfHtE5/qKQREv g==;
X-CSE-ConnectionGUID: hS2qk9VZS6uF7ePUPkFqYA==
X-CSE-MsgGUID: cHyAQU96SUOqCMCn/Zp9Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42677231"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42677231"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:35:32 -0700
X-CSE-ConnectionGUID: LJ6x0/xqQP+5FFm3byZVPg==
X-CSE-MsgGUID: aOtBVV2MTVO2BDF9f+e3Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125296060"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:35:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:35:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915: Enable/disable shared dplls just the once for
 joined pipes
Date: Mon, 10 Mar 2025 20:35:27 +0200
Message-ID: <20250310183528.3203-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

Currently we loop over all joined pipes and enable/disable the
shared dplls for each. We don't really have to do that since
all joined pipes will be using the same dpll. So let's just do
the enable/disable once for the whole set of joined pipes.
We can still keep tracking the dpll active set as pipes as long
as we remember to flip the bits for all the joined pipes on one go.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 16 +++-------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  4 ++--
 2 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3afb85fe8536..0e0e5285ad97 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1658,17 +1658,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i)
 		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
-	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
-		const struct intel_crtc_state *pipe_crtc_state =
-			intel_atomic_get_new_crtc_state(state, pipe_crtc);
-
-		if (pipe_crtc_state->shared_dpll)
-			intel_enable_shared_dpll(pipe_crtc_state);
-	}
+	if (new_crtc_state->shared_dpll)
+		intel_enable_shared_dpll(new_crtc_state);
 
 	intel_encoders_pre_enable(state, crtc);
 
 	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
@@ -1795,16 +1790,11 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * Need care with mst->ddi interactions.
 	 */
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
-		const struct intel_crtc_state *old_pipe_crtc_state =
-			intel_atomic_get_old_crtc_state(state, pipe_crtc);
-
-		intel_disable_shared_dpll(old_pipe_crtc_state);
-	}
+	intel_disable_shared_dpll(old_crtc_state);
 
 	intel_encoders_post_pll_disable(state, crtc);
 
 	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i)
 		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c825a507b905..c7b73cd4bc67 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -255,11 +255,11 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	unsigned int pipe_mask = BIT(crtc->pipe);
+	unsigned int pipe_mask = intel_crtc_joined_pipe_mask(crtc_state);
 	unsigned int old_mask;
 
 	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
@@ -301,11 +301,11 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
-	unsigned int pipe_mask = BIT(crtc->pipe);
+	unsigned int pipe_mask = intel_crtc_joined_pipe_mask(crtc_state);
 
 	/* PCH only available on ILK+ */
 	if (DISPLAY_VER(display) < 5)
 		return;
 
-- 
2.45.3


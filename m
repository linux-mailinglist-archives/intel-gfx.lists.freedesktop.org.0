Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C772A3206A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E621110E7EE;
	Wed, 12 Feb 2025 07:58:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BUckBdsn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C81B10E7ED;
 Wed, 12 Feb 2025 07:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347086; x=1770883086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BwPxekFYUFvLbcrzCyGHNcqjb29642EXGTXHrEFhCF0=;
 b=BUckBdsnH6PvdkmEGkHHIs5Pkr6I/ogETUdeEWUt32eZ86BCRxedqhpz
 A9+Jd8gfKzZnovU6wHr4H1DkxzjldAotH1vAtsEOx9dMfWuwgguKL0ma4
 yIilKfgKLym+RYBtI72f3+YQg0fyNubWEE/lJ4ylmLvEnEZXW4amzVsYx
 /kwydzgXbWJmM31v598uZ4N5bNVltnG6MT6RGELHefudS2zD57IhXzKLU
 I2eqFFJK+Tpc8CMh/rnYbqp6cT5zOZxh36ax8y5yliqrSjVPU+4zcrYPX
 5qgLllUemnog2Y3xGZSWpelcPhR6mPFP7j1zGTpJBSWIyWd1J3V7JALNg g==;
X-CSE-ConnectionGUID: rLtNoB/CRm62C2Z8XimMQA==
X-CSE-MsgGUID: KUKfk2zpSHm/aN5uaM/pAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973637"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973637"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:06 -0800
X-CSE-ConnectionGUID: T0UdsAoIQfWBrpegz20kFw==
X-CSE-MsgGUID: rqGHgNJHTbirRixqCzFpCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836922"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 08/13] drm/i915/display: Warn on use_dsb in non-dsb pipe
 update functions
Date: Wed, 12 Feb 2025 09:57:37 +0200
Message-ID: <20250212075742.995022-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
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

Add drm_WARN_ON(use_dsb) into commit_pipe_{pre,post}_planes() and
intel_pipe_update_{start,end}() as they are not supposed to get called on
non-dsb updates.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 4 ++++
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 89785da93603..eb089d76ba2a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -522,6 +522,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	struct intel_vblank_evade_ctx evade;
 	int scanline;
 
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
+
 	intel_psr_lock(new_crtc_state);
 
 	if (new_crtc_state->do_async_flip) {
@@ -660,6 +662,8 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	ktime_t end_vbl_time = ktime_get();
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
+
 	if (new_crtc_state->do_async_flip)
 		goto out;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cab6852dd9c2..79b8d2ad3b9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7141,11 +7141,13 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
+	drm_WARN_ON(&dev_priv->drm, new_crtc_state->use_dsb);
+
 	/*
 	 * During modesets pipe configuration was programmed as the
 	 * CRTC was enabled.
 	 */
-	if (!modeset && !new_crtc_state->use_dsb) {
+	if (!modeset) {
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(NULL, new_crtc_state);
 
@@ -7168,6 +7170,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
+	drm_WARN_ON(&dev_priv->drm, new_crtc_state->use_dsb);
+
 	/*
 	 * Disable the scaler(s) after the plane(s) so that we don't
 	 * get a catastrophic underrun even if the two operations
-- 
2.43.0


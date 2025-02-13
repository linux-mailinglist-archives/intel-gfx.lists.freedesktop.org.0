Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB174A3382C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 07:48:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0CC10EA0F;
	Thu, 13 Feb 2025 06:48:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PpacEOTK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6416410EA09;
 Thu, 13 Feb 2025 06:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429311; x=1770965311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K/W712OVDTb3pM6ErERULLiPle52QWfmViGppyWkMyg=;
 b=PpacEOTKGe37NWk61+nNLWZoOvOy2+gyrOhJOHbv+mnykI1xiOwnH8Rg
 2ubKpDCDyrhGfMVzrEDo+AQbNUvWCn85DrZM6Z56pL0njIanBmwjzb6bx
 am9US25SU0VaQqS1eykhpvVbbFaKF/XqLpp/43S6AfZ3I0tpPzzeKcc/t
 /bs2KdEwheXSQRP4xSSG4Nq4+2Tk0ZJ0rIPqnCQnBIEshaAOW3zk8gDHR
 vXQ1bIGwa944x9fq0FeQGe9rM5hs0yPGanbuq1sJNgOyXl61ti59+X7RA
 OSE0J1OmRutw/uVoCKyjZc+pv5MWEHEekR89T4wSaYJhYuK+dHMXKjIZ3 Q==;
X-CSE-ConnectionGUID: KB2IpHatQwK6WmuOzCZWew==
X-CSE-MsgGUID: aMedDVlrSKWSfzr5QyVwmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50764108"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50764108"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:30 -0800
X-CSE-ConnectionGUID: j5c9zbsLQGGgi8t1Ap+zKQ==
X-CSE-MsgGUID: yuibv3ZmSa6tsjA7RoHYUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118237245"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.234])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:28 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 08/13] drm/i915/display: Warn on use_dsb in non-dsb pipe
 update functions
Date: Thu, 13 Feb 2025 08:47:59 +0200
Message-ID: <20250213064804.2077127-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250213064804.2077127-1-jouni.hogander@intel.com>
References: <20250213064804.2077127-1-jouni.hogander@intel.com>
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
index a1694e54a6f1..6a503a2e742b 100644
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
index dd064c225da1..dbb8dc318471 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7133,11 +7133,13 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
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
 
@@ -7160,6 +7162,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
+	drm_WARN_ON(&dev_priv->drm, new_crtc_state->use_dsb);
+
 	/*
 	 * Disable the scaler(s) after the plane(s) so that we don't
 	 * get a catastrophic underrun even if the two operations
-- 
2.43.0


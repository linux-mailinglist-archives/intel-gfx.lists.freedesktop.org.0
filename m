Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 220FF9DA202
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 07:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D9110E40F;
	Wed, 27 Nov 2024 06:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DhK+F1lF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636CA10E2F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 06:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732687885; x=1764223885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QnaqUyixPY9yOPx260hUz69mbuGgnrc/2qTM88kpREA=;
 b=DhK+F1lFAKZ6TJ643cD1mZ3/+rC/GzJ3CFF6aB2lmYgFX8V0JldsT7IL
 Udncri9STAIKcefuhu3OnpmXHzBDubbqFqWbxialR19dksxcHdSlQe0Ra
 TYBsQXYzP2ESCeoABNYHbs1TgWNdl2QDHweY2k0bauMeokyq/laJIVwJJ
 yqoqmXmkgFjJcSgDg0K5St0dH18xr2O6WYV5qZhaiXu7Y+fiGTTYYc2op
 tEQ5hgvxJXDPVwOeVqNocbZ/3sUDA/XfaxcXgRVcIwaug6viCuFS5qGE1
 rYfSSHX+JibEgRFSDs3kjqpG392ynZdACtm48wdJuim31j6MMhzitob5M Q==;
X-CSE-ConnectionGUID: RhB9kV0tRveYadHUP+TA/A==
X-CSE-MsgGUID: uSfzo1gMRHyT7DPfRYXxGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="33125370"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="33125370"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 22:11:24 -0800
X-CSE-ConnectionGUID: tAoe4qKZRPGDwd3jb0Gfvw==
X-CSE-MsgGUID: rC0dX5yTS3eYkoXZSliXoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="91982013"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Nov 2024 22:11:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2024 08:11:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Brian Geffon <bgeffon@google.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 1/4] drm/i915: Don't reuse commit_work for the cleanup
Date: Wed, 27 Nov 2024 08:11:14 +0200
Message-ID: <20241127061117.25622-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
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

Currently we reuse the commit_work for a later cleanup step.
Let's not do that so that atomic ioctl handler won't accidentally
wait for the cleanup work when it really wants to just wait on the
commit_tail() part. We'll just add another work struct for the
cleanup.

Cc: Brian Geffon <bgeffon@google.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9db255bb1230..5260f6eafaf8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7581,7 +7581,7 @@ static void intel_atomic_dsb_cleanup(struct intel_crtc_state *crtc_state)
 static void intel_atomic_cleanup_work(struct work_struct *work)
 {
 	struct intel_atomic_state *state =
-		container_of(work, struct intel_atomic_state, base.commit_work);
+		container_of(work, struct intel_atomic_state, cleanup_work);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
@@ -7936,8 +7936,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * schedule point (cond_resched()) here anyway to keep latencies
 	 * down.
 	 */
-	INIT_WORK(&state->base.commit_work, intel_atomic_cleanup_work);
-	queue_work(system_highpri_wq, &state->base.commit_work);
+	INIT_WORK(&state->cleanup_work, intel_atomic_cleanup_work);
+	queue_work(system_highpri_wq, &state->cleanup_work);
 }
 
 static void intel_atomic_commit_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 339e4b0f7698..d7ce8f01645b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -587,6 +587,8 @@ struct intel_atomic_state {
 	bool skip_intermediate_wm;
 
 	bool rps_interactive;
+
+	struct work_struct cleanup_work;
 };
 
 struct intel_plane_state {
-- 
2.45.2


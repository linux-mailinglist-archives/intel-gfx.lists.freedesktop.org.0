Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69005712ACE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E3C10E816;
	Fri, 26 May 2023 16:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD5610E829
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119139; x=1716655139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fdkLaB2kpZqOBZgd65szLbCJthliq+6iNa/+Iz0lbRs=;
 b=NLL6BUcAMvqtRMxCQ8+WTcoOCfhfTVnC56RAoatttr5C747fti7oQb+E
 c0P9/5pRzaCiVzNu1eYDmKu2Qbr2ugSpOawzb6qFMfF+wPVbW9U4aFzEH
 kKzDRf1+/Eq7MrpPtQY4HFYfM8Ysk1MbjV0wkH6sNx3arrKfsXyTrjXAz
 HnbVSbstTQ65kRPHqeJ9Kua/a3B3e2rgNEj4PPMspFjr4j0Q096F28DEm
 8UegpJc041VRFLVVillrwVRzVeTqW3m058TsU+9F0QpzZadKoFKzZR13u
 A+i7H027ezUY6AthhutpD5fBsULcwo12dYS6Ws6hjKeh/J3Ur81sOCDNG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="420006263"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="420006263"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="951949668"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="951949668"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:05 +0300
Message-Id: <438ff3b257b7f85ecca5750ae8687336faee0a79.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915: annotate maybe unused but set
 intel_plane_state variables
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for re-enabling -Wunused-but-set-variable.

for_each_new_intel_plane_in_state() requires passing in a struct
intel_plane_state pointer, which it uses, but in many places this leads
to warning about unused but set variables. Annotate them with
__maybe_unused.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c      | 8 ++++----
 drivers/gpu/drm/i915/display/intel_fbc.c          | 6 +++---
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 4125ee07a271..7d9578ebae55 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -722,7 +722,7 @@ skl_next_plane_to_commit(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_plane_state *plane_state;
+	struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int i;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6bed75f1541a..41eebae46d99 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2947,7 +2947,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 {
 	const struct intel_cdclk_state *old_cdclk_state;
 	const struct intel_cdclk_state *new_cdclk_state;
-	struct intel_plane_state *plane_state;
+	struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int ret;
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 38836e2e8807..a1e635ab0315 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -971,7 +971,7 @@ static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	u8 update_planes = crtc_state->update_planes;
-	const struct intel_plane_state *plane_state;
+	const struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int i;
 
@@ -988,7 +988,7 @@ static void intel_crtc_disable_flip_done(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	u8 update_planes = crtc_state->update_planes;
-	const struct intel_plane_state *plane_state;
+	const struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int i;
 
@@ -5609,7 +5609,7 @@ static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *state,
 					   struct intel_crtc *crtc,
 					   struct intel_crtc *other)
 {
-	const struct intel_plane_state *plane_state;
+	const struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	u8 plane_ids = 0;
 	int i;
@@ -5652,7 +5652,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
-	struct intel_plane_state *plane_state;
+	struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 	int i, ret;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1966f9396201..29aa029d249d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1254,7 +1254,7 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
 bool intel_fbc_pre_update(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
-	const struct intel_plane_state *plane_state;
+	const struct intel_plane_state __maybe_unused *plane_state;
 	bool need_vblank_wait = false;
 	struct intel_plane *plane;
 	int i;
@@ -1309,7 +1309,7 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
 void intel_fbc_post_update(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	const struct intel_plane_state *plane_state;
+	const struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int i;
 
@@ -1408,7 +1408,7 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 
 int intel_fbc_atomic_check(struct intel_atomic_state *state)
 {
-	struct intel_plane_state *plane_state;
+	struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
 	int i;
 
-- 
2.39.2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F374FAD6F28
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 13:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8643C10E7DC;
	Thu, 12 Jun 2025 11:37:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQN/j7oU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E73CE10E7DD;
 Thu, 12 Jun 2025 11:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749728263; x=1781264263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SztKzTtfKyZqWdB6gGF/f/MQ2bi5mtsMRP2yK7zls8I=;
 b=XQN/j7oUWNzlChNdGEkHUgmVuCSfg6Xa9spWhsBAYuDQTJkDCpKHio1o
 YCUy5AJiWLgfRosZT5jr9fzrjvfvoaX5rn3TSv5UwV1mOc8RVvt/iO+Si
 IThla/Apxzp4YkM1RjtQs7olOl5A+FcxRseJ1xyYvjOcm9qyPTwL5FSFL
 c2OggtGzsBa+jw3LWykHbrLSHvp4pK9kUWnn+f6JsjE0VFqeD4zXIeqMu
 MgTiLwLqORv3X7erYOqysVJFlTgC4CEtUqQyMcGPU/5yCsnmetGa7E63J
 jYr8ASpCwW75kALGQXkvG8ny6a7r0NR2CBMe+Yd18fdhad6/7ZfmH48G9 Q==;
X-CSE-ConnectionGUID: 2vAm9VtcQe+UrXVzhnavvw==
X-CSE-MsgGUID: M4rKJCSoQ6u5uzQKrTOgfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51820259"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51820259"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:43 -0700
X-CSE-ConnectionGUID: FZk8ctOEQbqr+npUOdeI6w==
X-CSE-MsgGUID: UXmGgkHrQ9qMrYNobrEQsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152484602"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 5/5] drm/i915/plane: rename
 intel_atomic_add_affected_planes() to intel_plane_add_affected()
Date: Thu, 12 Jun 2025 14:37:11 +0300
Message-Id: <88e5eff2556e6363e51cbe4d2143fa0817d3c00d.1749728173.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Rename to follow filename based naming.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_plane.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_plane.h   | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bd81ff9e3854..978c524546c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5479,7 +5479,7 @@ static int intel_modeset_pipe(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	ret = intel_atomic_add_affected_planes(state, crtc);
+	ret = intel_plane_add_affected(state, crtc);
 	if (ret)
 		return ret;
 
@@ -6195,7 +6195,7 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		ret = intel_atomic_add_affected_planes(state, crtc);
+		ret = intel_plane_add_affected(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 2ac7a4e655f5..11aeb7435b05 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1433,8 +1433,8 @@ static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc)
+int intel_plane_add_affected(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 5cb995b2940f..4ef012c08fa4 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -83,8 +83,8 @@ void intel_plane_helper_add(struct intel_plane *plane);
 bool intel_plane_needs_physical(struct intel_plane *plane);
 void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
 					 struct intel_plane_state *new_plane_state);
-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc);
+int intel_plane_add_affected(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
 int intel_plane_atomic_check(struct intel_atomic_state *state);
 
 u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
-- 
2.39.5


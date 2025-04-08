Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8005A81222
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 18:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6627A10E704;
	Tue,  8 Apr 2025 16:22:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Td/UQSVr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C630410E701;
 Tue,  8 Apr 2025 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744129354; x=1775665354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x4CMN89fHp8zWdGOKPB/m8hya4kaaVIlXJQYCmehkao=;
 b=Td/UQSVrhyeSpVaGl+RJYdAdKw4X5QqiNGuNoBA+++4BpKlRmUDhQY8d
 TiYTEwhiSc584O6P9ubrNutVZPOExvBSlGm0khNv87kNUts5iyROCG5Df
 2eUl6qLuAst8PFrO3QtoJUwCRYE+YJGsh0D+0sRQarGsICTeaB3lPY0OI
 j1hvdXj/odP6t10nxK5rhBARpA1UgLRJ3WaSN8ts2N2sKLMCuMn3SQ30W
 SVp9NLeETMNqvD8pN2L/BO9mT96JOrZeuq587HJP3i+k0BbVj8xQ1idQN
 LJ+/xPB9kcuu87kwXkOD180pNNrZqJ5tyxeXVBVVEPxgNNUcRtu5nt6c0 w==;
X-CSE-ConnectionGUID: ikxqzT27TIuHBbinks+gsQ==
X-CSE-MsgGUID: JBHHwSC2RWq9mNRTNzgFIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62973745"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="62973745"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:34 -0700
X-CSE-ConnectionGUID: bYw9w9yiRJGDhWkpVo5POw==
X-CSE-MsgGUID: /mrNSZA+TIiWnGgSF2ok5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="159310908"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915/plane: rename intel_atomic_add_affected_planes()
 to intel_plane_add_affected()
Date: Tue,  8 Apr 2025 19:22:04 +0300
Message-Id: <f45b7fd9ebc191ea4961cee71e4e737ac4b5149d.1744129283.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744129283.git.jani.nikula@intel.com>
References: <cover.1744129283.git.jani.nikula@intel.com>
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
index 0e00e0cd9330..fa11c846613c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5467,7 +5467,7 @@ static int intel_modeset_pipe(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	ret = intel_atomic_add_affected_planes(state, crtc);
+	ret = intel_plane_add_affected(state, crtc);
 	if (ret)
 		return ret;
 
@@ -6189,7 +6189,7 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		ret = intel_atomic_add_affected_planes(state, crtc);
+		ret = intel_plane_add_affected(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index aa0dc11eab56..fecbc701bd4f 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1418,8 +1418,8 @@ static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
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
index 6bcae6312e30..930c7a7c9bd6 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -82,8 +82,8 @@ void intel_plane_helper_add(struct intel_plane *plane);
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


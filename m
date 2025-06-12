Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FED9AD6F25
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 13:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A6510E7DE;
	Thu, 12 Jun 2025 11:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gdYBwfVt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E248110E7DE;
 Thu, 12 Jun 2025 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749728254; x=1781264254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sTpskcpA6TJBVS8xtaBTeZtzxX7A3uPS57up0kVm66o=;
 b=gdYBwfVtAniu04YLXn05NlLDqoViFUxW1GlUTgdGDRNoI8cTM5f4Sy7K
 +BUV5oWanrmDTypLJcu0xUv/8QiexM9OOg4xtotr2ky1XtSR+12Vmilwi
 XGTNjPnzsH2U8Ie0OzUoKPtGsHZ1ZY39gcNF3LYdKjvMAGFyy8h1+z+NL
 z6ABMW5oE29cCw2LK1ZAZuQZlPXwAqivZucApfXk+KDUNdyCb7jM3MWYc
 cQ8+J2KOQQKOYsiVEc289aHpNpe9/0Em0onQJ0S1pEcL7bwBxQfb0a8mD
 jScpBzTtn5mkPxQ9oPPUBP8wyJCV+4YL0Oe5O/tJEhjx+ySajJ0ZLf3Ch A==;
X-CSE-ConnectionGUID: CXO/pljmTpeYswUDQcBFQw==
X-CSE-MsgGUID: ap6OBEJ8SV6AlhnGPpoTGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51820219"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51820219"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:34 -0700
X-CSE-ConnectionGUID: iuwJnuExTsGjXhw3ZdqD2w==
X-CSE-MsgGUID: VzaY7qZ/SLSBYr8d+fOUFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152484572"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 04:37:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 3/5] drm/i915/plane: make intel_plane_atomic_check() static
 and rename
Date: Thu, 12 Jun 2025 14:37:09 +0300
Message-Id: <1f019c0f2543e24167a6f15aedabeae320dbdeb3.1749728173.git.jani.nikula@intel.com>
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

intel_plane_atomic_check() isn't used outside of intel_plane.c. Make it
static. While at it, rename to vacate the name for subsequent changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_plane.h | 2 --
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index f68432d28d36..fbbe957d3f04 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -734,8 +734,8 @@ intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 	return NULL;
 }
 
-int intel_plane_atomic_check(struct intel_atomic_state *state,
-			     struct intel_plane *plane)
+static int plane_atomic_check(struct intel_atomic_state *state,
+			      struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_plane_state *new_plane_state =
@@ -1542,7 +1542,7 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
 		return ret;
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		ret = intel_plane_atomic_check(state, plane);
+		ret = plane_atomic_check(state, plane);
 		if (ret) {
 			drm_dbg_atomic(display->drm,
 				       "[PLANE:%d:%s] atomic driver check failed\n",
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 10a94b9a135c..4d69a868265c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -69,8 +69,6 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *old_plane_state,
 					struct intel_plane_state *intel_state);
-int intel_plane_atomic_check(struct intel_atomic_state *state,
-			     struct intel_plane *plane);
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       struct intel_plane *plane,
 			       bool *need_cdclk_calc);
-- 
2.39.5


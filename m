Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA0DA81220
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 18:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2FB10E707;
	Tue,  8 Apr 2025 16:22:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BqnWoTaW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2A610E713;
 Tue,  8 Apr 2025 16:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744129344; x=1775665344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yk1eEvJvIVPI/dijTRLIYBOezhgYp7E4jnzhk4k1s1M=;
 b=BqnWoTaWOMIChJ1COGanlLswUdhGV69DlFMf0YA7uufT4pld1PHKd4MD
 j0uNIEO0lWOu65cTM0HJKDXLwy+V1vN6gAVxIoYbzK4u9gEoNrWbeXM7q
 ti0IJiKAGN9Vz65uqs+RygpQu3tg2KRKmjamu20/dyDLSYiTFwodRXnWo
 DTHcgSzwBabVtm4e+q528I//UCcYD1Kbrz822Cd/Xi2HfRP8QayH4amvB
 zptL3zN7wxFidlSKolaq2gPz3iizjiOUHOJUM5yNwrCQ4k8KWVVKxIOZd
 VujxkDHtZmkMeukr49InT8SeZ1mcLMss/uKr+W6c6cFSJ30ghg74YU7D/ Q==;
X-CSE-ConnectionGUID: QcQc2rLTTJSynFwXUkSeLw==
X-CSE-MsgGUID: IvAQG5QNT/a3rTqCnl2gMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62973695"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="62973695"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:24 -0700
X-CSE-ConnectionGUID: Q2Ag0gikREeeLWNg3w+2iw==
X-CSE-MsgGUID: z/RnlFR/QtmFEOQH1efUkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="159310843"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/plane: make intel_plane_atomic_check() static
 and rename
Date: Tue,  8 Apr 2025 19:22:02 +0300
Message-Id: <8d91cd2e4cbcff327ecf6987a370b1a63233ff89.1744129283.git.jani.nikula@intel.com>
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

intel_plane_atomic_check() isn't used outside of intel_plane.c. Make it
static. While at it, rename to vacate the name for subsequent changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_plane.h | 2 --
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 9284f4a6e958..eb4fb7ed5e43 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -719,8 +719,8 @@ intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 	return NULL;
 }
 
-int intel_plane_atomic_check(struct intel_atomic_state *state,
-			     struct intel_plane *plane)
+static int plane_atomic_check(struct intel_atomic_state *state,
+			      struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_plane_state *new_plane_state =
@@ -1527,7 +1527,7 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
 		return ret;
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		ret = intel_plane_atomic_check(state, plane);
+		ret = plane_atomic_check(state, plane);
 		if (ret) {
 			drm_dbg_atomic(display->drm,
 				       "[PLANE:%d:%s] atomic driver check failed\n",
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index cdd337e45944..4d7f39acef65 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -68,8 +68,6 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
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


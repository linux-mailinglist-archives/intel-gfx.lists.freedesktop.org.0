Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8EFA71BD4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053C910E739;
	Wed, 26 Mar 2025 16:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1jLSUYM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2AE10E732;
 Wed, 26 Mar 2025 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006383; x=1774542383;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ujutl2fS1drs/vU5RSh3FkCtSSWucUmWYGhqOH7HiNw=;
 b=V1jLSUYMvEkrepLvHYzRykfeqH5/b3Ud1QiUEM6M6OWLGAf8Xk9/XTmh
 eFb4lqM6dMoUmNU//HSc2Q2z2WZ4nCM7cpi0ZO8TZGYGZqerPchM2dOB8
 rxNgJLbQFMuUIZpkKdcypwJMUBWV8AwtwQXQ0G+ujuTQhlTQT/Apgb9cy
 ZEaD2d9Z+uTVXTRgz1zm47tos2zbHKw0gSdYKWeKr8ZRvS1fM6WA7UXng
 xTjEFbVTIC4tDWwHXEE8WAcB7MfRn1e4EbeVXAdsy7nU7t/tLXkvq8OBv
 2JgMLLS3g4sSXQTrH5cyrG9esKL6f75r+dSYkMtYpBSAK+Px9n/Grwtx8 A==;
X-CSE-ConnectionGUID: 96ywn7kATQGIPSJ5xGsMDA==
X-CSE-MsgGUID: OExrpl5QR1OTBinXgcgcIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029586"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029586"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:23 -0700
X-CSE-ConnectionGUID: nwN09xVdTL6zY3a3eD/GMg==
X-CSE-MsgGUID: nHzpqowPQSW51B4JXoxjPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016441"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 11/14] drm/i915: Make intel_bw_check_sagv_mask() internal
 to intel_bw.c
Date: Wed, 26 Mar 2025 18:25:41 +0200
Message-ID: <20250326162544.3642-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

The only thing between the current intel_bw_check_sagv_mask() call
site and intel_bw_atomic_check() is skl_wm_add_affected_planes()
which no longer depends on the sagv mask, so we can make life
a lot less confusing by calling intel_bw_check_sagv_mask() from
intel_bw_atomic_check() instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h      | 1 -
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 -----
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 0553e902727e..b54704f9af4e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1443,7 +1443,7 @@ int intel_bw_modeset_checks(struct intel_atomic_state *state)
 	return 0;
 }
 
-int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
+static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -1492,6 +1492,13 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	const struct intel_bw_state *old_bw_state;
 	int ret;
 
+	if (DISPLAY_VER(i915) < 9)
+		return 0;
+
+	ret = intel_bw_check_sagv_mask(state);
+	if (ret)
+		return ret;
+
 	/* FIXME earlier gens need some checks too */
 	if (DISPLAY_VER(display) < 11)
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index ee1d437340f3..ac435674c3ed 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -67,7 +67,6 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
 int intel_bw_modeset_checks(struct intel_atomic_state *state);
-int intel_bw_check_sagv_mask(struct intel_atomic_state *state);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 int icl_pcode_restrict_qgv_points(struct intel_display *display,
 				  u32 points_mask);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 747b2b5c31bd..baf345039deb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -454,7 +454,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	int ret;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
 	int i;
@@ -485,10 +484,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			intel_crtc_can_enable_sagv(new_crtc_state);
 	}
 
-	ret = intel_bw_check_sagv_mask(state);
-	if (ret)
-		return ret;
-
 	return 0;
 }
 
-- 
2.45.3


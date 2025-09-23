Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 955F3B96FFA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1FA10E670;
	Tue, 23 Sep 2025 17:20:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZWO4Nxk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C7AF10E670;
 Tue, 23 Sep 2025 17:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648041; x=1790184041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rfKNT9OvVClNcHC+TBK+v/VrYCuaXxIBchMttbUdb2o=;
 b=FZWO4NxkRxcHwRFYgofY3TGkfcONFa3AJ6HCh7MU1jKaOriPISV9fWXK
 f14QcUq/3cEuLWNB1ggsTec2bEm7v9ybvl/Y+SudtQxtzEzTkrobiuQn/
 L8tOcEZ3ATZIf5Ok4llkQZZemq8fmerQrfAEQeiN/vzrEpG1wVCZ8+K93
 PTgxBCsBYCSVMBWSYcbmWMheygWgfNMOg6yAMR4VSynjC0J7qU/xS5YPc
 wAgNIUwNpgLdVJi+zHoaiOXFRImG9q4yn4XZ+eDx/PNOa11kUK2jQlBXy
 N3XBpAUkDxsgM8v4H0Enmfb9dHpJ9Lta5nc4zamWWMraGDM9RtG5TqvAl Q==;
X-CSE-ConnectionGUID: qchKvrx1QGaSy3fdMtuOoA==
X-CSE-MsgGUID: zoU1smJFS++7Afe3csdimQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375396"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375396"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:40 -0700
X-CSE-ConnectionGUID: gaqkGCSQQjmEp/QkZS/b6A==
X-CSE-MsgGUID: fUAETXkPQhyM1eYOlwu+ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747885"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:39 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/20] drm/i915/cdclk: Relocate intel_plane_calc_min_cdclk()
 calls
Date: Tue, 23 Sep 2025 20:19:35 +0300
Message-ID: <20250923171943.7319-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no reason to defer intel_plane_calc_min_cdclk() until
intel_cdclk_atomic_check(). Just do this as part of
intel_atomic_check_planes() (after we've added all the planes to
the state that affect the per-plane min_cdclk calculation).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 -----------
 drivers/gpu/drm/i915/display/intel_plane.c |  7 +++++--
 drivers/gpu/drm/i915/display/intel_plane.h |  2 --
 3 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b26443311e23..4e41b53ea3dc 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3306,23 +3306,12 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 {
 	const struct intel_cdclk_state *old_cdclk_state;
 	struct intel_cdclk_state *new_cdclk_state;
-	struct intel_plane_state __maybe_unused *plane_state;
-	struct intel_plane *plane;
 	int ret;
-	int i;
 
 	ret = intel_cdclk_modeset_checks(state, need_cdclk_calc);
 	if (ret)
 		return ret;
 
-	/*
-	 * active_planes bitmask has been updated, and potentially affected
-	 * planes are part of the state. We can now compute the minimum cdclk
-	 * for each plane.
-	 */
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i)
-		intel_plane_calc_min_cdclk(state, plane);
-
 	ret = intel_crtcs_calc_min_cdclk(state, need_cdclk_calc);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 871c654d6d1d..73513c7246d0 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -292,8 +292,8 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 				   rel_data_rate);
 }
 
-void intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
-				struct intel_plane *plane)
+static void intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
+				       struct intel_plane *plane)
 {
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
@@ -1703,5 +1703,8 @@ int intel_plane_atomic_check(struct intel_atomic_state *state)
 			return ret;
 	}
 
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i)
+		intel_plane_calc_min_cdclk(state, plane);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index c6bef1b3471d..4e99df9de3e8 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -69,8 +69,6 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *old_plane_state,
 					struct intel_plane_state *intel_state);
-void intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
-				struct intel_plane *plane);
 int intel_plane_check_clipping(struct intel_plane_state *plane_state,
 			       struct intel_crtc_state *crtc_state,
 			       int min_scale, int max_scale,
-- 
2.49.1


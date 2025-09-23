Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2705B97006
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB9B10E679;
	Tue, 23 Sep 2025 17:20:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Stv7MUA7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E2310E679;
 Tue, 23 Sep 2025 17:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648051; x=1790184051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s+kx+GHatWBLcqGoRFm86PrMehMlNSPaKoy4Z5r0UXQ=;
 b=Stv7MUA7S9wxY9F7VWtrd58ldDoT33KGMm+pfjrzj3tUgQ0k5Ev9PvcY
 migBExOlJTx1CCn3bVVya+qisKVzVwKQVKQfSDwwcAhKalgM9NsKa59Z6
 ucLSjw4xmCX8A9WkNLGKbWRGOQuleS+SrfyRHtMs08HJYGSQ1EkuxpVoC
 hICjhKUsUuVO60u6vV+X2PKfvoX2qF0VVKSvPTNfrRE5paASF4mvpzKlD
 shM410w3HPbXYwtX6i7+BFvJmIF053ZzWho7HmQmVQzjxlp5F5edfJwyl
 VI5H/cFmJ5121n25CwqtOfvm1ca0KyozSJIUsfvA08E3R/jjGg6S2FcaH Q==;
X-CSE-ConnectionGUID: oTl83THcTj6Ib1lzWxqKSA==
X-CSE-MsgGUID: 6DoL8PWATJiJTp3XshX1uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375407"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375407"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:51 -0700
X-CSE-ConnectionGUID: 9E+x5/3URs+GZkSkew/bAA==
X-CSE-MsgGUID: iikbTkUYTL6NEF2RHQNzhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747943"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 16/20] drm/i915/cdclk: Decuple cdclk from state->modeset
Date: Tue, 23 Sep 2025 20:19:38 +0300
Message-ID: <20250923171943.7319-17-ville.syrjala@linux.intel.com>
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

There's no real reason anymore to tie cdclk updates to
state->modeset/any_ms. Always call the cdclk functions and
allow them to decide whether cdclk update is necessary/desired
or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  6 ++++++
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 681fe862b6f8..7b828c6a7b11 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2707,6 +2707,9 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	struct intel_cdclk_config cdclk_config;
 	enum pipe pipe;
 
+	if (!new_cdclk_state)
+		return;
+
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
@@ -2759,6 +2762,9 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe;
 
+	if (!new_cdclk_state)
+		return;
+
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9e9afb4f3b4b..747283c4cefd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6285,6 +6285,7 @@ int intel_atomic_check(struct drm_device *dev,
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
+	bool need_cdclk_calc = false;
 	int ret, i;
 	bool any_ms = false;
 
@@ -6418,7 +6419,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_cdclk_atomic_check(state, &any_ms);
+	ret = intel_cdclk_atomic_check(state, &need_cdclk_calc);
 	if (ret)
 		goto fail;
 
@@ -6429,7 +6430,9 @@ int intel_atomic_check(struct drm_device *dev,
 		ret = intel_modeset_checks(state);
 		if (ret)
 			goto fail;
+	}
 
+	if (need_cdclk_calc) {
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
@@ -7341,13 +7344,13 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 */
 	intel_pmdemand_pre_plane_update(state);
 
-	if (state->modeset) {
+	if (state->modeset)
 		drm_atomic_helper_update_legacy_modeset_state(display->drm, &state->base);
 
-		intel_set_cdclk_pre_plane_update(state);
+	intel_set_cdclk_pre_plane_update(state);
 
+	if (state->modeset)
 		intel_modeset_verify_disabled(state);
-	}
 
 	intel_sagv_pre_plane_update(state);
 
@@ -7460,8 +7463,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_verify_planes(state);
 
 	intel_sagv_post_plane_update(state);
-	if (state->modeset)
-		intel_set_cdclk_post_plane_update(state);
+	intel_set_cdclk_post_plane_update(state);
 	intel_pmdemand_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
-- 
2.49.1


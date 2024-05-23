Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9F68CD9EE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD9610F133;
	Thu, 23 May 2024 18:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jOsQXM+D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BC2510E047
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 18:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716488904; x=1748024904;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F9Qsva9omaWSoy8LhYCndWi9jN6VEHQ5F5lfgJSo8O4=;
 b=jOsQXM+DPnAJThJ0eaDPIgYXfbPsDrx6OTTX2ULwnekJr23w4r1TMz3c
 niLAcQ0wryQg2GmHZhQ54R+0/QYbS3C6Ojtn3MHRqN/6jevKSVvDTXt7Y
 sih8w57T9IT7xIU3K7kg0791d+5WlosUOb99EO9Z11Rs4Xyy9xFO+bt5o
 jj36Q3PwXBD+PsGEOVDnjWrkoKMCOyI2SCrzNI9Hg+kODmXrP+tnxeX+q
 xE/t+TiAcvvgBy+PvMGWBGajoT3nBv8FqzeUYV4GtEOdduVJe22YDa8k8
 C+PnMp9LhfAnZRdlfcATAMLCgWT3g/PKNavzxKwtyBBlM8laeNonvrigh w==;
X-CSE-ConnectionGUID: Ln0IeU8bS7qXxPLhgbnaIg==
X-CSE-MsgGUID: kbeQ1GozTz6W8UaP97sklA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12665087"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12665087"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:28:24 -0700
X-CSE-ConnectionGUID: Ec3nkOqjTfiHjDDeBRcczA==
X-CSE-MsgGUID: MFn8ijIqTR2yDsujm30Xhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33730540"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 11:28:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 21:28:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Plumb the entire atomic state into
 intel_color_check()
Date: Thu, 23 May 2024 21:28:16 +0300
Message-ID: <20240523182818.15382-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
References: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
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

Bunch of stuff in intel_color_check() needs to look at both the
old and new crtc states. Currently we do that by digging the
full atomic state via the crtc_state->state pointer. That thing
is a total footgun if I ever saw one, as it's only valid during
specific parts of the atomic flow. A lot of people have been
bitten by this thing in the past when trying to use it after
it's no longer valid.

Take a small step towards elimination of the footgun by not
using it in the inte_color_check(). Instead we plumb in the
entire atomic state all the way from the top.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 111 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_color.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 3 files changed, 69 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 82b155708422..ede628b58a5c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -30,7 +30,8 @@
 #include "intel_dsb.h"
 
 struct intel_color_funcs {
-	int (*color_check)(struct intel_crtc_state *crtc_state);
+	int (*color_check)(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc);
 	/*
 	 * Program non-arming double buffered color management registers
 	 * before vblank evasion. The registers should then latch after
@@ -1942,11 +1943,9 @@ bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
 	return crtc_state->dsb;
 }
 
-static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
+static bool intel_can_preload_luts(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(new_crtc_state->uapi.state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 
@@ -1954,11 +1953,9 @@ static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state
 		!old_crtc_state->pre_csc_lut;
 }
 
-static bool vlv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
+static bool vlv_can_preload_luts(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(new_crtc_state->uapi.state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 
@@ -1966,13 +1963,13 @@ static bool vlv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 		!old_crtc_state->post_csc_lut;
 }
 
-static bool chv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
+static bool chv_can_preload_luts(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(new_crtc_state->uapi.state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	/*
 	 * CGM_PIPE_MODE is itself single buffered. We'd have to
@@ -1982,14 +1979,15 @@ static bool chv_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
 	if (old_crtc_state->cgm_mode || new_crtc_state->cgm_mode)
 		return false;
 
-	return vlv_can_preload_luts(new_crtc_state);
+	return vlv_can_preload_luts(state, crtc);
 }
 
-int intel_color_check(struct intel_crtc_state *crtc_state)
+int intel_color_check(struct intel_atomic_state *state,
+		      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
-	return i915->display.funcs.color->color_check(crtc_state);
+	return i915->display.funcs.color->color_check(state, crtc);
 }
 
 void intel_color_get_config(struct intel_crtc_state *crtc_state)
@@ -2039,14 +2037,14 @@ static bool need_plane_update(struct intel_plane *plane,
 }
 
 static int
-intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
+intel_color_add_affected_planes(struct intel_atomic_state *state,
+				struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(new_crtc_state->uapi.state);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane *plane;
 
 	if (!new_crtc_state->hw.active ||
@@ -2240,9 +2238,12 @@ static void intel_assign_luts(struct intel_crtc_state *crtc_state)
 				  crtc_state->hw.gamma_lut);
 }
 
-static int i9xx_color_check(struct intel_crtc_state *crtc_state)
+static int i9xx_color_check(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -2262,13 +2263,13 @@ static int i9xx_color_check(struct intel_crtc_state *crtc_state)
 			return ret;
 	}
 
-	ret = intel_color_add_affected_planes(crtc_state);
+	ret = intel_color_add_affected_planes(state, crtc);
 	if (ret)
 		return ret;
 
 	intel_assign_luts(crtc_state);
 
-	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = intel_can_preload_luts(state, crtc);
 
 	return 0;
 }
@@ -2277,8 +2278,11 @@ static int i9xx_color_check(struct intel_crtc_state *crtc_state)
  * VLV color pipeline:
  * u0.10 -> WGC csc -> u0.10 -> pipe gamma -> u0.10
  */
-static int vlv_color_check(struct intel_crtc_state *crtc_state)
+static int vlv_color_check(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -2293,7 +2297,7 @@ static int vlv_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->wgc_enable = crtc_state->hw.ctm;
 
-	ret = intel_color_add_affected_planes(crtc_state);
+	ret = intel_color_add_affected_planes(state, crtc);
 	if (ret)
 		return ret;
 
@@ -2301,7 +2305,7 @@ static int vlv_color_check(struct intel_crtc_state *crtc_state)
 
 	vlv_assign_csc(crtc_state);
 
-	crtc_state->preload_luts = vlv_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = vlv_can_preload_luts(state, crtc);
 
 	return 0;
 }
@@ -2336,8 +2340,11 @@ static u32 chv_cgm_mode(const struct intel_crtc_state *crtc_state)
  * We always bypass the WGC csc and use the CGM csc
  * instead since it has degamma and better precision.
  */
-static int chv_color_check(struct intel_crtc_state *crtc_state)
+static int chv_color_check(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -2362,7 +2369,7 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
 	 */
 	crtc_state->wgc_enable = false;
 
-	ret = intel_color_add_affected_planes(crtc_state);
+	ret = intel_color_add_affected_planes(state, crtc);
 	if (ret)
 		return ret;
 
@@ -2370,7 +2377,7 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
 
 	chv_assign_csc(crtc_state);
 
-	crtc_state->preload_luts = chv_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = chv_can_preload_luts(state, crtc);
 
 	return 0;
 }
@@ -2454,9 +2461,12 @@ static int ilk_assign_luts(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int ilk_color_check(struct intel_crtc_state *crtc_state)
+static int ilk_color_check(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -2484,7 +2494,7 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->csc_mode = ilk_csc_mode(crtc_state);
 
-	ret = intel_color_add_affected_planes(crtc_state);
+	ret = intel_color_add_affected_planes(state, crtc);
 	if (ret)
 		return ret;
 
@@ -2494,7 +2504,7 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
 
 	ilk_assign_csc(crtc_state);
 
-	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = intel_can_preload_luts(state, crtc);
 
 	return 0;
 }
@@ -2555,9 +2565,12 @@ static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int ivb_color_check(struct intel_crtc_state *crtc_state)
+static int ivb_color_check(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -2592,7 +2605,7 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->csc_mode = ivb_csc_mode(crtc_state);
 
-	ret = intel_color_add_affected_planes(crtc_state);
+	ret = intel_color_add_affected_planes(state, crtc);
 	if (ret)
 		return ret;
 
@@ -2602,7 +2615,7 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 
 	ilk_assign_csc(crtc_state);
 
-	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = intel_can_preload_luts(state, crtc);
 
 	return 0;
 }
@@ -2686,9 +2699,12 @@ static int glk_check_luts(const struct intel_crtc_state *crtc_state)
 	return _check_luts(crtc_state, degamma_tests, gamma_tests);
 }
 
-static int glk_color_check(struct intel_crtc_state *crtc_state)
+static int glk_color_check(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = glk_check_luts(crtc_state);
@@ -2725,7 +2741,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 
 	crtc_state->csc_mode = 0;
 
-	ret = intel_color_add_affected_planes(crtc_state);
+	ret = intel_color_add_affected_planes(state, crtc);
 	if (ret)
 		return ret;
 
@@ -2735,7 +2751,7 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 
 	ilk_assign_csc(crtc_state);
 
-	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = intel_can_preload_luts(state, crtc);
 
 	return 0;
 }
@@ -2783,8 +2799,11 @@ static u32 icl_csc_mode(const struct intel_crtc_state *crtc_state)
 	return csc_mode;
 }
 
-static int icl_color_check(struct intel_crtc_state *crtc_state)
+static int icl_color_check(struct intel_atomic_state *state,
+			   struct intel_crtc *crtc)
 {
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -2799,7 +2818,7 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 
 	icl_assign_csc(crtc_state);
 
-	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
+	crtc_state->preload_luts = intel_can_preload_luts(state, crtc);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 8ecd36149def..21ba4aa02e7b 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct intel_atomic_state;
 struct intel_crtc_state;
 struct intel_crtc;
 struct drm_i915_private;
@@ -16,7 +17,8 @@ struct drm_property_blob;
 void intel_color_init_hooks(struct drm_i915_private *i915);
 int intel_color_init(struct drm_i915_private *i915);
 void intel_color_crtc_init(struct intel_crtc *crtc);
-int intel_color_check(struct intel_crtc_state *crtc_state);
+int intel_color_check(struct intel_atomic_state *state,
+		      struct intel_crtc *crtc);
 void intel_color_prepare_commit(struct intel_crtc_state *crtc_state);
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
 bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1e8e2fd52cf6..3b2765b371f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4255,7 +4255,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->uapi.color_mgmt_changed = true;
 
 	if (intel_crtc_needs_color_update(crtc_state)) {
-		ret = intel_color_check(crtc_state);
+		ret = intel_color_check(state, crtc);
 		if (ret)
 			return ret;
 	}
-- 
2.44.1


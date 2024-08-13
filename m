Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7033B950A77
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 18:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1721310E390;
	Tue, 13 Aug 2024 16:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePkPVsFk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEAD510E38F;
 Tue, 13 Aug 2024 16:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723567294; x=1755103294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=29qx3prGEpZ3NbEcGlS5B2IymoOgxl5od+M+/TdAsPM=;
 b=ePkPVsFksSpA1YgNgU/ZY9Eg9GYDfm/VGfJ7FqA6komsLrRdAA9Ap2mF
 LZRDcQenrnmd2jmUH/Ecep7vXZKENVgb3ET49RH45tOacyqW8az38S+2v
 A6tm6hMgajKwUC3r57iug5//qCWQlYhkIxFEu0zsri9xVcS5nE7r9XLYa
 yMs6/P03jjceFSpjffQsruDsKxEOPMU2YSKeRXyFG1z9QydPR698Al8ZW
 cmw4w+f89Nful+zZCD0Md3Sk04jqHxOqdRYRuFTlbmCi20wQ1PHErAWU+
 UJmJRGIdMJvRmcg3Wb5vSBp6u7rGBvyiAq9J73SrKtKasWZEbTtKzCioo A==;
X-CSE-ConnectionGUID: smEgBOAzSDibDgXUgzBkbA==
X-CSE-MsgGUID: Vb6/7XeRRr6VLMhnFyk0zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21714812"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="21714812"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:34 -0700
X-CSE-ConnectionGUID: 7Ox11VwjTE6iv2iYxTDOpg==
X-CSE-MsgGUID: s4LinbtbQd6cQp2n54g04g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="58611717"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/7] drm/i915/display: convert intel_link_bw.c to struct
 intel_display
Date: Tue, 13 Aug 2024 19:41:18 +0300
Message-Id: <20240813164123.2674462-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813164123.2674462-1-jani.nikula@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_link_bw.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_link_bw.c | 25 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_link_bw.h |  2 --
 2 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index 5db0724b6520..e7a9b860fac6 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -25,12 +25,13 @@
 void intel_link_bw_init_limits(struct intel_atomic_state *state,
 			       struct intel_link_bw_limits *limits)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	enum pipe pipe;
 
 	limits->force_fec_pipes = 0;
 	limits->bpp_limit_reached_pipes = 0;
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		const struct intel_crtc_state *crtc_state =
 			intel_atomic_get_new_crtc_state(state,
 							intel_crtc_for_pipe(i915, pipe));
@@ -69,12 +70,12 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 			     u8 pipe_mask,
 			     const char *reason)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	enum pipe max_bpp_pipe = INVALID_PIPE;
 	struct intel_crtc *crtc;
 	int max_bpp_x16 = 0;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state;
 		int link_bpp_x16;
 
@@ -136,7 +137,7 @@ intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
 				     struct intel_link_bw_limits *new_limits,
 				     enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
 	if (pipe == INVALID_PIPE)
 		return false;
@@ -145,7 +146,7 @@ intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
 	    old_limits->max_bpp_x16[pipe])
 		return false;
 
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			new_limits->bpp_limit_reached_pipes & BIT(pipe)))
 		return false;
 
@@ -178,7 +179,7 @@ static int check_all_link_config(struct intel_atomic_state *state,
 }
 
 static bool
-assert_link_limit_change_valid(struct drm_i915_private *i915,
+assert_link_limit_change_valid(struct intel_display *display,
 			       const struct intel_link_bw_limits *old_limits,
 			       const struct intel_link_bw_limits *new_limits)
 {
@@ -186,14 +187,14 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
 	enum pipe pipe;
 
 	/* FEC can't be forced off after it was forced on. */
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			(old_limits->force_fec_pipes & new_limits->force_fec_pipes) !=
 			old_limits->force_fec_pipes))
 		return false;
 
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		/* The bpp limit can only decrease. */
-		if (drm_WARN_ON(&i915->drm,
+		if (drm_WARN_ON(display->drm,
 				new_limits->max_bpp_x16[pipe] >
 				old_limits->max_bpp_x16[pipe]))
 			return false;
@@ -204,7 +205,7 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
 	}
 
 	/* At least one limit must change. */
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			!bpps_changed &&
 			new_limits->force_fec_pipes ==
 			old_limits->force_fec_pipes))
@@ -232,7 +233,7 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
 int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 			       struct intel_link_bw_limits *new_limits)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_link_bw_limits old_limits = *new_limits;
 	int ret;
 
@@ -240,7 +241,7 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 	if (ret != -EAGAIN)
 		return ret;
 
-	if (!assert_link_limit_change_valid(i915, &old_limits, new_limits))
+	if (!assert_link_limit_change_valid(display, &old_limits, new_limits))
 		return -EINVAL;
 
 	return -EAGAIN;
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
index 6b0ccfff59da..e69049cf178f 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -10,8 +10,6 @@
 
 #include "intel_display_limits.h"
 
-struct drm_i915_private;
-
 struct intel_atomic_state;
 struct intel_crtc_state;
 
-- 
2.39.2


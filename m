Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7012696BF85
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D05210E7D2;
	Wed,  4 Sep 2024 14:03:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAC7LGAM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B7010E7D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 14:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725458592; x=1756994592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=50JZJyeYBAZcAPbPwIlUC5GFQlYWWbfEU1VuB1tkjXc=;
 b=AAC7LGAMVmFWfs7Q738hGBKvgWjrDS5e7M5OsLrnyoWnBYkc+9+643C8
 cV/bzLUxHAcTg43q7N2qYoXf7VXmC0ruPsJgwf/QnP0aEfPXdv1eMPwNG
 4JePfm5YHLIW9MnDBIryiJQvvz9yKjiqeME6JnFYwT5qA2Uv7IKv8h+YY
 s2ee19N+wKqEabLo4fMMW4H2gLr4eldVt5e8Ast6joYOnSau9Vie4lf8R
 013QT9ln3cmU37LBJZaSHe47pOlWcRuq22tM9BOTxK6Y7LWgReSK0ytoN
 RdTxtUWKT32KsOxMckidK7eXwRxEAU+3/uWlY2PdWmLZqSAthL4JsKfyB A==;
X-CSE-ConnectionGUID: ojG6uzmIRh6q1XT8tXHhPg==
X-CSE-MsgGUID: cQ2MfKMiQJK0pFX9WzTQHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34784321"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34784321"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:03:12 -0700
X-CSE-ConnectionGUID: nG7hkLyFTfqLF6T0KdrYqg==
X-CSE-MsgGUID: XKf1FfyKQQK7DZ1U4FVlpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66013007"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:03:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/4] drm/i915/pps: add intel_pps_backlight_initial_pipe()
Date: Wed,  4 Sep 2024 17:02:34 +0300
Message-Id: <e953cffaf1588668e6541e09d77aa1d21cfa8361.1725458428.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725458428.git.jani.nikula@intel.com>
References: <cover.1725458428.git.jani.nikula@intel.com>
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

Add intel_pps_backlight_initial_pipe() and move the VLV/CHV initial
backlight pipe logic there, hiding the PPS pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 18 ++----------------
 drivers/gpu/drm/i915/display/intel_pps.c | 24 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h |  1 +
 3 files changed, 27 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d1c02de97f5b..e7e0f574d66e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6602,23 +6602,9 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 				      struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	enum pipe pipe = INVALID_PIPE;
-
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		/*
-		 * Figure out the current pipe for the initial backlight setup.
-		 * If the current pipe isn't valid, try the PPS pipe, and if that
-		 * fails just assume pipe A.
-		 */
-		pipe = vlv_active_pipe(intel_dp);
-
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = intel_dp->pps.pps_pipe;
+	enum pipe pipe;
 
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = PIPE_A;
-	}
+	pipe = intel_pps_backlight_initial_pipe(intel_dp);
 
 	intel_backlight_setup(connector, pipe);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index a7f7e5e1f3aa..5382a1a0dbac 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1071,6 +1071,30 @@ void intel_pps_off(struct intel_dp *intel_dp)
 		intel_pps_off_unlocked(intel_dp);
 }
 
+enum pipe intel_pps_backlight_initial_pipe(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	enum pipe pipe = INVALID_PIPE;
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		/*
+		 * Figure out the current pipe for the initial backlight setup.
+		 * If the current pipe isn't valid, try the PPS pipe, and if that
+		 * fails just assume pipe A.
+		 */
+		pipe = vlv_active_pipe(intel_dp);
+
+		if (pipe != PIPE_A && pipe != PIPE_B)
+			pipe = intel_dp->pps.pps_pipe;
+
+		if (pipe != PIPE_A && pipe != PIPE_B)
+			pipe = PIPE_A;
+	}
+
+	return pipe;
+}
+
 /* Enable backlight in the panel power control. */
 void intel_pps_backlight_on(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 42f0377a93a8..7a23c9d9aebf 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -23,6 +23,7 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wake
 #define with_intel_pps_lock(dp, wf)						\
 	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
 
+enum pipe intel_pps_backlight_initial_pipe(struct intel_dp *intel_dp);
 void intel_pps_backlight_on(struct intel_dp *intel_dp);
 void intel_pps_backlight_off(struct intel_dp *intel_dp);
 void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
-- 
2.39.2


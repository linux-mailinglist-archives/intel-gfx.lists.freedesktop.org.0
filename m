Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB6D9B3AB3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7E110E555;
	Mon, 28 Oct 2024 19:49:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="llzPX36Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC76910E555;
 Mon, 28 Oct 2024 19:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144960; x=1761680960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyChcYEzZzYIBXJcn7ycO6aT+lkCBPQoKj1S2OaTY2k=;
 b=llzPX36Zjp7Fsn7HkL34QvAKQBlO39vHy4NkMxv465D3z/sflP7qH0AU
 7jLzw/ZNLlNMEvFibpk1Q2iM9oqT2zcDbMqvQNAU4kDrBMbx9Y1DVW9Nm
 rdqedHNLWmJiPLWLwhmPWuBR/qSVTuB02T3aEOXZg7aw/Cj8VCJiB6yo4
 jsraFr89pdDu7lA6mHNJvEwIQqBhqyP9RBplKqD8ga0nq5qJcoJSg65io
 tMWAVPXyop71h4BAfHkgYSWXF4T1bc2qpgGuPXWWAd0W/FLdl3fMjXX/S
 hNDQ4kfHUHntiIZy9hzLApT+1mIaV4uOhwkOV8Di2ftGYisqd+58CsqEv A==;
X-CSE-ConnectionGUID: UvgZccM5QYKp/gJQMRMiRQ==
X-CSE-MsgGUID: kvfjTJBWT0emtka4oVwSvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40857839"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40857839"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:19 -0700
X-CSE-ConnectionGUID: 4XGlW7AqRzy4+t50Uann/g==
X-CSE-MsgGUID: 1+cMZauaQA6fIX/WyHyw6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81780242"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 04/16] drm/i915/display: join the platform and
 subplatform enums
Date: Mon, 28 Oct 2024 21:48:37 +0200
Message-Id: <de274ffcd06a249a3983905b285c05d1c89953a8.1730144869.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
References: <cover.1730144869.git.jani.nikula@intel.com>
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

We'll want to use the subplatforms similar to platforms. Join the
subplatforms next to their corresponding platforms. Update the comment
while at it.

v2: Put the subplatforms next to the platforms

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../drm/i915/display/intel_display_device.h   | 54 +++++++++----------
 2 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3330ec1bf2cf..787f231926ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -31,7 +31,7 @@ struct stepping_desc {
 	.step_info.size = ARRAY_SIZE(_map)
 
 struct subplatform_desc {
-	enum intel_display_subplatform subplatform;
+	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
 	struct stepping_desc step_info;
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 39da0c25c0b5..479f0705f2f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -14,7 +14,11 @@
 struct drm_i915_private;
 struct drm_printer;
 
-/* Keep in gen based order, and chronological order within a gen */
+/*
+ * Display platforms and subplatforms. Keep platforms in display version based
+ * order, chronological order within a version, and subplatforms next to the
+ * platform.
+ */
 #define INTEL_DISPLAY_PLATFORMS(func) \
 	func(PLATFORM_UNINITIALIZED) \
 	/* Display ver 2 */ \
@@ -42,28 +46,49 @@ struct drm_printer;
 	func(IVYBRIDGE) \
 	func(VALLEYVIEW) \
 	func(HASWELL) \
+	func(HASWELL_ULT) \
+	func(HASWELL_ULX) \
 	/* Display ver 8 */ \
 	func(BROADWELL) \
+	func(BROADWELL_ULT) \
+	func(BROADWELL_ULX) \
 	func(CHERRYVIEW) \
 	/* Display ver 9 */ \
 	func(SKYLAKE) \
+	func(SKYLAKE_ULT) \
+	func(SKYLAKE_ULX) \
 	func(BROXTON) \
 	func(KABYLAKE) \
+	func(KABYLAKE_ULT) \
+	func(KABYLAKE_ULX) \
 	func(GEMINILAKE) \
 	func(COFFEELAKE) \
+	func(COFFEELAKE_ULT) \
+	func(COFFEELAKE_ULX) \
 	func(COMETLAKE) \
+	func(COMETLAKE_ULT) \
+	func(COMETLAKE_ULX) \
 	/* Display ver 11 */ \
 	func(ICELAKE) \
+	func(ICELAKE_PORT_F) \
 	func(JASPERLAKE) \
 	func(ELKHARTLAKE) \
 	/* Display ver 12 */ \
 	func(TIGERLAKE) \
+	func(TIGERLAKE_UY) \
 	func(ROCKETLAKE) \
 	func(DG1) \
 	func(ALDERLAKE_S) \
+	func(ALDERLAKE_S_RAPTORLAKE_S) \
 	/* Display ver 13 */ \
 	func(ALDERLAKE_P) \
+	func(ALDERLAKE_P_ALDERLAKE_N) \
+	func(ALDERLAKE_P_RAPTORLAKE_P) \
+	func(ALDERLAKE_P_RAPTORLAKE_U) \
 	func(DG2) \
+	func(DG2_G10) \
+	func(DG2_G11) \
+	func(DG2_G12) \
 	/* Display ver 14 (based on GMD ID) */ \
 	func(METEORLAKE) \
 	/* Display ver 20 (based on GMD ID) */ \
@@ -81,31 +106,6 @@ enum intel_display_platform {
 
 #undef __ENUM
 
-enum intel_display_subplatform {
-	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
-	INTEL_DISPLAY_HASWELL_ULT,
-	INTEL_DISPLAY_HASWELL_ULX,
-	INTEL_DISPLAY_BROADWELL_ULT,
-	INTEL_DISPLAY_BROADWELL_ULX,
-	INTEL_DISPLAY_SKYLAKE_ULT,
-	INTEL_DISPLAY_SKYLAKE_ULX,
-	INTEL_DISPLAY_KABYLAKE_ULT,
-	INTEL_DISPLAY_KABYLAKE_ULX,
-	INTEL_DISPLAY_COFFEELAKE_ULT,
-	INTEL_DISPLAY_COFFEELAKE_ULX,
-	INTEL_DISPLAY_COMETLAKE_ULT,
-	INTEL_DISPLAY_COMETLAKE_ULX,
-	INTEL_DISPLAY_ICELAKE_PORT_F,
-	INTEL_DISPLAY_TIGERLAKE_UY,
-	INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S,
-	INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N,
-	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P,
-	INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U,
-	INTEL_DISPLAY_DG2_G10,
-	INTEL_DISPLAY_DG2_G11,
-	INTEL_DISPLAY_DG2_G12,
-};
-
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
@@ -216,7 +216,7 @@ enum intel_display_subplatform {
 
 struct intel_display_runtime_info {
 	enum intel_display_platform platform;
-	enum intel_display_subplatform subplatform;
+	enum intel_display_platform subplatform;
 
 	struct intel_display_ip_ver {
 		u16 ver;
-- 
2.39.5


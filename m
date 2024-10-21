Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573199A6B1E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034F310E512;
	Mon, 21 Oct 2024 13:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZL9D2qyz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA56710E50E;
 Mon, 21 Oct 2024 13:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518886; x=1761054886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyChcYEzZzYIBXJcn7ycO6aT+lkCBPQoKj1S2OaTY2k=;
 b=ZL9D2qyzEHMt1TKBpRqe2QvJ60MK4hmldxwh8V3xDwQLDjlj/amUrTn+
 dXUm532ZjwUk2ySQalwUkVUAkSr+Twx4WseZV3qhbM8zBrR/vXA7JqLFS
 znuFAYvft8/xDgrhXet5c0Mq0Qd6DBJvBhUyRNuLIchGJfSQX3ysE6COO
 LXCCoCc78RGR7tcLAS3y76fjVQBYCW6b9xHdgPsgMaUALL2gtkdiEBeEa
 Cn08tkVuVIGbpvx1uyMjnLbASDOD25mzZVmbac+Q87hs3ypfGsxyPDK4m
 3CxIfpW6/TI+FqD0cGH3PGKRu1//n8q7BNi3oLvzFkrsqLsysNPms5Md1 Q==;
X-CSE-ConnectionGUID: +sX/czeUSKaXTD2PgshS0g==
X-CSE-MsgGUID: Xl+IBrKER3WO+WjEZ4qBRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39540520"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39540520"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:45 -0700
X-CSE-ConnectionGUID: xF1D0aWjRhGETwJnH72YWQ==
X-CSE-MsgGUID: JZyHMEN4S4S+3mPTHHLAAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="83547863"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 04/15] drm/i915/display: join the platform and subplatform
 enums
Date: Mon, 21 Oct 2024 16:54:05 +0300
Message-Id: <212950b6fe40bbb1b784f31af3384443a0cb43c1.1729518793.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729518793.git.jani.nikula@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
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


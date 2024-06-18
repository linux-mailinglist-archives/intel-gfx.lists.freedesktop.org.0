Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E33E90D49C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 16:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2178510E6B1;
	Tue, 18 Jun 2024 14:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOdrLs2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0351F10E6AF;
 Tue, 18 Jun 2024 14:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720614; x=1750256614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eqzp0UIeFDdm6i16hkas4t202GRI0dEzo2njO9rF7FU=;
 b=WOdrLs2n+2/nC307Te+qGWMOEamhnam2ydArF81oGH+QAjyNyui7GVhZ
 i5Ph/bmzLhD5ods11VckKVP8YhtXyw+ihfGuUancyn8fOhsU3U67noUYS
 d1V792fjhy5RgRw8QPfPhCbw46NN+vF7YVUI3h3HJKtndo4+ktRvlGCMo
 VkZKCVW1+8UAgjk1sSxweD6UXwCbfC5j79CHrsZ9cp3FdNrOaJ9K0ud2Y
 9hxqm2KJrCc8Rxotjj3YzoHvfNgcArNQDdm7UJ/MJ+LD1kczA7oqs5Cid
 eu1D5Jn3Wscf0ZgBGgNSzHQgJKGghgt/pHNHq1ZVzXh5ajNWMstDpSYQR g==;
X-CSE-ConnectionGUID: PKuioJmiSBaSFdYJJOCLWQ==
X-CSE-MsgGUID: W9fULUJmTMWmCY1nKzNsPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15365334"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15365334"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:21 -0700
X-CSE-ConnectionGUID: jtLi4Fs5Sgmt1TXNXjcNGw==
X-CSE-MsgGUID: q02BdYV1TB6FoWB2CsrDfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41495499"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: [PATCH 3/6] drm/i915/display: join the platform and subplatform macros
Date: Tue, 18 Jun 2024 17:22:53 +0300
Message-Id: <e1f5f421c45a271f8fd0ca45956f70aeca855b5b.1718719962.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718719962.git.jani.nikula@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
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

We'll want to use the subplatforms similar to platforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../drm/i915/display/intel_display_device.h   | 51 +++++++++----------
 2 files changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index d900c30907ac..80563af7ac71 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -21,7 +21,7 @@ __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
 struct subplatform_desc {
-	enum intel_display_subplatform subplatform;
+	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index aca3dfd5e7af..50485235ef09 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -69,7 +69,29 @@ struct drm_printer;
 	/* Display ver 20 (based on GMD ID) */ \
 	func(LUNARLAKE) \
 	/* Display ver 14.1 (based on GMD ID) */ \
-	func(BATTLEMAGE)
+	func(BATTLEMAGE) \
+	/* Subplatforms */ \
+	func(HASWELL_ULT) \
+	func(HASWELL_ULX) \
+	func(BROADWELL_ULT) \
+	func(BROADWELL_ULX) \
+	func(SKYLAKE_ULT) \
+	func(SKYLAKE_ULX) \
+	func(KABYLAKE_ULT) \
+	func(KABYLAKE_ULX) \
+	func(COFFEELAKE_ULT) \
+	func(COFFEELAKE_ULX) \
+	func(COMETLAKE_ULT) \
+	func(COMETLAKE_ULX) \
+	func(ICELAKE_PORT_F) \
+	func(TIGERLAKE_UY) \
+	func(ALDERLAKE_S_RAPTORLAKE_S) \
+	func(ALDERLAKE_P_ALDERLAKE_N) \
+	func(ALDERLAKE_P_RAPTORLAKE_P) \
+	func(ALDERLAKE_P_RAPTORLAKE_U) \
+	func(DG2_G10) \
+	func(DG2_G11) \
+	func(DG2_G12)
 
 #define ENUM(x) INTEL_DISPLAY_ ## x,
 
@@ -79,31 +101,6 @@ enum intel_display_platform {
 
 #undef ENUM
 
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
@@ -203,7 +200,7 @@ enum intel_display_subplatform {
 
 struct intel_display_runtime_info {
 	enum intel_display_platform platform;
-	enum intel_display_subplatform subplatform;
+	enum intel_display_platform subplatform;
 
 	struct intel_display_ip_ver {
 		u16 ver;
-- 
2.39.2


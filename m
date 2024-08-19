Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA529573C6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 994D610E265;
	Mon, 19 Aug 2024 18:45:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ceUPZIJZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C9AF10E246;
 Mon, 19 Aug 2024 18:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093102; x=1755629102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xJm813J2lSrBrTZaCZceWxGkSApEgtj+N3wc6A8BTow=;
 b=ceUPZIJZM/Co9NPvstVQDvOGd+wSE8irQ0A2mIvU00jDPzvP9GnZ271G
 JCWknZf0shZAtXW0caooI1VJgY64Ze5WuRK/uFuc8sk87BE1+Kv2idNtK
 MRsIxiV/3ZyDrzPb6r/WyDUYGHw1iPKx/e/q2KnqyGcBb7gOOj0g+mDpD
 Kv1K/NxgqbSHTO7F4lRi+Lwn4PCcyBaJZsxLFg8YyBE5YB2GDr+hArfaq
 zwvPaboNEPkmQcx7vyZZGJpcdN7YeCiebCIfffaRvm53RJLcC9+VMiG4X
 tgkjDkCBP+u8m4dA9SlOA7FpiXodmU6d3cMaqTNPuWY6ET6z9joK5ECyk g==;
X-CSE-ConnectionGUID: pB6BzRePTyW7hkLh4ryKbg==
X-CSE-MsgGUID: Z1cPPk1cTnaDCtLoiyIksg==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26157493"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="26157493"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:02 -0700
X-CSE-ConnectionGUID: k2HfDYLETRGvjzUc/r0vbA==
X-CSE-MsgGUID: bFUEHoI+RASBxHdhB/sBaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="97940333"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:44:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 3/9] drm/i915/display: join the platform and subplatform
 enums
Date: Mon, 19 Aug 2024 21:44:30 +0300
Message-Id: <31fb575ec6334d484c1cb1cdd5d7abb5e849cdcb.1724092799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724092799.git.jani.nikula@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  2 +-
 .../drm/i915/display/intel_display_device.h   | 51 +++++++++----------
 2 files changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 7bb7348b96d8..336cc8e717f5 100644
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
index f5c9bba3baa2..0a78f7438035 100644
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
 
 #define __ENUM(x) INTEL_DISPLAY_ ## x,
 
@@ -79,31 +101,6 @@ enum intel_display_platform {
 
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
@@ -203,7 +200,7 @@ enum intel_display_subplatform {
 
 struct intel_display_runtime_info {
 	enum intel_display_platform platform;
-	enum intel_display_subplatform subplatform;
+	enum intel_display_platform subplatform;
 
 	struct intel_display_ip_ver {
 		u16 ver;
-- 
2.39.2


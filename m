Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AB2958E63
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDBC10E874;
	Tue, 20 Aug 2024 19:01:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5yKlRl/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD7710E874;
 Tue, 20 Aug 2024 19:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180502; x=1755716502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dKC8ES1P2a7ZMLpsuSsLnpndl4BssqnMKQb9ayS9OL8=;
 b=l5yKlRl/EGInaO65Vo6yJjGf9Ea8bOca/k8a01ZP1qAMWroJmaeY7u9i
 /sDqf9SMURRHVHb2WHi3CzqMIDmhP66kL5Yu+TtvjC3S4yy+k63Ia8iNX
 pRxmbvPr/xUscKK5S3c2+g/vhUpd4vw1fisohBQNjzTukuh58G9delggc
 0qfVqXXXsfimHRLSt9ejsChONO6z0ybSIeGoy4ItZ3KwHPwA5BOK2etvu
 DFWmOmu3YbKKsCGdU8zWHdCbnIJ2rARjZyfd3OTOBADKuL8xF1jkH0+jI
 Q4VmhDwyyyclzQxzAxwLA+yDetTYK7hOi5Dj2keSWKrAmQ0vwoe3A4eMc g==;
X-CSE-ConnectionGUID: trA5QMX1SbiWsJZaStZ/MA==
X-CSE-MsgGUID: d0xEnIloS3aRGGzvNJ2uUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26258512"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="26258512"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:40 -0700
X-CSE-ConnectionGUID: mreWK0+aSf+gRTe9ETou+g==
X-CSE-MsgGUID: 0zgptS1vTiCTrM5J8NTB0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="61362253"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 08/10] drm/i915/display: switch to display detected steppings
Date: Tue, 20 Aug 2024 22:00:41 +0300
Message-Id: <ce8bb94e1a801d3c345f1810837bdd1964c3af75.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
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

Move the stepping related macros over to display. We can proceed to
remove the compat macros from xe.

Note: Looks like we've failed to actually initialize the display
stepping for GMD ID based platforms in the xe driver. It does get set in
display runtime info, but until now the compat macro used
xe->info.step.display which was not set for GMD ID.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_device.h | 6 ++++++
 drivers/gpu/drm/i915/i915_drv.h                     | 5 -----
 drivers/gpu/drm/i915/intel_device_info.c            | 1 -
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 5 -----
 5 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1ac3ab3954a1..06b55ae38a44 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1711,6 +1711,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 		drm_printf(p, "display version: %u\n",
 			   runtime->ip.ver);
 
+	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step));
+
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 1c75cbd68dea..611be3fa3af6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -194,6 +194,12 @@ enum intel_display_subplatform {
 #define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
+#define INTEL_DISPLAY_STEP(__i915) (DISPLAY_RUNTIME_INFO(__i915)->step)
+
+#define IS_DISPLAY_STEP(__i915, since, until) \
+	(drm_WARN_ON(__to_intel_display(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
+
 struct intel_display_runtime_info {
 	enum intel_display_platform platform;
 	enum intel_display_subplatform subplatform;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 94f7f6cc444c..3b1b16e71cf9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -408,15 +408,10 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
 
 #define INTEL_REVID(i915)	(to_pci_dev((i915)->drm.dev)->revision)
 
-#define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
 #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
 #define INTEL_BASEDIE_STEP(__i915) (RUNTIME_INFO(__i915)->step.basedie_step)
 
-#define IS_DISPLAY_STEP(__i915, since, until) \
-	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
-	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
-
 #define IS_GRAPHICS_STEP(__i915, since, until) \
 	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) == STEP_NONE), \
 	 INTEL_GRAPHICS_STEP(__i915) >= (since) && INTEL_GRAPHICS_STEP(__i915) < (until))
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d26de37719a7..8b3e44dd504c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -108,7 +108,6 @@ void intel_device_info_print(const struct intel_device_info *info,
 
 	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
 	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
-	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step.display_step));
 	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.basedie_step));
 
 	drm_printf(p, "gt: %d\n", info->gt);
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 7492979ac3bc..97be452f003b 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -80,11 +80,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define INTEL_DISPLAY_STEP(xe) ((xe)->info.step.display)
-
-/* Workarounds not handled yet */
-#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })
-
 #define IS_LP(xe) (0)
 #define IS_GEN9_LP(xe) (0)
 #define IS_GEN9_BC(xe) (0)
-- 
2.39.2


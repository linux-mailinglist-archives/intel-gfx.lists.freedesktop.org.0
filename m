Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0518C98A280
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D9B10E428;
	Mon, 30 Sep 2024 12:32:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g+5YHKEa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012DC10E427;
 Mon, 30 Sep 2024 12:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699544; x=1759235544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SC+rGHgGykWD289C4srjyBsWXmVZ1ojeKfVFA+zT/6s=;
 b=g+5YHKEafq2whO0GWlwTrVnWGyy8qpK9ZygK9Y68zKzAjmfuBsluN1CB
 5VIETlGK3nl3Xj+lzCQo0IYQjOdLh+sVYjl54y5O6by+dNF42YHGPI5fh
 PXQ1OUfxcSHQvTmvvga1u3zA62UuutpAIsu38Bt+ACZaG4g40s17KKnyv
 ARKxUchZlA7IGMj/VokqBWOKplz7MQQE/X/l20Nz/NTmHdDojkph+lVmg
 AcL7XPsWJlwoMTBbBK1phdK6XbKAtMmFbVE96m+MdCkFWjzgsVhCGBIZA
 p/sA8qt2x/02Uc37IerkGyF3VfcaYKZMhFTPH3Tz6Zfq/r7t7ks9I3YF9 Q==;
X-CSE-ConnectionGUID: yCMi7XWDQFCRVQ7p9ghOTA==
X-CSE-MsgGUID: 79kTxqdGTXW1dOb+v4XH4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26249445"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26249445"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:23 -0700
X-CSE-ConnectionGUID: u18NHc/DQE2f4RPChHtQ0A==
X-CSE-MsgGUID: ofSB3nRjQCKOR2sGg5lZ7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="72882482"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v3 08/15] drm/i915/display: remove the display platform enum
 as unnecessary
Date: Mon, 30 Sep 2024 15:31:09 +0300
Message-Id: <d3ff6ebe23232cc88c5c12b8373d807cfdb75d39.1727699233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1727699233.git.jani.nikula@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
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

The display platform enums are not really needed for anything. Remove.

Without the enum, PLATFORM_UNINITIALIZED is also no longer needed for
keeping the first enum 0.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 12 +++---------
 drivers/gpu/drm/i915/display/intel_display_device.h | 12 ------------
 2 files changed, 3 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index be42f941900d..86d3ba26e66f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -32,7 +32,6 @@ struct stepping_desc {
 
 struct subplatform_desc {
 	struct intel_display_platforms platforms;
-	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
 	struct stepping_desc step_info;
@@ -40,12 +39,10 @@ struct subplatform_desc {
 
 #define SUBPLATFORM(_platform, _subplatform)				\
 	.platforms._platform##_##_subplatform = 1,			\
-	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
 	.name = #_subplatform
 
 struct platform_desc {
 	struct intel_display_platforms platforms;
-	enum intel_display_platform platform;
 	const char *name;
 	const struct subplatform_desc *subplatforms;
 	const struct intel_display_device_info *info; /* NULL for GMD ID */
@@ -54,7 +51,6 @@ struct platform_desc {
 
 #define PLATFORM(_platform)			 \
 	.platforms._platform = 1,		 \
-	.platform = (INTEL_DISPLAY_##_platform), \
 	.name = #_platform
 
 #define ID(id) (id)
@@ -1460,7 +1456,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
 	const struct subplatform_desc *sp;
 	const u16 *id;
 
-	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
+	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
 		for (id = sp->pciidlist; *id; id++)
 			if (*id == pdev->device)
 				return sp;
@@ -1577,17 +1573,15 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
+	drm_WARN_ON(&i915->drm, !desc->name ||
 		    !display_platforms_weight(&desc->platforms));
-	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
 
 	display->platform = desc->platforms;
 
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
-		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
+		drm_WARN_ON(&i915->drm, !subdesc->name ||
 			    !display_platforms_weight(&subdesc->platforms));
-		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
 
 		display_platforms_or(&display->platform, &subdesc->platforms);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index f166d4698949..2711c82f518b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -21,7 +21,6 @@ struct drm_printer;
  * platform.
  */
 #define INTEL_DISPLAY_PLATFORMS(func) \
-	func(PLATFORM_UNINITIALIZED) \
 	/* Display ver 2 */ \
 	func(i830) \
 	func(i845g) \
@@ -97,14 +96,6 @@ struct drm_printer;
 	/* Display ver 14.1 (based on GMD ID) */ \
 	func(battlemage)
 
-#define __ENUM(x) INTEL_DISPLAY_ ## x,
-
-enum intel_display_platform {
-	INTEL_DISPLAY_PLATFORMS(__ENUM)
-};
-
-#undef __ENUM
-
 #define __MEMBER(name) unsigned long name:1;
 #define __COUNT(x) 1 +
 
@@ -229,9 +220,6 @@ struct intel_display_platforms {
 	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))
 
 struct intel_display_runtime_info {
-	enum intel_display_platform platform;
-	enum intel_display_platform subplatform;
-
 	struct intel_display_ip_ver {
 		u16 ver;
 		u16 rel;
-- 
2.39.5


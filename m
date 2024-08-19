Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4A89573CB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:45:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9278510E297;
	Mon, 19 Aug 2024 18:45:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R0CBK5UG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B05910E271;
 Mon, 19 Aug 2024 18:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093118; x=1755629118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EoO9+vnZ+UgJzWJe/9JySq/dd1Lyg6R1Lqkor5Gijv4=;
 b=R0CBK5UGxWRBAjjQCPLyQacd5RsofJM3vmN/4TrNKpwk2rM4pGNBHJEm
 eLthqPv9b1wtbPo0DogTrkk9uuBllVOGaBajsyYDGnUiAo2/Upc6N5G5l
 MLXc5ZqGfBv1epRQyjB2m0Qm1QYWIs6LVz0CliqdCpFQThcWWNrVNg1vz
 5//8x8dB7ketY/XPCA3CLMsUvH28ac2VXRERZnz0PMm8Yo2326cP7l8Uj
 UtvqHUAUK4meN9lkHEXHx0bzRxSxBaezuk7YT5r0p1myD9jDjLe1deP2A
 /hlHJtebQfp4EYQT3e5HpbcH7GzGtjPujkLeVLtqiZrK1TdlkCn1q2mPC Q==;
X-CSE-ConnectionGUID: /7a6kKFLRqeZb+LD+bUlYg==
X-CSE-MsgGUID: Vryn81q4SoicHO3zbTTiqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="21981262"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="21981262"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:18 -0700
X-CSE-ConnectionGUID: Qzd27loUSOeatYZd0AcwGw==
X-CSE-MsgGUID: 4mJlRNjESaaruvXM0jp7qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="83670874"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 6/9] drm/i915/display: remove the display platform enum as
 unnecessary
Date: Mon, 19 Aug 2024 21:44:33 +0300
Message-Id: <38e923b9fe76664b83c258fe7a806a8daa6ecc48.1724092799.git.jani.nikula@intel.com>
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

The display platform enums are not really needed for
anything. Remove.

Without the enum, PLATFORM_UNINITIALIZED is also no longer needed for
keeping the first enum 0.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 12 +++---------
 drivers/gpu/drm/i915/display/intel_display_device.h | 12 ------------
 2 files changed, 3 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3d3b4ed7940e..90609b561630 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -22,26 +22,22 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
 
 struct subplatform_desc {
 	struct intel_display_platforms platforms;
-	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
 };
 
 #define SUBPLATFORM(_platform, _subplatform)				\
-	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
 	.name = #_subplatform,						\
 	.platforms._platform##_##_subplatform = 1
 
 struct platform_desc {
 	struct intel_display_platforms platforms;
-	enum intel_display_platform platform;
 	const char *name;
 	const struct subplatform_desc *subplatforms;
 	const struct intel_display_device_info *info; /* NULL for GMD ID */
 };
 
 #define PLATFORM(_platform)			 \
-	.platform = (INTEL_DISPLAY_##_platform), \
 	.name = #_platform,			 \
 	.platforms._platform = 1
 
@@ -1261,7 +1257,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
 	const struct subplatform_desc *sp;
 	const u16 *id;
 
-	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
+	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
 		for (id = sp->pciidlist; *id; id++)
 			if (*id == pdev->device)
 				return sp;
@@ -1326,16 +1322,14 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
+	drm_WARN_ON(&i915->drm, !desc->name ||
 		    display_platforms_weight(&desc->platforms) != 1);
-	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
 	display->is = desc->platforms;
 
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
-		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
+		drm_WARN_ON(&i915->drm, !subdesc->name ||
 			    display_platforms_weight(&subdesc->platforms) != 1);
-		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
 		display_platforms_or(&display->is, &subdesc->platforms);
 
 		/* Ensure platform and subplatform are distinct */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6f8814d1fabd..6d1f3de46836 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -17,7 +17,6 @@ struct drm_printer;
 
 /* Keep in gen based order, and chronological order within a gen */
 #define INTEL_DISPLAY_PLATFORMS(func) \
-	func(PLATFORM_UNINITIALIZED) \
 	/* Display ver 2 */ \
 	func(I830) \
 	func(I845G) \
@@ -94,14 +93,6 @@ struct drm_printer;
 	func(DG2_G11) \
 	func(DG2_G12)
 
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
 
@@ -218,9 +209,6 @@ struct intel_display_platforms {
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
 struct intel_display_runtime_info {
-	enum intel_display_platform platform;
-	enum intel_display_platform subplatform;
-
 	struct intel_display_ip_ver {
 		u16 ver;
 		u16 rel;
-- 
2.39.2


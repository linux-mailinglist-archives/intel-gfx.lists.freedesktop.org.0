Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295F09AE4D1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA8310E91D;
	Thu, 24 Oct 2024 12:34:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+T2pTzU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0405010E91D;
 Thu, 24 Oct 2024 12:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773268; x=1761309268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VuUrZvax6M9CYA7l8JHhwwBxERbPZzC1VMItO/bHdRI=;
 b=Y+T2pTzUtDC0UmKh9FBUJjmRdfFpC7OO+cdpAB9lxh0hXpE0pglKTdVP
 EVudFPagEDYtARk+DgCcUYFuahct46yEj+hykRq+8n7lnVwKpCm9MKdiA
 KsZa74ROfGZZtbzuWAgc+pfIl54ZN++XTGJlzr5IPsM0/b2eXKpq2U9GN
 /YqgC6laIR81ilW+D0eO50JPryJlEzC/IRi6kW9kEL+/rBlKzp2agcCh1
 USgs0qOB0NtrCeBeA7jzagtYYl49z37Bf0BXU3UuhaOid8qLlhdgxs+OB
 9icCsty3A6To/jNkBnM0nnSEeaD3dzKp7a5PORg8+btfk5s4hW1yEnzwQ w==;
X-CSE-ConnectionGUID: 7u6VeE7hTtSyiovE5VRyog==
X-CSE-MsgGUID: 3PCParWhSOCsOY8KikeBLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="17026307"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="17026307"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:27 -0700
X-CSE-ConnectionGUID: 1t4XmHfpQdmqaelfUYmQ3g==
X-CSE-MsgGUID: jmgqIXJUT/6jyeE1hg7+Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80872384"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 08/16] drm/i915/display: remove the display platform enum
 as unnecessary
Date: Thu, 24 Oct 2024 15:33:34 +0300
Message-Id: <6026119aad44c7f547a1bb9b29ea0c1dcfcc4c37.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
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
keeping the first enum 0. Also need to switch from sp->subplatform to
sp->pciidlist as the check for array end.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 12 +++---------
 drivers/gpu/drm/i915/display/intel_display_device.h | 12 ------------
 2 files changed, 3 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c124df204166..e9d56f8aa3ab 100644
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
@@ -1466,7 +1462,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
 	const struct subplatform_desc *sp;
 	const u16 *id;
 
-	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
+	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
 		for (id = sp->pciidlist; *id; id++)
 			if (*id == pdev->device)
 				return sp;
@@ -1583,17 +1579,15 @@ void intel_display_device_probe(struct drm_i915_private *i915)
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
index fac361a4921b..b240c28db2cb 100644
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
@@ -99,14 +98,6 @@ struct drm_printer;
 	/* Display ver 30 (based on GMD ID) */ \
 	func(pantherlake)
 
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
 
@@ -234,9 +225,6 @@ struct intel_display_platforms {
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


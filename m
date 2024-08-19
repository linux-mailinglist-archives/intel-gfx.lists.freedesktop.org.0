Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2B9573C8
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8522210E270;
	Mon, 19 Aug 2024 18:45:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nuGSTl2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE9810E246;
 Mon, 19 Aug 2024 18:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093107; x=1755629107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZCcT47uwO4VoEga/kdQZ2pkBomYzncOwKS5vpXjLB0c=;
 b=nuGSTl2kTS1/VS6K6rIAtaiAzah+gyMIf1ZHdUa0yweQYwhZk8g+L+0i
 R/eRLIor6N7mTwMdZUpeKbLVZM2q+e+wD9JQ6LrKQSGRM/X8+fycQEWIt
 pLyGtJheLfhUcAP6yCvhGSciCJk2M7MKUBnhYbIHcadXxwFuj/gnBznBP
 WP+nvXLiSdWSnzBvJMZ8R+hqLn60aHMLG8Ihy3vyFiEeTV9oagJMuWiUy
 f5NxCBnAgIyVgQl6DkWH09iGDCDTn8epNqPn6zlIu3AWpmsTAqU5EMGCn
 BXWz9rfBvB+NfgZlp2Ui/KMEfH6VO0zaNRcci7tuoKZgfHG5JYLqH3jHO g==;
X-CSE-ConnectionGUID: GrEyVnRESzqKydHyI9zIIQ==
X-CSE-MsgGUID: O0NyUN20QwaWGQ6O/8aJHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26157504"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="26157504"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:07 -0700
X-CSE-ConnectionGUID: 8sh00HSgR36i3gYoRy5kAA==
X-CSE-MsgGUID: 0NtqNaHZSxCCggYcbVOikw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="97940380"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 4/9] drm/i915/display: add display platforms structure with
 platform members
Date: Mon, 19 Aug 2024 21:44:31 +0300
Message-Id: <0a0323da6ef02481187eae2c72df9eb0c8f1f2e7.1724092799.git.jani.nikula@intel.com>
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

Add a structure with a bitfield member for each platform and
subplatform, and initialize them in platform and subplatform descs.

The structure also contains a bitmap in a union for easier manipulation
of the bits.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  8 ++++++--
 .../drm/i915/display/intel_display_device.h   | 19 +++++++++++++++++++
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 336cc8e717f5..55ab1923c8b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -21,6 +21,7 @@ __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
 struct subplatform_desc {
+	struct intel_display_platforms platforms;
 	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
@@ -28,9 +29,11 @@ struct subplatform_desc {
 
 #define SUBPLATFORM(_platform, _subplatform)				\
 	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
-	.name = #_subplatform
+	.name = #_subplatform,						\
+	.platforms._platform##_##_subplatform = 1
 
 struct platform_desc {
+	struct intel_display_platforms platforms;
 	enum intel_display_platform platform;
 	const char *name;
 	const struct subplatform_desc *subplatforms;
@@ -39,7 +42,8 @@ struct platform_desc {
 
 #define PLATFORM(_platform)			 \
 	.platform = (INTEL_DISPLAY_##_platform), \
-	.name = #_platform
+	.name = #_platform,			 \
+	.platforms._platform = 1
 
 #define ID(id) (id)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0a78f7438035..6f8814d1fabd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_DISPLAY_DEVICE_H__
 #define __INTEL_DISPLAY_DEVICE_H__
 
+#include <linux/bitops.h>
 #include <linux/types.h>
 
 #include "intel_display_conversion.h"
@@ -101,6 +102,24 @@ enum intel_display_platform {
 
 #undef __ENUM
 
+#define __MEMBER(name) unsigned long name:1;
+#define __COUNT(x) 1 +
+
+#define __NUM_PLATFORMS (INTEL_DISPLAY_PLATFORMS(__COUNT) 0)
+
+struct intel_display_platforms {
+	union {
+		struct {
+			INTEL_DISPLAY_PLATFORMS(__MEMBER);
+		};
+		DECLARE_BITMAP(bitmap, __NUM_PLATFORMS);
+	};
+};
+
+#undef __MEMBER
+#undef __COUNT
+#undef __NUM_PLATFORMS
+
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
-- 
2.39.2


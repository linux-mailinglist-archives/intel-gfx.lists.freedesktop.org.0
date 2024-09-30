Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7537C98A27D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2344310E416;
	Mon, 30 Sep 2024 12:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b71aVEFf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE1110E412;
 Mon, 30 Sep 2024 12:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699532; x=1759235532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I51TgjhSTdUpkJ7K1irCUhAW2t3fd4gOq/f04fH1p5s=;
 b=b71aVEFfxKWAggjGBIbG95T57WOaictrbWpF0FwF7N96V36MAqp3eaVL
 pW3mOGaDWld2wsY//DZUgNkXoADgoVUXc4SUEf4E4cnTkWEwH7nQUj/9C
 JidqiLcLrVEsVPzfVMfohlhlrBw3cGnfBKwIWgkdIolM7tlQjbdCsO4VU
 9uYWrLyOtMXJhRPVq9I6WZ3Szl/C2F3q0NL42gwzdJMTLT+xovP3rbHEs
 RrJmqimAxRquEGHm1H/jlyXWJYXTSCZj65+ef4XrAZU0zVTuiW4CxFPcl
 o5a5pNTY6Vdh+IV/QijTjYtjeTr8mufyCV/7/n182eor2lCRFs49OqtW/ g==;
X-CSE-ConnectionGUID: bocHpnudSa+sGVdr+m0pvA==
X-CSE-MsgGUID: GcSZlbLmQe+ZskpbiQ3qNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26249426"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26249426"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:11 -0700
X-CSE-ConnectionGUID: ya/PAiM+Sye9nWF4G+/uIg==
X-CSE-MsgGUID: ryHM0jnrQQeIkuN1+dLVxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="72882475"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v3 06/15] drm/i915/display: add display platforms structure
 with platform members
Date: Mon, 30 Sep 2024 15:31:07 +0300
Message-Id: <d824d6675f7f8b5da7de6c28fa83fed6b990c59b.1727699233.git.jani.nikula@intel.com>
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

Add a structure with a bitfield member for each platform and
subplatform, and initialize them in platform and subplatform descs.

The structure also contains a bitmap in a union for easier manipulation
of the bits.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  4 ++++
 .../drm/i915/display/intel_display_device.h   | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b2610217f5c5..258660b49eba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -31,6 +31,7 @@ struct stepping_desc {
 	.step_info.size = ARRAY_SIZE(_map)
 
 struct subplatform_desc {
+	struct intel_display_platforms platforms;
 	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
@@ -38,10 +39,12 @@ struct subplatform_desc {
 };
 
 #define SUBPLATFORM(_platform, _subplatform)				\
+	.platforms._platform##_##_subplatform = 1,			\
 	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
 	.name = #_subplatform
 
 struct platform_desc {
+	struct intel_display_platforms platforms;
 	enum intel_display_platform platform;
 	const char *name;
 	const struct subplatform_desc *subplatforms;
@@ -50,6 +53,7 @@ struct platform_desc {
 };
 
 #define PLATFORM(_platform)			 \
+	.platforms._platform = 1,		 \
 	.platform = (INTEL_DISPLAY_##_platform), \
 	.name = #_platform
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index c4208c34cc31..f166d4698949 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_DISPLAY_DEVICE_H__
 #define __INTEL_DISPLAY_DEVICE_H__
 
+#include <linux/bitops.h>
 #include <linux/types.h>
 
 #include "intel_display_conversion.h"
@@ -104,6 +105,24 @@ enum intel_display_platform {
 
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
2.39.5


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8ED9B3AB5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C4910E554;
	Mon, 28 Oct 2024 19:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPRXW5c1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F82A10E554;
 Mon, 28 Oct 2024 19:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144970; x=1761680970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i5rlY4dY3Oa9t1za/E0W9j3YFdh11npYuqqJEj6rZUA=;
 b=GPRXW5c1AHjEycPMP2SriayiPSFL/2YQMhW541xnlpAd+zYcu4Vt3QwM
 ZxIG8oTIk3QtHDPQQe0rf3TtZT/bOefZj1YIHN6aaaqgtORj7sL0YGGEe
 jOv8w1wGKsOfkJEwh+5uUsVWHufrSa2zJ/MiiGDH7y7ZROvTL6oDkej7z
 8QO+IN7sPvzPPfTMh+cR0qhiJ/7f5NGSHtpuDhuojx7zhwuhUvU2p4Arl
 Yfg5jCJwDOEPiJtPMSkM6RwDB0UJgMpxwpXe+ZpzIgYkxBTr5Sx1+aGVn
 OhSO+eTzFbnmiV8fktf37+wyZS3FZjLsaeJbodkPcwVKvgVuEawzZnKyl w==;
X-CSE-ConnectionGUID: tnRwq1laRZqgryHfJ/SIGA==
X-CSE-MsgGUID: tDaq8JqzRgm3S9aPiAQP5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33679530"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33679530"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:29 -0700
X-CSE-ConnectionGUID: IGR61iXCR0+7Y1vHdtxXBQ==
X-CSE-MsgGUID: BWmP/owNSFSvdswzxBzPHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="85670160"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 06/16] drm/i915/display: add display platforms
 structure with platform members
Date: Mon, 28 Oct 2024 21:48:39 +0200
Message-Id: <bf1d828cd333d34862ad3198e282c9d294c6e1ad.1730144869.git.jani.nikula@intel.com>
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

Add a structure with a bitfield member for each platform and
subplatform, and initialize them in platform and subplatform descs.

The structure also contains a bitmap in a union for easier manipulation
of the bits. This, in turn, requires a bit of trickery with
INTEL_DISPLAY_PLATFORMS() to count the number of bits required for
DECLARE_BITMAP().

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  4 ++++
 .../drm/i915/display/intel_display_device.h   | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c51efc3a97d6..0e835f714bf5 100644
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
index cef10babce30..fac361a4921b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_DISPLAY_DEVICE_H__
 #define __INTEL_DISPLAY_DEVICE_H__
 
+#include <linux/bitops.h>
 #include <linux/types.h>
 
 #include "intel_display_conversion.h"
@@ -106,6 +107,24 @@ enum intel_display_platform {
 
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


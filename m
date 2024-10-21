Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE0F9A6B20
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BAA10E518;
	Mon, 21 Oct 2024 13:54:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzeTWSlZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB3310E518;
 Mon, 21 Oct 2024 13:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518897; x=1761054897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LAkpc2Q/Y3gZamXUB/J6oEp69agWiHvsbtAMv8MYCPU=;
 b=dzeTWSlZIr3SEcrMGydZBencRcRFspHCxq9Uia7LLwo/abbTZJXqYPE3
 dHNnoGvuLL1PUXIz+PdqFXaTA8X2eoF1g4TRuqqwdWg/EDPSRgWRaDcJh
 C2ANKGU4g6L0aWXYYIK6G+5ksDR6Ua6ZPYgrYA6/XnplB3E+F80azipht
 xBswflVkA2LFiPARl3EMmoR4HCkKSMcDxqpw5FpXvIwChn4G7LwiBVSbX
 8kCNgktJQdaBpPdhdN2I03U5qTU1l+hdNdaezTGjDCPC05oXF8E+T+cBZ
 f+PHyLP8YHbyUeLKry1FU3+49AAlC32dWefOfIFYihRxESGXxL0u/MYFg w==;
X-CSE-ConnectionGUID: ZDXptyHvRwCpHphc0WeZCA==
X-CSE-MsgGUID: ZA+F7/a+SSi8xaQFBxcAyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29212917"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="29212917"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:57 -0700
X-CSE-ConnectionGUID: AoeqaLBHQMm4nEB6W5iI3w==
X-CSE-MsgGUID: qagUYi/qThmLBSpGGjvNdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79534326"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 06/15] drm/i915/display: add display platforms structure
 with platform members
Date: Mon, 21 Oct 2024 16:54:07 +0300
Message-Id: <f402b9fc7067e277b4b85f6109f72b361eeccbc2.1729518793.git.jani.nikula@intel.com>
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

Add a structure with a bitfield member for each platform and
subplatform, and initialize them in platform and subplatform descs.

The structure also contains a bitmap in a union for easier manipulation
of the bits. This, in turn, requires a bit of trickery with
INTEL_DISPLAY_PLATFORMS() to count the number of bits required for
DECLARE_BITMAP().

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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF62998A281
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D7E10E425;
	Mon, 30 Sep 2024 12:32:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IjdRlo+p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1F610E427;
 Mon, 30 Sep 2024 12:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699550; x=1759235550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ajztmu2bNf44cE+kUD+81wn0A1J8V2GK48U4MWFm/AQ=;
 b=IjdRlo+pWYbv5OcH60oUqV/jr1G0n+zVGz/LT8/Oar3Wj6iqtBj4jm3q
 OawGC89aXKAT8+rnzrgMTzIr1EloChB8atrC50LH9K1ynNiJtBMUEcWCn
 YAJczaznBqr/ZVMvkDAU09M5H7PyVMvy3+VXLK9hmBPLxvAX+UYjhZsRw
 Wh34o5UdXlNa6rSnxX8g/CnYvW3aHA5bFyPPmWqj4eRJsT12oQ91I8MFf
 kKDf0/rU6jFTwXtciyuBYzrSN1WJlL4gwVlcvzxksGis/VNEypE86u8fG
 o3fyDK02vuGPV3SgQK0W2ZX5pxc9bqf6UJXFKGtuyjua/ce9SbB3IxMXg A==;
X-CSE-ConnectionGUID: rr4wYS9HTLizcxuvxRb5zg==
X-CSE-MsgGUID: Oy1HtHzfT5erQstYGRFn5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26249453"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26249453"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:29 -0700
X-CSE-ConnectionGUID: ELjTROjfTKmsfjTTJnRN4g==
X-CSE-MsgGUID: fu713mMgSmuDa20jLABydg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="72882487"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v3 09/15] drm/i915/display: add platform group for g4x
Date: Mon, 30 Sep 2024 15:31:10 +0300
Message-Id: <b6f62b3f05cab1893df08f57d0ac7ab7ea209959.1727699233.git.jani.nikula@intel.com>
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

Add support for defining aliases for platform groups, such as g4x that
covers both g45 and gm45.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 86d3ba26e66f..73d4c9ed5a10 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -53,6 +53,13 @@ struct platform_desc {
 	.platforms._platform = 1,		 \
 	.name = #_platform
 
+/*
+ * Group platform alias that matches multiple platforms. For aliases such as g4x
+ * that covers both g45 and gm45.
+ */
+#define PLATFORM_GROUP(_platform)		\
+	.platforms._platform = 1
+
 #define ID(id) (id)
 
 static const struct intel_display_device_info no_display = {};
@@ -387,6 +394,7 @@ static const struct platform_desc i965gm_desc = {
 
 static const struct platform_desc g45_desc = {
 	PLATFORM(g45),
+	PLATFORM_GROUP(g4x),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 
@@ -396,6 +404,7 @@ static const struct platform_desc g45_desc = {
 
 static const struct platform_desc gm45_desc = {
 	PLATFORM(gm45),
+	PLATFORM_GROUP(g4x),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.supports_tv = 1,
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 2711c82f518b..d8d545ed552e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -38,6 +38,7 @@ struct drm_printer;
 	func(i965gm) \
 	func(g45) \
 	func(gm45) \
+	func(g4x) /* group alias for g45 and gm45 */ \
 	/* Display ver 5 */ \
 	func(ironlake) \
 	/* Display ver 6 */ \
-- 
2.39.5


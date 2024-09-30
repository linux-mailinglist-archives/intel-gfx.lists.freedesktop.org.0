Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B0498A282
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF40D10E423;
	Mon, 30 Sep 2024 12:32:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ie5qctE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1144610E422;
 Mon, 30 Sep 2024 12:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699556; x=1759235556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ccbwerag/QxE3JwCxXaa6AIyRMOHh+itRa3wsZazOoU=;
 b=ie5qctE7w74DBaARFJbw7mq8Qgux0HE0c6FrcKO0k/pyVLGv4kYwCEXr
 PWVt9bQEfSmiVtyo4mWmfY9qfywe5uX/ir6Ufrn4sJQsaE7BdmaQEnz5E
 3faWWkUpDvMv6/XxKDjYGzFeWFNaXuVL4lH+HmerWPmlVDt81t8t2TNHc
 4Z+0Tu4sZRIVxcbVaUTcb6ebDDwEECkqKnZzUm66irKiq3VHpWVa/a+jC
 eB8kpvq0etCBpd2y2vlsxePIRJ+CNr3ehJQJAxxe/ByG+MA1JqTZRXR/Q
 JoyM6teOxAf95tDZOcm9L4pS9H97iI1Y/cPzenfusOdX2WS+kouX9mHDe A==;
X-CSE-ConnectionGUID: gYbmlOUsTUqSG9iwGVX1Ug==
X-CSE-MsgGUID: sdZ3PcSXRLSGOKA83dZ6Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26249457"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26249457"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:35 -0700
X-CSE-ConnectionGUID: 8jlrslt9QkCB+AbsToKfRQ==
X-CSE-MsgGUID: 5OAdKkLfS0eRa11FZRrbNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="72882496"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:32:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v3 10/15] drm/i915/display: add subplatform group for HSW/BDW
 ULT
Date: Mon, 30 Sep 2024 15:31:11 +0300
Message-Id: <ca08e07d3c5d429f0df5beac7120cc612842d5c0.1727699233.git.jani.nikula@intel.com>
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

Add support for defining aliases for subplatform groups, such as HSW/BDW
ULT that covers both ULT and ULX.

ULT is a special case, because we slightly abuse the ULT subplatform
both as a subplatform and group, but with the way this is defined, it
should be fairly clear.

This follows i915 core and IS_HASWELL_ULT()/IS_BROADWELL_ULT()
conventions, i.e. "is ULT" also matches ULX platforms.

Note: Pedantically, this should have been done earlier, but it's only
feasible now that we no longer have a subplatform enum and can actually
initialize multiple subplatforms.

v2: Use the subplatform group idea

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 73d4c9ed5a10..cfd7d0fdf934 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -41,6 +41,13 @@ struct subplatform_desc {
 	.platforms._platform##_##_subplatform = 1,			\
 	.name = #_subplatform
 
+/*
+ * Group subplatform alias that matches multiple subplatforms. For making ult
+ * cover both ult and ulx on HSW/BDW.
+ */
+#define SUBPLATFORM_GROUP(_platform, _subplatform)			\
+	.platforms._platform##_##_subplatform = 1
+
 struct platform_desc {
 	struct intel_display_platforms platforms;
 	const char *name;
@@ -510,12 +517,15 @@ static const u16 hsw_ulx_ids[] = {
 static const struct platform_desc hsw_desc = {
 	PLATFORM(haswell),
 	.subplatforms = (const struct subplatform_desc[]) {
+		/* Special case: Use ult both as group and subplatform. */
 		{
 			SUBPLATFORM(haswell, ult),
+			SUBPLATFORM_GROUP(haswell, ult),
 			.pciidlist = hsw_ult_ids,
 		},
 		{
 			SUBPLATFORM(haswell, ulx),
+			SUBPLATFORM_GROUP(haswell, ult),
 			.pciidlist = hsw_ulx_ids,
 		},
 		{},
@@ -560,12 +570,15 @@ static const u16 bdw_ulx_ids[] = {
 static const struct platform_desc bdw_desc = {
 	PLATFORM(broadwell),
 	.subplatforms = (const struct subplatform_desc[]) {
+		/* Special case: Use ult both as group and subplatform. */
 		{
 			SUBPLATFORM(broadwell, ult),
+			SUBPLATFORM_GROUP(broadwell, ult),
 			.pciidlist = bdw_ult_ids,
 		},
 		{
 			SUBPLATFORM(broadwell, ulx),
+			SUBPLATFORM_GROUP(broadwell, ult),
 			.pciidlist = bdw_ulx_ids,
 		},
 		{},
-- 
2.39.5


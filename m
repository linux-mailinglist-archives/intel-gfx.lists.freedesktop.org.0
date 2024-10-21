Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED319A6B24
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A60E10E51C;
	Mon, 21 Oct 2024 13:55:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nlOA19cA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C276510E51B;
 Mon, 21 Oct 2024 13:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518920; x=1761054920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=06xW/PCdOJJOD9rhOl/tcb+9/Rn23Gq9q415ZBCuVZ0=;
 b=nlOA19cAyzyr5J/1GgTyWwnc7px1OKZzng6AdVm3i2QAMP3VWi3HxoPw
 bXqBWXSOmQ7aR64be2ZASR2RR1SRXObb0zt1Lt0t1ENxOot2kSumZloO/
 ku5A+4q5s8RWAjjuv7NSxD5BVnrr/mAARrBrkOpvpyXdg7aJB43M/CjEQ
 kS97lffSrvZQerEXDjQJZDLVqt/uICujvHcv6eh12/tBl4mgKycbrP/gx
 Oo6Vmee8AybKeJ67y3olU/IyWSQk72h30xIz6RGCXT5tpFBZUZULa49MG
 2FeKHF2Yjgh4G82DyfQd+u+zA9pkO2USyZ7xRHSrCCja22bebJ6gaEa1Y g==;
X-CSE-ConnectionGUID: tQ/9QY9eS2WfPSp+fpqp0Q==
X-CSE-MsgGUID: 40Z8/55+TCC7741qSkZe1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29212941"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="29212941"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:19 -0700
X-CSE-ConnectionGUID: ltrcEidkTxGWfO17NozQ7w==
X-CSE-MsgGUID: v2RI+SunQW6GU+D80lLwng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79534517"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 10/15] drm/i915/display: add subplatform group for HSW/BDW
 ULT
Date: Mon, 21 Oct 2024 16:54:11 +0300
Message-Id: <22e5c42f8b8580fa5c6b40a6e1ef9760ba3c99a8.1729518793.git.jani.nikula@intel.com>
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
index 50ffb31662b1..35abb4eaa0ef 100644
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


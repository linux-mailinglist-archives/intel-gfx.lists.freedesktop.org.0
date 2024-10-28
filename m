Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3739B3AB9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C0510E55B;
	Mon, 28 Oct 2024 19:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jgnCc/1v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA4E10E55B;
 Mon, 28 Oct 2024 19:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144992; x=1761680992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AvJHh4RnTpXa+/edWBGEFjgu0oTwY8AHKI2AuB890ro=;
 b=jgnCc/1vNEJTqa9Mc16haOWuuGAf03Piueg0+ez3/YHyDRTyuNouMmR4
 HrLCtAkOquWVl6QFxNHABB6VDK8n4q0uomchPIwUCKggX6DUxNzyhErgu
 a+d74f2jNUhOk7OkMeTraiYH2D/aOOTDgZaZIeVxrUVhguLiabEABwriM
 6qedl1E5P5NRrw+QsRhI40seJ19sDBxchdbzLbZhCwZi+/de680dRQuhS
 GTiX6yLKMMVvkeiOS7WEMiRC+us/7g9DSwu2mhrhTh4qz3neLCqibmR7f
 CgaE/jl3l26TUbxwl0Bvz/nbFP4IHFdHib50lvpcFX7BEV5WXtQydjrNI A==;
X-CSE-ConnectionGUID: BfnZPwSyS8i3/3f370ty9Q==
X-CSE-MsgGUID: isAWQJ+aSwOyK4hEBHw7XA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33679550"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33679550"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:52 -0700
X-CSE-ConnectionGUID: 2V/nDUvsRey56hdhqZAp4g==
X-CSE-MsgGUID: cqJ5c2i8Ti2qtGqOXBrEAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="85670268"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 10/16] drm/i915/display: add subplatform group for
 HSW/BDW ULT
Date: Mon, 28 Oct 2024 21:48:43 +0200
Message-Id: <d148b6210a561b874642ae3e0ad10073d0615de7.1730144869.git.jani.nikula@intel.com>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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


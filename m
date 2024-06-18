Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85DA90D49D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 16:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F1410E6AF;
	Tue, 18 Jun 2024 14:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PxXMCHFy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E4010E6AF;
 Tue, 18 Jun 2024 14:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720615; x=1750256615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=upKXWPwi2BtW7PrTUNAs1L4bzshoUcajeg9JE5KQ2IQ=;
 b=PxXMCHFy1lRVMR4VJ82g+8gmH94Rblvu4LL7yPTzSVn/dyNOWCSLLlke
 VqINmsAfZfKlLna44GergHsuGcdqV41U6wp4hK/UVcMF0l0q9wh15NdVd
 rglXFrKFAIUfwsG8rdvH8n1y4DittJjew9mQfjLsU8ngXFTI5n8MBaC+e
 viYkXGMRJEDI3HppydlfcDE6XQJtqaLLSOvjb5lKH0fdnFkk8g6qIkTiD
 lWk+8Impz20jjB+yWBoED6DXrNNTPesfqHXp00zVlgHI3l2nwpBQf2tEI
 cI3LJgp7hmnjHVGwm/KQeMB/MPB33sxWhx5JzQUZhKefkpq8LCtenqAKd g==;
X-CSE-ConnectionGUID: ZUdmNQsCQ8O/7LO8/cWQ5g==
X-CSE-MsgGUID: hvBmWvW7QrCHNebzkiGrUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15365365"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15365365"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:28 -0700
X-CSE-ConnectionGUID: y+3pPsEHRA2CA2r5i5HrCA==
X-CSE-MsgGUID: D9bI22UPR6qy9tAHjiLLww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41495525"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: [PATCH 4/6] drm/i915/display: add "display is" structure with
 platform members
Date: Tue, 18 Jun 2024 17:22:54 +0300
Message-Id: <80e564e550bc0972c9e0199f1a361a99545ab81b.1718719962.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718719962.git.jani.nikula@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_display_device.h | 8 ++++++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 80563af7ac71..0c275d85bd30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -21,6 +21,7 @@ __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
 struct subplatform_desc {
+	struct intel_display_is is;
 	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
@@ -28,9 +29,11 @@ struct subplatform_desc {
 
 #define SUBPLATFORM(_platform, _subplatform)				\
 	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
-	.name = #_subplatform
+	.name = #_subplatform,						\
+	.is._platform##_##_subplatform = 1
 
 struct platform_desc {
+	struct intel_display_is is;
 	enum intel_display_platform platform;
 	const char *name;
 	const struct subplatform_desc *subplatforms;
@@ -39,7 +42,8 @@ struct platform_desc {
 
 #define PLATFORM(_platform)			 \
 	.platform = (INTEL_DISPLAY_##_platform), \
-	.name = #_platform
+	.name = #_platform,			 \
+	.is._platform = 1
 
 #define ID(id) (id)
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 50485235ef09..73070c8487ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -101,6 +101,14 @@ enum intel_display_platform {
 
 #undef ENUM
 
+#define MEMBER(name) u32 name:1;
+
+struct intel_display_is {
+	INTEL_DISPLAY_PLATFORMS(MEMBER);
+};
+
+#undef MEMBER
+
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
-- 
2.39.2


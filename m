Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414A390D49F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 16:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8859910E6B9;
	Tue, 18 Jun 2024 14:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THNT4DLP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D1810E6B7;
 Tue, 18 Jun 2024 14:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720620; x=1750256620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=11GmTxZaDLJIPN1u8UDPB0RE+kNDxZfY5bbOPj5AIAk=;
 b=THNT4DLPrX7CYYcQtefMeI7rFdMtZNFcNmiZYQo7ZXEXgnCEh+GZ1KhT
 lVRCcc+UZp2iCKbds7hXHl+/oXqYm4wIuMgzBqQuVrQgeSPIU2N3N8kRa
 idZImGoesjLGwDlA0QgIZpheDbkVXjW5srol+oKkiwKBnw7SfQPQDlyo8
 2cNt1zGjz3ynGYNtKSy+Z96mVYFTuvUTF/86rUYl/XdUhkTQ00Z4d+SfC
 yDFeuFkymG5sskp+crbLln0Qob6C6o41lAbIO/D53twJX2uhPeS67dmvM
 yDt4rgGCFGXrKIt8HGRw3RW6ws4secsYB42pHmBUbjIPztYUdL1frEU8R Q==;
X-CSE-ConnectionGUID: BIcF2owNRq6HqMQTpjQ5nw==
X-CSE-MsgGUID: hddM6/e/Qc+heGHvjUwcdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27016885"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="27016885"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:40 -0700
X-CSE-ConnectionGUID: /M9gn+uKRGe9LXDVeAKDVw==
X-CSE-MsgGUID: u1HJGlu1TDqTuLKBiJekpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41687859"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: [PATCH 6/6] drm/i915/display: remove the display platform enum as
 unnecessary
Date: Tue, 18 Jun 2024 17:22:56 +0300
Message-Id: <323aa570a2cf58cede7fa0ca8bb46a273bad3395.1718719962.git.jani.nikula@intel.com>
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

The display platform enums are not really needed for anything. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 12 +++---------
 drivers/gpu/drm/i915/display/intel_display_device.h | 11 -----------
 2 files changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 954caea38005..6a71e7a8b686 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -22,26 +22,22 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
 
 struct subplatform_desc {
 	struct intel_display_is is;
-	enum intel_display_platform subplatform;
 	const char *name;
 	const u16 *pciidlist;
 };
 
 #define SUBPLATFORM(_platform, _subplatform)				\
-	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
 	.name = #_subplatform,						\
 	.is._platform##_##_subplatform = 1
 
 struct platform_desc {
 	struct intel_display_is is;
-	enum intel_display_platform platform;
 	const char *name;
 	const struct subplatform_desc *subplatforms;
 	const struct intel_display_device_info *info; /* NULL for GMD ID */
 };
 
 #define PLATFORM(_platform)			 \
-	.platform = (INTEL_DISPLAY_##_platform), \
 	.name = #_platform,			 \
 	.is._platform = 1
 
@@ -1261,7 +1257,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
 	const struct subplatform_desc *sp;
 	const u16 *id;
 
-	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
+	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
 		for (id = sp->pciidlist; *id; id++)
 			if (*id == pdev->device)
 				return sp;
@@ -1323,14 +1319,12 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
-	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
+	drm_WARN_ON(&i915->drm, !desc->name);
 	display->is = desc->is;
 
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
-		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
-		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
+		drm_WARN_ON(&i915->drm, !subdesc->name);
 		merge_display_is(&display->is, &subdesc->is);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 73070c8487ff..97033d26c1b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -93,14 +93,6 @@ struct drm_printer;
 	func(DG2_G11) \
 	func(DG2_G12)
 
-#define ENUM(x) INTEL_DISPLAY_ ## x,
-
-enum intel_display_platform {
-	INTEL_DISPLAY_PLATFORMS(ENUM)
-};
-
-#undef ENUM
-
 #define MEMBER(name) u32 name:1;
 
 struct intel_display_is {
@@ -207,9 +199,6 @@ struct intel_display_is {
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
 struct intel_display_runtime_info {
-	enum intel_display_platform platform;
-	enum intel_display_platform subplatform;
-
 	struct intel_display_ip_ver {
 		u16 ver;
 		u16 rel;
-- 
2.39.2


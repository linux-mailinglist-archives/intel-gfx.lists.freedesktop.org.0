Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F2C9573F2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F2D10E2A1;
	Mon, 19 Aug 2024 18:48:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zc2Q6fmU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7031E10E29E;
 Mon, 19 Aug 2024 18:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093328; x=1755629328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4PmB05PndKRRZWUUwv08GrkU7zNB5xX2RgQ2f8XyltQ=;
 b=Zc2Q6fmUxGLO96A8tWT0YO+qoT85HNGmR7gWVtXsF10QqpYQcUmX6r0f
 zyrGTWVn7IOGsF8YAC8LHzuE4SgZzhPISonoMHlik/nhR9bZ33ir/RKpG
 3TkBSVVQUAJxApYwQOv5p/S6jMkbvpOh4nRTxTK7O9p/A9oMUrmfDvSGc
 8hUdHCXbVVC3bunO+Z1EJpbzBH45zxyRxuFN6drAhb9iXJt9ZkjcPJacn
 DkzR6OZJ7vWujFnat47tyfrnKAphjCCTkJP5cfMzsC91V5lbe8s8nqWRT
 pmIkBiAEQKXNEYOjhai9C81wsePSp3kblJl9XmzStqyg1zIiY9qPLVEHr w==;
X-CSE-ConnectionGUID: HpRFA5dHRhaKsCatf2DSCg==
X-CSE-MsgGUID: gSF8Ami7RCmGDkEP1jqPBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="22245224"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="22245224"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:48:48 -0700
X-CSE-ConnectionGUID: DPLyFMlHQp2mnTBJ0PxOjg==
X-CSE-MsgGUID: VvFkR9ysTlmlDg61noeHGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="60166341"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:48:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3] drm/i915/display: add platforms "is" member to struct
 intel_display
Date: Mon, 19 Aug 2024 21:48:40 +0300
Message-Id: <20240819184840.1264011-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <7219e172b99401458ef6783c67b0b47115c6e772.1724092799.git.jani.nikula@intel.com>
References: <7219e172b99401458ef6783c67b0b47115c6e772.1724092799.git.jani.nikula@intel.com>
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

Facilitate using display->is.HASWELL and display->is.HASWELL_ULT
etc. for identifying platforms and subplatforms. Merge platform and
subplatform members together.

v3:
- Fix sanity check on display->is after merging subplatform members

v2:
- Use bitmap ops
- Add some sanity checks with warnings

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 .../drm/i915/display/intel_display_device.c   | 31 +++++++++++++++++--
 2 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0a711114ff2b..b2907894fa28 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -286,6 +286,9 @@ struct intel_display {
 	/* drm device backpointer */
 	struct drm_device *drm;
 
+	/* Platform (and subplatform, if any) identification */
+	struct intel_display_platforms is;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 55ab1923c8b3..d0b7cf63bc9f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1269,8 +1269,28 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
 	return NULL;
 }
 
+/* Size of the entire bitmap, not the number of platforms */
+static unsigned int display_platforms_num_bits(void)
+{
+	return sizeof(((struct intel_display_platforms *)0)->bitmap) * BITS_PER_BYTE;
+}
+
+/* Number of platform bits set */
+static unsigned int display_platforms_weight(const struct intel_display_platforms *p)
+{
+	return bitmap_weight(p->bitmap, display_platforms_num_bits());
+}
+
+/* Merge the subplatform information from src to dst */
+static void display_platforms_or(struct intel_display_platforms *dst,
+				 const struct intel_display_platforms *src)
+{
+	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
+}
+
 void intel_display_device_probe(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	const struct intel_display_device_info *info;
 	struct intel_display_ip_ver ip_ver = {};
@@ -1306,13 +1326,20 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
+	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
+		    display_platforms_weight(&desc->platforms) != 1);
 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
+	display->is = desc->platforms;
 
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
-		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
+		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
+			    display_platforms_weight(&subdesc->platforms) != 1);
 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
+		display_platforms_or(&display->is, &subdesc->platforms);
+
+		/* Ensure platform and subplatform are distinct */
+		drm_WARN_ON(&i915->drm, display_platforms_weight(&display->is) == 1);
 	}
 
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
-- 
2.39.2


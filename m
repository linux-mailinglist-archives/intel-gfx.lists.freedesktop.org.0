Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE7C9A6B21
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D694810E521;
	Mon, 21 Oct 2024 13:55:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rbo9kjyn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA2E10E516;
 Mon, 21 Oct 2024 13:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518903; x=1761054903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JMLp8hDlLj0aaZ3vl81tMkS5pVM/ubydgGT5tQHVRMY=;
 b=Rbo9kjyndnDVFNWySfXaHMZ2K7WmlpH/DIx9Mze4WHHdfNJ/E0pkKaw8
 srTOgjzIJvpqUNtonoq+VnbyvQ3D5dY0/JrlIDk6bRMK7FZMLOL5jQaR8
 vPHdP42po4BsVu9Ty22ZKjHXnQYc+GaiRc77QVL2BKwdiuA4v7NLAQF1n
 wKeGYjn0h66VtUuAebKGAew4gQhxDFdx/7tlXI8zgcsAQTacJ7OPJjheu
 d8j5TiWbsBI0hgsx/L6OksdLrnzOUnmMoXjnV1wYEWJcT2En3baPtBj6m
 16sxk5fMhQ05f0QPbvOk4TiLGWKkNz255cb0AEaLUVFU3qzTN6c1EzCj0 g==;
X-CSE-ConnectionGUID: P1iAIojOQ2OKwrF3b8zoGA==
X-CSE-MsgGUID: 4A6ZncM1Rg+BWSXtm2f+Mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29212925"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="29212925"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:03 -0700
X-CSE-ConnectionGUID: xflH7bFwS0KNOxUMuUU/gg==
X-CSE-MsgGUID: m3XZq+j2RkmUNi9uagIwmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79534421"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 07/15] drm/i915/display: add platform member to struct
 intel_display
Date: Mon, 21 Oct 2024 16:54:08 +0300
Message-Id: <bfc651942b227b35d5e6a6c2649530c47db9d207.1729518793.git.jani.nikula@intel.com>
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

Facilitate using display->platform.haswell and
display->platform.haswell_ult etc. for identifying platforms and
subplatforms.

Merge the platform and subplatform bitmaps together, and check that
there's no overlap.

v4:
- Lower case, s/is/platform/

v3:
- Fix sanity check on display->is after merging subplatform members

v2:
- Use bitmap ops
- Add some sanity checks with warnings

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 .../drm/i915/display/intel_display_device.c   | 35 +++++++++++++++++--
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 45697af25fa9..45b7c6900adc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -284,6 +284,9 @@ struct intel_display {
 	/* drm device backpointer */
 	struct drm_device *drm;
 
+	/* Platform (and subplatform, if any) identification */
+	struct intel_display_platforms platform;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0e835f714bf5..c124df204166 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1525,6 +1525,25 @@ static enum intel_step get_pre_gmdid_step(struct intel_display *display,
 	return step;
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
 	struct intel_display *display = &i915->display;
@@ -1564,13 +1583,25 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
 
-	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
+	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
+		    !display_platforms_weight(&desc->platforms));
 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
 
+	display->platform = desc->platforms;
+
 	subdesc = find_subplatform_desc(pdev, desc);
 	if (subdesc) {
-		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
+		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
+			    !display_platforms_weight(&subdesc->platforms));
 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
+
+		display_platforms_or(&display->platform, &subdesc->platforms);
+
+		/* Ensure platform and subplatform are distinct */
+		drm_WARN_ON(&i915->drm,
+			    display_platforms_weight(&display->platform) !=
+			    display_platforms_weight(&desc->platforms) +
+			    display_platforms_weight(&subdesc->platforms));
 	}
 
 	if (ip_ver.ver || ip_ver.rel || ip_ver.step) {
-- 
2.39.5


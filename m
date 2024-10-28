Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3049B3AB6
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A55710E4DF;
	Mon, 28 Oct 2024 19:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VsY+F20x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDC010E55B;
 Mon, 28 Oct 2024 19:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144975; x=1761680975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wXnfIznsgceMPrZLgbZHA1p13eACarYEN+S0ctpCk5I=;
 b=VsY+F20xi0FeuiH3oz3JrVla10SwW/k6CTvh50ZPtM9xOf6Cx+77w037
 CP7Drn3ETDJpQnFkv/H20hCh/yDDQLZzI9x9D5Ch1eW2MVcqZdTWogiwe
 iynDhS4bPRA4fd+NjhVmwP0D1fYXfgbibnIiA5fucXdiuZyQC+sSKTPmV
 Dkw3usbqgN0EkmrZd2JR54bixnDE/lvRhMXyc4IdWYyRHYW05tkF3h6lJ
 DLg1KDZJhDVcXb+jPo41SPywACPnGE4ROTdHJNPax1u41yTU+PDlYU0Jz
 yc6DV3DS6JR0fVPUUgH04WQ8M1dBgFaKmH3P0iKsXSZkOePLf6EdibQEB A==;
X-CSE-ConnectionGUID: fahBKsISROS5/GU0k/OAtw==
X-CSE-MsgGUID: Po3/6ga3SPSUwr+9Gsuzfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33679537"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33679537"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:35 -0700
X-CSE-ConnectionGUID: kqho5HlBS2Srazh25KMkWQ==
X-CSE-MsgGUID: gCpgjwb2Tum1GOnVY+g3MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="85670201"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 07/16] drm/i915/display: add platform member to
 struct intel_display
Date: Mon, 28 Oct 2024 21:48:40 +0200
Message-Id: <2ae79637390372903a9808b5adc4d2dcf2c5959b.1730144869.git.jani.nikula@intel.com>
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

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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


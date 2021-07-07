Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B953BF2A5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 01:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FC1B6E1F7;
	Wed,  7 Jul 2021 23:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866FE6E1F8
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 23:59:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="231162466"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="231162466"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:59:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="498164862"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:59:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 16:59:21 -0700
Message-Id: <20210707235921.2416911-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210707235921.2416911-1-lucas.demarchi@intel.com>
References: <20210707235921.2416911-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add release id version
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Besides the arch version returned by GRAPHICS_VER(), new platforms
contain a "release id" to make clear the difference from one platform to
another.

The release id number is not formally defined by hardware until future
platforms that will expose it via a new GMD_ID register.  For the
platforms we support before that register becomes available we will set
the values in software and we can set them as we please. So the plan is
to set them so we can group different features under a single
GRAPHICS_VER_FULL() check.

After GMD_ID is used, the usefulness of a "full version check" will be
greatly reduced and will be mostly used for deciding workarounds and a
few code paths. So it makes sense to keep it as a separate field from
graphics_ver. Also, as a platform with `release == n` may be closer
feature-wise to `n - 2` than to `n - 1`, use the word "release" rather
than the more common "minor" for this

This is a mix of 2 independent changes: one by me and the other by Matt
Roper.

v2:
  - Reword commit message to make it clearer why we don't call it
    "minor" (Matt Roper and Tvrtko)
  - Rename variables s/*_ver_release/*_rel/ and print them in a single
    line formatted as {ver}.{rel:2} (Jani and Matt Roper)

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  6 ++++++
 drivers/gpu/drm/i915/intel_device_info.c | 12 ++++++++++--
 drivers/gpu/drm/i915/intel_device_info.h |  2 ++
 3 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index bc6799f75670..73126b6854fb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1243,11 +1243,17 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 
 #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
 
+#define IP_VER(ver, rel)		((ver) << 8 | (rel))
+
 #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
+#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics_ver, \
+					       INTEL_INFO(i915)->graphics_rel)
 #define IS_GRAPHICS_VER(i915, from, until) \
 	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
 
 #define MEDIA_VER(i915)			(INTEL_INFO(i915)->media_ver)
+#define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media_ver, \
+					       INTEL_INFO(i915)->media_rel)
 #define IS_MEDIA_VER(i915, from, until) \
 	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 3daf0cd8d48b..d2a514d2551d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -96,8 +96,16 @@ static const char *iommu_name(void)
 void intel_device_info_print_static(const struct intel_device_info *info,
 				    struct drm_printer *p)
 {
-	drm_printf(p, "graphics version: %u\n", info->graphics_ver);
-	drm_printf(p, "media version: %u\n", info->media_ver);
+	if (info->graphics_rel)
+		drm_printf(p, "graphics version: %u.%02u\n", info->graphics_ver, info->graphics_rel);
+	else
+		drm_printf(p, "graphics version: %u\n", info->graphics_ver);
+
+	if (info->media_rel)
+		drm_printf(p, "media version: %u.%02u\n", info->media_ver, info->media_rel);
+	else
+		drm_printf(p, "media version: %u\n", info->media_ver);
+
 	drm_printf(p, "display version: %u\n", info->display.ver);
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "iommu: %s\n", iommu_name());
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b326aff65cd6..301bd8ba161a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -162,7 +162,9 @@ enum intel_ppgtt_type {
 
 struct intel_device_info {
 	u8 graphics_ver;
+	u8 graphics_rel;
 	u8 media_ver;
+	u8 media_rel;
 
 	u8 gt; /* GT number, 0 if undefined */
 	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A43023BF2A6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 01:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E3D96E1F9;
	Wed,  7 Jul 2021 23:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AED36E1F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 23:59:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="231162465"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="231162465"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:59:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="498164855"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:59:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 16:59:20 -0700
Message-Id: <20210707235921.2416911-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: do not abbreviate version in
 debugfs
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Brevity is not needed here, so just spell out "* version" in the string.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 7eaa92fee421..3daf0cd8d48b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -96,9 +96,9 @@ static const char *iommu_name(void)
 void intel_device_info_print_static(const struct intel_device_info *info,
 				    struct drm_printer *p)
 {
-	drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);
-	drm_printf(p, "media_ver: %u\n", info->media_ver);
-	drm_printf(p, "display_ver: %u\n", info->display.ver);
+	drm_printf(p, "graphics version: %u\n", info->graphics_ver);
+	drm_printf(p, "media version: %u\n", info->media_ver);
+	drm_printf(p, "display version: %u\n", info->display.ver);
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "iommu: %s\n", iommu_name());
 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

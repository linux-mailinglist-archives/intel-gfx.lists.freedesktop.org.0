Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E27A93B4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 12:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD0C10E5B5;
	Thu, 21 Sep 2023 10:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7715810E5B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 10:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695293716; x=1726829716;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lXiWlZw5ZOdDV1d5iGqETZVX361SR4NzUu7aXTAJoVI=;
 b=DWRy75NpU0cyGX23lwWKYwGgV4yOFemAbtwtyo2onGfuFRvF6/+VUuze
 i46x74iRmDfiO/lpqvnCmenNSixS69JOEU5WRo+7HAqU53okNCbMkZHBb
 EWBaRocxWzmypsPDX54T9e5M9uyhpgzWronO+SAx5tjrR5d/4L4mbcLGB
 1upvj1tkwSOw8N75n7394745+7XL0ugUaFj6KhcDbz5L1pbOO3FkoUz/V
 +nOMHIQZt0TvNt2L0BVX7EF+9AJU7thhCb92tcYuYOFM1/aGrsPibpuxJ
 kFNAWM/Zguuo4FrcRNVPsvrwBDYdqHCnmMiSxqkvTFq3Zr3tf68KFPrMZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360733503"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="360733503"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 03:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="1077862466"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="1077862466"
Received: from bvivekan-desk.iind.intel.com ([10.190.239.116])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 03:55:09 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 16:29:54 +0530
Message-Id: <20230921105954.2002469-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Print display info inside
 driver display initialization
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Separate the printing of display version and feature flags from the main
driver probe to inside the display initialization. This is in alignment
with isolating the display code from the main driver and helps Xe driver
to resuse it.

v2: Replace drm_info_printer with drm_debug_printer (Jani)

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 5 +++++
 drivers/gpu/drm/i915/i915_driver.c                  | 2 --
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 9d9b034b9bdc..44b59ac301e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -380,6 +380,8 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 
 void intel_display_driver_register(struct drm_i915_private *i915)
 {
+	struct drm_printer p = drm_debug_printer("i915 display info:");
+
 	if (!HAS_DISPLAY(i915))
 		return;
 
@@ -407,6 +409,9 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	 * fbdev->async_cookie.
 	 */
 	drm_kms_helper_poll_init(&i915->drm);
+
+	intel_display_device_info_print(DISPLAY_INFO(i915),
+					DISPLAY_RUNTIME_INFO(i915), &p);
 }
 
 /* part #1: call before irq uninstall */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e5d693904123..d50347e5773a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -699,8 +699,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 		intel_device_info_print(INTEL_INFO(dev_priv),
 					RUNTIME_INFO(dev_priv), &p);
-		intel_display_device_info_print(DISPLAY_INFO(dev_priv),
-						DISPLAY_RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
 		for_each_gt(gt, dev_priv, i)
 			intel_gt_info_print(&gt->info, &p);
-- 
2.25.1


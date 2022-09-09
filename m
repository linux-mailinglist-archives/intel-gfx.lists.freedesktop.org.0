Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396435B2C43
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 04:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098F410E26C;
	Fri,  9 Sep 2022 02:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F4BD10E244
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 02:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662692072; x=1694228072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LhciDruDcQQ0FTK9lujC7sWGzfQyPDaMseHSngHypKk=;
 b=G4l7n3PqE1bRJym+0ulZB4hr9iGWvBmBZxxly4fcTldPJpg+3ZI8lGVU
 2udCZA4qiSJNI+plui0tiV1tUcYhhNh3OK3a20nUWw7SYJQu7yyDIcerK
 zyDweVpqTqLk9usuih8MTr6Sidt46Tx12LHhSpbfaPMaapWe3iyb6kySO
 Y6GEZVh2kgJXsA45xIPzVC9qmnobBLoa00Ho1+krRFknMxUFKsO6EK575
 YwBbua/PHIXCvb2rLE5NJ56f8X4/7cYOgRpZBslzF5HSqO6o1c5AhxL4o
 y+Xpz5ecy2nVzq4mg8fs6shUZq8/HOQ8UvCLbphNa8ucIKmm/VcUBXj2S g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280407137"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280407137"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="943609608"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:30 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 08:26:45 +0530
Message-Id: <20220909025646.3397620-6-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220909025646.3397620-1-badal.nilawar@intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/mtl: Modify CAGF functions for MTL
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

Updated the CAGF functions to get actual resolved frequency of
3D and SAMedia

Bspec: 66300

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 8 ++++++++
 drivers/gpu/drm/i915/gt/intel_rps.c     | 7 ++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index dac59c3e68db..ab9a5e66ab34 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1515,6 +1515,14 @@
 #define   GEN12_CAGF_MASK			REG_GENMASK(19, 11)
 #define   GEN12_VOLTAGE_MASK			REG_GENMASK(10, 0)
 
+/*
+ * MTL: Workpoint reg to get Core C state and act freq of 3D, SAMedia/
+ * 3D - 0x0C60 , SAMedia - 0x380C60
+ * Intel uncore handler redirects transactions for SAMedia to MTL_MEDIA_GSI_BASE
+ */
+#define MTL_MIRROR_TARGET_WP1          _MMIO(0x0C60)
+#define   MTL_CAGF_MASK                REG_GENMASK(8, 0)
+
 #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
 #define   GEN11_CSME				(31)
 #define   GEN11_GUNIT				(28)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 341f96f536e8..3e4abc25f139 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2045,7 +2045,10 @@ u32 intel_rps_read_rpstat(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 rpstat;
 
-	if (GRAPHICS_VER(i915) >= 12)
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		rpstat = intel_uncore_read(rps_to_gt(rps)->uncore,
+					   MTL_MIRROR_TARGET_WP1);
+	else if (GRAPHICS_VER(i915) >= 12)
 		rpstat = intel_uncore_read(rps_to_gt(rps)->uncore, GEN12_RPSTAT1);
 	else
 		rpstat = intel_uncore_read(rps_to_gt(rps)->uncore, GEN6_RPSTAT1);
@@ -2060,6 +2063,8 @@ u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		cagf = (rpstat >> 8) & 0xff;
+	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		cagf = rpstat & MTL_CAGF_MASK;
 	else if (GRAPHICS_VER(i915) >= 12)
 		cagf = (rpstat & GEN12_CAGF_MASK) >> GEN12_CAGF_SHIFT;
 	else if (GRAPHICS_VER(i915) >= 9)
-- 
2.25.1


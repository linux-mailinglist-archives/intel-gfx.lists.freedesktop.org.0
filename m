Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4251B7A7693
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 10:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02A810E465;
	Wed, 20 Sep 2023 08:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2750510E465
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 08:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695200347; x=1726736347;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3F/fr9b/8Qug53SBfoGyM30+rimDLZ/gkyFEFYCyFRY=;
 b=j5qMwNh0Jr/Opqhv+ALsfpqAiXiN0qJu7LPWVUpq+UJ/VhA4nfTeiWK9
 8Jl2qm4ays7xKcXYbfSloyigi4H2zCU+XhbGthVzfgFgihvYCFBMK/9Qc
 AV2hGzyNolpmxpqNWrOO9vOLe2kUUozGqfVjxBtedW6pp4MxU4WRVyGfU
 bLdExdUyTk01IXlOc8U5fPNkckcKu3PI/NxeiM3Zfxb5kUFwWVdAU0rPG
 k75jJI/t+p571AYS4ZA88/9rnKLyr5fbmoPrpVDbMEFKT2dgqEl7CnbHt
 eSI8ZxaYKS8/zlRfhwmU4jpXNmgG+5z72i3bS3FTv4fZBw1TByDfHJ5ku g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="379053769"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="379053769"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 01:59:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746567680"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="746567680"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 01:59:04 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 14:36:20 +0530
Message-Id: <20230920090620.3255091-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Update RC6 mask for mtl_drpc
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is seen that for RC6 status register is sometimes setting unused bits
without affecting functionality. So updated the mask with used bits.
As mtl_drpc is debug fs function removing MISSING_CASE from default case as
it doesn't make sense to panic (panic_on_warn=1) the system if register is
reporting unsupported state.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 1 -
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 357e2f865727..f900cc68d6d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -290,7 +290,6 @@ static int mtl_drpc(struct seq_file *m)
 		seq_puts(m, "RC6\n");
 		break;
 	default:
-		MISSING_CASE(REG_FIELD_GET(MTL_CC_MASK, gt_core_status));
 		seq_puts(m, "Unknown\n");
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0d5260d126d8..9f2a7d103ea5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -26,7 +26,7 @@
 #define   MTL_CAGF_MASK				REG_GENMASK(8, 0)
 #define   MTL_CC0				0x0
 #define   MTL_CC6				0x3
-#define   MTL_CC_MASK				REG_GENMASK(12, 9)
+#define   MTL_CC_MASK				REG_GENMASK(10, 9)
 
 /* RPM unit config (Gen8+) */
 #define RPM_CONFIG0				_MMIO(0xd00)
-- 
2.25.1


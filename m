Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7327A2028
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 15:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298FA10E634;
	Fri, 15 Sep 2023 13:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DEB10E62F
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 13:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694785775; x=1726321775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NVQCYUnlXrC4jIQvD3Ek+1KHbJKjizhAhr3Ahuh9DGI=;
 b=Q1kWz36M+QjvP580jeJNkgWz9JWKiJZdvQBPRamgXTrSLocjjymBTu6V
 FRGEvECcSOIaILn3TO4AiuHj/Xjz6oZpZ1lKwe3yj3+Qo6CKZO3cp3pCK
 XLeWgbdmPYYbSVuiff+0+rLpDP8ujL5QNph9PdhTp/fCb/ty5CwEtyEm8
 BFpRXtxO+Q9dpy1ZonjzitJ90VE8xuejZhB7GO+vtzc+6LdTVcu92vCMq
 RSyEbpiFyM76SGGZMzJ6E0j1TyDlx329RdqVVX9v+FRIqwd4FQwe8pEBk
 DBEl6en31NL1ghuek82jTSUxAMRAocvNscebTSOYSqnUHEKMnEktlKRX+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="378164530"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="378164530"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="774324819"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="774324819"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:49:32 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 19:26:28 +0530
Message-Id: <20230915135628.2952527-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Update RC6 mask for mtl_drpc
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
As mtl_drpc is debug fs function removing MISSING_CASE from default case.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
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
index a00ff51c681d..71b31d52c646 100644
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


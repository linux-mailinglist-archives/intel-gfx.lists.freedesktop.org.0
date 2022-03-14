Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A814D88E6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 17:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC1610E375;
	Mon, 14 Mar 2022 16:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DAE510E36D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 16:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647274399; x=1678810399;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K6cn8eAtloBZzTIoqa/JzrkfAc3L5r9EMlLdZf+nUbM=;
 b=l8ugbfRhA1cN6vloOywwLU+x6kEaDG9svClM7t+jTvSg9KcehxEJG99f
 cLIKS0vj87bDGHrVmwruQ5fBTMItTgNojVx50CdebVzStPwH+RzLWQVu2
 8hzi4T+TaBzsh5NbN27i+hhmaw3U9RiPjIiLyRDEvPG2BJb8hLOcXFbsP
 +E1UzidA+JniDCbhBb3ce4aD/D2BCOZu+86fMxjLOZf3ZQDKEv+G8NkA2
 wxaW4iygjBpFTvWsJz7V/UoRs1Uflf8aH57GLYToOxCLEwWeWzP+dy4av
 AX15pXcgyEU1p5g1XNykxGEQUoBq0pHXL8LkGHVhqwGW7Y4tjsGtdFwo/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="255802074"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="255802074"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:13:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="634252913"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:13:18 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 09:13:10 -0700
Message-Id: <20220314161310.6468-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Drop redundant IS_VALLEYVIEW
 check in __get_rc6()
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

Because VLV_GT_RENDER_RC6 == GEN6_GT_GFX_RC6, the IS_VALLEYVIEW() check is
not needed. Neither is the check present in other code paths which call
intel_rc6_residency_ns() (in functions gen6_drpc(), rc6_residency() and
rc6_residency_ms_show()).

v2: Elimintate VLV_GT_RENDER_RC6 #define (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 1 -
 drivers/gpu/drm/i915/i915_pmu.c               | 5 +----
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 4a1c74b8de05..437e96bb3b93 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -113,7 +113,7 @@ static int vlv_drpc(struct seq_file *m)
 	seq_printf(m, "Media Power Well: %s\n",
 		   (pw_status & VLV_GTLC_PW_MEDIA_STATUS_MASK) ? "Up" : "Down");
 
-	print_rc6_res(m, "Render RC6 residency since boot:", VLV_GT_RENDER_RC6);
+	print_rc6_res(m, "Render RC6 residency since boot:", GEN6_GT_GFX_RC6);
 	print_rc6_res(m, "Media RC6 residency since boot:", VLV_GT_MEDIA_RC6);
 
 	return fw_domains_show(m, NULL);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 19cd34f24263..201b507c9dde 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1440,7 +1440,6 @@
 #define   VLV_MEDIA_RC6_COUNT_EN		(1 << 1)
 #define   VLV_RENDER_RC6_COUNT_EN		(1 << 0)
 #define GEN6_GT_GFX_RC6				_MMIO(0x138108)
-#define VLV_GT_RENDER_RC6			_MMIO(0x138108)
 #define VLV_GT_MEDIA_RC6			_MMIO(0x13810c)
 
 #define GEN6_GT_GFX_RC6p			_MMIO(0x13810c)
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index cfc21042499d..3e3b09588fd3 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -148,10 +148,7 @@ static u64 __get_rc6(struct intel_gt *gt)
 	struct drm_i915_private *i915 = gt->i915;
 	u64 val;
 
-	val = intel_rc6_residency_ns(&gt->rc6,
-				     IS_VALLEYVIEW(i915) ?
-				     VLV_GT_RENDER_RC6 :
-				     GEN6_GT_GFX_RC6);
+	val = intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6);
 
 	if (HAS_RC6p(i915))
 		val += intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6p);
-- 
2.34.1


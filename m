Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2742A5AD8AC
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD93710E475;
	Mon,  5 Sep 2022 18:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C87410E475
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400807; x=1693936807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Symz9yRC1jyuBOh0PqqAz5zew5evdVoTa/4O+b/IiRA=;
 b=JnWojJZne9pAaFlVXAzpkMBvTqXlJwtdkRrGRb73IPka2shE/hjQNggX
 kzx1YYfxOv4gFGHSCZxoMLdVDyrJspRvqjfJWHp+7PeT1gObAuhJUExTj
 RFfAOP3urepnFisp2utsq47ErLcMQubaS74dqZVKMeRdGQvPQ2t7HvIY5
 LprYGS8mF0DkodC3bDTMye8HFUwiMgG+JuY0+F9p0b5cYnsmJDKQbD1o1
 mhZMSAOOboqm2bnFSqZNOyl3QAu8TIEEN7/B1bY/C2U5h9dqV9yOFCPG4
 H7JC27HImEklhcB4C6frQwxD9zkK0v4B0WQSqqBi6k/oJdiyYqkN1t/Mj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="295171021"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="295171021"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:00:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="942178954"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:00:05 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 23:32:16 +0530
Message-Id: <20220905180219.1971119-3-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220905180219.1971119-1-badal.nilawar@intel.com>
References: <20220905180219.1971119-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Rename and expose common GT early
 init routine
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

From: Matt Roper <matthew.d.roper@intel.com>

The common early GT init is needed for initialization of all GT types
(root/primary, remote tile, standalone media).  Since standalone media
(coming in the next patch) will be implemented in a separate file,
rename and expose the function for use.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Radhakrishna Sripada <Radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 6 +++---
 drivers/gpu/drm/i915/gt/intel_gt.h | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 5b4263c708cc..57a6488c0e14 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -35,7 +35,7 @@
 #include "intel_uncore.h"
 #include "shmem_utils.h"
 
-static void __intel_gt_init_early(struct intel_gt *gt)
+void intel_gt_common_init_early(struct intel_gt *gt)
 {
 	spin_lock_init(&gt->irq_lock);
 
@@ -65,7 +65,7 @@ void intel_root_gt_init_early(struct drm_i915_private *i915)
 	gt->i915 = i915;
 	gt->uncore = &i915->uncore;
 
-	__intel_gt_init_early(gt);
+	intel_gt_common_init_early(gt);
 }
 
 static int intel_gt_probe_lmem(struct intel_gt *gt)
@@ -797,7 +797,7 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 		gt->uncore = uncore;
 		gt->uncore->debug = mmio_debug;
 
-		__intel_gt_init_early(gt);
+		intel_gt_common_init_early(gt);
 	}
 
 	intel_uncore_init_early(gt->uncore, gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 4d8779529cc2..c9a359f35d0f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -44,6 +44,7 @@ static inline struct intel_gt *gsc_to_gt(struct intel_gsc *gsc)
 	return container_of(gsc, struct intel_gt, gsc);
 }
 
+void intel_gt_common_init_early(struct intel_gt *gt);
 void intel_root_gt_init_early(struct drm_i915_private *i915);
 int intel_gt_assign_ggtt(struct intel_gt *gt);
 int intel_gt_init_mmio(struct intel_gt *gt);
-- 
2.25.1


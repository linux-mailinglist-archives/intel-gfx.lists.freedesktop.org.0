Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6473C40D343
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 08:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A906EAAD;
	Thu, 16 Sep 2021 06:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C8F6EAAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 06:31:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286183769"
X-IronPort-AV: E=Sophos;i="5.85,297,1624345200"; d="scan'208";a="286183769"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 23:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,297,1624345200"; d="scan'208";a="698752618"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga006.fm.intel.com with ESMTP; 15 Sep 2021 23:31:05 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Thu, 16 Sep 2021 11:57:36 +0530
Message-Id: <20210916062736.1733587-1-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Add "intel_" as prefix in
 set_mocs_index()
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

Adding missing "intel_" prefix in set_mocs_index().

Fixes: b62aa57e3c78 ("drm/i915/gt: Add support of mocs propagation")
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c   | 2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_mocs.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 55e87aff51d2..04b83c9578d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -682,7 +682,7 @@ int intel_gt_init(struct intel_gt *gt)
 		goto err_pm;
 	}
 
-	set_mocs_index(gt);
+	intel_set_mocs_index(gt);
 
 	err = intel_engines_init(gt);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index e4b97cd14cf9..15f9ada28a7a 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -616,7 +616,7 @@ static u32 global_mocs_offset(void)
 	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
 }
 
-void set_mocs_index(struct intel_gt *gt)
+void intel_set_mocs_index(struct intel_gt *gt)
 {
 	struct drm_i915_mocs_table table;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.h b/drivers/gpu/drm/i915/gt/intel_mocs.h
index 8a09d64b115f..76db827210c0 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.h
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.h
@@ -36,6 +36,6 @@ struct intel_gt;
 
 void intel_mocs_init(struct intel_gt *gt);
 void intel_mocs_init_engine(struct intel_engine_cs *engine);
-void set_mocs_index(struct intel_gt *gt);
+void intel_set_mocs_index(struct intel_gt *gt);
 
 #endif
-- 
2.26.2


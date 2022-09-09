Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 776605B2C45
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 04:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CF510E2D9;
	Fri,  9 Sep 2022 02:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E42DD10E18C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 02:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662692066; x=1694228066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Symz9yRC1jyuBOh0PqqAz5zew5evdVoTa/4O+b/IiRA=;
 b=nVoX510M88MJVxakUPWI4rxziy9YG1tx67R7b2xdvshUQZKfhpZwCgmc
 f3f4Qb/0/lw2SypzXDfLlcEY3hpbJOdyEGGECVzHBHWCPZYVJvfsQNUVl
 lp11rfQTxc8eFjDmjGwPW5Mhu4VKa7BnTYDd9gXKIBGRpLFU+GONh7RaF
 5EYybuaFjwuagiZyhlewwHa+131q1RvRSOoBLPF9Hupv8yZ2dn3S301uc
 Y2nMWS+WArrTnXiiZeTJVoJ3qm2XIqPx/hNKk9OnZwge9NYgqMrWTG8+b
 glmxdW83eodzHMtWM6J+DgQqx3pNx5CULzK855osxvasp7FzlVY+b6M3C g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280407113"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280407113"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="943609584"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:24 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 08:26:42 +0530
Message-Id: <20220909025646.3397620-3-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220909025646.3397620-1-badal.nilawar@intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Rename and expose common GT early
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


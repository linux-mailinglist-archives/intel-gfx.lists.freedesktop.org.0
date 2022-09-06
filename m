Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1D85AF891
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 01:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6269810E0C4;
	Tue,  6 Sep 2022 23:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F4010E09C;
 Tue,  6 Sep 2022 23:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662508186; x=1694044186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OQxjNsVh+dPYkcIueVTx2hi/zWD88addn/6FfSaKlSY=;
 b=CIbr/ubKQrjPQb24f28orX5YEZsYoScCA+aa/Qosc8dIJMM6fhvXxvCn
 lWDkRviK4z+yTDNJZ1+AJME08dKW8OujOHxB4j2uZ/2I66lzWxuSZfpmj
 L4mBhl0cwNv6lJ3ruxuH0M3hZJ5x3gTIgJNroi00Ow+gwy8/zDDqrAVIx
 C4KSdRr3lHxm2/qna2kXYngwCarlWUZ68oOYW1o9avvPQRVr+W9w9koXG
 7HAzFhFxPf7eoHNMmdRShF/wBcE649lV+mkKAGEeg10/INK/wiif9c9/H
 zz/2C1havIvH0xS9iVHL4ESiNdh0bW6vSptA5dlvdvOAV4F6d4nyfXfBL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276477206"
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="276477206"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 16:49:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="675920314"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 16:49:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 16:49:23 -0700
Message-Id: <20220906234934.3655440-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220906234934.3655440-1-matthew.d.roper@intel.com>
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/14] drm/i915: Use managed allocations for
 extra uncore objects
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're slowly transitioning the init-time kzalloc's of the driver over to
DRM-managed allocations; let's make sure the uncore objects allocated
for non-root GTs are thus allocated.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a82b5e2e0d83..cf7aab7adb30 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -783,7 +783,7 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 	if (!gt_is_root(gt)) {
 		struct intel_uncore *uncore;
 
-		uncore = kzalloc(sizeof(*uncore), GFP_KERNEL);
+		uncore = drmm_kzalloc(&gt->i915->drm, sizeof(*uncore), GFP_KERNEL);
 		if (!uncore)
 			return -ENOMEM;
 
@@ -808,10 +808,8 @@ intel_gt_tile_cleanup(struct intel_gt *gt)
 {
 	intel_uncore_cleanup_mmio(gt->uncore);
 
-	if (!gt_is_root(gt)) {
-		kfree(gt->uncore);
+	if (!gt_is_root(gt))
 		kfree(gt);
-	}
 }
 
 int intel_gt_probe_all(struct drm_i915_private *i915)
-- 
2.37.2


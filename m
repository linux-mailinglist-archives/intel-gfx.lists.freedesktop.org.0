Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DBC82FFB1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 06:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6398410E00F;
	Wed, 17 Jan 2024 05:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3574110E00F
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 05:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705468174; x=1737004174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KbexK2Ke+QkdQCK8qKb9vyhZcWSjWWy19j8XAeUhYrI=;
 b=DdkyCKK198KTVuLzm1/P8TY/4qpiXFFJGDUO7YsuzVD+dpeqfmijxcfi
 Ymn9ZLqC8yydW//+3XkOi9OhbJ0yso1+3x+mI5bKiA9E2muJuULnb9fYY
 VMK1gu9X3RG5CT3z7wBdRF36Me5H9pXDxiYWE+PRWk4OnGRm368BN69RO
 L14OJMMQRE7IKvnCXoOlzjs64utmkxp1ZSqTwcP+DiOYHFEMDBaWgUKDV
 sGIbrDeijdXOWC2Yth17IVqCMCb0JEfSOuefSfRdp3wbowbJwdWuIad6j
 Upzy5F6NEj7n72/fsYZ5gMLyzUCZQHMFQwdbywWVkLQOGpYxiJfO4BGyK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="403830051"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="403830051"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 21:09:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="777323150"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="777323150"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2024 21:09:23 -0800
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] Revert "drm/i915/mtl: Update workaround 14018778641"
Date: Wed, 17 Jan 2024 10:50:42 +0530
Message-Id: <20240117052042.1419544-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Applying WA 14018778641 only on Compute engine has impact on Chrome
related apps. Reverting this patch and applying WA to all engines is
helping with performance on Chrome related apps.

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 270b56fc85e2..ab76025bf617 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1647,6 +1647,7 @@ static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
 	/* Wa_14018778641 / Wa_18018781329 */
+	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
@@ -1693,6 +1694,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 * GT, the media GT's versions are regular singleton registers.
 	 */
 	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
-- 
2.25.1


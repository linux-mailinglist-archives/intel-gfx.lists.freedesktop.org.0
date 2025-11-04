Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1686DC30956
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 11:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A392210E5BE;
	Tue,  4 Nov 2025 10:48:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a8t60q77";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E2610E5BE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 10:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762253306; x=1793789306;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P+hD3GAittFLU+vppgaucgAfJivMcChpC89uAHO12m0=;
 b=a8t60q77c7hgs4laJCsdYV62chzy4jOy2I1oDGQOZIaTAyKN8cUMo2Qn
 FEuyoJ1GKBuQxQksIufy1PDGstJRu1rR02zev+av3YZgVYPgNabJlqhCS
 tAtEVhZP//whczAKqR/MFue8qDquridnSKTdx0TuWcX7KTqIi2zm0pYOZ
 xUzEQjLXGYXmKRyEsa0ti7lbHMyqgA8dp1OsUi5aWZrkpymNG5J/OsqM+
 EkQH0ZIMm/bIZT6tbyuDbaszD7zlu3el/eWo9p1UsKOWSApC2ts9j42IZ
 LcpOntjUQY5th6aYIC99JagfEw0Zb963dFc2ndf5cbOANKTUE1OcJAgEi Q==;
X-CSE-ConnectionGUID: LZ0RKCoYSGumy0ejVDPAAQ==
X-CSE-MsgGUID: a+YWjh3ZRgaBG8Jb442N5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81748863"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="81748863"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 02:48:26 -0800
X-CSE-ConnectionGUID: 5PxfvaPkRdSCq22+dSoZVA==
X-CSE-MsgGUID: F6a3mBj2TO2Zew5OPHPL6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="186983841"
Received: from nitin-super-server.iind.intel.com ([10.190.238.72])
 by fmviesa006.fm.intel.com with ESMTP; 04 Nov 2025 02:48:24 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH] drm/i915/gt: Rename MCFG_MCR_SELECTOR to STEER_SEMAPHORE
Date: Tue,  4 Nov 2025 16:48:40 +0530
Message-Id: <20251104111840.2110000-1-nitin.r.gote@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The register at offset 0xfd0 was incorrectly named MCFG_MCR_SELECTOR.
According to the hardware specification (Bspec), this register is
actually called STEER_SEMAPHORE.

Rename the register definition and update its usage to
match the official hardware documentation.

No functional changes.

Bspec: 67113

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c      | 6 +++---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +--
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index c3afa321fe30..2d5ea5568b22 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -354,7 +354,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
 		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
 
 		err = wait_for(intel_uncore_read_fw(gt->uncore,
-						    MTL_STEER_SEMAPHORE) == 0x1, 100);
+						    STEER_SEMAPHORE) == 0x1, 100);
 	}
 
 	/*
@@ -393,7 +393,7 @@ void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags)
 	spin_unlock_irqrestore(&gt->mcr_lock, flags);
 
 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70)) {
-		intel_uncore_write_fw(gt->uncore, MTL_STEER_SEMAPHORE, 0x1);
+		intel_uncore_write_fw(gt->uncore, STEER_SEMAPHORE, 0x1);
 
 		intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_GT);
 	}
@@ -418,7 +418,7 @@ void intel_gt_mcr_lock_sanitize(struct intel_gt *gt)
 	lockdep_assert_not_held(&gt->mcr_lock);
 
 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
-		intel_uncore_write_fw(gt->uncore, MTL_STEER_SEMAPHORE, 0x1);
+		intel_uncore_write_fw(gt->uncore, STEER_SEMAPHORE, 0x1);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7421ed18d8d1..2282c1f16f44 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -62,8 +62,7 @@
 #define GMD_ID_GRAPHICS				_MMIO(0xd8c)
 #define GMD_ID_MEDIA				_MMIO(MTL_MEDIA_GSI_BASE + 0xd8c)
 
-#define MCFG_MCR_SELECTOR			_MMIO(0xfd0)
-#define MTL_STEER_SEMAPHORE			_MMIO(0xfd0)
+#define STEER_SEMAPHORE				_MMIO(0xfd0)
 #define MTL_MCR_SELECTOR			_MMIO(0xfd4)
 #define SF_MCR_SELECTOR				_MMIO(0xfd8)
 #define GEN8_MCR_SELECTOR			_MMIO(0xfdc)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index ece88c612e27..594730f221b8 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1405,7 +1405,7 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
 	 * we'll just steer to a hardcoded "2" since that value will work
 	 * everywhere.
 	 */
-	__set_mcr_steering(wal, MCFG_MCR_SELECTOR, 0, 2);
+	__set_mcr_steering(wal, STEER_SEMAPHORE, 0, 2);
 	__set_mcr_steering(wal, SF_MCR_SELECTOR, 0, 2);
 
 	/*
-- 
2.25.1


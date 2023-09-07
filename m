Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F0A797065
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 08:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BA710E775;
	Thu,  7 Sep 2023 06:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9466C10E775
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 06:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694069860; x=1725605860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N/QLzwU+LeoQohFdtvkHaIsnkLEOj+PUYrvI6jVWvsY=;
 b=m40YU4WwBSGwDZRyao0hMixkMLNG1Qv5JOmoCLOEW2+lmqz/A2Leu/uu
 gSI3QHNSwW51b2L5TU8XcJRqRyers+063WHzR9CLmeRNw73N3V/SK8lgx
 +8qYbhZ0IxQ5hExqziWVdeCHj/lz0By65z7Tk8DBQGn8cMVOZD5fZSj6m
 SoER8PfxRDfWoOwAM8b1NWt3O/4TJN/woHKUZlv/2/GY+6SiWGJipAe8d
 p4RRlCh2vDS6m2NRSDhZapFB+gSAzVVVEhA0OIWGeFA1ea6MzdgVKdUQB
 Hn8An0HQqV4EFkKKoGxP8qkVI2O6zhzDhpsnxnRmXe5ZLRfXkIOOE2zC9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="362304100"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="362304100"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 23:57:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="988636980"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="988636980"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2023 23:57:38 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 12:27:34 +0530
Message-Id: <20230907065734.3871575-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround has two different implementations,
one for gen 12 to DG2 and another for DG2 and later.
Bspec :  11354 , 56551.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 4 ++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 0143445dba83..fee2712f81e8 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -271,6 +271,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
 		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70))
 			bit_group_0 |= PIPE_CONTROL_CCS_FLUSH;
 
+		/* Wa_18022495364 */
+		if ((GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70)) ||
+		    IS_DG2(rq->i915))
+			bit_group_1 |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
 		bit_group_1 |= PIPE_CONTROL_TILE_CACHE_FLUSH;
 		bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
 		bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0e4c638fcbbf..4c0cb3a3d0aa 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -164,6 +164,8 @@
 #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
 #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
 #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
+#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
+#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
 
 #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
 #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 864d41bcf6bb..1a026d4d7ac5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -712,6 +712,9 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 
+	/* Wa_18022495364 :tgl,rkl,dg1,adl-s,adl-p */
+	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
+		     GEN12_GLOBAL_DEBUG_ENABLE);
 	/*
 	 * Wa_16011163337 - GS_TIMER
 	 *
-- 
2.34.1


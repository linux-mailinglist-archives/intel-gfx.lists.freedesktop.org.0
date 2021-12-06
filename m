Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 919224693F2
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 11:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043107BBD4;
	Mon,  6 Dec 2021 10:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43CB6FEB8
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Dec 2021 08:16:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10189"; a="298068333"
X-IronPort-AV: E=Sophos;i="5.87,290,1631602800"; d="scan'208";a="298068333"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 00:16:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,290,1631602800"; d="scan'208";a="461719086"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2021 00:16:02 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Dec 2021 13:40:26 +0530
Message-Id: <20211206081026.4024401-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2] drm/i915/gt: Use hw_engine_masks as
 reset_domains
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

We need a way to reset engines by their reset domains.
This change sets up way to fetch reset domains of each
engine globally.

Changes since V1:
	- Use static reset domain array - Ville and Tvrtko
	- Use BUG_ON at appropriate place - Tvrtko

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 32 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
 drivers/gpu/drm/i915/gt/intel_reset.c        | 29 ++----------------
 3 files changed, 35 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f2ccd5b53d42..352254e001b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -325,6 +325,38 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
 	engine->id = id;
 	engine->legacy_idx = INVALID_ENGINE;
 	engine->mask = BIT(id);
+	if (GRAPHICS_VER(gt->i915) >= 11) {
+		static const u32 engine_reset_domains[] = {
+			[RCS0]  = GEN11_GRDOM_RENDER,
+			[BCS0]  = GEN11_GRDOM_BLT,
+			[VCS0]  = GEN11_GRDOM_MEDIA,
+			[VCS1]  = GEN11_GRDOM_MEDIA2,
+			[VCS2]  = GEN11_GRDOM_MEDIA3,
+			[VCS3]  = GEN11_GRDOM_MEDIA4,
+			[VCS4]  = GEN11_GRDOM_MEDIA5,
+			[VCS5]  = GEN11_GRDOM_MEDIA6,
+			[VCS6]  = GEN11_GRDOM_MEDIA7,
+			[VCS7]  = GEN11_GRDOM_MEDIA8,
+			[VECS0] = GEN11_GRDOM_VECS,
+			[VECS1] = GEN11_GRDOM_VECS2,
+			[VECS2] = GEN11_GRDOM_VECS3,
+			[VECS3] = GEN11_GRDOM_VECS4,
+		};
+		GEM_BUG_ON(id >= ARRAY_SIZE(engine_reset_domains) ||
+			   !engine_reset_domains[id]);
+		engine->reset_domain = engine_reset_domains[id];
+	} else {
+		static const u32 engine_reset_domains[] = {
+			[RCS0]  = GEN6_GRDOM_RENDER,
+			[BCS0]  = GEN6_GRDOM_BLT,
+			[VCS0]  = GEN6_GRDOM_MEDIA,
+			[VCS1]  = GEN8_GRDOM_MEDIA2,
+			[VECS0] = GEN6_GRDOM_VECS,
+		};
+		GEM_BUG_ON(id >= ARRAY_SIZE(engine_reset_domains) ||
+			   !engine_reset_domains[id]);
+		engine->reset_domain = engine_reset_domains[id];
+	}
 	engine->i915 = i915;
 	engine->gt = gt;
 	engine->uncore = gt->uncore;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 5732e0d71513..36365bdbe1ee 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -318,6 +318,7 @@ struct intel_engine_cs {
 	unsigned int guc_id;
 
 	intel_engine_mask_t mask;
+	u32 reset_domain;
 	/**
 	 * @logical_mask: logical mask of engine, reported to user space via
 	 * query IOCTL and used to communicate with the GuC in logical space.
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 0fbd6dbadce7..63199f0550e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -297,13 +297,6 @@ static int gen6_reset_engines(struct intel_gt *gt,
 			      intel_engine_mask_t engine_mask,
 			      unsigned int retry)
 {
-	static const u32 hw_engine_mask[] = {
-		[RCS0]  = GEN6_GRDOM_RENDER,
-		[BCS0]  = GEN6_GRDOM_BLT,
-		[VCS0]  = GEN6_GRDOM_MEDIA,
-		[VCS1]  = GEN8_GRDOM_MEDIA2,
-		[VECS0] = GEN6_GRDOM_VECS,
-	};
 	struct intel_engine_cs *engine;
 	u32 hw_mask;
 
@@ -314,8 +307,7 @@ static int gen6_reset_engines(struct intel_gt *gt,
 
 		hw_mask = 0;
 		for_each_engine_masked(engine, gt, engine_mask, tmp) {
-			GEM_BUG_ON(engine->id >= ARRAY_SIZE(hw_engine_mask));
-			hw_mask |= hw_engine_mask[engine->id];
+			hw_mask |= engine->reset_domain;
 		}
 	}
 
@@ -492,22 +484,6 @@ static int gen11_reset_engines(struct intel_gt *gt,
 			       intel_engine_mask_t engine_mask,
 			       unsigned int retry)
 {
-	static const u32 hw_engine_mask[] = {
-		[RCS0]  = GEN11_GRDOM_RENDER,
-		[BCS0]  = GEN11_GRDOM_BLT,
-		[VCS0]  = GEN11_GRDOM_MEDIA,
-		[VCS1]  = GEN11_GRDOM_MEDIA2,
-		[VCS2]  = GEN11_GRDOM_MEDIA3,
-		[VCS3]  = GEN11_GRDOM_MEDIA4,
-		[VCS4]  = GEN11_GRDOM_MEDIA5,
-		[VCS5]  = GEN11_GRDOM_MEDIA6,
-		[VCS6]  = GEN11_GRDOM_MEDIA7,
-		[VCS7]  = GEN11_GRDOM_MEDIA8,
-		[VECS0] = GEN11_GRDOM_VECS,
-		[VECS1] = GEN11_GRDOM_VECS2,
-		[VECS2] = GEN11_GRDOM_VECS3,
-		[VECS3] = GEN11_GRDOM_VECS4,
-	};
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t tmp;
 	u32 reset_mask, unlock_mask = 0;
@@ -518,8 +494,7 @@ static int gen11_reset_engines(struct intel_gt *gt,
 	} else {
 		reset_mask = 0;
 		for_each_engine_masked(engine, gt, engine_mask, tmp) {
-			GEM_BUG_ON(engine->id >= ARRAY_SIZE(hw_engine_mask));
-			reset_mask |= hw_engine_mask[engine->id];
+			reset_mask |= engine->reset_domain;
 			ret = gen11_lock_sfc(engine, &reset_mask, &unlock_mask);
 			if (ret)
 				goto sfc_unlock;
-- 
2.31.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB5B26C5A7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929FB6EA86;
	Wed, 16 Sep 2020 17:16:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FA86EA85
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:54 +0000 (UTC)
IronPort-SDR: I/dU6wTj9DNR1mXSimqYRogx+fCTatmkfNZACXVctDty43Ro1WeSWu7tXJrvXAiBhcu1KaNMFx
 WBCKq62wZoYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534260"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534260"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:54 -0700
IronPort-SDR: MiKpdHTb3OtrZKK/XBfKlACmVwX9ySYiqELHbNpU3q5KI2RUtxrxxV1khjb2wDRdTIsDYzWwcN
 5vgzd0U0fFuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259431"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:53 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:42 -0700
Message-Id: <20200916171653.2021483-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 01/12] drm/i915/guc: New GuC IDs based on engine
 class and instance
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
Cc: Oscar Mateo <oscar.mateo@intel.com>,
 Michal Winiarski <michal.winiarski@intel.com>,
 Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Starting from Gen11, the ID to be provided to GuC needs to contain
the engine class in bits [0..2] and the instance in bits [3..6].

NOTE: this patch breaks pointer dereferences in some existing GuC
functions that use the guc_id to dereference arrays but these functions
are not used for now as we have GuC submission disabled and we will
update these functions in follow up patch which requires new IDs.

Bspec: 20944

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Oscar Mateo <oscar.mateo@intel.com>
Signed-off-by: Michel Thierry <michel.thierry@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Michal Winiarski <michal.winiarski@intel.com>
Cc: Tomasz Lis <tomasz.lis@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   |  3 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 5bfb5f7ed02c..1f1c9032ed71 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -305,8 +305,9 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->i915 = i915;
 	engine->gt = gt;
 	engine->uncore = gt->uncore;
-	engine->hw_id = engine->guc_id = info->hw_id;
 	engine->mmio_base = __engine_mmio_base(i915, info->mmio_bases);
+	engine->hw_id = info->hw_id;
+	engine->guc_id = MAKE_GUC_ID(info->class, info->instance);
 
 	engine->class = info->class;
 	engine->instance = info->instance;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index a6b733c146c9..8b3684c6a9a1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -103,6 +103,25 @@
 
 #define GUC_CTL_MAX_DWORDS		(SOFT_SCRATCH_COUNT - 2) /* [1..14] */
 
+/*
+ * The class goes in bits [0..2] of the GuC ID, the instance in bits [3..6].
+ * Bit 7 can be used for operations that apply to all engine classes&instances.
+ */
+#define GUC_ENGINE_CLASS_SHIFT		0
+#define GUC_ENGINE_CLASS_MASK		(0x7 << GUC_ENGINE_CLASS_SHIFT)
+#define GUC_ENGINE_INSTANCE_SHIFT	3
+#define GUC_ENGINE_INSTANCE_MASK	(0xf << GUC_ENGINE_INSTANCE_SHIFT)
+#define GUC_ENGINE_ALL_INSTANCES	BIT(7)
+
+#define MAKE_GUC_ID(class, instance) \
+	(((class) << GUC_ENGINE_CLASS_SHIFT) | \
+	 ((instance) << GUC_ENGINE_INSTANCE_SHIFT))
+
+#define GUC_ID_TO_ENGINE_CLASS(guc_id) \
+	(((guc_id) & GUC_ENGINE_CLASS_MASK) >> GUC_ENGINE_CLASS_SHIFT)
+#define GUC_ID_TO_ENGINE_INSTANCE(guc_id) \
+	(((guc_id) & GUC_ENGINE_INSTANCE_MASK) >> GUC_ENGINE_INSTANCE_SHIFT)
+
 /* Work item for submitting workloads into work queue of GuC. */
 struct guc_wq_item {
 	u32 header;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

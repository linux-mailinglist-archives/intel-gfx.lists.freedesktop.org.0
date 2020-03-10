Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6361802A8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA98D6E88E;
	Tue, 10 Mar 2020 16:00:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5A16E88E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 16:00:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 09:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="235981119"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by fmsmga008.fm.intel.com with ESMTP; 10 Mar 2020 09:00:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 16:00:47 +0000
Message-Id: <20200310160047.20748-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gen12: Disable preemption timeout
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Allow super long OpenCL workloads which cannot be preempted within
the default timeout to run out of the box.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Michal Mrozek <michal.mrozek@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 53ac3f00909a..3dc302038742 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -275,6 +275,7 @@ static void intel_engine_sanitize_mmio(struct intel_engine_cs *engine)
 static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 {
 	const struct engine_info *info = &intel_engines[id];
+	struct drm_i915_private *i915 = gt->i915;
 	struct intel_engine_cs *engine;
 
 	BUILD_BUG_ON(MAX_ENGINE_CLASS >= BIT(GEN11_ENGINE_CLASS_WIDTH));
@@ -301,11 +302,11 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->id = id;
 	engine->legacy_idx = INVALID_ENGINE;
 	engine->mask = BIT(id);
-	engine->i915 = gt->i915;
+	engine->i915 = i915;
 	engine->gt = gt;
 	engine->uncore = gt->uncore;
 	engine->hw_id = engine->guc_id = info->hw_id;
-	engine->mmio_base = __engine_mmio_base(gt->i915, info->mmio_bases);
+	engine->mmio_base = __engine_mmio_base(i915, info->mmio_bases);
 
 	engine->class = info->class;
 	engine->instance = info->instance;
@@ -316,7 +317,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->props.max_busywait_duration_ns =
 		CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT;
 	engine->props.preempt_timeout_ms =
-		CONFIG_DRM_I915_PREEMPT_TIMEOUT;
+		INTEL_GEN(i915) == 12 ? 0 : CONFIG_DRM_I915_PREEMPT_TIMEOUT;
 	engine->props.stop_timeout_ms =
 		CONFIG_DRM_I915_STOP_TIMEOUT;
 	engine->props.timeslice_duration_ms =
@@ -326,7 +327,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	if (WARN_ON(engine->context_size > BIT(20)))
 		engine->context_size = 0;
 	if (engine->context_size)
-		DRIVER_CAPS(gt->i915)->has_logical_contexts = true;
+		DRIVER_CAPS(i915)->has_logical_contexts = true;
 
 	/* Nothing to do here, execute in order of dependencies */
 	engine->schedule = NULL;
@@ -342,7 +343,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	gt->engine_class[info->class][info->instance] = engine;
 	gt->engine[id] = engine;
 
-	gt->i915->engine[id] = engine;
+	i915->engine[id] = engine;
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

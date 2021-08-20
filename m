Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C5D3F36E6
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 00:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09FA36EB62;
	Fri, 20 Aug 2021 22:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC22B6EB35;
 Fri, 20 Aug 2021 22:50:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="302441052"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="302441052"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 15:50:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="513098646"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 15:50:02 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <daniel.vetter@ffwll.ch>,
	<tony.ye@intel.com>,
	<zhengguo.xu@intel.com>
Date: Fri, 20 Aug 2021 15:44:46 -0700
Message-Id: <20210820224446.30620-28-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210820224446.30620-1-matthew.brost@intel.com>
References: <20210820224446.30620-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 27/27] drm/i915/execlists: Weak parallel
 submission support for execlists
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

A weak implementation of parallel submission (multi-bb execbuf IOCTL) for
execlists. Basically doing as little as possible to support this
interface for execlists - basically just passing submit fences between
each request generated and virtual engines are not allowed. This is on
par with what is there for the existing (hopefully soon deprecated)
bonding interface.

We perma-pin these execlists contexts to align with GuC implementation.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  9 ++-
 drivers/gpu/drm/i915/gt/intel_context.c       |  4 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 57 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  2 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 -
 5 files changed, 65 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 0aa095bed310..cb6ce2ee1d8b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -536,9 +536,6 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
 	struct intel_engine_cs **siblings = NULL;
 	intel_engine_mask_t prev_mask;
 
-	if (!(intel_uc_uses_guc_submission(&i915->gt.uc)))
-		return -ENODEV;
-
 	if (get_user(slot, &ext->engine_index))
 		return -EFAULT;
 
@@ -548,6 +545,12 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
 	if (get_user(num_siblings, &ext->num_siblings))
 		return -EFAULT;
 
+	if (!intel_uc_uses_guc_submission(&i915->gt.uc) && num_siblings != 1) {
+		drm_dbg(&i915->drm, "Only 1 sibling (%d) supported in non-GuC mode\n",
+			num_siblings);
+		return -EINVAL;
+	}
+
 	if (slot >= set->num_engines) {
 		drm_dbg(&i915->drm, "Invalid placement value, %d >= %d\n",
 			slot, set->num_engines);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 2de62649e275..b0f0cac6a151 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -79,7 +79,8 @@ static int intel_context_active_acquire(struct intel_context *ce)
 
 	__i915_active_acquire(&ce->active);
 
-	if (intel_context_is_barrier(ce) || intel_engine_uses_guc(ce->engine))
+	if (intel_context_is_barrier(ce) || intel_engine_uses_guc(ce->engine) ||
+	    intel_context_is_parallel(ce))
 		return 0;
 
 	/* Preallocate tracking nodes */
@@ -554,7 +555,6 @@ void intel_context_bind_parent_child(struct intel_context *parent,
 	 * Callers responsibility to validate that this function is used
 	 * correctly but we use GEM_BUG_ON here ensure that they do.
 	 */
-	GEM_BUG_ON(!intel_engine_uses_guc(parent->engine));
 	GEM_BUG_ON(intel_context_is_pinned(parent));
 	GEM_BUG_ON(intel_context_is_child(parent));
 	GEM_BUG_ON(intel_context_is_pinned(child));
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index d1e2d6f8ff81..8875d85a1677 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -927,8 +927,7 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
 
 static bool ctx_single_port_submission(const struct intel_context *ce)
 {
-	return (IS_ENABLED(CONFIG_DRM_I915_GVT) &&
-		intel_context_force_single_submission(ce));
+	return intel_context_force_single_submission(ce);
 }
 
 static bool can_merge_ctx(const struct intel_context *prev,
@@ -2598,6 +2597,59 @@ static void execlists_context_cancel_request(struct intel_context *ce,
 				      current->comm);
 }
 
+static struct intel_context *
+execlists_create_parallel(struct intel_engine_cs **engines,
+			  unsigned int num_siblings,
+			  unsigned int width)
+{
+	struct intel_engine_cs **siblings = NULL;
+	struct intel_context *parent = NULL, *ce, *err;
+	int i, j;
+
+	GEM_BUG_ON(num_siblings != 1);
+
+	siblings = kmalloc_array(num_siblings,
+				 sizeof(*siblings),
+				 GFP_KERNEL);
+	if (!siblings)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < width; ++i) {
+		for (j = 0; j < num_siblings; ++j)
+			siblings[j] = engines[i * num_siblings + j];
+
+		ce = intel_context_create(siblings[0]);
+		if (!ce) {
+			err = ERR_PTR(-ENOMEM);
+			goto unwind;
+		}
+
+		if (i == 0) {
+			parent = ce;
+		} else {
+			intel_context_bind_parent_child(parent, ce);
+		}
+	}
+
+	parent->fence_context = dma_fence_context_alloc(1);
+
+	intel_context_set_nopreempt(parent);
+	intel_context_set_single_submission(parent);
+	for_each_child(parent, ce) {
+		intel_context_set_nopreempt(ce);
+		intel_context_set_single_submission(ce);
+	}
+
+	kfree(siblings);
+	return parent;
+
+unwind:
+	if (parent)
+		intel_context_put(parent);
+	kfree(siblings);
+	return err;
+}
+
 static const struct intel_context_ops execlists_context_ops = {
 	.flags = COPS_HAS_INFLIGHT,
 
@@ -2616,6 +2668,7 @@ static const struct intel_context_ops execlists_context_ops = {
 	.reset = lrc_reset,
 	.destroy = lrc_destroy,
 
+	.create_parallel = execlists_create_parallel,
 	.create_virtual = execlists_create_virtual,
 };
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 0ddbad4e062a..7e1153f84cca 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -983,6 +983,8 @@ lrc_pin(struct intel_context *ce,
 
 void lrc_unpin(struct intel_context *ce)
 {
+	if (unlikely(ce->last_rq))
+		i915_request_put(ce->last_rq);
 	check_redzone((void *)ce->lrc_reg_state - LRC_STATE_OFFSET,
 		      ce->engine);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 61e737fd1eee..88cae956c468 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2901,8 +2901,6 @@ static void guc_parent_context_unpin(struct intel_context *ce)
 	GEM_BUG_ON(!intel_context_is_parent(ce));
 	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
 
-	if (ce->last_rq)
-		i915_request_put(ce->last_rq);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 }
-- 
2.32.0


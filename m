Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C523A0C83
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 08:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E106E20E;
	Wed,  9 Jun 2021 06:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A4F06E1F3;
 Wed,  9 Jun 2021 06:34:59 +0000 (UTC)
IronPort-SDR: ueaC5nhoIL/tomZSHU4hpWxkQHF9oXxuzGQsUGo9MGBoUoTNIR+0oOeT6IsQZdNAgY26sd74sj
 lMnRn4AExwmg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="268868903"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="268868903"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:34:59 -0700
IronPort-SDR: SU0r3vS0fy7T5KlRJUfhZGzbrai6tS9ABVuzUN1fVNv4ZBBU+Vi1kT4EAZqRZsIXBSxYBtu9ud
 SFVdMenyS4Tw==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="482265816"
Received: from ekolpasx-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.109])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:34:57 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  9 Jun 2021 08:34:33 +0200
Message-Id: <20210609063436.284332-7-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/gt: Export the pinned context
 constructor and destructor
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
Cc: matthew.auld@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Allow internal clients to create and destroy a pinned context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
v2:
- (Thomas) Export also the pinned context destructor
---
 drivers/gpu/drm/i915/gt/intel_engine.h    | 11 +++++++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 27 ++++++++++++++---------
 2 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 8d9184920c51..36ea9eb52bb5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -19,7 +19,9 @@
 #include "intel_workarounds.h"
 
 struct drm_printer;
+struct intel_context;
 struct intel_gt;
+struct lock_class_key;
 
 /* Early gen2 devices have a cacheline of just 32 bytes, using 64 is overkill,
  * but keeps the logic simple. Indeed, the whole purpose of this macro is just
@@ -256,6 +258,15 @@ struct i915_request *
 intel_engine_find_active_request(struct intel_engine_cs *engine);
 
 u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
+struct intel_context *
+intel_engine_create_pinned_context(struct intel_engine_cs *engine,
+				   struct i915_address_space *vm,
+				   unsigned int ring_size,
+				   unsigned int hwsp,
+				   struct lock_class_key *key,
+				   const char *name);
+
+void intel_engine_destroy_pinned_context(struct intel_context *ce);
 
 void intel_engine_init_active(struct intel_engine_cs *engine,
 			      unsigned int subclass);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 9ceddfbb1687..fcbaad18ac91 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -810,11 +810,13 @@ intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
 #endif
 }
 
-static struct intel_context *
-create_pinned_context(struct intel_engine_cs *engine,
-		      unsigned int hwsp,
-		      struct lock_class_key *key,
-		      const char *name)
+struct intel_context *
+intel_engine_create_pinned_context(struct intel_engine_cs *engine,
+				   struct i915_address_space *vm,
+				   unsigned int ring_size,
+				   unsigned int hwsp,
+				   struct lock_class_key *key,
+				   const char *name)
 {
 	struct intel_context *ce;
 	int err;
@@ -825,6 +827,10 @@ create_pinned_context(struct intel_engine_cs *engine,
 
 	__set_bit(CONTEXT_BARRIER_BIT, &ce->flags);
 	ce->timeline = page_pack_bits(NULL, hwsp);
+	ce->ring = __intel_context_ring_size(ring_size);
+
+	i915_vm_put(ce->vm);
+	ce->vm = i915_vm_get(vm);
 
 	err = intel_context_pin(ce); /* perma-pin so it is always available */
 	if (err) {
@@ -843,7 +849,7 @@ create_pinned_context(struct intel_engine_cs *engine,
 	return ce;
 }
 
-static void destroy_pinned_context(struct intel_context *ce)
+void intel_engine_destroy_pinned_context(struct intel_context *ce)
 {
 	struct intel_engine_cs *engine = ce->engine;
 	struct i915_vma *hwsp = engine->status_page.vma;
@@ -863,8 +869,9 @@ create_kernel_context(struct intel_engine_cs *engine)
 {
 	static struct lock_class_key kernel;
 
-	return create_pinned_context(engine, I915_GEM_HWS_SEQNO_ADDR,
-				     &kernel, "kernel_context");
+	return intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_4K,
+						  I915_GEM_HWS_SEQNO_ADDR,
+						  &kernel, "kernel_context");
 }
 
 /**
@@ -907,7 +914,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
 	return 0;
 
 err_context:
-	destroy_pinned_context(ce);
+	intel_engine_destroy_pinned_context(ce);
 	return ret;
 }
 
@@ -969,7 +976,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 		fput(engine->default_state);
 
 	if (engine->kernel_context)
-		destroy_pinned_context(engine->kernel_context);
+		intel_engine_destroy_pinned_context(engine->kernel_context);
 
 	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
 	cleanup_status_page(engine);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

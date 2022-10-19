Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF286605267
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 23:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B284510E07F;
	Wed, 19 Oct 2022 21:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27E7610E028
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 21:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666216773; x=1697752773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hRJjfMSAna4lqXwUVi0lv/e1HMSAEUyI/hkZXwv7a2o=;
 b=YcL79J25EAJYwu8BxSWT2GT1BenBdrfUl8KE/OpZdMCtdFx6gHECYHcg
 /cj+XrSc/5xCdu+YrUlFuqPATGlQ6t47OEpuOeC+c6chUDW6Nhv4Q4qE6
 xVsJPFaY4r+qDZU8DJrLPbNwpO0kQQ1iGutG1l+cOvsPZykM3czOPdFLx
 bKjnwlqMNs92DvNPyFMfdzt0+XgEgEbaLzcCdh4vB3XC5HgZFWl9E18V4
 5Zi0KDePrabglnkrwSDTJcpb3hSZ8B4f6tu6kzcpkSO4se4/lwdmrlW41
 bxfZRzZ+Q9nQ3DCqBVbBp+SyFYKpsQq+w6R1miaFIDSipamusXY3LdbBX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="306529815"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="306529815"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 14:59:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="660548437"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="660548437"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 14:59:30 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 23:59:05 +0200
Message-Id: <20221019215906.295296-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019215906.295296-1-andrzej.hajda@intel.com>
References: <20221019215906.295296-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: call i915_request_await_object
 from _i915_vma_move_to_active
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since almost all calls to i915_vma_move_to_active are prepended with
i915_request_await_object, let's call the latter from
_i915_vma_move_to_active by default and add flag allowing bypassing it.
Adjust all callers accordingly.
The patch should not introduce functional changes.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 17 +++++++-------
 .../i915/gem/selftests/i915_gem_client_blt.c  |  4 +---
 .../i915/gem/selftests/i915_gem_coherency.c   |  4 +---
 .../drm/i915/gem/selftests/i915_gem_context.c | 16 ++++----------
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 10 +++------
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  8 ++-----
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  4 +---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  4 +---
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 14 +++---------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 17 ++++----------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 12 +++-------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |  4 +---
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  8 ++-----
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 22 +++++--------------
 drivers/gpu/drm/i915/gvt/scheduler.c          |  5 ++---
 drivers/gpu/drm/i915/i915_perf.c              |  4 +---
 drivers/gpu/drm/i915/i915_vma.c               |  5 +++++
 drivers/gpu/drm/i915/i915_vma.h               |  1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |  9 ++------
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  5 +----
 20 files changed, 53 insertions(+), 120 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1160723c9d2d94..19e93fef36afce 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -53,13 +53,13 @@ enum {
 #define DBG_FORCE_RELOC 0 /* choose one of the above! */
 };
 
-/* __EXEC_OBJECT_NO_RESERVE is BIT(31), defined in i915_vma.h */
-#define __EXEC_OBJECT_HAS_PIN		BIT(30)
-#define __EXEC_OBJECT_HAS_FENCE		BIT(29)
-#define __EXEC_OBJECT_USERPTR_INIT	BIT(28)
-#define __EXEC_OBJECT_NEEDS_MAP		BIT(27)
-#define __EXEC_OBJECT_NEEDS_BIAS	BIT(26)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 26) /* all of the above + */
+/* __EXEC_OBJECT_ flags > BIT(29) defined in i915_vma.h */
+#define __EXEC_OBJECT_HAS_PIN		BIT(29)
+#define __EXEC_OBJECT_HAS_FENCE		BIT(28)
+#define __EXEC_OBJECT_USERPTR_INIT	BIT(27)
+#define __EXEC_OBJECT_NEEDS_MAP		BIT(26)
+#define __EXEC_OBJECT_NEEDS_BIAS	BIT(25)
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 25) /* all of the above + */
 #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
@@ -2101,7 +2101,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 						       eb->composite_fence ?
 						       eb->composite_fence :
 						       &eb->requests[j]->fence,
-						       flags | __EXEC_OBJECT_NO_RESERVE);
+						       flags | __EXEC_OBJECT_NO_RESERVE |
+						       __EXEC_OBJECT_NO_REQUEST_AWAIT);
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 9a6a6b5b722b60..97dd34bd3acfd3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -464,9 +464,7 @@ static int move_to_active(struct i915_vma *vma,
 	int err;
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, flags);
+	err = i915_vma_move_to_active(vma, rq, flags);
 	i915_vma_unlock(vma);
 
 	return err;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index a666d7e610f5fe..c228fe4aba505a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -239,9 +239,7 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	}
 	intel_ring_advance(rq, cs);
 
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
 out_rq:
 	i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index c6ad67b90e8af2..02c1c306990ca9 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -970,15 +970,11 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 		goto err_batch;
 	}
 
-	err = i915_request_await_object(rq, batch->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(batch, rq, 0);
+	err = i915_vma_move_to_active(batch, rq, 0);
 	if (err)
 		goto skip_request;
 
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto skip_request;
 
@@ -1539,9 +1535,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	}
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, 0);
+	err = i915_vma_move_to_active(vma, rq, 0);
 	i915_vma_unlock(vma);
 	if (err)
 		goto skip_request;
@@ -1675,9 +1669,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	}
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(vma);
 	if (err)
 		goto skip_request;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 1cae24349a96fd..80e7fdd5d16427 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -565,10 +565,8 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
 			goto err_unpin;
 		}
 
-		err = i915_request_await_object(rq, vma->obj, true);
-		if (err == 0)
-			err = i915_vma_move_to_active(vma, rq,
-						      EXEC_OBJECT_WRITE);
+		err = i915_vma_move_to_active(vma, rq,
+					      EXEC_OBJECT_WRITE);
 
 		i915_request_add(rq);
 err_unpin:
@@ -1608,9 +1606,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 			goto out_unpin;
 		}
 
-		err = i915_request_await_object(rq, vma->obj, false);
-		if (err == 0)
-			err = i915_vma_move_to_active(vma, rq, 0);
+		err = i915_vma_move_to_active(vma, rq, 0);
 
 		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
 		i915_request_get(rq);
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 3c55e77b0f1b00..374b10ac430e8f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -131,17 +131,13 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 	}
 
 	i915_vma_lock(batch);
-	err = i915_request_await_object(rq, batch->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(batch, rq, 0);
+	err = i915_vma_move_to_active(batch, rq, 0);
 	i915_vma_unlock(batch);
 	if (err)
 		goto skip_request;
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(vma);
 	if (err)
 		goto skip_request;
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 5121e6dc2fa53e..9c1ae070ee7b9a 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -215,9 +215,7 @@ int intel_renderstate_emit(struct intel_renderstate *so,
 	if (!so->vma)
 		return 0;
 
-	err = i915_request_await_object(rq, so->vma->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(so->vma, rq, 0);
+	err = i915_vma_move_to_active(so->vma, rq, 0);
 	if (err)
 		return err;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 63e1e6becf343b..ce30e3a4c79821 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -3154,9 +3154,7 @@ static int engine_wa_list_verify(struct intel_context *ce,
 		goto err_vma;
 	}
 
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	if (err == 0)
 		err = wa_list_srm(rq, wal, vma);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 56b7d5b5fea009..6e483ea2b2bb63 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2764,9 +2764,7 @@ static int create_gang(struct intel_engine_cs *engine,
 	i915_request_get(rq);
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, false);
-	if (!err)
-		err = i915_vma_move_to_active(vma, rq, 0);
+	err = i915_vma_move_to_active(vma, rq, 0);
 	if (!err)
 		err = rq->engine->emit_bb_start(rq,
 						vma->node.start,
@@ -3180,14 +3178,10 @@ create_gpr_client(struct intel_engine_cs *engine,
 	}
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, false);
-	if (!err)
-		err = i915_vma_move_to_active(vma, rq, 0);
+	err = i915_vma_move_to_active(vma, rq, 0);
 	i915_vma_unlock(vma);
 
 	i915_vma_lock(batch);
-	if (!err)
-		err = i915_request_await_object(rq, batch->obj, false);
 	if (!err)
 		err = i915_vma_move_to_active(batch, rq, 0);
 	if (!err)
@@ -3519,9 +3513,7 @@ static int smoke_submit(struct preempt_smoke *smoke,
 
 	if (vma) {
 		i915_vma_lock(vma);
-		err = i915_request_await_object(rq, vma->obj, false);
-		if (!err)
-			err = i915_vma_move_to_active(vma, rq, 0);
+		err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
 							vma->node.start,
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 7f3bb1d34dfbf6..f8dabce671aa64 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -106,10 +106,7 @@ static int move_to_active(struct i915_vma *vma,
 	int err;
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj,
-					flags & EXEC_OBJECT_WRITE);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, flags);
+	err = i915_vma_move_to_active(vma, rq, flags);
 	i915_vma_unlock(vma);
 
 	return err;
@@ -1511,15 +1508,9 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 	}
 
 	i915_vma_lock(arg.vma);
-	err = i915_request_await_object(rq, arg.vma->obj,
-					flags & EXEC_OBJECT_WRITE);
-	if (err == 0) {
-		err = i915_vma_move_to_active(arg.vma, rq, flags);
-		if (err)
-			pr_err("[%s] Move to active failed: %d!\n", engine->name, err);
-	} else {
-		pr_err("[%s] Request await failed: %d!\n", engine->name, err);
-	}
+	err = i915_vma_move_to_active(arg.vma, rq, flags);
+	if (err)
+		pr_err("[%s] Move to active failed: %d!\n", engine->name, err);
 
 	i915_vma_unlock(arg.vma);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 82d3f8058995a9..b25f281ce0cbfe 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -452,9 +452,7 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
 	*cs++ = i915_ggtt_offset(scratch) + RING_TAIL_IDX * sizeof(u32);
 	*cs++ = 0;
 
-	err = i915_request_await_object(rq, scratch->obj, true);
-	if (!err)
-		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
 
 	i915_request_get(rq);
 	i915_request_add(rq);
@@ -602,9 +600,7 @@ __gpr_read(struct intel_context *ce, struct i915_vma *scratch, u32 *slot)
 	}
 
 	i915_vma_lock(scratch);
-	err = i915_request_await_object(rq, scratch->obj, true);
-	if (!err)
-		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(scratch);
 
 	i915_request_get(rq);
@@ -1060,9 +1056,7 @@ static int move_to_active(struct i915_request *rq,
 	int err;
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, flags);
-	if (!err)
-		err = i915_vma_move_to_active(vma, rq, flags);
+	err = i915_vma_move_to_active(vma, rq, flags);
 	i915_vma_unlock(vma);
 
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index c1d861333c44cc..e0921c87d6a5c2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -228,9 +228,7 @@ static int check_mocs_engine(struct live_mocs *arg,
 		return PTR_ERR(rq);
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (!err)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(vma);
 
 	/* Read the mocs tables back using SRM */
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 99a372486fb7f6..39f1b7564170c4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -652,9 +652,7 @@ int live_rps_frequency_cs(void *arg)
 			goto err_vma;
 		}
 
-		err = i915_request_await_object(rq, vma->obj, false);
-		if (!err)
-			err = i915_vma_move_to_active(vma, rq, 0);
+		err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
 							vma->node.start,
@@ -793,9 +791,7 @@ int live_rps_frequency_srm(void *arg)
 			goto err_vma;
 		}
 
-		err = i915_request_await_object(rq, vma->obj, false);
-		if (!err)
-			err = i915_vma_move_to_active(vma, rq, 0);
+		err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
 							vma->node.start,
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 21b1edc052f888..352f021be29f0e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -139,9 +139,7 @@ read_nonprivs(struct intel_context *ce)
 	}
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(vma);
 	if (err)
 		goto err_req;
@@ -632,16 +630,12 @@ static int check_dirty_whitelist(struct intel_context *ce)
 				goto err_request;
 		}
 
-		err = i915_request_await_object(rq, batch->obj, false);
-		if (err == 0)
-			err = i915_vma_move_to_active(batch, rq, 0);
+		err = i915_vma_move_to_active(batch, rq, 0);
 		if (err)
 			goto err_request;
 
-		err = i915_request_await_object(rq, scratch->obj, true);
-		if (err == 0)
-			err = i915_vma_move_to_active(scratch, rq,
-						      EXEC_OBJECT_WRITE);
+		err = i915_vma_move_to_active(scratch, rq,
+					      EXEC_OBJECT_WRITE);
 		if (err)
 			goto err_request;
 
@@ -860,9 +854,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
 		return PTR_ERR(rq);
 
 	i915_vma_lock(results);
-	err = i915_request_await_object(rq, results->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
+	err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(results);
 	if (err)
 		goto err_req;
@@ -944,9 +936,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
 	}
 
 	i915_vma_lock(batch);
-	err = i915_request_await_object(rq, batch->obj, false);
-	if (err == 0)
-		err = i915_vma_move_to_active(batch, rq, 0);
+	err = i915_vma_move_to_active(batch, rq, 0);
 	i915_vma_unlock(batch);
 	if (err)
 		goto err_request;
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index d6fe94cd0fdb61..9cd8fcbf7cad16 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -570,9 +570,8 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 			if (gmadr_bytes == 8)
 				bb->bb_start_cmd_va[2] = 0;
 
-			ret = i915_vma_move_to_active(bb->vma,
-						      workload->req,
-						      0);
+			ret = i915_vma_move_to_active(bb->vma, workload->req,
+						      __EXEC_OBJECT_NO_REQUEST_AWAIT);
 			if (ret)
 				goto err;
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 15816df916c781..19138e99d2fd03 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2015,9 +2015,7 @@ emit_oa_config(struct i915_perf_stream *stream,
 			goto err_add_request;
 	}
 
-	err = i915_request_await_object(rq, vma->obj, 0);
-	if (!err)
-		err = i915_vma_move_to_active(vma, rq, 0);
+	err = i915_vma_move_to_active(vma, rq, 0);
 	if (err)
 		goto err_add_request;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index c39488eb9eeba0..7ee3c1a2a16b95 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1842,6 +1842,11 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 
 	GEM_BUG_ON(!vma->pages);
 
+	if (!(flags & __EXEC_OBJECT_NO_REQUEST_AWAIT)) {
+		err = i915_request_await_object(rq, vma->obj, flags & EXEC_OBJECT_WRITE);
+		if (unlikely(err))
+			return err;
+	}
 	err = __i915_vma_move_to_active(vma, rq);
 	if (unlikely(err))
 		return err;
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index aecd9c64486b27..0757977a489bcc 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -55,6 +55,7 @@ static inline bool i915_vma_is_active(const struct i915_vma *vma)
 
 /* do not reserve memory to prevent deadlocks */
 #define __EXEC_OBJECT_NO_RESERVE BIT(31)
+#define __EXEC_OBJECT_NO_REQUEST_AWAIT BIT(30)
 
 int __must_check _i915_vma_move_to_active(struct i915_vma *vma,
 					  struct i915_request *rq,
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 818a4909c1f354..f9fe634fe27a62 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1203,9 +1203,7 @@ static int live_all_engines(void *arg)
 			goto out_request;
 		}
 
-		err = i915_request_await_object(request[idx], batch->obj, 0);
-		if (err == 0)
-			err = i915_vma_move_to_active(batch, request[idx], 0);
+		err = i915_vma_move_to_active(batch, request[idx], 0);
 		GEM_BUG_ON(err);
 
 		err = engine->emit_bb_start(request[idx],
@@ -1332,10 +1330,7 @@ static int live_sequential_engines(void *arg)
 			}
 		}
 
-		err = i915_request_await_object(request[idx],
-						batch->obj, false);
-		if (err == 0)
-			err = i915_vma_move_to_active(batch, request[idx], 0);
+		err = i915_vma_move_to_active(batch, request[idx], 0);
 		GEM_BUG_ON(err);
 
 		err = engine->emit_bb_start(request[idx],
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 0c22594ae27469..78b3c138a6d326 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -126,10 +126,7 @@ static int move_to_active(struct i915_vma *vma,
 	int err;
 
 	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj,
-					flags & EXEC_OBJECT_WRITE);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, flags);
+	err = i915_vma_move_to_active(vma, rq, flags);
 	i915_vma_unlock(vma);
 
 	return err;
-- 
2.34.1


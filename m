Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72408605266
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 23:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62AEB10E028;
	Wed, 19 Oct 2022 21:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81CC610E028
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 21:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666216775; x=1697752775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r98iRqG0mB3rxnhm/Gi49tRCCg3w5EoqLXNnclzK6uw=;
 b=D0TZy9ZV6wqejHcfUJWtkve9jYcZG+ALr1NHPcVeEQYNRjSmjJYe8Giv
 TUQ1ylHWO0wpHEeyT3FtHG238qVVYdjC4BHTnfweqApiSyCAg1cger+8q
 RU5CUj8tSBNnm7ptdD6HZv/6uImH4bTbL2RsxObdkPkuW+/ffmj4icUEu
 MZsw6UlMTxYsTE7d5FW/66M9kswi8I/aog6JneqWIYfznh9OfT8YRL19j
 J7DyFc+4RmOe/O02erjZrEkCFsvpt+xtk8is/ngpyLMAY51L2lgTvKOvt
 Lm0QWWKPGlQ77YhnPBucMOXdlieAEmgQ675FULgQt/anvVsS3QPIjnN1c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="306529821"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="306529821"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 14:59:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="660548452"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="660548452"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 14:59:33 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 23:59:06 +0200
Message-Id: <20221019215906.295296-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221019215906.295296-1-andrzej.hajda@intel.com>
References: <20221019215906.295296-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/selftests: add
 igt_vma_move_to_active_unlocked
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

All calls to i915_vma_move_to_active are surrounded by vma lock
and/or there are multiple local helpers for it in particular tests.
Let's replace it by common helper.
The patch should not introduce functional changes.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  | 20 ++++------------
 .../drm/i915/gem/selftests/igt_gem_utils.h    | 14 +++++++++++
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 22 +++---------------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 23 ++++---------------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |  1 +
 drivers/gpu/drm/i915/selftests/igt_spinner.c  | 17 ++------------
 6 files changed, 29 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 97dd34bd3acfd3..692a16914ca0fe 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -13,6 +13,7 @@
 #include "gt/intel_gt_regs.h"
 #include "gem/i915_gem_lmem.h"
 
+#include "gem/selftests/igt_gem_utils.h"
 #include "selftests/igt_flush_test.h"
 #include "selftests/mock_drm.h"
 #include "selftests/i915_random.h"
@@ -457,19 +458,6 @@ static int verify_buffer(const struct tiled_blits *t,
 	return ret;
 }
 
-static int move_to_active(struct i915_vma *vma,
-			  struct i915_request *rq,
-			  unsigned int flags)
-{
-	int err;
-
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, flags);
-	i915_vma_unlock(vma);
-
-	return err;
-}
-
 static int pin_buffer(struct i915_vma *vma, u64 addr)
 {
 	int err;
@@ -523,11 +511,11 @@ tiled_blit(struct tiled_blits *t,
 		goto err_bb;
 	}
 
-	err = move_to_active(t->batch, rq, 0);
+	err = igt_vma_move_to_active_unlocked(t->batch, rq, 0);
 	if (!err)
-		err = move_to_active(src->vma, rq, 0);
+		err = igt_vma_move_to_active_unlocked(src->vma, rq, 0);
 	if (!err)
-		err = move_to_active(dst->vma, rq, 0);
+		err = igt_vma_move_to_active_unlocked(dst->vma, rq, 0);
 	if (!err)
 		err = rq->engine->emit_bb_start(rq,
 						t->batch->node.start,
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
index 4221cf84d1756f..1379fbc1443126 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.h
@@ -9,6 +9,8 @@
 
 #include <linux/types.h>
 
+#include "i915_vma.h"
+
 struct i915_request;
 struct i915_gem_context;
 struct i915_vma;
@@ -29,4 +31,16 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 		    struct i915_vma *vma, u64 offset,
 		    unsigned long count, u32 val);
 
+static inline int __must_check
+igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
+				unsigned int flags)
+{
+	int err;
+
+	i915_vma_lock(vma);
+	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
+	i915_vma_unlock(vma);
+	return err;
+}
+
 #endif /* __IGT_GEM_UTILS_H__ */
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index f8dabce671aa64..9cce807e34eca9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -99,19 +99,6 @@ static u64 hws_address(const struct i915_vma *hws,
 	return hws->node.start + offset_in_page(sizeof(u32)*rq->fence.context);
 }
 
-static int move_to_active(struct i915_vma *vma,
-			  struct i915_request *rq,
-			  unsigned int flags)
-{
-	int err;
-
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, flags);
-	i915_vma_unlock(vma);
-
-	return err;
-}
-
 static struct i915_request *
 hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 {
@@ -172,11 +159,11 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 		goto unpin_hws;
 	}
 
-	err = move_to_active(vma, rq, 0);
+	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 	if (err)
 		goto cancel_rq;
 
-	err = move_to_active(hws, rq, 0);
+	err = igt_vma_move_to_active_unlocked(hws, rq, 0);
 	if (err)
 		goto cancel_rq;
 
@@ -1507,13 +1494,10 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 		}
 	}
 
-	i915_vma_lock(arg.vma);
-	err = i915_vma_move_to_active(arg.vma, rq, flags);
+	err = igt_vma_move_to_active_unlocked(arg.vma, rq, flags);
 	if (err)
 		pr_err("[%s] Move to active failed: %d!\n", engine->name, err);
 
-	i915_vma_unlock(arg.vma);
-
 	if (flags & EXEC_OBJECT_NEEDS_FENCE)
 		i915_vma_unpin_fence(arg.vma);
 	i915_vma_unpin(arg.vma);
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index b25f281ce0cbfe..7c56ffd2c65977 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1049,19 +1049,6 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 	return batch;
 }
 
-static int move_to_active(struct i915_request *rq,
-			  struct i915_vma *vma,
-			  unsigned int flags)
-{
-	int err;
-
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, flags);
-	i915_vma_unlock(vma);
-
-	return err;
-}
-
 static struct i915_request *
 record_registers(struct intel_context *ce,
 		 struct i915_vma *before,
@@ -1087,19 +1074,19 @@ record_registers(struct intel_context *ce,
 	if (IS_ERR(rq))
 		goto err_after;
 
-	err = move_to_active(rq, before, EXEC_OBJECT_WRITE);
+	err = igt_vma_move_to_active_unlocked(before, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto err_rq;
 
-	err = move_to_active(rq, b_before, 0);
+	err = igt_vma_move_to_active_unlocked(b_before, rq, 0);
 	if (err)
 		goto err_rq;
 
-	err = move_to_active(rq, after, EXEC_OBJECT_WRITE);
+	err = igt_vma_move_to_active_unlocked(after, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto err_rq;
 
-	err = move_to_active(rq, b_after, 0);
+	err = igt_vma_move_to_active_unlocked(b_after, rq, 0);
 	if (err)
 		goto err_rq;
 
@@ -1237,7 +1224,7 @@ static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
 		goto err_batch;
 	}
 
-	err = move_to_active(rq, batch, 0);
+	err = igt_vma_move_to_active_unlocked(batch, rq, 0);
 	if (err)
 		goto err_rq;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index e0921c87d6a5c2..f27cc28608d4ff 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -7,6 +7,7 @@
 #include "gt/intel_gpu_commands.h"
 #include "i915_selftest.h"
 
+#include "gem/selftests/igt_gem_utils.h"
 #include "gem/selftests/mock_context.h"
 #include "selftests/igt_reset.h"
 #include "selftests/igt_spinner.h"
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 78b3c138a6d326..16978ac5979785 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -119,19 +119,6 @@ static u64 hws_address(const struct i915_vma *hws,
 	return hws->node.start + seqno_offset(rq->fence.context);
 }
 
-static int move_to_active(struct i915_vma *vma,
-			  struct i915_request *rq,
-			  unsigned int flags)
-{
-	int err;
-
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, flags);
-	i915_vma_unlock(vma);
-
-	return err;
-}
-
 struct i915_request *
 igt_spinner_create_request(struct igt_spinner *spin,
 			   struct intel_context *ce,
@@ -162,11 +149,11 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	if (IS_ERR(rq))
 		return ERR_CAST(rq);
 
-	err = move_to_active(vma, rq, 0);
+	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 	if (err)
 		goto cancel_rq;
 
-	err = move_to_active(hws, rq, 0);
+	err = igt_vma_move_to_active_unlocked(hws, rq, 0);
 	if (err)
 		goto cancel_rq;
 
-- 
2.34.1


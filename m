Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2955B5FDADF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 15:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D602E10E243;
	Thu, 13 Oct 2022 13:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58AF10E23F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 13:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665667820; x=1697203820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vSCLSd0y1ykH2ZdgqW8Kj2RBZKU8ayZ/GHBWC5g47io=;
 b=QLFjEHWM+/yqWs3tCiFLpBfeNf/ii7ukmXipBAf4JcROy6jSSp4tU/ZR
 TxoKuQCdsHvEvaoeYopcZ0fNwp3biSZd0GkhOz/jC/O3N2U49n4FxDo99
 uE/NuuNQeWe3Qhtx3+JJRNIrJuhFh54D4MeZ8dvrx+Zkzjqded5LR7CCC
 FIzZ6sbZHGlv86pZ2CWweRePKfNCgsHsC9Bu+ilGtqJnmn9SXqWuhQJ2R
 aKxQAM33rVn7IyNWjZAaF58PeuTGwVSDjdMKWJRmx3tSXuUfMzkIZJDck
 hhazToIvp6oG57ggpa9xz1iCCiDyV5q/msWQOFpbe1w8+cTNyYgGZHNhg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="391385788"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="391385788"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 06:30:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="716336725"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="716336725"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 06:30:18 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 15:30:01 +0200
Message-Id: <20221013133001.3639326-3-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221013133001.3639326-1-andrzej.hajda@intel.com>
References: <20221013133001.3639326-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: add
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

Many calls to i915_vma_move_to_active are surrounded by vma lock
and/or there are multiple local helpers for it in particular tests.
Let's replace it by common helper.
The patch should not introduce functional changes.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  | 20 +++-----------
 .../drm/i915/gem/selftests/i915_gem_context.c |  8 ++----
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  8 ++----
 .../drm/i915/gem/selftests/igt_gem_utils.h    | 14 ++++++++++
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  4 +--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 22 +++------------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 27 +++++--------------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |  5 ++--
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 12 +++------
 drivers/gpu/drm/i915/selftests/igt_spinner.c  | 17 ++----------
 10 files changed, 39 insertions(+), 98 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 02c1c306990ca9..b0a5cee0f0087b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1534,9 +1534,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 		goto err_unpin;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, 0);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 	if (err)
 		goto skip_request;
 
@@ -1668,9 +1666,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		goto err_unpin;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto skip_request;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 374b10ac430e8f..56ffce0091f5eb 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -130,15 +130,11 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 		goto err_batch;
 	}
 
-	i915_vma_lock(batch);
-	err = i915_vma_move_to_active(batch, rq, 0);
-	i915_vma_unlock(batch);
+	err = igt_vma_move_to_active_unlocked(batch, rq, 0);
 	if (err)
 		goto skip_request;
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto skip_request;
 
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
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 6e483ea2b2bb63..40bb9561634df5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -3177,9 +3177,7 @@ create_gpr_client(struct intel_engine_cs *engine,
 		goto out_batch;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, 0);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 
 	i915_vma_lock(batch);
 	if (!err)
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
index b25f281ce0cbfe..483817c2a5c114 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -599,9 +599,7 @@ __gpr_read(struct intel_context *ce, struct i915_vma *scratch, u32 *slot)
 		*cs++ = 0;
 	}
 
-	i915_vma_lock(scratch);
-	err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(scratch);
+	err = igt_vma_move_to_active_unlocked(scratch, rq, EXEC_OBJECT_WRITE);
 
 	i915_request_get(rq);
 	i915_request_add(rq);
@@ -1049,19 +1047,6 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
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
@@ -1087,19 +1072,19 @@ record_registers(struct intel_context *ce,
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
 
@@ -1237,7 +1222,7 @@ static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
 		goto err_batch;
 	}
 
-	err = move_to_active(rq, batch, 0);
+	err = igt_vma_move_to_active_unlocked(batch, rq, 0);
 	if (err)
 		goto err_rq;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index e0921c87d6a5c2..ca009a6a13bdbb 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -7,6 +7,7 @@
 #include "gt/intel_gpu_commands.h"
 #include "i915_selftest.h"
 
+#include "gem/selftests/igt_gem_utils.h"
 #include "gem/selftests/mock_context.h"
 #include "selftests/igt_reset.h"
 #include "selftests/igt_spinner.h"
@@ -227,9 +228,7 @@ static int check_mocs_engine(struct live_mocs *arg,
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
 
 	/* Read the mocs tables back using SRM */
 	offset = i915_ggtt_offset(vma);
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 8a7d8469a57c8c..b896e652cabddf 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -138,9 +138,7 @@ read_nonprivs(struct intel_context *ce)
 		goto err_pin;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto err_req;
 
@@ -853,9 +851,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
-	i915_vma_lock(results);
-	err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(results);
+	err = igt_vma_move_to_active_unlocked(results, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto err_req;
 
@@ -935,9 +931,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
 			goto err_request;
 	}
 
-	i915_vma_lock(batch);
-	err = i915_vma_move_to_active(batch, rq, 0);
-	i915_vma_unlock(batch);
+	err = igt_vma_move_to_active_unlocked(batch, rq, 0);
 	if (err)
 		goto err_request;
 
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0305A64B502
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 13:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B921310E1C3;
	Tue, 13 Dec 2022 12:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E7510E1C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 12:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670934003; x=1702470003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P4mfsgcrkZdmKeWUue8KepzgpObsWiQVE3cxNox8rIA=;
 b=XAGAzBXuorZNDUn3Z0DoWWte6hL8v7COBVbaT+aEYu1wnEfN8BStrczs
 N68R9pEytqVZ1BiXWJUbjNOZKjotdMVGrlyGOKjhkBWK9jeQn84Qjs1hv
 u8d+a32VuS9oOMRyLvEvn9sfYISSXMz2pYOAO3PxUHOfhcxnb8nOmhujf
 sk8itAykpOC0wXeF6qtLKge+7TM9agweVPCyF/yFkP+T7KJO/TewHjns/
 6ABryKGiL5RIDoyyI+rEG2fdnZZrtURHRHyaQuSeac/Kclykg54i/qO6H
 rDV7bNByp66RBDg0QhYVP4aXM20q69jUTClGkYNc9t1cVHU7qnkS1newG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="305759476"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="305759476"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 04:20:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679288456"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679288456"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 04:20:01 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Dec 2022 13:19:51 +0100
Message-Id: <20221213121951.1515023-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221213121951.1515023-1-andrzej.hajda@intel.com>
References: <20221213121951.1515023-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: use
 igt_vma_move_to_active_unlocked if possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Helper replaces common sequence of calls.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../gpu/drm/i915/gem/selftests/i915_gem_context.c    |  8 ++------
 drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c   |  8 ++------
 drivers/gpu/drm/i915/gt/selftest_execlists.c         | 12 +++---------
 drivers/gpu/drm/i915/gt/selftest_lrc.c               |  4 +---
 drivers/gpu/drm/i915/gt/selftest_mocs.c              |  4 +---
 drivers/gpu/drm/i915/gt/selftest_workarounds.c       | 12 +++---------
 6 files changed, 12 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index ac02fb03659208..9c6a64a0de5c0b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1549,9 +1549,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 		goto err_unpin;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, 0);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 	if (err)
 		goto skip_request;
 
@@ -1684,9 +1682,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		goto err_unpin;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
 	if (err)
 		goto skip_request;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index c147038230c462..20a232a140b0f2 100644
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
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index a619057543fd94..736b89a8ecf54f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2763,13 +2763,11 @@ static int create_gang(struct intel_engine_cs *engine,
 	rq->batch = i915_vma_get(vma);
 	i915_request_get(rq);
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, 0);
+	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 	if (!err)
 		err = rq->engine->emit_bb_start(rq,
 						i915_vma_offset(vma),
 						PAGE_SIZE, 0);
-	i915_vma_unlock(vma);
 	i915_request_add(rq);
 	if (err)
 		goto err_rq;
@@ -3177,9 +3175,7 @@ create_gpr_client(struct intel_engine_cs *engine,
 		goto out_batch;
 	}
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, 0);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 
 	i915_vma_lock(batch);
 	if (!err)
@@ -3514,13 +3510,11 @@ static int smoke_submit(struct preempt_smoke *smoke,
 	}
 
 	if (vma) {
-		i915_vma_lock(vma);
-		err = i915_vma_move_to_active(vma, rq, 0);
+		err = igt_vma_move_to_active_unlocked(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
 							i915_vma_offset(vma),
 							PAGE_SIZE, 0);
-		i915_vma_unlock(vma);
 	}
 
 	i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index a61ae9d7e0a220..a78a3d2c2e16e8 100644
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
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index f27cc28608d4ff..ca009a6a13bdbb 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -228,9 +228,7 @@ static int check_mocs_engine(struct live_mocs *arg,
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
-	i915_vma_lock(vma);
-	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
+	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
 
 	/* Read the mocs tables back using SRM */
 	offset = i915_ggtt_offset(vma);
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 9c5449709161c0..14a8b25b6204a7 100644
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
 
-- 
2.34.1


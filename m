Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8711D5B7443
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5512110E76E;
	Tue, 13 Sep 2022 15:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA58B10E76D
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663082553; x=1694618553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lvBLhHBz7gv8IRAyJXTK8yHHBJbNnP0XLmEEhuR3v3E=;
 b=IAcRgB6BkHQbLtnZwkhA0b7i7wJsMoXQ5OUW98H/3soti1HvTVcTppNu
 LY+DnAAPLLSsfkc5jJ5qOUeQ3G8CmOMIYO+MGYyjwXo1m9NSWG54I9INs
 6jgrnqBwVhEQdj1YWa5L/bLJIVBzc63C86mfdqw7R0wIwxm0l1xqwpPkZ
 KqSmagp1n3SuFRLlYBBqv+aseUyiHCMJTcVV6b4d3AQpqsVYDxJetudXD
 Po+v5vZx7/PWBIN0p9omDPS8EO1h4B08oEGlaHyKqCwbkKMkkXusqPxez
 AqbWAzK8sgw4N4Dw/StJe24Cu1YJdle4ytpf98glltXjW2s5cKT5gkwOf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="298964009"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="298964009"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="593977982"
Received: from abaczek-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.8.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:30 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 17:21:51 +0200
Message-Id: <5cebab02d182c171cf40cb5b73d6c3eeb7619360.1663081418.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1663081418.git.karolina.drobnik@intel.com>
References: <cover.1663081418.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/4] drm/i915/selftest: Clear the output
 buffers before GPU writes
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>,
 Ramalingam C <ramalingam.c@intel.com>, Chris Wilson <chris.p.wilson@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

When testing whether we can get the GPU to leak information about
non-privileged state, we first need to ensure that the output buffer is
set to a known value as the HW may opt to skip the write into memory for
a non-privileged read of a sensitive register. We chose POISON_INUSE (0x5a)
so that is both non-zero and distinct from the poison values used during
the test.

v2:
  Use i915_gem_object_pin_map_unlocked

Reported-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 32 ++++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 71e664fc87e9..82d3f8058995 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1395,6 +1395,30 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	return err;
 }
 
+static struct i915_vma *
+create_result_vma(struct i915_address_space *vm, unsigned long sz)
+{
+	struct i915_vma *vma;
+	void *ptr;
+
+	vma = create_user_vma(vm, sz);
+	if (IS_ERR(vma))
+		return vma;
+
+	/* Set the results to a known value distinct from the poison */
+	ptr = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
+	if (IS_ERR(ptr)) {
+		i915_vma_put(vma);
+		return ERR_CAST(ptr);
+	}
+
+	memset(ptr, POISON_INUSE, vma->size);
+	i915_gem_object_flush_map(vma->obj);
+	i915_gem_object_unpin_map(vma->obj);
+
+	return vma;
+}
+
 static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
 {
 	u32 *sema = memset32(engine->status_page.addr + 1000, 0, 1);
@@ -1413,13 +1437,13 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
 		goto err_A;
 	}
 
-	ref[0] = create_user_vma(A->vm, SZ_64K);
+	ref[0] = create_result_vma(A->vm, SZ_64K);
 	if (IS_ERR(ref[0])) {
 		err = PTR_ERR(ref[0]);
 		goto err_B;
 	}
 
-	ref[1] = create_user_vma(A->vm, SZ_64K);
+	ref[1] = create_result_vma(A->vm, SZ_64K);
 	if (IS_ERR(ref[1])) {
 		err = PTR_ERR(ref[1]);
 		goto err_ref0;
@@ -1441,13 +1465,13 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
 	}
 	i915_request_put(rq);
 
-	result[0] = create_user_vma(A->vm, SZ_64K);
+	result[0] = create_result_vma(A->vm, SZ_64K);
 	if (IS_ERR(result[0])) {
 		err = PTR_ERR(result[0]);
 		goto err_ref1;
 	}
 
-	result[1] = create_user_vma(A->vm, SZ_64K);
+	result[1] = create_result_vma(A->vm, SZ_64K);
 	if (IS_ERR(result[1])) {
 		err = PTR_ERR(result[1]);
 		goto err_result0;
-- 
2.25.1


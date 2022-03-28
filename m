Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBD84E9D73
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 19:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EEAA10E730;
	Mon, 28 Mar 2022 17:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6C010E07B
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 17:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648488390; x=1680024390;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EudcaHT5z2xNiASmPu6wlLnRGthninFhY1i/6CCi4pY=;
 b=dkO7lsLoaU/v6O16AD+kVSJukWmvDLNkqO/NM5pxKumiEiYUOzlI7gAO
 Ua0JBa7jzA1bDGp0D82EQKdT003JhI7fCycmv9pKH479AXlfRCh2GW7k6
 b4R2+wPWM+fk0eOeFdqMCD1K/sPRuZ6PJbs+33c5IRAK4evnG8bMXMtNC
 /fM+OtPzUydNV9HLLxl3sE9K3/uDSZwVfIe6JphGEngqIyY8vcxH/d9EA
 BhUGPVrTb6Qbzux/5XJ8O4l9Vt3lqnrOhmmRnegKVa5r+KI/Fnwp1JK8J
 xdmJRcgWHf1c4abc7wm0TF/ZfcY2ouBCdOcKqy1ryo4kDQXtGfu2YQ10y g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="256637137"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="256637137"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 10:26:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="521107941"
Received: from khogan-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.170])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 10:26:28 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 18:25:50 +0100
Message-Id: <20220328172551.43309-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328172551.43309-1-matthew.auld@intel.com>
References: <20220328172551.43309-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/4] drm/i915/selftest: Clear the output buffers
 before GPU writes
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
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 32 ++++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 0a8ed4246082..6c394d0c0fb0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1346,6 +1346,30 @@ static int compare_isolation(struct intel_engine_cs *engine,
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
@@ -1364,13 +1388,13 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
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
@@ -1392,13 +1416,13 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
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
2.34.1


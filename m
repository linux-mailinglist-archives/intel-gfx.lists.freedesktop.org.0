Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD23515255
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 19:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339BC10EF30;
	Fri, 29 Apr 2022 17:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DB910EF30;
 Fri, 29 Apr 2022 17:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651253585; x=1682789585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AAeCVLq67fbPpU2hdLLfqt87mXaUOFhdwYJlRnNQsdY=;
 b=Rit82nG8e1HKesgg/MzWGRzGxVRIxJErvUxUjuaqanjKYmgcZFuXfHDl
 zcwzIl0gTQZFF4bIvcO3wwWwvM9hJcv/E0BPFnvZmwu2Mvfk2+hzkmv6Y
 0kedxhbhYQKhJsFox1C7dTkMGtZqbJ1m7gP5Hod5V98IO7IPSPbdpsnAZ
 ssmh/A6YHgbvv/l0AH+otTFqra+DyROiXZutb8FWTJk4Z09IXhga5Tu+Y
 P74h1tim0yhe9f1ealOzKJvLQq8g4QY7zq08i0gb4xOwe779dzjzjx80+
 OAH8y0emGbEIp059CvAfsVpzqoT6wLsdoN6TQ4WM5NngWmu4O20JShZ+Q g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="329657336"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="329657336"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 10:31:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="534590294"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 10:31:10 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Fri, 29 Apr 2022 23:02:01 +0530
Message-Id: <20220429173201.20499-5-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220429173201.20499-1-ramalingam.c@intel.com>
References: <20220429173201.20499-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/selftest: Clear the output
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
 Chris Wilson <chris@chris-wilson.co.uk>, CQ Tang <cq.tang@intel.com>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
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
index 51e4b7092d4f..9c8e8321c633 100644
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
2.20.1


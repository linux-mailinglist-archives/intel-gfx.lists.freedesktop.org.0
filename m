Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C17B93007AD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 16:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34AC36EA03;
	Fri, 22 Jan 2021 15:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221CA6E9FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 15:45:59 +0000 (UTC)
IronPort-SDR: qBAj+Y+ay1wlcVn3pRdW6xDJ3Qlh6XTHAbfSY2elag2NDHOuh/WrbpMUWOPDwtLhcUXvvZuAG+
 LXIFXDI5TySQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="179606448"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="179606448"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 07:45:57 -0800
IronPort-SDR: ikxHz5J0mpmgR6CefdbdI4VHqYMOuUd6FCzTu5LyoH2skX9G5D2bqntehD3p/BIrxdBl7Ln05G
 HHeJ77a33EJw==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="428003980"
Received: from lcfenner-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.20.148])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 07:45:56 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:45:46 +0000
Message-Id: <20210122154547.502685-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/buddy: document the unused header bits
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

The largest possible order is (63-12), given that our min chunk size is
4K. With that we should only need at most 6 bits to represent all
possible orders, giving us back 4 bits for other potential uses. Include
a simple selftest to verify this.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_buddy.c           |  3 ++
 drivers/gpu/drm/i915/i915_buddy.h           |  7 ++-
 drivers/gpu/drm/i915/selftests/i915_buddy.c | 47 +++++++++++++++++++++
 3 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_buddy.c b/drivers/gpu/drm/i915/i915_buddy.c
index 20babbdb297d..650613ae2a7b 100644
--- a/drivers/gpu/drm/i915/i915_buddy.c
+++ b/drivers/gpu/drm/i915/i915_buddy.c
@@ -56,6 +56,9 @@ static struct i915_buddy_block *i915_block_alloc(struct i915_buddy_block *parent
 	block->header |= order;
 	block->parent = parent;
 
+	GEM_BUG_ON(block->header & I915_BUDDY_HEADER_UNUSED);
+	GEM_BUG_ON(order > I915_BUDDY_MAX_ORDER);
+
 	return block;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_buddy.h b/drivers/gpu/drm/i915/i915_buddy.h
index ed41f3507cdc..d37e03587637 100644
--- a/drivers/gpu/drm/i915/i915_buddy.h
+++ b/drivers/gpu/drm/i915/i915_buddy.h
@@ -15,7 +15,9 @@ struct i915_buddy_block {
 #define   I915_BUDDY_ALLOCATED	   (1 << 10)
 #define   I915_BUDDY_FREE	   (2 << 10)
 #define   I915_BUDDY_SPLIT	   (3 << 10)
-#define I915_BUDDY_HEADER_ORDER  GENMASK_ULL(9, 0)
+/* Free to be used, if needed in the future */
+#define I915_BUDDY_HEADER_UNUSED GENMASK_ULL(9, 6)
+#define I915_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
 	u64 header;
 
 	struct i915_buddy_block *left;
@@ -34,7 +36,8 @@ struct i915_buddy_block {
 	struct list_head tmp_link;
 };
 
-#define I915_BUDDY_MAX_ORDER  I915_BUDDY_HEADER_ORDER
+/* Order-zero must be at least PAGE_SIZE */
+#define I915_BUDDY_MAX_ORDER (63 - 12)
 
 /*
  * Binary Buddy System.
diff --git a/drivers/gpu/drm/i915/selftests/i915_buddy.c b/drivers/gpu/drm/i915/selftests/i915_buddy.c
index 632b912b0bc9..39c470a0e28d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_buddy.c
+++ b/drivers/gpu/drm/i915/selftests/i915_buddy.c
@@ -727,6 +727,52 @@ static int igt_buddy_alloc_range(void *arg)
 	return err;
 }
 
+static int igt_buddy_alloc_limit(void *arg)
+{
+	struct i915_buddy_block *block;
+	struct i915_buddy_mm mm;
+	const u64 size = U64_MAX;
+	int err;
+
+	err = i915_buddy_init(&mm, size, PAGE_SIZE);
+	if (err)
+		return err;
+
+	if (mm.max_order != I915_BUDDY_MAX_ORDER) {
+		pr_err("mm.max_order(%d) != %d\n",
+		       mm.max_order, I915_BUDDY_MAX_ORDER);
+		err = -EINVAL;
+		goto out_fini;
+	}
+
+	block = i915_buddy_alloc(&mm, mm.max_order);
+	if (IS_ERR(block)) {
+		err = PTR_ERR(block);
+		goto out_fini;
+	}
+
+	if (i915_buddy_block_order(block) != I915_BUDDY_MAX_ORDER) {
+		pr_err("block order(%d) != %d\n",
+		       i915_buddy_block_order(block), I915_BUDDY_MAX_ORDER);
+		err = -EINVAL;
+		goto out_free;
+	}
+
+	if (i915_buddy_block_size(&mm, block) != rounddown_pow_of_two(size)) {
+		pr_err("block size(%llu) != %lu\n",
+		       i915_buddy_block_size(&mm, block),
+		       rounddown_pow_of_two(size));
+		err = -EINVAL;
+		goto out_free;
+	}
+
+out_free:
+	i915_buddy_free(&mm, block);
+out_fini:
+	i915_buddy_fini(&mm);
+	return err;
+}
+
 int i915_buddy_mock_selftests(void)
 {
 	static const struct i915_subtest tests[] = {
@@ -735,6 +781,7 @@ int i915_buddy_mock_selftests(void)
 		SUBTEST(igt_buddy_alloc_pathological),
 		SUBTEST(igt_buddy_alloc_smoke),
 		SUBTEST(igt_buddy_alloc_range),
+		SUBTEST(igt_buddy_alloc_limit),
 	};
 
 	return i915_subtests(tests, NULL);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

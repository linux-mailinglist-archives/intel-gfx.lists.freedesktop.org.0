Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7EE486923
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 18:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C127D10EDF9;
	Thu,  6 Jan 2022 17:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C381B10EEC1;
 Thu,  6 Jan 2022 17:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641491371; x=1673027371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ThdzYGTaFKmmDoMBGIiWAaXKHmCsdehsSeaxQY8R8ro=;
 b=WbU6SIcLDKXuGTO8e/c/5g6rZCPP748CLJC2bk1BGtprbxsZQn66cM45
 mwa3Cop67iHphVO+ix+zEj79Vr6C8WsiGXCx+tGV5Y5u5lMsE8TOZffg2
 yUmc+JHVdtq7izuGs9gHCzkxo84/eqSzjMhjAM12FBHYXg4ypHyeRoIle
 M6+2WxNGCpAI69TezIZG52DA2F3yeTzh+2/98IR0ButGVlGF4518J+4p0
 lvBZd5EYCq2EZq91v7yH0NQjsAW+OyyTHIWIhRcICCKC01NbbuaM3ELC4
 iRuRCF1urkKbgtKfZzRyM1Gz0o4Idp8pDgVhqtQ6he7KQVynMwK3W5OmO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="266993581"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="266993581"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 09:49:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="473015637"
Received: from lsgoh-mobl1.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.249.65.184])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 09:49:24 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jan 2022 17:49:09 +0000
Message-Id: <20220106174910.280616-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220106174910.280616-1-matthew.auld@intel.com>
References: <20220106174910.280616-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/ttm: add unmap_virtual callback
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ensure we call ttm_bo_unmap_virtual when releasing the pages.
Importantly this should now handle the ttm swapping case, and all other
places that already call into i915_ttm_move_notify().

v2: fix up the selftest

Fixes: cf3e3e86d779 ("drm/i915: Use ttm mmap handling for ttm bo's.")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c       |  3 +++
 .../gpu/drm/i915/gem/i915_gem_object_types.h   |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c        |  6 ++++++
 .../gpu/drm/i915/gem/selftests/i915_gem_mman.c | 18 ++++--------------
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index ee5ec0fd4807..5ac2506f4ee8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -538,6 +538,9 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
 {
 	struct i915_mmap_offset *mmo, *mn;
 
+	if (obj->ops->unmap_virtual)
+		obj->ops->unmap_virtual(obj);
+
 	spin_lock(&obj->mmo.lock);
 	rbtree_postorder_for_each_entry_safe(mmo, mn,
 					     &obj->mmo.offsets, offset) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index f9f7e44099fe..4b4829eb16c2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -67,6 +67,7 @@ struct drm_i915_gem_object_ops {
 	int (*pwrite)(struct drm_i915_gem_object *obj,
 		      const struct drm_i915_gem_pwrite *arg);
 	u64 (*mmap_offset)(struct drm_i915_gem_object *obj);
+	void (*unmap_virtual)(struct drm_i915_gem_object *obj);
 
 	int (*dmabuf_export)(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 8d61d4538a64..1530d9f0bc81 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -950,6 +950,11 @@ static u64 i915_ttm_mmap_offset(struct drm_i915_gem_object *obj)
 	return drm_vma_node_offset_addr(&obj->base.vma_node);
 }
 
+static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
+{
+	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
+}
+
 static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
 	.name = "i915_gem_object_ttm",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
@@ -965,6 +970,7 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
 	.migrate = i915_ttm_migrate,
 
 	.mmap_offset = i915_ttm_mmap_offset,
+	.unmap_virtual = i915_ttm_unmap_virtual,
 	.mmap_ops = &vm_ops_ttm,
 };
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 743a098facf2..f61356b72b1c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1369,20 +1369,10 @@ static int __igt_mmap_revoke(struct drm_i915_private *i915,
 		}
 	}
 
-	if (!obj->ops->mmap_ops) {
-		err = check_absent(addr, obj->base.size);
-		if (err) {
-			pr_err("%s: was not absent\n", obj->mm.region->name);
-			goto out_unmap;
-		}
-	} else {
-		/* ttm allows access to evicted regions by design */
-
-		err = check_present(addr, obj->base.size);
-		if (err) {
-			pr_err("%s: was not present\n", obj->mm.region->name);
-			goto out_unmap;
-		}
+	err = check_absent(addr, obj->base.size);
+	if (err) {
+		pr_err("%s: was not absent\n", obj->mm.region->name);
+		goto out_unmap;
 	}
 
 out_unmap:
-- 
2.31.1


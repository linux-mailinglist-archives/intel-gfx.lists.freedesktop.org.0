Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61707493F4D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 18:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B3F10E261;
	Wed, 19 Jan 2022 17:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5457410E34F;
 Wed, 19 Jan 2022 17:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642614469; x=1674150469;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OTs0i3HeOMHER80CyrOiM6U8hb0zwzVOC9vTN9IXdic=;
 b=frAUfJIdRc4UqZ7dIEKRro97ZuhK//XZ3EDbw/3PodzAc4g7LbWRDR7o
 sB3D5pKVNU5h60qQyO3+gtPN/pbBtfS0d9jKXxg46Ivubw4yLx7ihX85i
 hvGmEw4mTtAWJCfQEh5oSkt/w2n1bDNG3RzQ27EgNTo8tTk40wjHtpkmM
 nj1z9GePeOqJRIAEeKbsc0aHHaOsbF5L8CGhP3jEo2ttsHbkOrjGG8bnM
 BstPo/N2NqFFFMbMkqCpp9hU0jz1Wori2zyT83cC399JibaZ+tXbm21EH
 YIV7DWraPXw25a+pyJiMCFdShOz9Ja64PlDwAjizkSNCJn0di/nJz/Lcb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="269520891"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="269520891"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 09:47:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="625970676"
Received: from djustese-mobl.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.23])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 09:47:46 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 19 Jan 2022 18:47:34 +0100
Message-Id: <20220119174734.213552-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix vma resource freeing
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
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In some cases we use leftover kfree() instead of i915_vma_resource_free().
Fix this.

Fixes: Fixes: 2f6b90da9192 ("drm/i915: Use vma resources for async unbinding")
Reported-by: Robert Beckett <bob.beckett@collabora.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c          | 4 ++--
 drivers/gpu/drm/i915/i915_vma_resource.c | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index b959e904c4d3..b1816a835abf 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -464,7 +464,7 @@ int i915_vma_bind(struct i915_vma *vma,
 	if (vma->resource || !vma_res) {
 		/* Rebinding with an additional I915_VMA_*_BIND */
 		GEM_WARN_ON(!vma_flags);
-		kfree(vma_res);
+		i915_vma_resource_free(vma_res);
 	} else {
 		i915_vma_resource_init_from_vma(vma_res, vma);
 		vma->resource = vma_res;
@@ -1462,7 +1462,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 err_unlock:
 	mutex_unlock(&vma->vm->mutex);
 err_vma_res:
-	kfree(vma_res);
+	i915_vma_resource_free(vma_res);
 err_fence:
 	if (work)
 		dma_fence_work_commit_imm(&work->base);
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
index 1f41c0c699eb..6426c2f8a3b4 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.c
+++ b/drivers/gpu/drm/i915/i915_vma_resource.c
@@ -62,7 +62,8 @@ struct i915_vma_resource *i915_vma_resource_alloc(void)
  */
 void i915_vma_resource_free(struct i915_vma_resource *vma_res)
 {
-	kmem_cache_free(slab_vma_resources, vma_res);
+	if (vma_res)
+		kmem_cache_free(slab_vma_resources, vma_res);
 }
 
 static const char *get_driver_name(struct dma_fence *fence)
-- 
2.31.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8832D2E27E3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 16:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5248991A;
	Thu, 24 Dec 2020 15:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CACEA8991A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 15:14:08 +0000 (UTC)
IronPort-SDR: sqI0gF9MtVqkTae4Xqi2y8mUfmLoWI13oJv94kE2+3olUB2tfA15o6biyscoaPGL3cp3XaDV+5
 HAngV2CaoXtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9845"; a="155361579"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="155361579"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 07:14:06 -0800
IronPort-SDR: nVgTlIxAugjOLEo6s5y+jf5CoNW/Eel4bFWUiAZ9l3E662vO0DV+TvAgA6+sRtlhIkJ0XVQmR8
 dg1cxLtqklmg==
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="374435793"
Received: from vmangan-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.26.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2020 07:14:05 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 15:13:58 +0000
Message-Id: <20201224151358.401345-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201224151358.401345-1-matthew.auld@intel.com>
References: <20201224151358.401345-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915: clear the gpu reloc batch
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

The reloc batch is short lived but can exist in the user visible ppGTT,
and since it's backed by an internal object, which lacks page clearing,
we should take care to clear it upfront.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 0cf9e79325a8..19eeb3f8c5e8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1045,7 +1045,7 @@ static void reloc_gpu_flush(struct i915_execbuffer *eb, struct reloc_cache *cach
 	GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
 	cache->rq_cmd[cache->rq_size] = MI_BATCH_BUFFER_END;
 
-	__i915_gem_object_flush_map(obj, 0, sizeof(u32) * (cache->rq_size + 1));
+	i915_gem_object_flush_map(obj);
 	i915_gem_object_unpin_map(obj);
 
 	intel_gt_chipset_flush(cache->rq->engine->gt);
@@ -1295,6 +1295,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto err_pool;
 	}
 
+	memset32(cmd, 0, pool->obj->base.size / sizeof(u32));
+
 	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

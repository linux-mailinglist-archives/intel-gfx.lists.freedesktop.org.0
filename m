Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255206EF792
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 17:14:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C43510E175;
	Wed, 26 Apr 2023 15:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCD210E127
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 15:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682522088; x=1714058088;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to;
 bh=a3rq7E5TI8RGgUZf3JtgYbiTIUGic08SWRrQO5vrU5I=;
 b=f33gRf1YGcKN6brUlXQSBQmb6exzXcScVhLaWAkbj6VDVLezF4iIeGRx
 /pgFjSoAAC9fRu9A0WmyiB7I5KeC2Z6s6r2s5nol4j55hQkzZVH49OfqZ
 wVSZsgsxmqzs18QwXVCZwMgByMQ5km1YvQ4vMfkgs/pRVT9F31O6w9q+/
 iybCiKWREMyZ/L/g52yEM8xkK8HlqE1DcDr8PHqDXNlkyOBjoXKj41fCv
 L63mZBOhz7ns9OSZc0qYtCOpPgWdzh4DQEdNSSxcTAcAH/Y17WSFP0fL4
 jJROomx4qDrYHuKKjCwaaeUxhxeYs2YDS3aXENnmjIKZdt6qFWUeLoEdr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412444682"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="412444682"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 08:14:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671366449"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671366449"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 08:14:32 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 26 Apr 2023 17:14:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230425-hugepage-migrate-v7-2-fa6605a986c9@intel.com>
References: <20230425-hugepage-migrate-v7-0-fa6605a986c9@intel.com>
In-Reply-To: <20230425-hugepage-migrate-v7-0-fa6605a986c9@intel.com>
To: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH v7 2/2] drm/i915: Use correct huge page manager
 for MTL
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

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  This is because
MTL reports as not supporting 64K pages, or more accurately, the system that reports
whether a platform has 64K pages reports false for MTL.  This is only half correct,
as the 64K page support reporting system only cares about 64K page support for LMEM,
which MTL doesn't have.

MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply changing over to
using that manager doesn't resolve the issue because MTL is expecting the virtual
address space for the page table to be flushed after initialization, so we must also
add a flush statement there.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 4daaa6f5566888..9c571185395f49 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
 			}
 		} while (rem >= page_size && index < max);
 
+		drm_clflush_virt_range(vaddr, PAGE_SIZE);
 		vma_res->page_sizes_gtt |= page_size;
 	} while (iter->sg && sg_dma_len(iter->sg));
 }
@@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 	struct sgt_dma iter = sgt_dma(vma_res);
 
 	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
-		if (HAS_64K_PAGES(vm->i915))
+		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
 			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
 		else
 			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);

-- 
2.34.1

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C5669B2FF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 20:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E2E10E21D;
	Fri, 17 Feb 2023 19:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B22610E21D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 19:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676661764; x=1708197764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JhjCOdx+ky2XZjaS61VFS+bN/CP9mrFyjK9FUbjk8ys=;
 b=E32+Pa0ckGqsfHeJpzrQl5R90hUBzoZiDD2j97eQMLmZJTLaZg/5Gt0k
 fEZevyw9SgmXdPBFVFAhHvx/8n2syLHiURp6OzhfSO55pfPAvX4ceUQy/
 8KpNY+1M+qYlN25Nwiq8HncBN8ADY8cCHRds5JXjSnnnU7iT5keqjGEk3
 4dt0CVqZAaCDKk3UIPdztz6pg26nFpMg56akHOoNY6FQvgylpXCkiFGOm
 r16wnwlhELtTYGwCfbVY1BRUOFcjpe2vxhsufQS9R2yUz33LF2iIQtW4o
 a3cRkiecZjQ5IMt8yIDj2wb9RLSECXd8jmoCg/xQ36tYC55l3u3wSKKNR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="394548691"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="394548691"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:22:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="916186628"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="916186628"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 11:22:42 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Feb 2023 11:18:13 -0800
Message-Id: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] gen8_ppgtt: Use correct huge page manager for
 MTL
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
Cc: jonathan.cavitt@intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 4daaa6f55668..9c571185395f 100644
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
2.25.1


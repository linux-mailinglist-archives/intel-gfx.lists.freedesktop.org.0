Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A286A47E2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1134610E0D5;
	Mon, 27 Feb 2023 17:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF8C10E086
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 17:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677518921; x=1709054921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BlnLRs4RQ7uYDw4Bb2+xFylcZDAZDwLR207o5ZgmIZk=;
 b=DfKwn/7lyJdyfC66J5JUx4EgtchAlvjREmmwc5V50+fOmXEvhm7u2tB+
 /9fdOoUbr+kiF7oZbbCK2sXpwyaUraN1y3dAW8X9T398d1NvfBZzV4Vf6
 lNTGOJGq6WY7Mo1o15j6LHEKFOWxQAVHeJuceQgWOkRsinhDHEx29iCcw
 vmHczlXE1wX4IyjwloENcC35iQeNmhirEY5ZDqqw0P0GOU+tuCB1gps4L
 +07aRwHe7KceOyCBOlX+Y39U1wtvwRJhVG5YobzCPVUz4kVLFi7PNkMZh
 THWXDgrQwQILoQ15wkcHWdxZfO+HqJYlk7se3JF3mfhahsABXWDTuPQCK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="336198142"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="336198142"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:23:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="651304694"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="651304694"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:23:49 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:19:20 -0800
Message-Id: <20230227171920.2438319-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915: Use correct huge page manager
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
Cc: lucas.demarchi@intel.com, thomas.hellstrom@linux.intel.com,
 jonathan.cavitt@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 chris.p.wilson@linux.intel.com
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

v2: Update igt_mock_ppgtt_huge_fill with current behavior expectations.

v3: Update igt_mock_ppgtt_64K with current behavior expectations.

v4: Break mock subtest changes into separate patch.

v5: Reorder

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


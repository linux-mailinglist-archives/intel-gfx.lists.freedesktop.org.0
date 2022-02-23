Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDE84C0675
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 01:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6231D10E216;
	Wed, 23 Feb 2022 00:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7839410E216
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 00:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645577744; x=1677113744;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oRntZf47a35Z3xOD6tJ4HI68+mIOfmpKID2taQRsybM=;
 b=R2F30OcFb5hRDnqOQGIVriZmyAneLrMzZqaT8pCwJeQ7YK9kyawfgKjT
 jcFJuZdqQ830g3b+OLfwv9Pqz2BOdbypO20z9hChlELOc0+Iaza48SXgC
 mUFaKfsxvYJt48s//ZtBlZYd5jtf1OIoXzEyoup9JFCmtUFft9viPpql3
 EMS/1jRpIuISwWP8S3vcz8uOod2qNN6ckyUA9EcMXlLBRmslOPWhXB2i8
 UBKD9Un2iWxK7USzKQABUbauxK+muS8HG44QZ/GDbrPn8r3UMAXmp+Uz8
 LnrKpKoIWFn+oM3sCpip55NWTQH2lxxZh9rrpLeOC2666yjH4K4t/E1da g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="276464533"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="276464533"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="543141789"
Received: from cliu38-mobl3.sh.intel.com ([10.239.147.47])
 by fmsmga007.fm.intel.com with ESMTP; 22 Feb 2022 16:55:42 -0800
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 08:42:46 +0800
Message-Id: <20220223004246.59590-1-chuansheng.liu@intel.com>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix one mem leak in
 mmap_offset_attach()
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
Cc: abdiel.janulgue@linux.intel.com, matthew.auld@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The below memory leak information is caught:

===
unreferenced object 0xffff997dd4e3b240 (size 64):
  comm "gem_tiled_fence", pid 10332, jiffies 4294959326 (age
220778.420s)
  hex dump (first 32 bytes):
    01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 00 be f2 d4 7d 99 ff ff  ............}...
  backtrace:
    [<ffffffffa0f04365>] kmem_cache_alloc_trace+0x2e5/0x450
    [<ffffffffc062f3ac>] drm_vma_node_allow+0x2c/0xe0 [drm]
    [<ffffffffc13149ea>] __assign_mmap_offset_handle+0x1da/0x4a0 [i915]
    [<ffffffffc1315235>] i915_gem_mmap_offset_ioctl+0x55/0xb0 [i915]
    [<ffffffffc06207e4>] drm_ioctl_kernel+0xb4/0x140 [drm]
    [<ffffffffc0620ac7>] drm_ioctl+0x257/0x410 [drm]
    [<ffffffffa0f553ae>] __x64_sys_ioctl+0x8e/0xc0
    [<ffffffffa1821128>] do_syscall_64+0x38/0xc0
[<ffffffffa1a0007c>] entry_SYSCALL_64_after_hwframe+0x44/0xae
===

The issue is always reproduced with the test:
gem_tiled_fence_blits --run-subtest basic

It tries to mmap_gtt the same object several times, it is like:
create BO
mmap_gtt BO
unmap BO
mmap_gtt BO <== second time mmap_gtt
unmap

The leak happens at the second time mmap_gtt in function
mmap_offset_attach(),it will simply increase the reference
count to 2 by calling drm_vma_node_allow() directly since
the mmo has been created at the first time.

However the driver just revokes the vma_node only one time
when closing the object, it leads to memory leak easily.

This patch is to fix the memory leak by calling drm_vma_node_allow() one
time also.

Cc: abdiel.janulgue@linux.intel.com
Cc: matthew.auld@intel.com
Cc: chris@chris-wilson.co.uk
Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index efe69d6b86f4..d50b2f643a10 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -680,7 +680,7 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
 	mmo = insert_mmo(obj, mmo);
 	GEM_BUG_ON(lookup_mmo(obj, mmap_type) != mmo);
 out:
-	if (file)
+	if (file && !drm_vma_node_is_allowed(&mmo->vma_node, file))
 		drm_vma_node_allow(&mmo->vma_node, file);
 	return mmo;
 
-- 
2.25.0.rc2


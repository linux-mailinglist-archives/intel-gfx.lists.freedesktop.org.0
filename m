Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CED4BEEF0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 02:35:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FF510E525;
	Tue, 22 Feb 2022 01:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D890F10E525
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 01:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645493702; x=1677029702;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4PgDrBRY2YcawppbntjO6mOuyY4hpDjKmYaZ8svBETU=;
 b=dsxsK3xDmNR12qDP8brFLvqJOzNgIw1Fi0gWiDPWYkIICoC1pUSyWkM6
 1CvXKw6Z/pl5z/v7v1trLHNTN2XEQNK2A9yzx6kMI7cf0oir3QjemuOyD
 iVijxKB+qbDtJPpHSAws0BoFba2mpFqCccnkfTYMcOfvOhKpGL8Ho8yoD
 5D75wV1+cNDP7ZIk19Rvwn5I2mbiSaFdItDwhO7KpGIDKdwLzlg9zOnpP
 fkyRCit4dU2rFZJnvj/XFHiVdpS62ZfFNJnW8nsM5gGXR6mSqCmtdC5c/
 DNvf2EhbFboibvGdM2DlF3jc+VSXHtA3tKmnxUt4miGz6+xX4sJVxltPU Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="312335998"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="312335998"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 17:35:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="505363677"
Received: from cliu38-mobl3.sh.intel.com ([10.239.147.47])
 by orsmga002.jf.intel.com with ESMTP; 21 Feb 2022 17:35:00 -0800
From: Chuansheng Liu <chuansheng.liu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 09:22:15 +0800
Message-Id: <20220222012215.9545-1-chuansheng.liu@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The below memory leak information is caught:

---
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
---

The issue is always reproduced with the test:
gem_tiled_fence_blits --run-subtest basic

It tries to mmap_gtt the same object several times, it is like:
create BO
mmap_gtt BO
unmap BO
mmap_gtt BO <== second time mmap_gtt
unmap

The leak happens at the second time mmap_gtt in function mmap_offset_attach(),
it will simply increase the reference count to 2 by calling drm_vma_node_allow()
directly since the mmo has been created at the first time.
However the driver just revokes the vma_node one time when closing the object,
it leads to memory leak easily.

This patch is to fix the memory leak by calling drm_vma_node_allow() one
time also.

Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index efe69d6b86f4..aa2d770d4280 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -680,7 +680,7 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
 	mmo = insert_mmo(obj, mmo);
 	GEM_BUG_ON(lookup_mmo(obj, mmap_type) != mmo);
 out:
-	if (file)
+	if (!drm_vma_node_is_allowed(&mmo->vma_node, file))
 		drm_vma_node_allow(&mmo->vma_node, file);
 	return mmo;
 
-- 
2.25.0.rc2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F10C3BF62C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 09:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDDFD6E876;
	Thu,  8 Jul 2021 07:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A7846E876
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 07:20:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="209499791"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="209499791"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 00:20:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428249308"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga002.jf.intel.com with ESMTP; 08 Jul 2021 00:20:57 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 12:42:22 +0530
Message-Id: <20210708071222.955455-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V3] drm/i915/adl_s: Fix dma_mask_size to 39 bit
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

46 bit addressing enables you to use 4 bits  to support some
MKTME features, and 3 more bits for Optane support that uses
a subset of MTKME for persistent memory.

But GTT addressing sticking to 39 bit addressing, thus setting
dma_mask_size to 39 fixes below tests :
igt@i915_selftest@live@mman
igt@kms_big_fb@linear-32bpp-rotate-0
igt@gem_create@create-clear
igt@gem_mmap_offset@clear
igt@gem_mmap_gtt@cpuset-big-copy

In a way solves Gitlab#3142
https://gitlab.freedesktop.org/drm/intel/-/issues/3142, which had
following errors :
DMAR: DRHD: handling fault status reg 2
DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr
7effff9000 [fault reason 05] PTE Write access is not set

0x7effff9000 is suspiciously exactly 39 bits, so it seems likely that
the HW just ends up masking off those extra bits hence DMA errors.

Changes since V2 :
	- dim checkpatch error solved
Changes since V1 :
	- Added more details to commit message - Matthew Auld

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Acked-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a7bfdd827bc8..0fea4c0c6d48 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -934,7 +934,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
-	.dma_mask_size = 46,
+	.dma_mask_size = 39,
 };
 
 #define XE_LPD_CURSOR_OFFSETS \
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

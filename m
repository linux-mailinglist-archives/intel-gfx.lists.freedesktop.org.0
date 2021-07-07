Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D78183BE8CC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 15:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6F86E151;
	Wed,  7 Jul 2021 13:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7BD26E151
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 13:30:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="196579372"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="196579372"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 06:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="628030235"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga005.jf.intel.com with ESMTP; 07 Jul 2021 06:30:13 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 18:51:36 +0530
Message-Id: <20210707132136.947566-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V2] drm/i915/adl_s: Fix dma_mask_size to 39 bit
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

In a way solves Gitlab#3142 https://gitlab.freedesktop.org/drm/intel/-/issues/3142,
which had follwing errors :
DMAR: DRHD: handling fault status reg 2
DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr
7effff9000 [fault reason 05] PTE Write access is not set

0x7effff9000 is suspiciously exactly 39 bits, so it seems likely that
the HW just ends up masking off those extra bits hence DMA errors.

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

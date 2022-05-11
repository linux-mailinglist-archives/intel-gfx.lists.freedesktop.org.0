Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5304E5230A0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 12:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B6F10E7C4;
	Wed, 11 May 2022 10:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF8210E7C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 10:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652264739; x=1683800739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mYdmHSa6tgIaEvGy0TbW1fD0BpDH0osEvDQZmmOgcSg=;
 b=WcdoqVdKdBpxs9wxwuwEanpUYiwxgDWoXA/WeLnEPB71tpuuTY5wSK9x
 WeDInvU/8NM8G77Ic0Zkk/yrxgXD8Gt8DAyA980o0EkC6QcALQmaAzOTS
 Q3aMRN7ibnkRW80DJyuGy0EWQ86Ky76s8disVTU9IxH/eserMKnSmU3Ww
 jAcKSin+WuteqTcpimXeaF2DhaZTQOOEKWB0ocULRQpWKbno77n+H6YJF
 8OZPwiPXjw4e2sZu9HFkqj5kvIPvGEPN+r7ER1gsntT8Z//ODgGxz80va
 iHs+8GkX75HPkqcoJ7uMHs1SefTgtJvnJfuR52589BCz5knwzWEGjB4xT Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="330255851"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="330255851"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 03:25:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="739161256"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 03:25:21 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 12:25:09 +0200
Message-Id: <20220511102509.19927-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH] drm/i915: don't treat small BAR as an error
 with CSS
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Determine lmem_size using ADDR_RANGE register so that module
load on platfrom with small bar with css  works.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
I once reserved a dg2 machine with small bar and module load failed on
it. I can't find that machine anymore hence sending this as RFC.

 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index f5111c0a0060..a55eecac104e 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -100,10 +100,19 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 	if (!IS_DGFX(i915))
 		return ERR_PTR(-ENODEV);
 
+	if (IS_DG1(uncore->i915)) {
+		lmem_size = pci_resource_len(pdev, 2);
+	} else {
+		resource_size_t lmem_range;
+
+		lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
+		lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
+		lmem_size *= SZ_1G;
+	}
+
 	if (HAS_FLAT_CCS(i915)) {
 		u64 tile_stolen, flat_ccs_base;
 
-		lmem_size = pci_resource_len(pdev, 2);
 		flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
 		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
 
-- 
2.35.1


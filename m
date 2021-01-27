Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F20A305AB4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56766E7D0;
	Wed, 27 Jan 2021 12:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50236E5D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:03:40 +0000 (UTC)
IronPort-SDR: kt9dsUjMECR9H6XsgJQt5puMgtP39PAdXjydHw+GHcQeWbcQshvUWbUkphwKLJ13pvwIeD4/gG
 vdE+egn3s3yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180136896"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180136896"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:40 -0800
IronPort-SDR: DqFmkFTKen15wxf5vbJw8hHa9Pefno75jvDnTLaaQH8FNRo/uf8USBuKRzeBfZFql1RjF/6mlo
 HZSdoqje2wkg==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="362410304"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:03:39 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:03:13 +0000
Message-Id: <20210127120316.370305-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127120316.370305-1-matthew.auld@intel.com>
References: <20210127120316.370305-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/8] drm/i915/dg1: Reserve first 1MB of local
 memory
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

From: Imre Deak <imre.deak@intel.com>

On DG1 A0/B0 steppings the first 1MB of local memory must be reserved.
One reason for this is that the 0xA0000-0xB0000 range is not accessible
by the display, probably since this region is redirected to another
memory location for legacy VGA compatibility.

BSpec: 50586
Testcase: igt/kms_big_fb/linear-64bpp-rotate-0

v2:
- Reserve the memory on B0 as well.

v3: replace DRM_DEBUG/DRM_ERROR with drm_dbg/drm_err

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 56 +++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 71bb38706dbf..f5c12cbbaa86 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -143,6 +143,52 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 	return mem;
 }
 
+static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
+				     u64 *start, u32 *size)
+{
+	*start = 0;
+	*size = 0;
+
+	if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_B0))
+		return false;
+
+	*size = SZ_1M;
+
+	drm_dbg(&uncore->i915->drm, "LMEM: reserved legacy low-memory [0x%llx-0x%llx]\n",
+		*start, *start + *size);
+
+	return true;
+}
+
+static int reserve_lowmem_region(struct intel_uncore *uncore,
+				 struct intel_memory_region *mem)
+{
+	u64 reserve_start;
+	u64 reserve_end;
+	u64 region_start;
+	u32 region_size;
+	int ret;
+
+	if (!get_legacy_lowmem_region(uncore, &region_start, &region_size))
+		return 0;
+
+	reserve_start = region_start;
+	reserve_end = region_start + region_size;
+
+	if (!reserve_end)
+		return 0;
+
+	drm_dbg(&uncore->i915->drm, "LMEM: reserving low-memory region [0x%llx-0x%llx]\n",
+		reserve_start, reserve_end);
+	ret = intel_memory_region_reserve(mem,
+					  reserve_start,
+					  reserve_end - reserve_start);
+	if (ret)
+		drm_err(&uncore->i915->drm, "LMEM: reserving low memory region failed\n");
+
+	return ret;
+}
+
 static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
@@ -167,6 +213,16 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 					 I915_GTT_PAGE_SIZE_4K,
 					 io_start,
 					 &intel_region_lmem_ops);
+	if (!IS_ERR(mem)) {
+		int err;
+
+		err = reserve_lowmem_region(uncore, mem);
+		if (err) {
+			intel_memory_region_put(mem);
+			return ERR_PTR(err);
+		}
+	}
+
 	if (!IS_ERR(mem)) {
 		drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
 		drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

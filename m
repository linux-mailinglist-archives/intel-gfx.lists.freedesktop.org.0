Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393CE3041CF
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:13:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E30E89D8E;
	Tue, 26 Jan 2021 15:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB77F6E462
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:13:13 +0000 (UTC)
IronPort-SDR: AWFGEzHDkIzONZyQ2Zm0j8AfnpGTJHQ30a2uZ+42VMwvEc27dfpZk6VAXJObBVDgCrDzYRC3nH
 G4/NHtc/n8Sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="243995130"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="243995130"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:13 -0800
IronPort-SDR: UEKCzka/OXHr/9zmUH5uhqQiHa3vn+KQmjLYFMpdYnnOc3193f9V0RBeWa5rA1kGc195uRGA7y
 v4mn5jihsK5g==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387856713"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:12 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:12:56 +0000
Message-Id: <20210126151259.253885-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126151259.253885-1-matthew.auld@intel.com>
References: <20210126151259.253885-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915/dg1: Reserve first 1MB of local
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
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 52 +++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 4da808e35ecb..3b66221abe01 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -138,6 +138,48 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 	return mem;
 }
 
+static void get_legacy_lowmem_region(struct intel_uncore *uncore,
+				     u64 *start, u32 *size)
+{
+	*start = 0;
+	*size = 0;
+
+	if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_B0))
+		return;
+
+	*size = SZ_1M;
+
+	drm_dbg(&uncore->i915->drm, "LMEM: reserved legacy low-memory [0x%llx-0x%llx]\n",
+		*start, *start + *size);
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
+	get_legacy_lowmem_region(uncore, &region_start, &region_size);
+	reserve_start = region_start;
+	reserve_end = region_start + region_size;
+
+	if (!reserve_end)
+		return 0;
+
+	drm_dbg(&uncore->i915->drm, "LMEM: reserving low-memory region [0x%llx-0x%llx]\n",
+		reserve_start, reserve_end);
+	ret = i915_buddy_alloc_range(&mem->mm, &mem->reserved,
+				     reserve_start,
+				     reserve_end - reserve_start);
+	if (ret)
+		drm_err(&uncore->i915->drm, "LMEM: reserving low memory region failed\n");
+
+	return ret;
+}
+
 static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
@@ -158,6 +200,16 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
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

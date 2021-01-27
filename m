Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB65C305BF5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24D76E5C8;
	Wed, 27 Jan 2021 12:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA5F6E323
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:48:20 +0000 (UTC)
IronPort-SDR: S5hsM2m1A530OFfXfm2YvVEzDoeotQkAW9ZIuuyFWvaazok8gIvAxNyDsJQPM9T23Flf23t8hz
 JLItkKST0C/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="244138314"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="244138314"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:48:20 -0800
IronPort-SDR: b9zQF21C4o0d4gysrp/KPa/n9V8xQSi6Y4B9NySYrALZteGM+MLSfNRCe+n/98R+2tEyrL5v4z
 wwhWvxbEt+Vw==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388293659"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 04:48:19 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:48:06 +0000
Message-Id: <20210127124809.384080-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127124809.384080-1-matthew.auld@intel.com>
References: <20210127124809.384080-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 5/8] drm/i915/dg1: Reserve first 1MB of local
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

v4: fix the insanity

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 45 +++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 71bb38706dbf..763b21980d74 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -143,6 +143,41 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 	return mem;
 }
 
+static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
+				     u64 *start, u32 *size)
+{
+	if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_B0))
+		return false;
+
+	*start = 0;
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
+	u32 reserve_size;
+	int ret;
+
+	if (!get_legacy_lowmem_region(uncore, &reserve_start, &reserve_size))
+		return 0;
+
+	if (!reserve_size)
+		return 0;
+
+	ret = intel_memory_region_reserve(mem, reserve_start, reserve_size);
+	if (ret)
+		drm_err(&uncore->i915->drm, "LMEM: reserving low memory region failed\n");
+
+	return ret;
+}
+
 static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
@@ -167,6 +202,16 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
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

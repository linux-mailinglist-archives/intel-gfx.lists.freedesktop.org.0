Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02D030394F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 10:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00BE689A56;
	Tue, 26 Jan 2021 09:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC736E0C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 09:46:42 +0000 (UTC)
IronPort-SDR: icHMVUy1QoOVpqGtp0hScII+wXQjmYWCFHxCFaqsgJbXVSLD0WhFRO7/4d9biv3tRQG9MO55xU
 XJcn+4zqOu8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159651570"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159651570"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:42 -0800
IronPort-SDR: wcn201g7CCXncMKhPkBHyLMQXdddwu9sXR5va4GaxjDi6MeChw3c4V6pDiihkbHjSio7p2d/rq
 F4PQDmxNwHLg==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387766446"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:41 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 09:46:09 +0000
Message-Id: <20210126094612.163290-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/dg1: Reserve first 1MB of local
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
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 53 +++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 30959c1e535f..13ec2ecce2e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -137,6 +137,49 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
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
+
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
 static struct intel_memory_region *
 setup_lmem(struct drm_i915_private *i915)
 {
@@ -161,6 +204,16 @@ setup_lmem(struct drm_i915_private *i915)
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
 		drm_dbg(&i915->drm, "Intel graphics LMEM: %pR\n", &mem->region);
 		drm_dbg(&i915->drm, "Intel graphics LMEM IO start: %pa\n",
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

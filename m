Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 041EC21B49F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365796EC2B;
	Fri, 10 Jul 2020 12:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C09D6EC27
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:58 +0000 (UTC)
IronPort-SDR: Nn5McxYH6zL6wKSiv5jS2POq39cWFC/TksT++v4UQbr1AZxC50CVMySTJee7NWOPnC1xOXyLI6
 54yWYKQswqbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="146255870"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="146255870"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:57 -0700
IronPort-SDR: l806Tp8q27tnmev8zUnY/wRCMm+XxtUgmdBWZpUrB3iaMoe8I199tkHv+NergsndKVy9c4UYza
 omxxXCtNYBCA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258629"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:55 +0100
Message-Id: <20200710115757.290984-59-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 58/60] drm/i915/dg1: Reserve first 1MB of local
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

On DG1 A0 stepping the first 1MB of local memory must be reserved. One
reason for this is that the 0xA0000-0xB0000 range is not accessible by
the display, probably since this region is redirected to another memory
location for legacy VGA compatibility.

BSpec: 60029
Testcase: igt/kms_big_fb/linear-64bpp-rotate-0
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/intel_region_lmem.c | 52 ++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index 46a2aa468054..b9e60d19d07c 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -41,6 +41,48 @@ const struct intel_memory_region_ops intel_region_lmem_ops = {
 	.create_object = __i915_gem_lmem_object_create,
 };
 
+static void get_legacy_lowmem_region(struct intel_uncore *uncore,
+				     u64 *start, u32 *size)
+{
+	*start = 0;
+	*size = 0;
+
+	if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_A0))
+		return;
+
+	*size = SZ_1M;
+
+	DRM_DEBUG_DRIVER("LMEM: reserved legacy low-memory [0x%llx-0x%llx]\n",
+			 *start, *start + *size);
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
+	DRM_INFO("LMEM: reserving low-memory region [0x%llx-0x%llx]\n",
+		 reserve_start, reserve_end);
+	ret = i915_buddy_alloc_range(&mem->mm, &mem->reserved,
+				     reserve_start,
+				     reserve_end - reserve_start);
+	if (ret)
+		DRM_ERROR("LMEM: reserving low memory region failed\n");
+
+	return ret;
+}
+
 static struct intel_memory_region *
 setup_lmem(struct drm_i915_private *dev_priv)
 {
@@ -64,6 +106,16 @@ setup_lmem(struct drm_i915_private *dev_priv)
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
 		DRM_INFO("Intel graphics LMEM: %pR\n", &mem->region);
 		DRM_INFO("Intel graphics LMEM IO start: %llx\n",
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

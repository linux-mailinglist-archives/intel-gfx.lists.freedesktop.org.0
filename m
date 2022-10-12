Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 105C15FCE5E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 344C810E1E1;
	Wed, 12 Oct 2022 22:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73D8E10E286
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613668; x=1697149668;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mMVdc1lU/9tP6qTxzx6HXpqeX3sdSJa23QSZdDvXPDw=;
 b=AEwtn9lFSQW+XJzLG9zVtcbhiF52x76tvtbSOPeCMkICEZLLMVLhi66+
 3udUytHwWnEJaPIpIkoJMF+fXXU4LNddCdPKIz40JTdkf1bAs8SNir3fA
 w7ctXqWBkKbRFaJqm+Z753Jwnn2nhZyANoOR7dJZE+CEpKl8x5zRtKA9/
 Qb6Wn3xCzHH1QP3ByEBrMZzJUqxJRGO4sQWzLmA2Q0tNKsHF8YD7dM5lt
 2rA7Hatt82O2Ek8XsqwuM0W6cYPQaCqfy5iug3XDY++bvmtyeVGlVlZUU
 EykKE1jAIhYT+udzOsd4qGqUsA6mruMGtSCfnmCb4YyaImishoRS/Lrty w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="305983969"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="305983969"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097664"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097664"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:46 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:32 +0000
Message-Id: <20221012222739.27296-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/16] drm/i915/perf: Use gt-specific ggtt
 for OA and noa-wait buffers
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

User passes uabi engine class and instance to the perf OA interface. Use
gt corresponding to the engine to pin the buffers to the right ggtt.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index ac7579cb3586..e7d36821ab21 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1758,6 +1758,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 static int alloc_oa_buffer(struct i915_perf_stream *stream)
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
+	struct intel_gt *gt = stream->engine->gt;
 	struct drm_i915_gem_object *bo;
 	struct i915_vma *vma;
 	int ret;
@@ -1777,11 +1778,22 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 	i915_gem_object_set_cache_coherency(bo, I915_CACHE_LLC);
 
 	/* PreHSW required 512K alignment, HSW requires 16M */
-	vma = i915_gem_object_ggtt_pin(bo, NULL, 0, SZ_16M, 0);
+	vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto err_unref;
 	}
+
+	/*
+	 * PreHSW required 512K alignment.
+	 * HSW and onwards, align to requested size of OA buffer.
+	 */
+	ret = i915_vma_pin(vma, 0, SZ_16M, PIN_GLOBAL | PIN_HIGH);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to pin OA buffer %d\n", ret);
+		goto err_unref;
+	}
+
 	stream->oa_buffer.vma = vma;
 
 	stream->oa_buffer.vaddr =
@@ -1831,6 +1843,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 static int alloc_noa_wait(struct i915_perf_stream *stream)
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
+	struct intel_gt *gt = stream->engine->gt;
 	struct drm_i915_gem_object *bo;
 	struct i915_vma *vma;
 	const u64 delay_ticks = 0xffffffffffffffff -
@@ -1871,12 +1884,16 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	 * multiple OA config BOs will have a jump to this address and it
 	 * needs to be fixed during the lifetime of the i915/perf stream.
 	 */
-	vma = i915_gem_object_ggtt_pin_ww(bo, &ww, NULL, 0, 0, PIN_HIGH);
+	vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto out_ww;
 	}
 
+	ret = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	if (ret)
+		goto out_ww;
+
 	batch = cs = i915_gem_object_pin_map(bo, I915_MAP_WB);
 	if (IS_ERR(batch)) {
 		ret = PTR_ERR(batch);
-- 
2.25.1


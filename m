Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E59160360A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 00:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD13410E3BE;
	Tue, 18 Oct 2022 22:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703E510EB73
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 22:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666132630; x=1697668630;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZZfFCkoh6MPPUxL/bCeTS2yNAhT4KZgxAlEzIIlXMWQ=;
 b=K0v4Cai/e8bR1TfOPmWMs3NYdzfqqn4f+kGDl9t7jAmraDf8c9uCM3wA
 pnDgScHbzzLbS7ztvrQTks3LqnjZgEG/d7WNYObfvSJTelmXkcguxORsr
 bW8ivBOM4EL79XCE5MjiKCMOgeoqol3N9Yk3fQsfKgiBuvdW3gBf0lhyh
 E052IrHMWE3wGhzcW+lyK9YaHEAvFKwNqO/I7sH6TP9aiKbUl3NU+5xuc
 wWglApEouhwB3puI8KN7+XuY9tKxIZWNUeHl8VkSPSFY6j2Qj0tXJ6EjM
 itGByU/g9hMe0N2194Pu056AhIUP1MEUJt9MU/8hHvFrHN7P9Izfvw0aG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="304986539"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="304986539"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="803986539"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="803986539"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:52 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 18 Oct 2022 22:36:41 +0000
Message-Id: <20221018223648.5244-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
References: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 09/16] drm/i915/perf: Use gt-specific ggtt
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
index 9a00398ae25f..2c8727253f0d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1754,6 +1754,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 static int alloc_oa_buffer(struct i915_perf_stream *stream)
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
+	struct intel_gt *gt = stream->engine->gt;
 	struct drm_i915_gem_object *bo;
 	struct i915_vma *vma;
 	int ret;
@@ -1773,11 +1774,22 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
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
@@ -1827,6 +1839,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 static int alloc_noa_wait(struct i915_perf_stream *stream)
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
+	struct intel_gt *gt = stream->engine->gt;
 	struct drm_i915_gem_object *bo;
 	struct i915_vma *vma;
 	const u64 delay_ticks = 0xffffffffffffffff -
@@ -1867,12 +1880,16 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
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


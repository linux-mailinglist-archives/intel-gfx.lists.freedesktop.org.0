Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC160D574
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE99210E265;
	Tue, 25 Oct 2022 20:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E09010E1E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729030; x=1698265030;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZZfFCkoh6MPPUxL/bCeTS2yNAhT4KZgxAlEzIIlXMWQ=;
 b=fPRju2DSnwSGEzTk6jDKLsgNxMnP3iN10/9Jl3F3MnO+bv8BNee0oAWm
 lvAw+695K/S2L5mt9sOBiB88PJlbIztthITeDmultSKTFUDHYI9joaRze
 Dg7DHhCBcIlSJYPTS3JrvBAxaAhtMbx4DEznzo2CKhI9N/1wIP3anYkhn
 wKNWZDC2s4miffPRbGdJx7HhD0yVvoodWnWTaIyNNowAtcA9hqJ38Gfui
 8WaLst8OxhhwBLn4Oj+MnHPpl0e1+4Nm3CYCj+DCkQoNEoXevP1Rr8pPk
 L51FQfopac0kwl3a6vR/ESjBdRLRtDzJR2g3bbfXnmCFIKRlld31WL85k A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="287498125"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="287498125"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699727"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699727"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:17:01 +0000
Message-Id: <20221025201708.84018-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33919313B1D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442AE890EF;
	Mon,  8 Feb 2021 17:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D86F895EE
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:40:37 +0000 (UTC)
IronPort-SDR: i6VQhGBkvyO6/je80iuaYL5Y+mlyvkw49of6p3A1S8/XtbAwKTJNZTOhKeg2oThb2zo/T4Uyl9
 rPXukAg9BQyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="200812315"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="200812315"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:40:37 -0800
IronPort-SDR: Bv6xREK4nrQCR/D8nQFBwZIAChjE3CCMpaaMjZFhGf5zdCcuYYfZdwLeODrIZGv6W8l4O64CER
 SZD1k8ID8dxA==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="377857782"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:40:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 09:40:28 -0800
Message-Id: <20210208174029.45621-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208174029.45621-1-umesh.nerlige.ramappa@intel.com>
References: <20210208174029.45621-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] i915/perf: Move OA formats to single array
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Variations in OA formats in the different gens has led to creation of
several sparse arrays to store the formats.

Move oa formats into a single array and format_mask to check for
platform specific oa formats.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 7b6aab5f3e46..e7e097ec70e7 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -302,7 +302,7 @@ static u32 i915_oa_max_sample_rate = 100000;
  * code assumes all reports have a power-of-two size and ~(size - 1) can
  * be used as a mask to align the OA tail pointer.
  */
-static const struct i915_oa_format hsw_oa_formats[I915_OA_FORMAT_MAX] = {
+static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A13]	    = { 0, 64 },
 	[I915_OA_FORMAT_A29]	    = { 1, 128 },
 	[I915_OA_FORMAT_A13_B8_C8]  = { 2, 128 },
@@ -311,17 +311,9 @@ static const struct i915_oa_format hsw_oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A45_B8_C8]  = { 5, 256 },
 	[I915_OA_FORMAT_B4_C8_A16]  = { 6, 128 },
 	[I915_OA_FORMAT_C4_B8]	    = { 7, 64 },
-};
-
-static const struct i915_oa_format gen8_plus_oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A12]		    = { 0, 64 },
 	[I915_OA_FORMAT_A12_B8_C8]	    = { 2, 128 },
 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
-	[I915_OA_FORMAT_C4_B8]		    = { 7, 64 },
-};
-
-static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
-	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
 };
 
 #define SAMPLE_OA_REPORT      (1<<0)
@@ -4333,6 +4325,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 	/* XXX const struct i915_perf_ops! */
 
+	perf->oa_formats = oa_formats;
 	if (IS_HASWELL(i915)) {
 		perf->ops.is_valid_b_counter_reg = gen7_is_valid_b_counter_addr;
 		perf->ops.is_valid_mux_reg = hsw_is_valid_mux_addr;
@@ -4343,8 +4336,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 		perf->ops.oa_disable = gen7_oa_disable;
 		perf->ops.read = gen7_oa_read;
 		perf->ops.oa_hw_tail_read = gen7_oa_hw_tail_read;
-
-		perf->oa_formats = hsw_oa_formats;
 	} else if (HAS_LOGICAL_RING_CONTEXTS(i915)) {
 		/* Note: that although we could theoretically also support the
 		 * legacy ringbuffer mode on BDW (and earlier iterations of
@@ -4355,8 +4346,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 		perf->ops.read = gen8_oa_read;
 
 		if (IS_GEN_RANGE(i915, 8, 9)) {
-			perf->oa_formats = gen8_plus_oa_formats;
-
 			perf->ops.is_valid_b_counter_reg =
 				gen7_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
@@ -4387,8 +4376,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 				perf->gen8_valid_ctx_bit = BIT(16);
 			}
 		} else if (IS_GEN_RANGE(i915, 10, 11)) {
-			perf->oa_formats = gen8_plus_oa_formats;
-
 			perf->ops.is_valid_b_counter_reg =
 				gen7_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
@@ -4411,8 +4398,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 			}
 			perf->gen8_valid_ctx_bit = BIT(16);
 		} else if (IS_GEN(i915, 12)) {
-			perf->oa_formats = gen12_oa_formats;
-
 			perf->ops.is_valid_b_counter_reg =
 				gen12_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 033B359ED98
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9E210E785;
	Tue, 23 Aug 2022 20:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D29910E647
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287321; x=1692823321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+V0D3kqX6wD+GcTvxfvUzRlNfgqJ7HCRCDAN3hK2QRw=;
 b=bh8CojViuDhVj3YSSCFZBIp32K0j91yZHI8r3vjPjpVn48DMGek17vBC
 BJpemnn/LW31EZZ9o9bzJv7NHcRxSo52nKm3W+sY7qtHiHXXbVGPNkIfC
 WCLNtUVRetbmoBQFSpdut69Jg2a9hOJVd1/KTR3kp6IQkOQS8mv8Oq089
 vGhJNMHm3usmiAoYF6RiA+BbQ5SVhzTjp6VcHhtvdLEK9w+Ut4TpdlrV1
 WqfszPVIaF3H7BTLFgzl/1XY+mbIadhyt9xWOMXUjcsJ9Ms7ffNrril9Z
 NabP4tIMRfpkJMzystgWZaBL3gYF0VuGduSdnvW+DvO0MhrGL+tuau9c8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="293791553"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="293791553"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815666"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:41:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:50 +0000
Message-Id: <20220823204155.8178-15-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/19] drm/i915/perf: Add Wa_1608133521:dg2
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

DG2 introduces 64 bit counters and OA reports that have 64 bit values
for fields in the report header - report_id, timestamp, context_id and
gpu ticks. i915 uses report_id, timestamp and context_id to check for
valid reports.

In some DG2 variants, only the lower dwords for timestamp, report_id and
context_id are accessible. Add workaround for such reports.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index a28f07923d8f..a858ce57e465 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -310,7 +310,7 @@ static u32 i915_oa_max_sample_rate = 100000;
  * be used as a mask to align the OA tail pointer. In some of the
  * formats, R is used to denote reserved field.
  */
-static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
+static struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A13]	    = { 0, 64 },
 	[I915_OA_FORMAT_A29]	    = { 1, 128 },
 	[I915_OA_FORMAT_A13_B8_C8]  = { 2, 128 },
@@ -4746,6 +4746,13 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 		/* Wa_16010703925:dg2 */
 		clear_bit(I915_OAR_FORMAT_A36u64_B8_C8, perf->format_mask);
  	}
+
+	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
+	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_FOREVER)) {
+		/* Wa_1608133521:dg2 */
+		oa_formats[I915_OAR_FORMAT_A36u64_B8_C8].header = HDR_32_BIT;
+		oa_formats[I915_OA_FORMAT_A38u64_R2u64_B8_C8].header = HDR_32_BIT;
+	}
 }
 
 static void i915_perf_init_info(struct drm_i915_private *i915)
-- 
2.25.1


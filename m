Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DE859CCCB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C25A74D2;
	Tue, 23 Aug 2022 00:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54500A74C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213025; x=1692749025;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=t8RX1b4mACbUNUiUFxPwCPoqrq7I+942LvaiA26p0LU=;
 b=ESa3MNlRLJ9eY8Pd+h3CmbfButoP1f0SQ8vcotUsaRSuEFlAzEBOU9YU
 AGgeAUfYv34Io2QIqmhP92VP35Rx8kRxWM53wdgwG4bdsxonIizRbvXRd
 RzAMXzPw+22bfqIIp7CMy1ay36bs2HTM5fId1R3O+TSP4vkazOEAYBSEK
 pWhB7qPh2Ysxh4wfBlmb5n7DPlSiQeckVSPqKLvbRp4luUQSv+outUS8r
 kgipkluTh/zgAQaE1iqOtJ83WS/q779Qq/S21tgdecBtkISqG1lKPYyEc
 avTjovEl3XK6ggT+4tbep0d+aAsPpHp4QMD6Qn07zoohDxjtrCeBXCLtJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304840"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304840"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775547"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:37 +0000
Message-Id: <20220823000342.281222-15-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
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
index 3a1e0c5271e2..494c67e29d6c 100644
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
@@ -4755,6 +4755,13 @@ static void oa_init_supported_formats(struct i915_perf *perf)
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


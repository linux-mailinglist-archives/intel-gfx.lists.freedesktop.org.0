Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8BC76D8A9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 22:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29EE010E583;
	Wed,  2 Aug 2023 20:29:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDF2E10E583
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 20:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691008138; x=1722544138;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CLBkXoGMvR867cudRMF4tx6+7EJMSP+HnLdvC1Zi8DE=;
 b=Vs2jArSUAcQumdnXTQbFYbZkjMkcPiwZXDLkUuI2YJSaJVYhCNYWTXox
 QgXAr9J8ZsLvTcNUbH8/2NOQEWkk3hiD4opTyOi2BVuRliAmqiFPgug1+
 NabskjYiTe3hBnB8nIzPCI68AG9mjNL2RwcfuuAbgBXo3GNVPbE6hI9Wc
 EPOp3fMYawcMEQfSd+eJ0U6p6aX8yC1pZKNnQLuDJpHfhVw+99s/1jmsv
 q2OVZllOcW5bGsK3kBMgZzkyKSiD0mydcf/xeMUtUlcWrx9acYH0EQ3Rf
 WAji/IY9zYn5nKsDPFo3pDGNVo6PpCJ5nQE9CJ+FEPpPIO1J/ZTktBTKK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="369695139"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="369695139"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 13:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="794726113"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="794726113"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 13:28:58 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Aug 2023 13:28:54 -0700
Message-Id: <20230802202854.1224547-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Determine context valid in OA
 reports
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

When supporting OA for TGL, it was seen that the context valid bit in
the report ID was not defined, however revisiting the spec seems to have
this bit defined. The bit is used to determine if a context is valid on
a context switch and is essential to determine active and idle periods
for a context. Re-enable the context valid bit for gen12 platforms.

BSpec: 52196 (description of report_id)

v2: Include BSpec reference (Ashutosh)

Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 04bc1f4a1115..59e1e21df271 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -482,8 +482,7 @@ static void oa_report_id_clear(struct i915_perf_stream *stream, u32 *report)
 static bool oa_report_ctx_invalid(struct i915_perf_stream *stream, void *report)
 {
 	return !(oa_report_id(stream, report) &
-	       stream->perf->gen8_valid_ctx_bit) &&
-	       GRAPHICS_VER(stream->perf->i915) <= 11;
+	       stream->perf->gen8_valid_ctx_bit);
 }
 
 static u64 oa_timestamp(struct i915_perf_stream *stream, void *report)
@@ -5106,6 +5105,7 @@ static void i915_perf_init_info(struct drm_i915_private *i915)
 		perf->gen8_valid_ctx_bit = BIT(16);
 		break;
 	case 12:
+		perf->gen8_valid_ctx_bit = BIT(16);
 		/*
 		 * Calculate offset at runtime in oa_pin_context for gen12 and
 		 * cache the value in perf->ctx_oactxctrl_offset.
-- 
2.36.1


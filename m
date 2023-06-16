Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 836947324BF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 03:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343F510E57D;
	Fri, 16 Jun 2023 01:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92EA10E583
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 01:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686879534; x=1718415534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fjC92PFzvYVQBqY9QvicBSXWBCp8My73TBwDK1PrAeM=;
 b=MsA5V9n1jSpqYQKVjAmzJNLST2IvT9KtL8t+9MhIOZ4PKyEmOi8WvHIJ
 HSaHu0at+cmalDZSVlvgvgCW2WPa/DSZXLUGhy+76VG7eaPUHZcs3y2ni
 t2fdfwj9RmYgrwkogv6nYjtrBI176AjpF8auwCAc7x1K9gfESxIPqTMvZ
 VBgE47y9E7wsuSXLHmXqCrsrXOWG4MHssVgE9NretJQG1fsOMfgs7iIL9
 xnGK8gd+zKojXf3u8MweCdOKvXdq4GuP6FyMbXcRSgQVd3S0J6u8QqeRU
 gZnYi+R/WgbwTYlBY2RjPqUUycCEgCrDUnEtyHWG8hqhdIDHHlohCYUBI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="338705622"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="338705622"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 18:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="886899606"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="886899606"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 18:38:53 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 18:38:50 -0700
Message-Id: <20230616013850.611281-1-umesh.nerlige.ramappa@intel.com>
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When supporting OA for TGL, it was seen that the context valid bit in
the report ID was not defined, however revisiting the spec seems to have
this bit defined. The bit is used to determine if a context is valid on
a context switch and is essential to determine active and idle periods
for a context. Re-enable the context valid bit for gen12 platforms.

Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0a111b281578..b5491a382bfd 100644
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
@@ -5096,6 +5095,7 @@ static void i915_perf_init_info(struct drm_i915_private *i915)
 		perf->gen8_valid_ctx_bit = BIT(16);
 		break;
 	case 12:
+		perf->gen8_valid_ctx_bit = BIT(16);
 		/*
 		 * Calculate offset at runtime in oa_pin_context for gen12 and
 		 * cache the value in perf->ctx_oactxctrl_offset.
-- 
2.36.1


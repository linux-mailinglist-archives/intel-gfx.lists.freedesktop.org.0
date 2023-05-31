Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F29C5718F42
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 01:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0391E10E0EB;
	Wed, 31 May 2023 23:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5A110E0DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 23:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685577399; x=1717113399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H1dVd4yGjZDTu5SA8dsOfH4pB96S0rmRFPNRA0Najbo=;
 b=k09VZ6Wcp4woXSc3SXafJNQJVnqovAiGlEjgeHMaj78z01gZtTz1VW1y
 xEh0CYFtTZNgPhoD3hulB75jF/xcLPdIC7jN4maUgvGEp/3DgCm0HQgRt
 Z0FXWAZm3LIxLKyf/rv94qQEt7ExJdm5WS4BmdPCE+nGx4+mAmtPhyLeU
 06IAherq5mSol/tZbzcj333HFE/GWhO1BhNtg7GA+2aYRngv50HkGPKpJ
 b92PYhl47Depr1Zp8NGTaEZyYoWjGefjIvqEyhCSy7VT3hmsjvPhcx/ct
 yKnhri3xhTKKXtaa/rwp3iFnMU5JBLFRzKimDK2FBmSmpPVnD5B5b5Uje Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383666370"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383666370"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="796910854"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="796910854"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:38 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:56:33 -0700
Message-Id: <20230531235634.1309525-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
References: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] i915/perf: Do not add ggtt offset to hw_tail
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

ggtt offset for hw_tail is not required for the calculations, so drop
it.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 29124dcba8e2..beb1269422ca 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -565,7 +565,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	partial_report_size %= report_size;
 
 	/* Subtract partial amount off the tail */
-	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
+	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
 
 
 	/* NB: The head we observe here might effectively be a little
@@ -575,7 +575,6 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	head = stream->oa_buffer.head - gtt_offset;
 	aged_tail = stream->oa_buffer.tail - gtt_offset;
 
-	hw_tail -= gtt_offset;
 	tail = hw_tail;
 
 		/* Walk the stream backward until we find a report with report
-- 
2.36.1


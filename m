Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBA7799579
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 03:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E1E810E0DB;
	Sat,  9 Sep 2023 01:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AEAF10E093
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Sep 2023 01:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694222190; x=1725758190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hECeGbA6UIBWlITx3oG7l2xUJXmpAQPQBt5ZnZ68IIk=;
 b=dgNG9PQ88UqJ4aEDrtGQ1UJR9JQOsqsN28pGtOKdqnOfkJKWwyc2OdFK
 rQGrHoJgFU9uexHe6FS0sNj4VqM6SzXoGCAKE3ns8sLHdnzMqbLbWWfPI
 IEYJEzXFVvVZd8GvkELnG10Dy7Bg0lSPo3oAJyN2MHi29uFwrN+kXrO1T
 APHpsaxcOEMIh9X2zUBn/MA4IEtYEpj08ajNidrhUbTV9+tVlZQ9ocPSP
 v2MPHzXd9gcHY081h2ibg9j2tt7NGlrGsRWvc9U1zZ+kBaYQVYUBO/zbt
 aV3Lm15iFfu2u5c5QidU90jedydobPvYR5w6V8vJCdBJFudVTSgH88QwD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="441792746"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="441792746"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="719342290"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="719342290"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:16:24 -0700
Message-ID: <20230909011626.1643734-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
References: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Subtract gtt_offset from
 hw_tail
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

The code in oa_buffer_check_unlocked() is correct only if the OA buffer is
16 MB aligned (which seems to be the case today in i915). However when the
16 MB alignment is dropped, when we "Subtract partial amount off the tail",
the "& (OA_BUFFER_SIZE - 1)" operation in OA_TAKEN() will result in an
incorrect hw_tail value.

Therefore hw_tail must be brought to the same base as head and read_tail
prior to OA_TAKEN by subtracting gtt_offset from hw_tail.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 018f42fff4cc0..ec0fc2934045a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -565,6 +565,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	partial_report_size %= report_size;
 
 	/* Subtract partial amount off the tail */
+	hw_tail -= gtt_offset;
 	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
 
 	/* NB: The head we observe here might effectively be a little
-- 
2.41.0


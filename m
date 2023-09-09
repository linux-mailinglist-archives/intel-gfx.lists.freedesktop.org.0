Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8227679957B
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 03:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4789110E24A;
	Sat,  9 Sep 2023 01:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A476010E0DB
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Sep 2023 01:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694222190; x=1725758190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pm9VQ7vKSeJHM0OblBpciqL0JoHjXzpxwBTYtBFTOUI=;
 b=O9NdBzU25I5RZY415+Z4Q7eKc5nEp8c0utxB1AmQQrl1HQ8r3uPzRp8O
 OayKR7LyiUifJsh2kn75ArHJQ6JOCEggSS6BuustlAe9OdVbFHde/uJru
 SwRPsgwIYaUxnxjVqqWIwXlvyVe6PGy1qU5ooE6ekSTtk5aXYDvgebqEP
 GmQp4xV++kYf9fBMZFT3yYFpnVHyKbHGYGdSsojSbAOa8fFpjfxC8nHE5
 7uPhAeItaMuJ66zvcLdXZ7+gAS0ltrQODHgcOvcqShj56MGEioljf+V7W
 caScFQhO3ZgWB6aNOnvqID3HN5DrBgzkR6g0wTR5PIKs99gUMDrpSR7ge A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="441792748"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="441792748"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="719342296"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="719342296"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:16:26 -0700
Message-ID: <20230909011626.1643734-4-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
References: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/perf: Initialize gen12 OA buffer
 unconditionally
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

From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Correct values for OAR counters are still dependent on enabling the
GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE in OAG_OACONTROL. Enabling this
bit means OAG unit will write reports to the OAG buffer, so
initialize the OAG buffer unconditionally for all use cases.

BSpec: 46822

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1347e4ec9dd5a..30cf37d6e79be 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3032,12 +3032,12 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
 	u32 val;
 
 	/*
-	 * If we don't want OA reports from the OA buffer, then we don't even
-	 * need to program the OAG unit.
+	 * BSpec: 46822
+	 * Correct values for OAR counters are still dependent on enabling the
+	 * GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE in OAG_OACONTROL. Enabling this
+	 * bit means OAG unit will write reports to the OAG buffer, so
+	 * initialize the OAG buffer correctly.
 	 */
-	if (!(stream->sample_flags & SAMPLE_OA_REPORT))
-		return;
-
 	gen12_init_oa_buffer(stream);
 
 	regs = __oa_regs(stream);
-- 
2.41.0


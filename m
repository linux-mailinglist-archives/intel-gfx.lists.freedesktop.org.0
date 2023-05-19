Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F41B70A2FB
	for <lists+intel-gfx@lfdr.de>; Sat, 20 May 2023 00:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D8810E0F6;
	Fri, 19 May 2023 22:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25BDB10E0F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 22:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684537007; x=1716073007;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2JusVPyC4FBgGGrege5NX1ECNWZjKzTcsyXkm4SsgnM=;
 b=cgZ+Tn9mJjkkrAKw5Y3Rk3kiqC2ajyiIJ72SUJCQZdpm6t/cdnyDZRLE
 Qvg5sfD2aMHeCWwoRD9APi+N/chPkgC6sMH98j2hmETn5zsFpp86oVt0r
 xPQiYNIB0wDM3G1zHN2SgMEBw1TQsC0IVJSpAFqySGyTpnIwX3wy8+2Sl
 PEwN2aNzg3SgkPT5TGwmiWmzqJRAWjihc/oZPLea1azmfd9M1O9zvW6El
 LSXqvfrB6WoXZsFJaTHYq4/vUkcWQ6qR91OVaDuix1iM39YdvE5y/kQGQ
 qhukQ5aNuOw8sSyGkphMsvCjMl5h85JJpiuikMwee8DG/+mBlEnK6rMJ6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="355729369"
X-IronPort-AV: E=Sophos;i="6.00,178,1681196400"; d="scan'208";a="355729369"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 15:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="949272948"
X-IronPort-AV: E=Sophos;i="6.00,178,1681196400"; d="scan'208";a="949272948"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 15:56:45 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 May 2023 15:56:42 -0700
Message-Id: <20230519225642.134778-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/perf: Avoid reading OA reports before they
 land
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

On DG2, capturing OA reports while running heavy render workloads
sometimes results in invalid OA reports where 64-byte chunks inside
reports have stale values. Under memory pressure, high OA sampling rates
(13.3 us) and heavy render workload, occassionally, the OA HW TAIL
pointer does not progress as fast as the sampling rate. When these
glitches occur, the TAIL pointer takes approx. 200us to progress.  While
this is expected behavior from the HW perspective, invalid reports are
not expected.

In oa_buffer_check_unlocked(), when we execute the if condition, we are
updating the oa_buffer.tail to the aging tail and then setting pollin
based on this tail value, however, we do not have a chance to rewind and
validate the reports prior to setting pollin. The validation happens
in a subsequent call to oa_buffer_check_unlocked(). If a read occurs
before this validation, then we end up reading reports up until this
oa_buffer.tail value which includes invalid reports. Though found on
DG2, this affects all platforms.

Set the pollin only in the else condition in oa_buffer_check_unlocked.

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7484
Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7757
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 19d5652300ee..61536e3c4ac9 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -545,7 +545,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	int report_size = stream->oa_buffer.format->size;
 	unsigned long flags;
-	bool pollin;
+	bool pollin = false;
 	u32 hw_tail;
 	u64 now;
 	u32 partial_report_size;
@@ -620,10 +620,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		stream->oa_buffer.tail = gtt_offset + tail;
 		stream->oa_buffer.aging_tail = gtt_offset + hw_tail;
 		stream->oa_buffer.aging_timestamp = now;
-	}
 
-	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
-			  stream->oa_buffer.head - gtt_offset) >= report_size;
+		pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
+				  stream->oa_buffer.head - gtt_offset) >= report_size;
+	}
 
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
-- 
2.38.1


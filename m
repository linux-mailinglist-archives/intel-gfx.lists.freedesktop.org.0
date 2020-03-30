Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C86197791
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 11:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBC589D79;
	Mon, 30 Mar 2020 09:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D68089D79
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 09:14:19 +0000 (UTC)
IronPort-SDR: mVOy7nTDUuqf6Cc0QvV++F2F47Hiyrk5VAsj7K8Q9WhiJ41tBgBkMZSsNnS+yGrYR9h6XuU+q1
 9nbobmYVscVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 02:14:18 -0700
IronPort-SDR: nn/2VPw9OPmKEdKuoCMyG+yPgcxVPUb9Hn3ekwVcK7uVoF7pGAF7p+MLfreqghRj4jxGrOof+8
 zk3K/7Vp0VPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,323,1580803200"; d="scan'208";a="359119799"
Received: from weigu-mobl1.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.252.58.134])
 by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2020 02:14:17 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 12:14:11 +0300
Message-Id: <20200330091411.37357-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: don't read head/tail pointers
 outside critical section
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reading or writing those fields should only happen under
stream->oa_buffer.ptr_lock.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Fixes: d1df41eb72ef ("drm/i915/perf: rework aging tail workaround")
---
 drivers/gpu/drm/i915/i915_perf.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c74ebac50015..ec9421f02ebd 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -463,6 +463,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	int report_size = stream->oa_buffer.format_size;
 	unsigned long flags;
+	bool pollin;
 	u32 hw_tail;
 	u64 now;
 
@@ -532,10 +533,13 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		stream->oa_buffer.aging_timestamp = now;
 	}
 
+	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
+			  stream->oa_buffer.head - gtt_offset) >= report_size;
+
+
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
-	return OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
-			stream->oa_buffer.head - gtt_offset) >= report_size;
+	return pollin;
 }
 
 /**
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

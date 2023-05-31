Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C64718F43
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 01:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F5A10E0E5;
	Wed, 31 May 2023 23:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5210110E0EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 23:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685577399; x=1717113399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=swzDPZb+z5zuueJPv3CmnWwF4FVuLRLvoMDXx0UcHbc=;
 b=AzEmK8u7js5+o3sR90v1tRGw6T0cO8tKsQ7vt43dHahrLfShD0Viwmoq
 lMC+7JMutO0fwWhBPRe0LieLThGLewzxCMh8MAc1ABwwZTm+jSbpcQdCq
 ntNfw/oi5jwv7C2QzYnPK0dj9WhtExhvp3xOX5QYZx0/JoSY9O4kxFu+q
 hZMzpqYADur0h6r5XkXx+jGxnlb+g/OJ5NyTfBXBLxsbP37/3ulayOps8
 WCVrg8ZDtD9rXciQ1NI5h6GWaLr3q6VpgyjXq1E8lw6EELkzCVmgHZ7ZM
 XV1C/cE/vTgyau6S2gszxhcMI2ZvbXz+D7Tzy8WmR2gzBufrepmYWOBJg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383666371"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383666371"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="796910857"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="796910857"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:38 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:56:34 -0700
Message-Id: <20230531235634.1309525-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
References: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] i915/perf: Drop the aged_tail from rewind
 logic
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

Instead of aged_tail use an iterator that starts from the hw_tail and
goes backward until the oa_buffer.tail looking for valid reports.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index beb1269422ca..39f5ab1911c8 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -543,7 +543,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 {
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	int report_size = stream->oa_buffer.format->size;
-	u32 head, tail, aged_tail;
+	u32 head, tail, iter;
 	unsigned long flags;
 	bool pollin;
 	u32 hw_tail;
@@ -567,15 +567,14 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	/* Subtract partial amount off the tail */
 	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
 
-
 	/* NB: The head we observe here might effectively be a little
 	 * out of date. If a read() is in progress, the head could be
 	 * anywhere between this head and stream->oa_buffer.tail.
 	 */
 	head = stream->oa_buffer.head - gtt_offset;
-	aged_tail = stream->oa_buffer.tail - gtt_offset;
+	tail = stream->oa_buffer.tail - gtt_offset;
 
-	tail = hw_tail;
+	iter = hw_tail;
 
 		/* Walk the stream backward until we find a report with report
 		 * id and timestmap not at 0. Since the circular buffer pointers
@@ -588,23 +587,23 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	 * memory in the order they were written to.
 	 * If not : (╯°□°）╯︵ ┻━┻
 	 */
-	while (OA_TAKEN(tail, aged_tail) >= report_size) {
-		void *report = stream->oa_buffer.vaddr + tail;
+	while (OA_TAKEN(iter, tail) >= report_size) {
+		void *report = stream->oa_buffer.vaddr + iter;
 
 		if (oa_report_id(stream, report) ||
 		    oa_timestamp(stream, report))
 			break;
 
-		tail = (tail - report_size) & (OA_BUFFER_SIZE - 1);
+		iter = (iter - report_size) & (OA_BUFFER_SIZE - 1);
 	}
 
-	if (OA_TAKEN(hw_tail, tail) > report_size &&
+	if (OA_TAKEN(hw_tail, iter) > report_size &&
 	    __ratelimit(&stream->perf->tail_pointer_race))
 		drm_notice(&stream->uncore->i915->drm,
 			   "unlanded report(s) head=0x%x tail=0x%x hw_tail=0x%x\n",
 		 head, tail, hw_tail);
 
-	stream->oa_buffer.tail = gtt_offset + tail;
+	stream->oa_buffer.tail = gtt_offset + iter;
 
 	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
 			  stream->oa_buffer.head - gtt_offset) >= report_size;
-- 
2.36.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD2D1A691B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 17:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0231189DD5;
	Mon, 13 Apr 2020 15:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9408189E19
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 15:48:24 +0000 (UTC)
IronPort-SDR: Xp6zUD8ytzDc+z8UBnAmMXp4ejnrGPoCX+k/aD/S5a+QaqVG6I0BclfC8NS00IS65PUEaZUpID
 OpeDkxiv/PKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 08:48:23 -0700
IronPort-SDR: o82zG1pDSyESNDganv0qnK+8o2zhBxVIeLdod6Dgtq6HCIUCGo6QaxhQZ2ehrNKdJTZmKPLq+C
 +5P5JINo5h6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="241695657"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by orsmga007.jf.intel.com with ESMTP; 13 Apr 2020 08:48:22 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 13 Apr 2020 08:48:20 -0700
Message-Id: <20200413154822.11620-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Reduce cpu overhead for
 blocking perf OA reads
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

A condition in wait_event_interruptible seems to be checked twice before
waiting on the event to occur. These checks are redundant when hrtimer
events will call oa_buffer_check_unlocked to update the oa_buffer tail
pointers. The redundant checks add cpu overhead. Simplify the check
to reduce cpu overhead when using blocking io to read oa buffer reports.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 5cde3e4e7be6..e28a3ab83fde 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -541,6 +541,32 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	return pollin;
 }
 
+/**
+ * oa_buffer_check_reports - quick check if reports are available
+ * @stream: i915 stream instance
+ *
+ * The return from this function is used as a condition for
+ * wait_event_interruptible in blocking read. This is used to detect
+ * available reports.
+ *
+ * A condition in wait_event_interruptible seems to be checked twice before
+ * waiting on an event to occur. These checks are redundant when hrtimer events
+ * will call oa_buffer_check_unlocked to update the oa_buffer tail pointers. The
+ * redundant checks add cpu overhead. We simplify the check to reduce cpu
+ * overhead.
+ */
+static bool oa_buffer_check_reports(struct i915_perf_stream *stream)
+{
+	unsigned long flags;
+	bool available;
+
+	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
+	available = stream->oa_buffer.tail != stream->oa_buffer.head;
+	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
+
+	return available;
+}
+
 /**
  * append_oa_status - Appends a status record to a userspace read() buffer.
  * @stream: An i915-perf stream opened for OA metrics
@@ -1150,7 +1176,7 @@ static int i915_oa_wait_unlocked(struct i915_perf_stream *stream)
 		return -EIO;
 
 	return wait_event_interruptible(stream->poll_wq,
-					oa_buffer_check_unlocked(stream));
+					oa_buffer_check_reports(stream));
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

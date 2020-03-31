Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFC1198BA4
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 07:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613526E23F;
	Tue, 31 Mar 2020 05:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CA96E23F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 05:22:44 +0000 (UTC)
IronPort-SDR: shntTJCCOeh1CQtGkZfjw2Kb7VM0JIrUtjG7npgjrUKm4GZcmqo1sOVwencTqsV90BSYBcKi1i
 i4g4cZC8yTmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 22:22:43 -0700
IronPort-SDR: O+uBGot8aUXkz1zs3HP7CRtIqEg9ZgNdBtlFtV65oscYqQVhqUBqln0tfiKLGsYDcXgXQolhWr
 yiH6bAtYOE3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; d="scan'208";a="242255001"
Received: from adixit-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.185.90])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2020 22:22:42 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 22:22:22 -0700
Message-Id: <20200331052222.76525-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Do not clear pollin for small
 user read buffers
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

It is wrong to block the user thread in the next poll when OA data is
already available which could not fit in the user buffer provided in
the previous read. In several cases the exact user buffer size is not
known. Blocking user space in poll can lead to data loss when the
buffer size used is smaller than the available data.

This change fixes this issue and allows user space to read all OA data
even when using a buffer size smaller than the available data using
multiple non-blocking reads rather than staying blocked in poll till
the next timer interrupt.

v2: Fix ret value for blocking reads (Umesh)
v3: Mistake during patch send (Ashutosh)
v4: Remove -EAGAIN from comment (Umesh)
v5: Improve condition for clearing pollin and return (Lionel)

Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 62 +++++++-------------------------
 1 file changed, 13 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c74ebac50015..9c21f28f89a7 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2914,49 +2914,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 		gen8_update_reg_state_unlocked(ce, stream);
 }
 
-/**
- * i915_perf_read_locked - &i915_perf_stream_ops->read with error normalisation
- * @stream: An i915 perf stream
- * @file: An i915 perf stream file
- * @buf: destination buffer given by userspace
- * @count: the number of bytes userspace wants to read
- * @ppos: (inout) file seek position (unused)
- *
- * Besides wrapping &i915_perf_stream_ops->read this provides a common place to
- * ensure that if we've successfully copied any data then reporting that takes
- * precedence over any internal error status, so the data isn't lost.
- *
- * For example ret will be -ENOSPC whenever there is more buffered data than
- * can be copied to userspace, but that's only interesting if we weren't able
- * to copy some data because it implies the userspace buffer is too small to
- * receive a single record (and we never split records).
- *
- * Another case with ret == -EFAULT is more of a grey area since it would seem
- * like bad form for userspace to ask us to overrun its buffer, but the user
- * knows best:
- *
- *   http://yarchive.net/comp/linux/partial_reads_writes.html
- *
- * Returns: The number of bytes copied or a negative error code on failure.
- */
-static ssize_t i915_perf_read_locked(struct i915_perf_stream *stream,
-				     struct file *file,
-				     char __user *buf,
-				     size_t count,
-				     loff_t *ppos)
-{
-	/* Note we keep the offset (aka bytes read) separate from any
-	 * error status so that the final check for whether we return
-	 * the bytes read with a higher precedence than any error (see
-	 * comment below) doesn't need to be handled/duplicated in
-	 * stream->ops->read() implementations.
-	 */
-	size_t offset = 0;
-	int ret = stream->ops->read(stream, buf, count, &offset);
-
-	return offset ?: (ret ?: -EAGAIN);
-}
-
 /**
  * i915_perf_read - handles read() FOP for i915 perf stream FDs
  * @file: An i915 perf stream file
@@ -2982,7 +2939,8 @@ static ssize_t i915_perf_read(struct file *file,
 {
 	struct i915_perf_stream *stream = file->private_data;
 	struct i915_perf *perf = stream->perf;
-	ssize_t ret;
+	size_t offset = 0;
+	int __ret;
 
 	/* To ensure it's handled consistently we simply treat all reads of a
 	 * disabled stream as an error. In particular it might otherwise lead
@@ -2992,6 +2950,8 @@ static ssize_t i915_perf_read(struct file *file,
 		return -EIO;
 
 	if (!(file->f_flags & O_NONBLOCK)) {
+		ssize_t ret;
+
 		/* There's the small chance of false positives from
 		 * stream->ops->wait_unlocked.
 		 *
@@ -3005,13 +2965,13 @@ static ssize_t i915_perf_read(struct file *file,
 				return ret;
 
 			mutex_lock(&perf->lock);
-			ret = i915_perf_read_locked(stream, file,
-						    buf, count, ppos);
+			__ret = stream->ops->read(stream, buf, count, &offset);
+			ret = offset ?: (__ret ?: -EAGAIN);
 			mutex_unlock(&perf->lock);
 		} while (ret == -EAGAIN);
 	} else {
 		mutex_lock(&perf->lock);
-		ret = i915_perf_read_locked(stream, file, buf, count, ppos);
+		__ret = stream->ops->read(stream, buf, count, &offset);
 		mutex_unlock(&perf->lock);
 	}
 
@@ -3022,11 +2982,15 @@ static ssize_t i915_perf_read(struct file *file,
 	 * and read() returning -EAGAIN. Clearing the oa.pollin state here
 	 * effectively ensures we back off until the next hrtimer callback
 	 * before reporting another EPOLLIN event.
+	 * The exception to this is if ops->read() returned -ENOSPC which means
+	 * that more OA data is available than could fit in the user provided
+	 * buffer. In this case we want the next poll() call to not block.
 	 */
-	if (ret >= 0 || ret == -EAGAIN)
+	if (__ret != -ENOSPC)
 		stream->pollin = false;
 
-	return ret;
+	/* Possible values for __ret are 0, -EFAULT, -ENOSPC, -EIO, ... */
+	return offset ?: (__ret ?: -EAGAIN);
 }
 
 static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
-- 
2.25.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

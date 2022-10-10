Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1A25FA342
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 20:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D628E10E6D8;
	Mon, 10 Oct 2022 18:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E23D10E6D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 18:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665425677; x=1696961677;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ANnqzMZFUKwWmwNgg2VinokEtJEXBivAoemdsiCEZK8=;
 b=OKeOrYSomQ1YW0Kf0LlH3QzmxRqbjXVtCXUxmENNoEg1kNkt0/vO60Qs
 cT/xEGpN29up/v2UFSm0pnrBzqvjPT+H++1+z6QV0Em53KScv4zwgxHZL
 2HAZtXQT923UjY32wIE6XPSEC3neG1IZxBWkaPXy7UavEf4rfQExEU7Bp
 iTuZ6FBs0UsZQmbOSJGlpH+qRHE36lZ5VaRY2dh1HCsaBPjW+3jhQNNW/
 kATbOyKUwHzz9tuY3bDgw66q+s04kK20iTMhdB4clVO94u0khNfFuERzw
 3hrAAIOF4wxc6+UIbzya7ROxyLroA2d5peA9Tz3GDCHoYZiOvqSRaZO9n A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="301909905"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="301909905"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="603820282"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="603820282"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:36 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 10 Oct 2022 18:14:26 +0000
Message-Id: <20221010181434.513477-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/16] drm/i915/perf: Replace gt->perf.lock
 with stream->lock for file ops
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

With multi-gt, user can access multiple OA buffers concurrently. Use
stream->lock instead of gt->perf.lock to serialize file operations.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 31 ++++++++++++--------------
 drivers/gpu/drm/i915/i915_perf_types.h |  5 +++++
 2 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 446c9c97c3a4..3961e9c9e97b 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3229,6 +3229,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->poll_check_timer.function = oa_poll_check_timer_cb;
 	init_waitqueue_head(&stream->poll_wq);
 	spin_lock_init(&stream->oa_buffer.ptr_lock);
+	mutex_init(&stream->lock);
 
 	return 0;
 
@@ -3292,7 +3293,6 @@ static ssize_t i915_perf_read(struct file *file,
 			      loff_t *ppos)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct intel_gt *gt = stream->engine->gt;
 	size_t offset = 0;
 	int ret;
 
@@ -3316,14 +3316,14 @@ static ssize_t i915_perf_read(struct file *file,
 			if (ret)
 				return ret;
 
-			mutex_lock(&gt->perf.lock);
+			mutex_lock(&stream->lock);
 			ret = stream->ops->read(stream, buf, count, &offset);
-			mutex_unlock(&gt->perf.lock);
+			mutex_unlock(&stream->lock);
 		} while (!offset && !ret);
 	} else {
-		mutex_lock(&gt->perf.lock);
+		mutex_lock(&stream->lock);
 		ret = stream->ops->read(stream, buf, count, &offset);
-		mutex_unlock(&gt->perf.lock);
+		mutex_unlock(&stream->lock);
 	}
 
 	/* We allow the poll checking to sometimes report false positive EPOLLIN
@@ -3370,9 +3370,6 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
  * &i915_perf_stream_ops->poll_wait to call poll_wait() with a wait queue that
  * will be woken for new stream data.
  *
- * Note: The &gt->perf.lock mutex has been taken to serialize
- * with any non-file-operation driver hooks.
- *
  * Returns: any poll events that are ready without sleeping
  */
 static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
@@ -3411,12 +3408,11 @@ static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
 static __poll_t i915_perf_poll(struct file *file, poll_table *wait)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct intel_gt *gt = stream->engine->gt;
 	__poll_t ret;
 
-	mutex_lock(&gt->perf.lock);
+	mutex_lock(&stream->lock);
 	ret = i915_perf_poll_locked(stream, file, wait);
-	mutex_unlock(&gt->perf.lock);
+	mutex_unlock(&stream->lock);
 
 	return ret;
 }
@@ -3515,9 +3511,6 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
  * @cmd: the ioctl request
  * @arg: the ioctl data
  *
- * Note: The &gt->perf.lock mutex has been taken to serialize
- * with any non-file-operation driver hooks.
- *
  * Returns: zero on success or a negative error code. Returns -EINVAL for
  * an unknown ioctl request.
  */
@@ -3555,12 +3548,11 @@ static long i915_perf_ioctl(struct file *file,
 			    unsigned long arg)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct intel_gt *gt = stream->engine->gt;
 	long ret;
 
-	mutex_lock(&gt->perf.lock);
+	mutex_lock(&stream->lock);
 	ret = i915_perf_ioctl_locked(stream, cmd, arg);
-	mutex_unlock(&gt->perf.lock);
+	mutex_unlock(&stream->lock);
 
 	return ret;
 }
@@ -3606,6 +3598,11 @@ static int i915_perf_release(struct inode *inode, struct file *file)
 	struct i915_perf *perf = stream->perf;
 	struct intel_gt *gt = stream->engine->gt;
 
+	/*
+	 * Within this call, we know that the fd is being closed and we have no
+	 * other user of stream->lock. Use the perf lock to destroy the stream
+	 * here.
+	 */
 	mutex_lock(&gt->perf.lock);
 	i915_perf_destroy_locked(stream);
 	mutex_unlock(&gt->perf.lock);
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index e888bfab478f..dc9bfd8086cf 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -146,6 +146,11 @@ struct i915_perf_stream {
 	 */
 	struct intel_engine_cs *engine;
 
+	/*
+	 * Lock associated with operations on stream
+	 */
+	struct mutex lock;
+
 	/**
 	 * @sample_flags: Flags representing the `DRM_I915_PERF_PROP_SAMPLE_*`
 	 * properties given when opening a stream, representing the contents
-- 
2.25.1


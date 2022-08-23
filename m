Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD69659EDA1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842C210E84F;
	Tue, 23 Aug 2022 20:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F5010E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287319; x=1692823319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OsqxvWGhuApEO8B6GpuOhq85Ayq1z5xWnvfZCkI/l0s=;
 b=Y37hwkSFAxYxr8kdMpzrld9m6/G/ri/JeV12jbdQBzuVfhtRJx6+baYo
 7TzWbPz23fMeXNLoyCl+EZQHrdHCSI4GZv8XWDDNZa5sheDuwhTr7zyXQ
 ZHY14kLgcPSh4dxEwFwbBsawa+xwNgqSUpdZKsdh7o6g+xQwE6pEfjmN4
 i1Zy9urFoHjezIMGLx0Wstp+tp+IjjJSO/bCwSLGGdxuyqQGA5kQVftRT
 zWNqSzNcCFiSDOvEqYnXnItk/ClqVFxKICc7WIYlnWAXJ3pAb+SZAYTYS
 TYN41xcsA3Z+6ZpHMU+mSZLa/9sA3Y+/2+HzykRYMuEJtkvGwgqwdnvDJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="274179296"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="274179296"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:41:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815649"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:41:58 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:45 +0000
Message-Id: <20220823204155.8178-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/19] drm/i915/perf: Replace gt->perf.lock with
 stream->lock for file ops
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
---
 drivers/gpu/drm/i915/i915_perf.c       | 31 ++++++++++++--------------
 drivers/gpu/drm/i915/i915_perf_types.h |  5 +++++
 2 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 5dccb3ffffc5..87b92d2946f4 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3244,6 +3244,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->poll_check_timer.function = oa_poll_check_timer_cb;
 	init_waitqueue_head(&stream->poll_wq);
 	spin_lock_init(&stream->oa_buffer.ptr_lock);
+	mutex_init(&stream->lock);
 
 	return 0;
 
@@ -3307,7 +3308,6 @@ static ssize_t i915_perf_read(struct file *file,
 			      loff_t *ppos)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct intel_gt *gt = stream->engine->gt;
 	size_t offset = 0;
 	int ret;
 
@@ -3331,14 +3331,14 @@ static ssize_t i915_perf_read(struct file *file,
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
@@ -3385,9 +3385,6 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
  * &i915_perf_stream_ops->poll_wait to call poll_wait() with a wait queue that
  * will be woken for new stream data.
  *
- * Note: The &gt->perf.lock mutex has been taken to serialize
- * with any non-file-operation driver hooks.
- *
  * Returns: any poll events that are ready without sleeping
  */
 static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
@@ -3426,12 +3423,11 @@ static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
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
@@ -3530,9 +3526,6 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
  * @cmd: the ioctl request
  * @arg: the ioctl data
  *
- * Note: The &gt->perf.lock mutex has been taken to serialize
- * with any non-file-operation driver hooks.
- *
  * Returns: zero on success or a negative error code. Returns -EINVAL for
  * an unknown ioctl request.
  */
@@ -3570,12 +3563,11 @@ static long i915_perf_ioctl(struct file *file,
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
@@ -3621,6 +3613,11 @@ static int i915_perf_release(struct inode *inode, struct file *file)
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


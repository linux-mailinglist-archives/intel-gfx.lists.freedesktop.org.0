Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E5860EB7C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4191D10E585;
	Wed, 26 Oct 2022 22:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2E7C10E537
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 22:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666822867; x=1698358867;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=L1cDWYQev2o99tMCAGdSsoFL/Y5cYR2yrKa1j7zp/Zo=;
 b=a+/XaE4yGZ9TvS1K97MvXLHQyRI8tbUQ+fphL7FaPH9Tze6KIeFd12KH
 AeUVjdwCu8PNwHVmTUPM3n6j5LaybnFqO6QRq9XV+BUD8Q407P7FdFusU
 U4ScuLruV8k4JMpKSadbKlm+l2/Jf1BHsDGXHx05xylI0jGW8Pd00qSIr
 ZbZxm+DunkLOPW9Dh5eUy0FpiCZfogi7lFAqajiTgm+pHXLInot76s+m4
 aR/ruSk6Gvt5wKovVu08oRKrKcVvMJsRQSzBWapiJEWD16DdgvOt7wSKt
 xPGLE/AMjtftkdjPIV1veoByeu51bp5Kb66qKa6ggmxiruOrhlL18wmYF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394390429"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394390429"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721431386"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721431386"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 22:20:53 +0000
Message-Id: <20221026222102.5526-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 07/16] drm/i915/perf: Move gt-specific data
 from i915->perf to gt->perf
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

Make perf part of gt as the OAG buffer is specific to a gt. The refactor
eventually simplifies programming the right OA buffer and the right HW
registers when supporting multiple gts.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 +
 drivers/gpu/drm/i915/gt/intel_sseu.c       |  4 +-
 drivers/gpu/drm/i915/i915_perf.c           | 75 +++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h     | 39 +++++------
 drivers/gpu/drm/i915/selftests/i915_perf.c | 16 +++--
 5 files changed, 80 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 64aa2ba624fc..6f686a4244f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -20,6 +20,7 @@
 #include "intel_gsc.h"
 
 #include "i915_vma.h"
+#include "i915_perf_types.h"
 #include "intel_engine_types.h"
 #include "intel_gt_buffer_pool_types.h"
 #include "intel_hwconfig.h"
@@ -289,6 +290,8 @@ struct intel_gt {
 	/* sysfs defaults per gt */
 	struct gt_defaults defaults;
 	struct kobject *sysfs_defaults;
+
+	struct i915_perf_gt perf;
 };
 
 struct intel_gt_definition {
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 66f21c735d54..6c6198a257ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -677,8 +677,8 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
 	 * If i915/perf is active, we want a stable powergating configuration
 	 * on the system. Use the configuration pinned by i915/perf.
 	 */
-	if (i915->perf.exclusive_stream)
-		req_sseu = &i915->perf.sseu;
+	if (gt->perf.exclusive_stream)
+		req_sseu = &gt->perf.sseu;
 
 	slices = hweight8(req_sseu->slice_mask);
 	subslices = hweight8(req_sseu->subslice_mask);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 75d320b2c1f8..83c5dc043261 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1565,8 +1565,9 @@ free_noa_wait(struct i915_perf_stream *stream)
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 
-	if (WARN_ON(stream != perf->exclusive_stream))
+	if (WARN_ON(stream != gt->perf.exclusive_stream))
 		return;
 
 	/*
@@ -1575,7 +1576,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	 *
 	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
 	 */
-	WRITE_ONCE(perf->exclusive_stream, NULL);
+	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -2566,10 +2567,11 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct intel_engine_cs *engine;
+	struct intel_gt *gt = stream->engine->gt;
 	struct i915_gem_context *ctx, *cn;
 	int err;
 
-	lockdep_assert_held(&stream->perf->lock);
+	lockdep_assert_held(&gt->perf.lock);
 
 	/*
 	 * The OA register config is setup through the context image. This image
@@ -3090,6 +3092,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt;
 	int format_size;
 	int ret;
 
@@ -3098,6 +3101,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 			"OA engine not specified\n");
 		return -EINVAL;
 	}
+	gt = props->engine->gt;
 
 	/*
 	 * If the sysfs metrics/ directory wasn't registered for some
@@ -3128,7 +3132,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	 * counter reports and marshal to the appropriate client
 	 * we currently only allow exclusive access
 	 */
-	if (perf->exclusive_stream) {
+	if (gt->perf.exclusive_stream) {
 		drm_dbg(&stream->perf->i915->drm,
 			"OA unit already in use\n");
 		return -EBUSY;
@@ -3208,8 +3212,8 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 
 	stream->ops = &i915_oa_stream_ops;
 
-	perf->sseu = props->sseu;
-	WRITE_ONCE(perf->exclusive_stream, stream);
+	stream->engine->gt->perf.sseu = props->sseu;
+	WRITE_ONCE(gt->perf.exclusive_stream, stream);
 
 	ret = i915_perf_stream_enable_sync(stream);
 	if (ret) {
@@ -3231,7 +3235,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	return 0;
 
 err_enable:
-	WRITE_ONCE(perf->exclusive_stream, NULL);
+	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -3261,7 +3265,7 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 		return;
 
 	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
-	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
+	stream = READ_ONCE(engine->gt->perf.exclusive_stream);
 	if (stream && GRAPHICS_VER(stream->perf->i915) < 12)
 		gen8_update_reg_state_unlocked(ce, stream);
 }
@@ -3290,7 +3294,7 @@ static ssize_t i915_perf_read(struct file *file,
 			      loff_t *ppos)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 	size_t offset = 0;
 	int ret;
 
@@ -3314,14 +3318,14 @@ static ssize_t i915_perf_read(struct file *file,
 			if (ret)
 				return ret;
 
-			mutex_lock(&perf->lock);
+			mutex_lock(&gt->perf.lock);
 			ret = stream->ops->read(stream, buf, count, &offset);
-			mutex_unlock(&perf->lock);
+			mutex_unlock(&gt->perf.lock);
 		} while (!offset && !ret);
 	} else {
-		mutex_lock(&perf->lock);
+		mutex_lock(&gt->perf.lock);
 		ret = stream->ops->read(stream, buf, count, &offset);
-		mutex_unlock(&perf->lock);
+		mutex_unlock(&gt->perf.lock);
 	}
 
 	/* We allow the poll checking to sometimes report false positive EPOLLIN
@@ -3368,7 +3372,7 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
  * &i915_perf_stream_ops->poll_wait to call poll_wait() with a wait queue that
  * will be woken for new stream data.
  *
- * Note: The &perf->lock mutex has been taken to serialize
+ * Note: The &gt->perf.lock mutex has been taken to serialize
  * with any non-file-operation driver hooks.
  *
  * Returns: any poll events that are ready without sleeping
@@ -3409,12 +3413,12 @@ static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
 static __poll_t i915_perf_poll(struct file *file, poll_table *wait)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 	__poll_t ret;
 
-	mutex_lock(&perf->lock);
+	mutex_lock(&gt->perf.lock);
 	ret = i915_perf_poll_locked(stream, file, wait);
-	mutex_unlock(&perf->lock);
+	mutex_unlock(&gt->perf.lock);
 
 	return ret;
 }
@@ -3513,7 +3517,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
  * @cmd: the ioctl request
  * @arg: the ioctl data
  *
- * Note: The &perf->lock mutex has been taken to serialize
+ * Note: The &gt->perf.lock mutex has been taken to serialize
  * with any non-file-operation driver hooks.
  *
  * Returns: zero on success or a negative error code. Returns -EINVAL for
@@ -3553,12 +3557,12 @@ static long i915_perf_ioctl(struct file *file,
 			    unsigned long arg)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 	long ret;
 
-	mutex_lock(&perf->lock);
+	mutex_lock(&gt->perf.lock);
 	ret = i915_perf_ioctl_locked(stream, cmd, arg);
-	mutex_unlock(&perf->lock);
+	mutex_unlock(&gt->perf.lock);
 
 	return ret;
 }
@@ -3570,7 +3574,7 @@ static long i915_perf_ioctl(struct file *file,
  * Frees all resources associated with the given i915 perf @stream, disabling
  * any associated data capture in the process.
  *
- * Note: The &perf->lock mutex has been taken to serialize
+ * Note: The &gt->perf.lock mutex has been taken to serialize
  * with any non-file-operation driver hooks.
  */
 static void i915_perf_destroy_locked(struct i915_perf_stream *stream)
@@ -3602,10 +3606,11 @@ static int i915_perf_release(struct inode *inode, struct file *file)
 {
 	struct i915_perf_stream *stream = file->private_data;
 	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 
-	mutex_lock(&perf->lock);
+	mutex_lock(&gt->perf.lock);
 	i915_perf_destroy_locked(stream);
-	mutex_unlock(&perf->lock);
+	mutex_unlock(&gt->perf.lock);
 
 	/* Release the reference the perf stream kept on the driver. */
 	drm_dev_put(&perf->i915->drm);
@@ -3638,7 +3643,7 @@ static const struct file_operations fops = {
  * See i915_perf_ioctl_open() for interface details.
  *
  * Implements further stream config validation and stream initialization on
- * behalf of i915_perf_open_ioctl() with the &perf->lock mutex
+ * behalf of i915_perf_open_ioctl() with the &gt->perf.lock mutex
  * taken to serialize with any non-file-operation driver hooks.
  *
  * Note: at this point the @props have only been validated in isolation and
@@ -4022,7 +4027,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
  * mutex to avoid an awkward lockdep with mmap_lock.
  *
  * Most of the implementation details are handled by
- * i915_perf_open_ioctl_locked() after taking the &perf->lock
+ * i915_perf_open_ioctl_locked() after taking the &gt->perf.lock
  * mutex for serializing with any non-file-operation driver hooks.
  *
  * Return: A newly opened i915 Perf stream file descriptor or negative
@@ -4033,6 +4038,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 {
 	struct i915_perf *perf = &to_i915(dev)->perf;
 	struct drm_i915_perf_open_param *param = data;
+	struct intel_gt *gt;
 	struct perf_open_properties props;
 	u32 known_open_flags;
 	int ret;
@@ -4059,9 +4065,11 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		return ret;
 
-	mutex_lock(&perf->lock);
+	gt = props.engine->gt;
+
+	mutex_lock(&gt->perf.lock);
 	ret = i915_perf_open_ioctl_locked(perf, param, &props, file);
-	mutex_unlock(&perf->lock);
+	mutex_unlock(&gt->perf.lock);
 
 	return ret;
 }
@@ -4077,6 +4085,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 void i915_perf_register(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (!perf->i915)
 		return;
@@ -4085,13 +4094,13 @@ void i915_perf_register(struct drm_i915_private *i915)
 	 * i915_perf_open_ioctl(); considering that we register after
 	 * being exposed to userspace.
 	 */
-	mutex_lock(&perf->lock);
+	mutex_lock(&gt->perf.lock);
 
 	perf->metrics_kobj =
 		kobject_create_and_add("metrics",
 				       &i915->drm.primary->kdev->kobj);
 
-	mutex_unlock(&perf->lock);
+	mutex_unlock(&gt->perf.lock);
 }
 
 /**
@@ -4768,7 +4777,11 @@ void i915_perf_init(struct drm_i915_private *i915)
 	}
 
 	if (perf->ops.enable_metric_set) {
-		mutex_init(&perf->lock);
+		struct intel_gt *gt;
+		int i;
+
+		for_each_gt(gt, i915, i)
+			mutex_init(&gt->perf.lock);
 
 		/* Choose a representative limit */
 		oa_sample_rate_hard_limit = to_gt(i915)->clock_frequency / 2;
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 05cb9a335a97..e888bfab478f 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -380,6 +380,26 @@ struct i915_oa_ops {
 	u32 (*oa_hw_tail_read)(struct i915_perf_stream *stream);
 };
 
+struct i915_perf_gt {
+	/*
+	 * Lock associated with anything below within this structure.
+	 */
+	struct mutex lock;
+
+	/**
+	 * @sseu: sseu configuration selected to run while perf is active,
+	 * applies to all contexts.
+	 */
+	struct intel_sseu sseu;
+
+	/*
+	 * @exclusive_stream: The stream currently using the OA unit. This is
+	 * sometimes accessed outside a syscall associated to its file
+	 * descriptor.
+	 */
+	struct i915_perf_stream *exclusive_stream;
+};
+
 struct i915_perf {
 	struct drm_i915_private *i915;
 
@@ -397,25 +417,6 @@ struct i915_perf {
 	 */
 	struct idr metrics_idr;
 
-	/*
-	 * Lock associated with anything below within this structure
-	 * except exclusive_stream.
-	 */
-	struct mutex lock;
-
-	/*
-	 * The stream currently using the OA unit. If accessed
-	 * outside a syscall associated to its file
-	 * descriptor.
-	 */
-	struct i915_perf_stream *exclusive_stream;
-
-	/**
-	 * @sseu: sseu configuration selected to run while perf is active,
-	 * applies to all contexts.
-	 */
-	struct intel_sseu sseu;
-
 	/**
 	 * For rate limiting any notifications of spurious
 	 * invalid OA reports
diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index 429c6d73b159..24dde5531423 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -102,6 +102,12 @@ test_stream(struct i915_perf *perf)
 		I915_OA_FORMAT_A32u40_A4u32_B8_C8 : I915_OA_FORMAT_C4_B8,
 	};
 	struct i915_perf_stream *stream;
+	struct intel_gt *gt;
+
+	if (!props.engine)
+		return NULL;
+
+	gt = props.engine->gt;
 
 	if (!oa_config)
 		return NULL;
@@ -116,12 +122,12 @@ test_stream(struct i915_perf *perf)
 
 	stream->perf = perf;
 
-	mutex_lock(&perf->lock);
+	mutex_lock(&gt->perf.lock);
 	if (i915_oa_stream_init(stream, &param, &props)) {
 		kfree(stream);
 		stream =  NULL;
 	}
-	mutex_unlock(&perf->lock);
+	mutex_unlock(&gt->perf.lock);
 
 	i915_oa_config_put(oa_config);
 
@@ -130,11 +136,11 @@ test_stream(struct i915_perf *perf)
 
 static void stream_destroy(struct i915_perf_stream *stream)
 {
-	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 
-	mutex_lock(&perf->lock);
+	mutex_lock(&gt->perf.lock);
 	i915_perf_destroy_locked(stream);
-	mutex_unlock(&perf->lock);
+	mutex_unlock(&gt->perf.lock);
 }
 
 static int live_sanitycheck(void *arg)
-- 
2.25.1


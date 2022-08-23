Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE1559CCC8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D86BA74DA;
	Tue, 23 Aug 2022 00:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D21EA74B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213025; x=1692749025;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=R7pbiQKVf5BJtP4gqZi/1/BmxD6hMhgVIHv+S27rLpA=;
 b=k1GWL4BpJxO9Vi69wy2Uc2UgdSfugLNdXkNtU7ZhrD1bCTRFhL7hWvde
 +OgaWu+/AY9f3qylX3LL2fX7BTNSQGDQBHoeHzpeY1MJvyndELmZaoVbs
 62/pKasKh5fVg8zeFu8A6bXE/sRVN7wA1YxRk06MmqLmtg4a7+2z2vRub
 JjTUySECZ7ppCOwwcFMMKDkRdxuc9wJ59L9oK8ZrLYTAqGn37HAPdVq3L
 izNnRep5O/hHdpAhCKCjndLdmtWvNBvr38Z9UGWzg+bdUUyzLqW9EaKQM
 Y96cPzrpV/na+zlc7w4IUPKVlkK62G/iQ00boRJM2uPEf4IiTQpQneS2b g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304834"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304834"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775530"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:31 +0000
Message-Id: <20220823000342.281222-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/19] drm/i915/perf: Move gt-specific data from
 i915->perf to gt->perf
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
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 +
 drivers/gpu/drm/i915/gt/intel_sseu.c       |  4 +-
 drivers/gpu/drm/i915/i915_perf.c           | 75 +++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h     | 39 +++++------
 drivers/gpu/drm/i915/selftests/i915_perf.c | 16 +++--
 5 files changed, 80 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 4d56f7d5a3be..3d079d206cec 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -20,6 +20,7 @@
 #include "intel_gsc.h"
 
 #include "i915_vma.h"
+#include "i915_perf_types.h"
 #include "intel_engine_types.h"
 #include "intel_gt_buffer_pool_types.h"
 #include "intel_hwconfig.h"
@@ -260,6 +261,8 @@ struct intel_gt {
 	/* sysfs defaults per gt */
 	struct gt_defaults defaults;
 	struct kobject *sysfs_defaults;
+
+	struct i915_perf_gt perf;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index c6d3050604c8..fcaf3c58b554 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -678,8 +678,8 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
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
index 7920b91e1c6b..a96085058942 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1578,8 +1578,9 @@ free_noa_wait(struct i915_perf_stream *stream)
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 
-	BUG_ON(stream != perf->exclusive_stream);
+	BUG_ON(stream != gt->perf.exclusive_stream);
 
 	/*
 	 * Unset exclusive_stream first, it will be checked while disabling
@@ -1587,7 +1588,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	 *
 	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
 	 */
-	WRITE_ONCE(perf->exclusive_stream, NULL);
+	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -2580,10 +2581,11 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
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
@@ -3104,6 +3106,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt;
 	int format_size;
 	int ret;
 
@@ -3112,6 +3115,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 			"OA engine not specified\n");
 		return -EINVAL;
 	}
+	gt = props->engine->gt;
 
 	/*
 	 * If the sysfs metrics/ directory wasn't registered for some
@@ -3142,7 +3146,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	 * counter reports and marshal to the appropriate client
 	 * we currently only allow exclusive access
 	 */
-	if (perf->exclusive_stream) {
+	if (gt->perf.exclusive_stream) {
 		drm_dbg(&stream->perf->i915->drm,
 			"OA unit already in use\n");
 		return -EBUSY;
@@ -3222,8 +3226,8 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 
 	stream->ops = &i915_oa_stream_ops;
 
-	perf->sseu = props->sseu;
-	WRITE_ONCE(perf->exclusive_stream, stream);
+	stream->engine->gt->perf.sseu = props->sseu;
+	WRITE_ONCE(gt->perf.exclusive_stream, stream);
 
 	ret = i915_perf_stream_enable_sync(stream);
 	if (ret) {
@@ -3245,7 +3249,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	return 0;
 
 err_enable:
-	WRITE_ONCE(perf->exclusive_stream, NULL);
+	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -3275,7 +3279,7 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 		return;
 
 	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
-	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
+	stream = READ_ONCE(engine->gt->perf.exclusive_stream);
 	if (stream && GRAPHICS_VER(stream->perf->i915) < 12)
 		gen8_update_reg_state_unlocked(ce, stream);
 }
@@ -3304,7 +3308,7 @@ static ssize_t i915_perf_read(struct file *file,
 			      loff_t *ppos)
 {
 	struct i915_perf_stream *stream = file->private_data;
-	struct i915_perf *perf = stream->perf;
+	struct intel_gt *gt = stream->engine->gt;
 	size_t offset = 0;
 	int ret;
 
@@ -3328,14 +3332,14 @@ static ssize_t i915_perf_read(struct file *file,
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
@@ -3382,7 +3386,7 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
  * &i915_perf_stream_ops->poll_wait to call poll_wait() with a wait queue that
  * will be woken for new stream data.
  *
- * Note: The &perf->lock mutex has been taken to serialize
+ * Note: The &gt->perf.lock mutex has been taken to serialize
  * with any non-file-operation driver hooks.
  *
  * Returns: any poll events that are ready without sleeping
@@ -3423,12 +3427,12 @@ static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
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
@@ -3527,7 +3531,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
  * @cmd: the ioctl request
  * @arg: the ioctl data
  *
- * Note: The &perf->lock mutex has been taken to serialize
+ * Note: The &gt->perf.lock mutex has been taken to serialize
  * with any non-file-operation driver hooks.
  *
  * Returns: zero on success or a negative error code. Returns -EINVAL for
@@ -3567,12 +3571,12 @@ static long i915_perf_ioctl(struct file *file,
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
@@ -3584,7 +3588,7 @@ static long i915_perf_ioctl(struct file *file,
  * Frees all resources associated with the given i915 perf @stream, disabling
  * any associated data capture in the process.
  *
- * Note: The &perf->lock mutex has been taken to serialize
+ * Note: The &gt->perf.lock mutex has been taken to serialize
  * with any non-file-operation driver hooks.
  */
 static void i915_perf_destroy_locked(struct i915_perf_stream *stream)
@@ -3616,10 +3620,11 @@ static int i915_perf_release(struct inode *inode, struct file *file)
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
@@ -3652,7 +3657,7 @@ static const struct file_operations fops = {
  * See i915_perf_ioctl_open() for interface details.
  *
  * Implements further stream config validation and stream initialization on
- * behalf of i915_perf_open_ioctl() with the &perf->lock mutex
+ * behalf of i915_perf_open_ioctl() with the &gt->perf.lock mutex
  * taken to serialize with any non-file-operation driver hooks.
  *
  * Note: at this point the @props have only been validated in isolation and
@@ -4036,7 +4041,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
  * mutex to avoid an awkward lockdep with mmap_lock.
  *
  * Most of the implementation details are handled by
- * i915_perf_open_ioctl_locked() after taking the &perf->lock
+ * i915_perf_open_ioctl_locked() after taking the &gt->perf.lock
  * mutex for serializing with any non-file-operation driver hooks.
  *
  * Return: A newly opened i915 Perf stream file descriptor or negative
@@ -4047,6 +4052,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 {
 	struct i915_perf *perf = &to_i915(dev)->perf;
 	struct drm_i915_perf_open_param *param = data;
+	struct intel_gt *gt;
 	struct perf_open_properties props;
 	u32 known_open_flags;
 	int ret;
@@ -4073,9 +4079,11 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
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
@@ -4091,6 +4099,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 void i915_perf_register(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
+	struct intel_gt *gt = to_gt(i915);
 
 	if (!perf->i915)
 		return;
@@ -4099,13 +4108,13 @@ void i915_perf_register(struct drm_i915_private *i915)
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
@@ -4784,7 +4793,11 @@ void i915_perf_init(struct drm_i915_private *i915)
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
index 88db2e3d81d0..4103846bc145 100644
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D37D0178582
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD336E970;
	Tue,  3 Mar 2020 22:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163F06E96B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:19:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 14:19:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="232413678"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2020 14:19:06 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue,  3 Mar 2020 14:19:02 -0800
Message-Id: <20200303221905.25866-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/perf: add new open param to
 configure polling of OA buffer
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

From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

This new parameter let's the application choose how often the OA
buffer should be checked on the CPU side for data availability. Longer
polling period tend to reduce CPU overhead if the application does not
care about somewhat real time data collection.

v2: Allow disabling polling completely with 0 value (Lionel)
v3: Version the new parameter (Joonas)
v4: Rebase (Umesh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 48 +++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_perf_types.h |  6 ++++
 include/uapi/drm/i915_drm.h            | 10 ++++++
 3 files changed, 56 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 21a63644846f..cf4176f4d11d 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -262,11 +262,11 @@
  */
 #define OA_TAIL_MARGIN_NSEC	100000ULL
 
-/* frequency for checking whether the OA unit has written new reports to the
- * circular OA buffer...
+/* The default frequency for checking whether the OA unit has written new
+ * reports to the circular OA buffer...
  */
-#define POLL_FREQUENCY 200
-#define POLL_PERIOD (NSEC_PER_SEC / POLL_FREQUENCY)
+#define DEFAULT_POLL_FREQUENCY 200
+#define DEFAULT_POLL_PERIOD (NSEC_PER_SEC / DEFAULT_POLL_FREQUENCY)
 
 /* for sysctl proc_dointvec_minmax of dev.i915.perf_stream_paranoid */
 static u32 i915_perf_stream_paranoid = true;
@@ -349,6 +349,8 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
  * @oa_periodic: Whether to enable periodic OA unit sampling
  * @oa_period_exponent: The OA unit sampling period is derived from this
  * @engine: The engine (typically rcs0) being monitored by the OA unit
+ * @poll_oa_period: The period at which the CPU will check for OA data
+ * availability
  *
  * As read_properties_unlocked() enumerates and validates the properties given
  * to open a stream of metrics the configuration is built up in the structure
@@ -368,6 +370,7 @@ struct perf_open_properties {
 	int oa_period_exponent;
 
 	struct intel_engine_cs *engine;
+	u64 poll_oa_period;
 };
 
 struct i915_oa_config_bo {
@@ -2642,9 +2645,9 @@ static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 
 	stream->perf->ops.oa_enable(stream);
 
-	if (stream->periodic)
+	if (stream->periodic && stream->poll_oa_period)
 		hrtimer_start(&stream->poll_check_timer,
-			      ns_to_ktime(POLL_PERIOD),
+			      ns_to_ktime(stream->poll_oa_period),
 			      HRTIMER_MODE_REL_PINNED);
 }
 
@@ -3044,7 +3047,8 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
 		wake_up(&stream->poll_wq);
 	}
 
-	hrtimer_forward_now(hrtimer, ns_to_ktime(POLL_PERIOD));
+	hrtimer_forward_now(hrtimer,
+			    ns_to_ktime(stream->poll_oa_period));
 
 	return HRTIMER_RESTART;
 }
@@ -3425,6 +3429,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
 	stream->perf = perf;
 	stream->ctx = specific_ctx;
+	stream->poll_oa_period = props->poll_oa_period;
 
 	ret = i915_oa_stream_init(stream, param, props);
 	if (ret)
@@ -3481,6 +3486,7 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
 /**
  * read_properties_unlocked - validate + copy userspace stream open properties
  * @perf: i915 perf instance
+ * @open_flags: Flags set by userspace for the opening of the stream
  * @uprops: The array of u64 key value pairs given by userspace
  * @n_props: The number of key value pairs expected in @uprops
  * @props: The stream configuration built up while validating properties
@@ -3494,6 +3500,7 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
  * rule out defining new properties with ordering requirements in the future.
  */
 static int read_properties_unlocked(struct i915_perf *perf,
+				    u32 open_flags,
 				    u64 __user *uprops,
 				    u32 n_props,
 				    struct perf_open_properties *props)
@@ -3502,6 +3509,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	u32 i;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
+	props->poll_oa_period = DEFAULT_POLL_PERIOD;
 
 	if (!n_props) {
 		DRM_DEBUG("No i915 perf properties given\n");
@@ -3617,6 +3625,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		case DRM_I915_PERF_PROP_HOLD_PREEMPTION:
 			props->hold_preemption = !!value;
 			break;
+		case DRM_I915_PERF_PROP_POLL_OA_DELAY:
+			if (value > 0 && value < 100000 /* 100us */) {
+				DRM_DEBUG("OA availability timer too small (%lluns < 100us)\n",
+					  value);
+				return -EINVAL;
+			}
+			props->poll_oa_period = value;
+			break;
 		case DRM_I915_PERF_PROP_MAX:
 			MISSING_CASE(id);
 			return -EINVAL;
@@ -3625,6 +3641,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	/*
+	 * Blocking read need to be waken up by some mechanism. If no polling
+	 * of the HEAD/TAIL register is done by the kernel, we'll never be
+	 * able to wake up.
+	 */
+	if ((open_flags & I915_PERF_FLAG_FD_NONBLOCK) == 0 &&
+	    !props->poll_oa_period) {
+		DRM_DEBUG("Requesting a blocking stream with no polling period.\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
@@ -3675,6 +3702,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 	}
 
 	ret = read_properties_unlocked(perf,
+				       param->flags,
 				       u64_to_user_ptr(param->properties_ptr),
 				       param->num_properties,
 				       &props);
@@ -4457,8 +4485,12 @@ int i915_perf_ioctl_version(void)
 	 *    preemption on a particular context so that performance data is
 	 *    accessible from a delta of MI_RPC reports without looking at the
 	 *    OA buffer.
+	 *
+	 * 4: Add DRM_I915_PERF_PROP_POLL_OA_DELAY parameter that controls
+	 *    enable/disable as well as the interval for the hrtimer used to
+	 *    check for OA data.
 	 */
-	return 3;
+	return 4;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 9ee7c58e70d5..01559ead22e2 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -304,6 +304,12 @@ struct i915_perf_stream {
 	 * reprogrammed.
 	 */
 	struct i915_vma *noa_wait;
+
+	/**
+	 * @poll_oa_period: The period in nanoseconds at which the OA
+	 * buffer should be checked for available data.
+	 */
+	u64 poll_oa_period;
 };
 
 /**
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 2813e579b480..131cb237d19c 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1969,6 +1969,16 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_HOLD_PREEMPTION,
 
+	/**
+	 * Specifying this property sets up a hrtimer in nanoseconds at which
+	 * the i915 driver will check the OA buffer for available data. A
+	 * value of 0 means no hrtimer will be started. Values below 100
+	 * microseconds are not allowed.
+	 *
+	 * This property is available in perf revision 4.
+	 */
+	DRM_I915_PERF_PROP_POLL_OA_DELAY,
+
 	DRM_I915_PERF_PROP_MAX /* non-ABI */
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

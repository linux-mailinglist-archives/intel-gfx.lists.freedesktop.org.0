Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5681A691C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 17:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D74289E86;
	Mon, 13 Apr 2020 15:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFF289DD5
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 15:48:24 +0000 (UTC)
IronPort-SDR: 2kjTC8QU0GhJmV/O5b3IP2x8UK5xTaf1dW6HROG/9BMKRhl/kHTtvGY80/71X5BdhYFAL/37Vb
 Vy6Io1j0GFyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 08:48:23 -0700
IronPort-SDR: VD2KrIm1dKvvk7wCmxTjQCglCQd4kg+BcbYi06cvyaUA4ndLJBQYhoUP3NBTWgQXDS6zQgvQp0
 ip4leI/w41sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="241695654"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by orsmga007.jf.intel.com with ESMTP; 13 Apr 2020 08:48:22 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 13 Apr 2020 08:48:22 -0700
Message-Id: <20200413154822.11620-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/perf: add interrupt enabling
 parameter
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

This let's the application choose to be driven by the interrupt
mechanism of the HW. In conjunction with long periods for checks for
the availability of data on the CPU, this can reduce the CPU load when
doing capture of OA data.

v2: Version the new parameter (Joonas)
v3: Rebase (Umesh)
v4: Disable hrtimer if poll oa period is zero

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 64 +++++++++++++++++++++++++++-----
 include/uapi/drm/i915_drm.h      | 13 ++++++-
 2 files changed, 67 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index a9423af67bb8..d3396129d828 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -463,6 +463,7 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
  */
 static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 {
+	u64 half_full_count = atomic64_read(&stream->half_full_count);
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	int report_size = stream->oa_buffer.format_size;
 	unsigned long flags;
@@ -539,6 +540,8 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
 			  stream->oa_buffer.head - gtt_offset) >= report_size;
 
+	stream->half_full_count_last = half_full_count;
+
 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
 	return pollin;
@@ -556,16 +559,23 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
  * waiting on an event to occur. These checks are redundant when hrtimer events
  * will call oa_buffer_check_unlocked to update the oa_buffer tail pointers. The
  * redundant checks add cpu overhead. We simplify the check to reduce cpu
- * overhead.
+ * overhead. For interrupt events, we still need to make sure that
+ * oa_buffer_check_unlocked is called when an interrupt occurs.
  */
 static bool oa_buffer_check_reports(struct i915_perf_stream *stream)
 {
 	unsigned long flags;
 	bool available;
 
-	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
-	available = stream->oa_buffer.tail != stream->oa_buffer.head;
-	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
+	if (!stream->oa_interrupt_monitor) {
+		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
+		available = stream->oa_buffer.tail != stream->oa_buffer.head;
+		spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
+	} else {
+		if (stream->half_full_count_last !=
+		    atomic64_read(&stream->half_full_count))
+			available = oa_buffer_check_unlocked(stream);
+	}
 
 	return available;
 }
@@ -1163,8 +1173,8 @@ static int gen7_oa_read(struct i915_perf_stream *stream,
  * @stream: An i915-perf stream opened for OA metrics
  *
  * Called when userspace tries to read() from a blocking stream FD opened
- * for OA metrics. It waits until the hrtimer callback finds a non-empty
- * OA buffer and wakes us.
+ * for OA metrics. It waits until either the hrtimer callback finds a non-empty
+ * OA buffer or the OA interrupt kicks in and wakes us.
  *
  * Note: it's acceptable to have this return with some false positives
  * since any subsequent read handling will return -EAGAIN if there isn't
@@ -2696,7 +2706,7 @@ static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 
 	stream->perf->ops.oa_enable(stream);
 
-	if (stream->periodic)
+	if (stream->periodic && stream->poll_oa_period)
 		hrtimer_start(&stream->poll_check_timer,
 			      ns_to_ktime(stream->poll_oa_period),
 			      HRTIMER_MODE_REL_PINNED);
@@ -2770,6 +2780,10 @@ static void i915_oa_stream_disable(struct i915_perf_stream *stream)
 {
 	stream->perf->ops.oa_disable(stream);
 
+	stream->half_full_count_last = 0;
+	atomic64_set(&stream->half_full_count,
+		     stream->half_full_count_last);
+
 	if (stream->periodic)
 		hrtimer_cancel(&stream->poll_check_timer);
 }
@@ -3137,6 +3151,16 @@ static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
 
 	stream->ops->poll_wait(stream, file, wait);
 
+	/*
+	 * Only check the half buffer full notifications if requested by the
+	 * user.
+	 */
+	if (stream->oa_interrupt_monitor &&
+	    (stream->half_full_count_last !=
+	     atomic64_read(&stream->half_full_count))) {
+		stream->pollin = oa_buffer_check_unlocked(stream);
+	}
+
 	/* Note: we don't explicitly check whether there's something to read
 	 * here since this path may be very hot depending on what else
 	 * userspace is polling, or on the timeout in use. We rely solely on
@@ -3554,6 +3578,7 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
 /**
  * read_properties_unlocked - validate + copy userspace stream open properties
  * @perf: i915 perf instance
+ * @open_flags: Flags set by userspace for the opening of the stream
  * @uprops: The array of u64 key value pairs given by userspace
  * @n_props: The number of key value pairs expected in @uprops
  * @props: The stream configuration built up while validating properties
@@ -3567,6 +3592,7 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
  * rule out defining new properties with ordering requirements in the future.
  */
 static int read_properties_unlocked(struct i915_perf *perf,
+				    u32 open_flags,
 				    u64 __user *uprops,
 				    u32 n_props,
 				    struct perf_open_properties *props)
@@ -3710,13 +3736,16 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			break;
 		}
 		case DRM_I915_PERF_PROP_POLL_OA_PERIOD:
-			if (value < 100000 /* 100us */) {
+			if (value > 0 && value < 100000 /* 100us */) {
 				DRM_DEBUG("OA availability timer too small (%lluns < 100us)\n",
 					  value);
 				return -EINVAL;
 			}
 			props->poll_oa_period = value;
 			break;
+		case DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT:
+			props->oa_interrupt_monitor = value != 0;
+			break;
 		case DRM_I915_PERF_PROP_MAX:
 			MISSING_CASE(id);
 			return -EINVAL;
@@ -3725,6 +3754,19 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	/*
+	 * Blocking read need to be waken up by some mechanism. If no polling
+	 * of the HEAD/TAIL register is done by the kernel and no interrupt is
+	 * enabled, we'll never be able to wake up.
+	 */
+	if ((open_flags & I915_PERF_FLAG_FD_NONBLOCK) == 0 &&
+	    !props->poll_oa_period &&
+	    !props->oa_interrupt_monitor) {
+		DRM_DEBUG("Requesting a blocking stream with no polling period "
+			  "& no interrupt.\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
@@ -3775,6 +3817,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 	}
 
 	ret = read_properties_unlocked(perf,
+				       param->flags,
 				       u64_to_user_ptr(param->properties_ptr),
 				       param->num_properties,
 				       &props);
@@ -4502,8 +4545,11 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6: Add DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT parameter to
+	 *    enable/disable interrupts in OA.
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 14b67cd6b54b..947e65b937eb 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1987,12 +1987,23 @@ enum drm_i915_perf_property_id {
 	 * the driver if this parameter is not specified. Note that larger timer
 	 * values will reduce cpu consumption during OA perf captures. However,
 	 * excessively large values would potentially result in OA buffer
-	 * overwrites as captures reach end of the OA buffer.
+	 * overwrites as captures reach end of the OA buffer. A value of 0 means
+	 * no hrtimer will be started.
 	 *
 	 * This property is available in perf revision 5.
 	 */
 	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
 
+	/**
+	 * Specifying this property sets up the interrupt mechanism for the OA
+	 * buffer in i915. This option in conjunction with a long polling period
+	 * for avaibility of OA data can reduce CPU load significantly if you
+	 * do not care about OA data being read as soon as it's available.
+	 *
+	 * This property is available in perf revision 6.
+	 */
+	DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT,
+
 	DRM_I915_PERF_PROP_MAX /* non-ABI */
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

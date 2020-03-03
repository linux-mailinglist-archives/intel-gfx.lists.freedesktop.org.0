Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D318178584
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF6E86E97B;
	Tue,  3 Mar 2020 22:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6926F6E96E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:19:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 14:19:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="232413684"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2020 14:19:06 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue,  3 Mar 2020 14:19:04 -0800
Message-Id: <20200303221905.25866-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/perf: add interrupt enabling
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
mechanism of the HW. In conjuction with long periods for checks for
the availability of data on the CPU, this can reduce the CPU load when
doing capture of OA data.

v2: Version the new parameter (Joonas)
v3: Rebase (Umesh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 58 +++++++++++++++++++++++---------
 include/uapi/drm/i915_drm.h      | 10 ++++++
 2 files changed, 53 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 502961da840d..ab41cba85b40 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -252,7 +252,7 @@
  * oa_buffer_check().
  *
  * Most of the implementation details for this workaround are in
- * oa_buffer_check_unlocked() and _append_oa_reports()
+ * oa_buffer_check() and _append_oa_reports()
  *
  * Note for posterity: previously the driver used to define an effective tail
  * pointer that lagged the real pointer by a 'tail margin' measured in bytes
@@ -447,8 +447,9 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
 }
 
 /**
- * oa_buffer_check_unlocked - check for data and update tail ptr state
+ * oa_buffer_check - check for data and update tail ptr state
  * @stream: i915 stream instance
+ * @lock: whether to take the oa_buffer spin lock
  *
  * This is either called via fops (for blocking reads in user ctx) or the poll
  * check hrtimer (atomic ctx) to check the OA buffer tail pointer and check
@@ -470,8 +471,9 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
  *
  * Returns: %true if the OA buffer contains data, else %false
  */
-static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
+static bool oa_buffer_check(struct i915_perf_stream *stream, bool lock)
 {
+	u64 half_full_count = atomic64_read(&stream->half_full_count);
 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 	int report_size = stream->oa_buffer.format_size;
 	unsigned long flags;
@@ -482,7 +484,8 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	 * could result in an OA buffer reset which might reset the head,
 	 * tails[] and aged_tail state.
 	 */
-	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
+	if (lock)
+		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
 
 	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
 
@@ -558,7 +561,10 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 		stream->oa_buffer.aging_timestamp = now;
 	}
 
-	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
+	stream->half_full_count_last = half_full_count;
+
+	if (lock)
+		spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 
 	return OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
 			stream->oa_buffer.head - gtt_offset) >= report_size;
@@ -1169,9 +1175,9 @@ static int gen7_oa_read(struct i915_perf_stream *stream,
  * i915_oa_wait_unlocked - handles blocking IO until OA data available
  * @stream: An i915-perf stream opened for OA metrics
  *
- * Called when userspace tries to read() from a blocking stream FD opened
- * for OA metrics. It waits until the hrtimer callback finds a non-empty
- * OA buffer and wakes us.
+ * Called when userspace tries to read() from a blocking stream FD opened for
+ * OA metrics. It waits until either the hrtimer callback finds a non-empty OA
+ * buffer or the OA interrupt kicks in and wakes us.
  *
  * Note: it's acceptable to have this return with some false positives
  * since any subsequent read handling will return -EAGAIN if there isn't
@@ -1186,7 +1192,7 @@ static int i915_oa_wait_unlocked(struct i915_perf_stream *stream)
 		return -EIO;
 
 	return wait_event_interruptible(stream->poll_wq,
-					oa_buffer_check_unlocked(stream));
+					oa_buffer_check(stream, true));
 }
 
 /**
@@ -2733,6 +2739,10 @@ static void i915_oa_stream_disable(struct i915_perf_stream *stream)
 {
 	stream->perf->ops.oa_disable(stream);
 
+	stream->half_full_count_last = 0;
+	atomic64_set(&stream->half_full_count,
+		     stream->half_full_count_last);
+
 	if (stream->periodic)
 		hrtimer_cancel(&stream->poll_check_timer);
 }
@@ -3075,7 +3085,7 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
 	struct i915_perf_stream *stream =
 		container_of(hrtimer, typeof(*stream), poll_check_timer);
 
-	if (oa_buffer_check_unlocked(stream)) {
+	if (oa_buffer_check(stream, true)) {
 		stream->pollin = true;
 		wake_up(&stream->poll_wq);
 	}
@@ -3109,6 +3119,16 @@ static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
 
 	stream->ops->poll_wait(stream, file, wait);
 
+	/*
+	 * Only check the half buffer full notifications if requested by the
+	 * user.
+	 */
+	if (stream->oa_interrupt_monitor &&
+	    (stream->half_full_count_last !=
+	     atomic64_read(&stream->half_full_count))) {
+		stream->pollin = oa_buffer_check(stream, true);
+	}
+
 	/* Note: we don't explicitly check whether there's something to read
 	 * here since this path may be very hot depending on what else
 	 * userspace is polling, or on the timeout in use. We rely solely on
@@ -3667,6 +3687,9 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			}
 			props->poll_oa_period = value;
 			break;
+		case DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT:
+			props->oa_interrupt_monitor = value != 0;
+			break;
 		case DRM_I915_PERF_PROP_MAX:
 			MISSING_CASE(id);
 			return -EINVAL;
@@ -3677,12 +3700,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
 
 	/*
 	 * Blocking read need to be waken up by some mechanism. If no polling
-	 * of the HEAD/TAIL register is done by the kernel, we'll never be
-	 * able to wake up.
+	 * of the HEAD/TAIL register is done by the kernel and no interrupt is
+	 * enabled, we'll never be able to wake up.
 	 */
 	if ((open_flags & I915_PERF_FLAG_FD_NONBLOCK) == 0 &&
-	    !props->poll_oa_period) {
-		DRM_DEBUG("Requesting a blocking stream with no polling period.\n");
+	    !props->poll_oa_period &&
+	    !props->oa_interrupt_monitor) {
+		DRM_DEBUG("Requesting a blocking stream with no polling period "
+			  "& no interrupt.\n");
 		return -EINVAL;
 	}
 
@@ -4523,8 +4548,11 @@ int i915_perf_ioctl_version(void)
 	 * 4: Add DRM_I915_PERF_PROP_POLL_OA_DELAY parameter that controls
 	 *    enable/disable as well as the interval for the hrtimer used to
 	 *    check for OA data.
+	 *
+	 * 5: Add DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT paramter to
+	 *    enable/disable interrupts in OA.
 	 */
-	return 4;
+	return 5;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 131cb237d19c..f609ff4ceccb 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1979,6 +1979,16 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_POLL_OA_DELAY,
 
+	/**
+	 * Specifying this property sets up the interrupt mechanism for the OA
+	 * buffer in i915. This option in conjuction with a long polling delay
+	 * for avaibility of OA data can reduce CPU load significantly if you
+	 * do not care about OA data being read as soon as it's available.
+	 *
+	 * This property is available in perf revision 5.
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

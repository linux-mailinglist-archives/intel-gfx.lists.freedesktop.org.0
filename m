Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF5A178583
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:19:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02286E972;
	Tue,  3 Mar 2020 22:19:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B246E972
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:19:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 14:19:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="232413687"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2020 14:19:06 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue,  3 Mar 2020 14:19:05 -0800
Message-Id: <20200303221905.25866-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/perf: add flushing ioctl
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

With the currently available parameters for the i915-perf stream,
there are still situations that are not well covered :

If an application opens the stream with polling disable or at very low
frequency and OA interrupt enabled, no data will be available even
though somewhere between nothing and half of the OA buffer worth of
data might have landed in memory.

To solve this issue we have a new flush ioctl on the perf stream that
forces the i915-perf driver to look at the state of the buffer when
called and makes any data available through both poll() & read() type
syscalls.

v2: Version the ioctl (Joonas)
v3: Rebase (Umesh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 18 ++++++++++++++++++
 include/uapi/drm/i915_drm.h      | 21 +++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index ab41cba85b40..b6cb47e80b86 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3221,6 +3221,18 @@ static void i915_perf_disable_locked(struct i915_perf_stream *stream)
 		stream->ops->disable(stream);
 }
 
+/**
+ * i915_perf_flush_data - handle `I915_PERF_IOCTL_FLUSH_DATA` ioctl
+ * @stream: An enabled i915 perf stream
+ *
+ * The intention is to flush all the data available for reading from the OA
+ * buffer
+ */
+static void i915_perf_flush_data(struct i915_perf_stream *stream)
+{
+	stream->pollin = oa_buffer_check(stream, true);
+}
+
 static long i915_perf_config_locked(struct i915_perf_stream *stream,
 				    unsigned long metrics_set)
 {
@@ -3282,6 +3294,9 @@ static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
 		return 0;
 	case I915_PERF_IOCTL_CONFIG:
 		return i915_perf_config_locked(stream, arg);
+	case I915_PERF_IOCTL_FLUSH_DATA:
+		i915_perf_flush_data(stream);
+		return 0;
 	}
 
 	return -EINVAL;
@@ -4551,6 +4566,9 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT paramter to
 	 *    enable/disable interrupts in OA.
+	 *
+	 * 6: Add ioctl to flush OA data before reading.
+	 *    I915_PERF_IOCTL_FLUSH_DATA
 	 */
 	return 5;
 }
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index f609ff4ceccb..3fd6bb189248 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2044,6 +2044,27 @@ struct drm_i915_perf_open_param {
  */
 #define I915_PERF_IOCTL_CONFIG	_IO('i', 0x2)
 
+/**
+ * Actively check the availability of data from a stream.
+ *
+ * A stream data availability can be driven by two types of events :
+ *
+ *   - if enabled, the kernel's hrtimer checking the amount of available data
+ *     in the OA buffer through head/tail registers.
+ *
+ *   - if enabled, the OA unit's interrupt mechanism
+ *
+ * The kernel hrtimer incur a cost of running callback at fixed time
+ * intervals, while the OA interrupt might only happen rarely. In the
+ * situation where the application has disabled the kernel's hrtimer and only
+ * uses the OA interrupt to know about available data, the application can
+ * request an active check of the available OA data through this ioctl. This
+ * will make any data in the OA buffer available with either poll() or read().
+ *
+ * This ioctl is available in perf revision 6.
+ */
+#define I915_PERF_IOCTL_FLUSH_DATA _IO('i', 0x3)
+
 /**
  * Common to all i915 perf records
  */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

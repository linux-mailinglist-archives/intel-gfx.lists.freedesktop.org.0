Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B92A36CDF3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 23:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1712D6E9DE;
	Tue, 27 Apr 2021 21:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926496E9DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 21:49:21 +0000 (UTC)
IronPort-SDR: WRD8MvWpRNVb3hDkomdaUuYgSAVwkixxnJ70zL6YV3XCNeEz+2rqL2jpSO1ohf1YjOiI3DlBLf
 1S3OFawAa+tQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="183738208"
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="183738208"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 14:49:17 -0700
IronPort-SDR: +Sg7RaDN5/aZlfzfhzmzREHHCI4xtXNpIshH9aS3DseUGMAoDRtqBJQeu+gnAQeFOvosdwqrNc
 +7Ar7rH6/BVQ==
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="429983710"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 14:49:16 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 14:49:13 -0700
Message-Id: <20210427214913.46956-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210427214913.46956-1-umesh.nerlige.ramappa@intel.com>
References: <20210427214913.46956-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] i915/query: Correlate engine and cpu
 timestamps with better accuracy
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Perf measurements rely on CPU and engine timestamps to correlate
events of interest across these time domains. Current mechanisms get
these timestamps separately and the calculated delta between these
timestamps lack enough accuracy.

To improve the accuracy of these time measurements to within a few us,
add a query that returns the engine and cpu timestamps captured as
close to each other as possible.

v2: (Tvrtko)
- document clock reference used
- return cpu timestamp always
- capture cpu time just before lower dword of cs timestamp

v3: (Chris)
- use uncore-rpm
- use __query_cs_timestamp helper

v4: (Lionel)
- Kernel perf subsytem allows users to specify the clock id to be used
  in perf_event_open. This clock id is used by the perf subsystem to
  return the appropriate cpu timestamp in perf events. Similarly, let
  the user pass the clockid to this query so that cpu timestamp
  corresponds to the clock id requested.

v5: (Tvrtko)
- Use normal ktime accessors instead of fast versions
- Add more uApi documentation

v6: (Lionel)
- Move switch out of spinlock

v7: (Chris)
- cs_timestamp is a misnomer, use cs_cycles instead
- return the cs cycle frequency as well in the query

v8:
- Add platform and engine specific checks

v9: (Lionel)
- Return 2 cpu timestamps in the query - captured before and after the
  register read

v10: (Chris)
- Use local_clock() to measure time taken to read lower dword of
  register and return it to user.

v11: (Jani)
- IS_GEN deprecated. User GRAPHICS_VER instead.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_query.c | 145 ++++++++++++++++++++++++++++++
 include/uapi/drm/i915_drm.h       |  48 ++++++++++
 2 files changed, 193 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index fed337ad7b68..2594b93901ac 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -6,6 +6,8 @@
 
 #include <linux/nospec.h>
 
+#include "gt/intel_engine_pm.h"
+#include "gt/intel_engine_user.h"
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "i915_query.h"
@@ -90,6 +92,148 @@ static int query_topology_info(struct drm_i915_private *dev_priv,
 	return total_length;
 }
 
+typedef u64 (*__ktime_func_t)(void);
+static __ktime_func_t __clock_id_to_func(clockid_t clk_id)
+{
+	/*
+	 * Use logic same as the perf subsystem to allow user to select the
+	 * reference clock id to be used for timestamps.
+	 */
+	switch (clk_id) {
+	case CLOCK_MONOTONIC:
+		return &ktime_get_ns;
+	case CLOCK_MONOTONIC_RAW:
+		return &ktime_get_raw_ns;
+	case CLOCK_REALTIME:
+		return &ktime_get_real_ns;
+	case CLOCK_BOOTTIME:
+		return &ktime_get_boottime_ns;
+	case CLOCK_TAI:
+		return &ktime_get_clocktai_ns;
+	default:
+		return NULL;
+	}
+}
+
+static inline int
+__read_timestamps(struct intel_uncore *uncore,
+		  i915_reg_t lower_reg,
+		  i915_reg_t upper_reg,
+		  u64 *cs_ts,
+		  u64 *cpu_ts,
+		  __ktime_func_t cpu_clock)
+{
+	u32 upper, lower, old_upper, loop = 0;
+
+	upper = intel_uncore_read_fw(uncore, upper_reg);
+	do {
+		cpu_ts[1] = local_clock();
+		cpu_ts[0] = cpu_clock();
+		lower = intel_uncore_read_fw(uncore, lower_reg);
+		cpu_ts[1] = local_clock() - cpu_ts[1];
+		old_upper = upper;
+		upper = intel_uncore_read_fw(uncore, upper_reg);
+	} while (upper != old_upper && loop++ < 2);
+
+	*cs_ts = (u64)upper << 32 | lower;
+
+	return 0;
+}
+
+static int
+__query_cs_cycles(struct intel_engine_cs *engine,
+		  u64 *cs_ts, u64 *cpu_ts,
+		  __ktime_func_t cpu_clock)
+{
+	struct intel_uncore *uncore = engine->uncore;
+	enum forcewake_domains fw_domains;
+	u32 base = engine->mmio_base;
+	intel_wakeref_t wakeref;
+	int ret;
+
+	fw_domains = intel_uncore_forcewake_for_reg(uncore,
+						    RING_TIMESTAMP(base),
+						    FW_REG_READ);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref) {
+		spin_lock_irq(&uncore->lock);
+		intel_uncore_forcewake_get__locked(uncore, fw_domains);
+
+		ret = __read_timestamps(uncore,
+					RING_TIMESTAMP(base),
+					RING_TIMESTAMP_UDW(base),
+					cs_ts,
+					cpu_ts,
+					cpu_clock);
+
+		intel_uncore_forcewake_put__locked(uncore, fw_domains);
+		spin_unlock_irq(&uncore->lock);
+	}
+
+	return ret;
+}
+
+static int
+query_cs_cycles(struct drm_i915_private *i915,
+		struct drm_i915_query_item *query_item)
+{
+	struct drm_i915_query_cs_cycles __user *query_ptr;
+	struct drm_i915_query_cs_cycles query;
+	struct intel_engine_cs *engine;
+	__ktime_func_t cpu_clock;
+	int ret;
+
+	if (GRAPHICS_VER(i915) < 6)
+		return -ENODEV;
+
+	query_ptr = u64_to_user_ptr(query_item->data_ptr);
+	ret = copy_query_item(&query, sizeof(query), sizeof(query), query_item);
+	if (ret != 0)
+		return ret;
+
+	if (query.flags)
+		return -EINVAL;
+
+	if (query.rsvd)
+		return -EINVAL;
+
+	cpu_clock = __clock_id_to_func(query.clockid);
+	if (!cpu_clock)
+		return -EINVAL;
+
+	engine = intel_engine_lookup_user(i915,
+					  query.engine.engine_class,
+					  query.engine.engine_instance);
+	if (!engine)
+		return -EINVAL;
+
+	if (GRAPHICS_VER(i915) == 6 &&
+	    query.engine.engine_class != I915_ENGINE_CLASS_RENDER)
+		return -ENODEV;
+
+	query.cs_frequency = engine->gt->clock_frequency;
+	ret = __query_cs_cycles(engine,
+				&query.cs_cycles,
+				query.cpu_timestamp,
+				cpu_clock);
+	if (ret)
+		return ret;
+
+	if (put_user(query.cs_frequency, &query_ptr->cs_frequency))
+		return -EFAULT;
+
+	if (put_user(query.cpu_timestamp[0], &query_ptr->cpu_timestamp[0]))
+		return -EFAULT;
+
+	if (put_user(query.cpu_timestamp[1], &query_ptr->cpu_timestamp[1]))
+		return -EFAULT;
+
+	if (put_user(query.cs_cycles, &query_ptr->cs_cycles))
+		return -EFAULT;
+
+	return sizeof(query);
+}
+
 static int
 query_engine_info(struct drm_i915_private *i915,
 		  struct drm_i915_query_item *query_item)
@@ -424,6 +568,7 @@ static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
 	query_topology_info,
 	query_engine_info,
 	query_perf_config,
+	query_cs_cycles,
 };
 
 int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 6a34243a7646..08b00f1709b5 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2230,6 +2230,10 @@ struct drm_i915_query_item {
 #define DRM_I915_QUERY_TOPOLOGY_INFO    1
 #define DRM_I915_QUERY_ENGINE_INFO	2
 #define DRM_I915_QUERY_PERF_CONFIG      3
+	/**
+	 * Query Command Streamer timestamp register.
+	 */
+#define DRM_I915_QUERY_CS_CYCLES	4
 /* Must be kept compact -- no holes and well documented */
 
 	/**
@@ -2397,6 +2401,50 @@ struct drm_i915_engine_info {
 	__u64 rsvd1[4];
 };
 
+/**
+ * struct drm_i915_query_cs_cycles
+ *
+ * The query returns the command streamer cycles and the frequency that can be
+ * used to calculate the command streamer timestamp. In addition the query
+ * returns a set of cpu timestamps that indicate when the command streamer cycle
+ * count was captured.
+ */
+struct drm_i915_query_cs_cycles {
+	/** Engine for which command streamer cycles is queried. */
+	struct i915_engine_class_instance engine;
+
+	/** Must be zero. */
+	__u32 flags;
+
+	/**
+	 * Command streamer cycles as read from the command streamer
+	 * register at 0x358 offset.
+	 */
+	__u64 cs_cycles;
+
+	/** Frequency of the cs cycles in Hz. */
+	__u64 cs_frequency;
+
+	/**
+	 * CPU timestamps in ns. cpu_timestamp[0] is captured before reading the
+	 * cs_cycles register using the reference clockid set by the user.
+	 * cpu_timestamp[1] is the time taken in ns to read the lower dword of
+	 * the cs_cycles register.
+	 */
+	__u64 cpu_timestamp[2];
+
+	/**
+	 * Reference clock id for CPU timestamp. For definition, see
+	 * clock_gettime(2) and perf_event_open(2). Supported clock ids are
+	 * CLOCK_MONOTONIC, CLOCK_MONOTONIC_RAW, CLOCK_REALTIME, CLOCK_BOOTTIME,
+	 * CLOCK_TAI.
+	 */
+	__s32 clockid;
+
+	/** Must be zero. */
+	__u32 rsvd;
+};
+
 /**
  * struct drm_i915_query_engine_info
  *
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

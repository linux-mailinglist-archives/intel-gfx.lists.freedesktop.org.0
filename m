Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F04D2B44BE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 14:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC12F89E03;
	Mon, 16 Nov 2020 13:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6BA689E03
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 13:33:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23005933-1500050 
 for multiple; Mon, 16 Nov 2020 13:33:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Nov 2020 13:33:47 +0000
Message-Id: <20201116133347.2256-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Track the overall busy time
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we wake the GT up before executing a request, and go to sleep as
soon as it is retired, the GT wake time not only represents how long the
device is powered up, but also provides a summary, ableit overestimate,
of the device runtime.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 45 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm.h    |  2 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 24 +++++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c      |  2 ++
 drivers/gpu/drm/i915/i915_pmu.c          |  6 ++++
 include/uapi/drm/i915_drm.h              |  3 +-
 6 files changed, 81 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 274aa0dd7050..ed8d7cf16118 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -39,6 +39,24 @@ static void user_forcewake(struct intel_gt *gt, bool suspend)
 	intel_gt_pm_put(gt);
 }
 
+static void runtime_begin(struct intel_gt *gt)
+{
+	write_seqcount_begin(&gt->stats.lock);
+	gt->stats.start = ktime_get();
+	gt->stats.active = true;
+	write_seqcount_end(&gt->stats.lock);
+}
+
+static void runtime_end(struct intel_gt *gt)
+{
+	write_seqcount_begin(&gt->stats.lock);
+	gt->stats.active = false;
+	gt->stats.total =
+		ktime_add(gt->stats.total,
+			  ktime_sub(ktime_get(), gt->stats.start));
+	write_seqcount_end(&gt->stats.lock);
+}
+
 static int __gt_unpark(struct intel_wakeref *wf)
 {
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
@@ -67,6 +85,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 	i915_pmu_gt_unparked(i915);
 
 	intel_gt_unpark_requests(gt);
+	runtime_begin(gt);
 
 	return 0;
 }
@@ -79,6 +98,7 @@ static int __gt_park(struct intel_wakeref *wf)
 
 	GT_TRACE(gt, "\n");
 
+	runtime_end(gt);
 	intel_gt_park_requests(gt);
 
 	i915_vma_parked(gt);
@@ -106,6 +126,7 @@ static const struct intel_wakeref_ops wf_ops = {
 void intel_gt_pm_init_early(struct intel_gt *gt)
 {
 	intel_wakeref_init(&gt->wakeref, gt->uncore->rpm, &wf_ops);
+	seqcount_init(&gt->stats.lock);
 }
 
 void intel_gt_pm_init(struct intel_gt *gt)
@@ -339,6 +360,30 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 	return intel_uc_runtime_resume(&gt->uc);
 }
 
+static ktime_t __intel_gt_get_busy_time(const struct intel_gt *gt)
+{
+	ktime_t total = gt->stats.total;
+
+	if (gt->stats.active)
+		total = ktime_add(total,
+				  ktime_sub(ktime_get(), gt->stats.start));
+
+	return total;
+}
+
+ktime_t intel_gt_get_busy_time(const struct intel_gt *gt)
+{
+	unsigned int seq;
+	ktime_t total;
+
+	do {
+		seq = read_seqcount_begin(&gt->stats.lock);
+		total = __intel_gt_get_busy_time(gt);
+	} while (read_seqcount_retry(&gt->stats.lock, seq));
+
+	return total;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_gt_pm.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index 60f0e2fbe55c..aa8f2cda946b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -58,6 +58,8 @@ int intel_gt_resume(struct intel_gt *gt);
 void intel_gt_runtime_suspend(struct intel_gt *gt);
 int intel_gt_runtime_resume(struct intel_gt *gt);
 
+ktime_t intel_gt_get_busy_time(const struct intel_gt *gt);
+
 static inline bool is_mock_gt(const struct intel_gt *gt)
 {
 	return I915_SELFTEST_ONLY(gt->awake == -ENODEV);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 6d39a4a11bf3..c8fcbca007e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -87,6 +87,30 @@ struct intel_gt {
 
 	u32 pm_guc_events;
 
+	struct {
+		bool active;
+
+		/**
+		 * @lock: Lock protecting the below fields.
+		 */
+		seqcount_t lock;
+
+		/**
+		 * @total: Total time this engine was busy.
+		 *
+		 * Accumulated time not counting the most recent block in cases
+		 * where engine is currently busy (active > 0).
+		 */
+		ktime_t total;
+
+		/**
+		 * @start: Timestamp of the last idle to active transition.
+		 *
+		 * Idle is defined as active == 0, active is active > 0.
+		 */
+		ktime_t start;
+	} stats;
+
 	struct intel_engine_cs *engine[I915_NUM_ENGINES];
 	struct intel_engine_cs *engine_class[MAX_ENGINE_CLASS + 1]
 					    [MAX_ENGINE_INSTANCE + 1];
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 77e76b665098..337293c7bb7d 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1316,6 +1316,8 @@ static int i915_engine_info(struct seq_file *m, void *unused)
 	seq_printf(m, "GT awake? %s [%d]\n",
 		   yesno(dev_priv->gt.awake),
 		   atomic_read(&dev_priv->gt.wakeref.count));
+	seq_printf(m, "GT busy: %llu ms\n",
+		   ktime_to_ms(intel_gt_get_busy_time(&dev_priv->gt)));
 	seq_printf(m, "CS timestamp frequency: %u Hz\n",
 		   RUNTIME_INFO(dev_priv)->cs_timestamp_frequency_hz);
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index cd786ad12be7..36fc60cf5725 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -488,6 +488,8 @@ config_status(struct drm_i915_private *i915, u64 config)
 		if (!HAS_RC6(i915))
 			return -ENODEV;
 		break;
+	case I915_PMU_BUSY_TIME:
+		break;
 	default:
 		return -ENOENT;
 	}
@@ -595,6 +597,9 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 		case I915_PMU_RC6_RESIDENCY:
 			val = get_rc6(&i915->gt);
 			break;
+		case I915_PMU_BUSY_TIME:
+			val = ktime_to_ns(intel_gt_get_busy_time(&i915->gt));
+			break;
 		}
 	}
 
@@ -898,6 +903,7 @@ create_event_attributes(struct i915_pmu *pmu)
 		__event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
 		__event(I915_PMU_INTERRUPTS, "interrupts", NULL),
 		__event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
+		__event(I915_PMU_BUSY_TIME, "busy-time", "ns"),
 	};
 	static const struct {
 		enum drm_i915_pmu_engine_sample sample;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index fa1f3d62f9a6..b66b7c1fd564 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -177,8 +177,9 @@ enum drm_i915_pmu_engine_sample {
 #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
 #define I915_PMU_INTERRUPTS		__I915_PMU_OTHER(2)
 #define I915_PMU_RC6_RESIDENCY		__I915_PMU_OTHER(3)
+#define I915_PMU_BUSY_TIME		__I915_PMU_OTHER(4)
 
-#define I915_PMU_LAST I915_PMU_RC6_RESIDENCY
+#define I915_PMU_LAST I915_PMU_BUSY_TIME
 
 /* Each region is a minimum of 16k, and there are at most 255 of them.
  */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

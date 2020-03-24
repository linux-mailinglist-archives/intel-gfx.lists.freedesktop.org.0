Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E246B191981
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 19:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA056E517;
	Tue, 24 Mar 2020 18:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CEC06E514
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 18:54:59 +0000 (UTC)
IronPort-SDR: e7GO3RAhbSmIWXIBl0qPh36LC/LL1QlVGCT5F8cKYbmp1c+7YJdL2quKtt9m9032us0qy9+LEq
 rHpKjSZNEomw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 11:54:58 -0700
IronPort-SDR: gAbq0b5zwpWl3iJc/in1la/LhKNW095AXYIkM3+Cf26TbeGiZbfh7WHv/WXIxeGTt8ny0LSQ7R
 6quj9uvB36lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="246817669"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2020 11:54:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 24 Mar 2020 11:54:57 -0700
Message-Id: <20200324185457.14635-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324185457.14635-1-umesh.nerlige.ramappa@intel.com>
References: <20200324185457.14635-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/perf: add new open param to
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
v5: Make poll delay value of 0 invalid (Umesh)
v6:
- Describe poll_oa_period (Ashutosh)
- Fix comment for new poll parameter (Lionel)
- Drop open_flags in read_properties_unlocked (Lionel)
- Rename uapi parameter (Ashutosh)
v7: Reword the comment in uapi (Ashutosh)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 32 ++++++++++++++++++++------
 drivers/gpu/drm/i915/i915_perf_types.h |  6 +++++
 include/uapi/drm/i915_drm.h            | 13 +++++++++++
 3 files changed, 44 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 4cadf97f94bc..c74ebac50015 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -248,11 +248,11 @@
 #define OA_TAIL_MARGIN_NSEC	100000ULL
 #define INVALID_TAIL_PTR	0xffffffff
 
-/* frequency for checking whether the OA unit has written new reports to the
- * circular OA buffer...
+/* The default frequency for checking whether the OA unit has written new
+ * reports to the circular OA buffer...
  */
-#define POLL_FREQUENCY 200
-#define POLL_PERIOD (NSEC_PER_SEC / POLL_FREQUENCY)
+#define DEFAULT_POLL_FREQUENCY_HZ 200
+#define DEFAULT_POLL_PERIOD_NS (NSEC_PER_SEC / DEFAULT_POLL_FREQUENCY_HZ)
 
 /* for sysctl proc_dointvec_minmax of dev.i915.perf_stream_paranoid */
 static u32 i915_perf_stream_paranoid = true;
@@ -339,6 +339,8 @@ static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
  * @sseu: internal SSEU configuration computed either from the userspace
  *        specified configuration in the opening parameters or a default value
  *        (see get_default_sseu_config())
+ * @poll_oa_period: The period in nanoseconds at which the CPU will check for OA
+ * data availability
  *
  * As read_properties_unlocked() enumerates and validates the properties given
  * to open a stream of metrics the configuration is built up in the structure
@@ -361,6 +363,8 @@ struct perf_open_properties {
 
 	bool has_sseu;
 	struct intel_sseu sseu;
+
+	u64 poll_oa_period;
 };
 
 struct i915_oa_config_bo {
@@ -2600,7 +2604,7 @@ static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 
 	if (stream->periodic)
 		hrtimer_start(&stream->poll_check_timer,
-			      ns_to_ktime(POLL_PERIOD),
+			      ns_to_ktime(stream->poll_oa_period),
 			      HRTIMER_MODE_REL_PINNED);
 }
 
@@ -3035,7 +3039,8 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
 		wake_up(&stream->poll_wq);
 	}
 
-	hrtimer_forward_now(hrtimer, ns_to_ktime(POLL_PERIOD));
+	hrtimer_forward_now(hrtimer,
+			    ns_to_ktime(stream->poll_oa_period));
 
 	return HRTIMER_RESTART;
 }
@@ -3424,6 +3429,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
 	stream->perf = perf;
 	stream->ctx = specific_ctx;
+	stream->poll_oa_period = props->poll_oa_period;
 
 	ret = i915_oa_stream_init(stream, param, props);
 	if (ret)
@@ -3502,6 +3508,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	int ret;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
+	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
 
 	if (!n_props) {
 		DRM_DEBUG("No i915 perf properties given\n");
@@ -3634,6 +3641,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			props->has_sseu = true;
 			break;
 		}
+		case DRM_I915_PERF_PROP_POLL_OA_PERIOD:
+			if (value < 100000 /* 100us */) {
+				DRM_DEBUG("OA availability timer too small (%lluns < 100us)\n",
+					  value);
+				return -EINVAL;
+			}
+			props->poll_oa_period = value;
+			break;
 		case DRM_I915_PERF_PROP_MAX:
 			MISSING_CASE(id);
 			return -EINVAL;
@@ -4416,8 +4431,11 @@ int i915_perf_ioctl_version(void)
 	 * 4: Add DRM_I915_PERF_PROP_ALLOWED_SSEU to limit what contexts can
 	 *    be run for the duration of the performance recording based on
 	 *    their SSEU configuration.
+	 *
+	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
+	 *    interval for the hrtimer used to check for OA data.
 	 */
-	return 4;
+	return 5;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index c3ab184c604a..371dcf243622 100644
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
index db649d03ab52..14b67cd6b54b 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1980,6 +1980,19 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_GLOBAL_SSEU,
 
+	/**
+	 * This optional parameter specifies the timer interval in nanoseconds
+	 * at which the i915 driver will check the OA buffer for available data.
+	 * Minimum allowed value is 100 microseconds. A default value is used by
+	 * the driver if this parameter is not specified. Note that larger timer
+	 * values will reduce cpu consumption during OA perf captures. However,
+	 * excessively large values would potentially result in OA buffer
+	 * overwrites as captures reach end of the OA buffer.
+	 *
+	 * This property is available in perf revision 5.
+	 */
+	DRM_I915_PERF_PROP_POLL_OA_PERIOD,
+
 	DRM_I915_PERF_PROP_MAX /* non-ABI */
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

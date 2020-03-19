Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E06B618C351
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 23:52:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081C76EA9B;
	Thu, 19 Mar 2020 22:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CF86EA9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 22:52:06 +0000 (UTC)
IronPort-SDR: hOia9j6x1KmoP24kJRNA26z+Tc9X0JD3/4efy89DXWOe2LZSndTGDemWUpvgQzwF5WYq9sy2ST
 C/txN2H1MfAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 15:52:05 -0700
IronPort-SDR: ixZJCkC8jeu3CeTP0YXSZCqT+K29EasqlTK4A0rS5XpLdVv5jqYGdPOl1rL05ippDnpcBc08cb
 n/jcVxu/p0MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="446464407"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga006.fm.intel.com with ESMTP; 19 Mar 2020 15:52:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Thu, 19 Mar 2020 15:52:03 -0700
Message-Id: <20200319225203.29679-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
References: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
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

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 32 ++++++++++++++++++++------
 drivers/gpu/drm/i915/i915_perf_types.h |  6 +++++
 include/uapi/drm/i915_drm.h            | 13 +++++++++++
 3 files changed, 44 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 22a1a7300180..83de9fbca203 100644
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
@@ -2603,7 +2607,7 @@ static void i915_oa_stream_enable(struct i915_perf_stream *stream)
 
 	if (stream->periodic)
 		hrtimer_start(&stream->poll_check_timer,
-			      ns_to_ktime(POLL_PERIOD),
+			      ns_to_ktime(stream->poll_oa_period),
 			      HRTIMER_MODE_REL_PINNED);
 }
 
@@ -3038,7 +3042,8 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
 		wake_up(&stream->poll_wq);
 	}
 
-	hrtimer_forward_now(hrtimer, ns_to_ktime(POLL_PERIOD));
+	hrtimer_forward_now(hrtimer,
+			    ns_to_ktime(stream->poll_oa_period));
 
 	return HRTIMER_RESTART;
 }
@@ -3427,6 +3432,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
 	stream->perf = perf;
 	stream->ctx = specific_ctx;
+	stream->poll_oa_period = props->poll_oa_period;
 
 	ret = i915_oa_stream_init(stream, param, props);
 	if (ret)
@@ -3505,6 +3511,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	int ret;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
+	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
 
 	if (!n_props) {
 		DRM_DEBUG("No i915 perf properties given\n");
@@ -3637,6 +3644,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
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
@@ -4419,8 +4434,11 @@ int i915_perf_ioctl_version(void)
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
index 6dbb5ee4c55c..1b469ff13abf 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -305,6 +305,12 @@ struct i915_perf_stream {
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
index db649d03ab52..c781b9f31b3c 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1980,6 +1980,19 @@ enum drm_i915_perf_property_id {
 	 */
 	DRM_I915_PERF_PROP_GLOBAL_SSEU,
 
+	/**
+	 * This optional parameter specifies the timer interval in nanoseconds
+	 * at which the i915 driver will check the OA buffer for available data.
+	 * Minimum allowed value is 100 microseconds. A default value is used by
+	 * the driver if this parameter is not specified. Note that a large
+	 * value may reduce cpu consumption during OA perf captures, but it
+	 * would also potentially result in OA buffer overwrite as the captures
+	 * reach end of the OA buffer.
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

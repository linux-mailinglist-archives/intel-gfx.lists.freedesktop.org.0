Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 975EF59ED9C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C6F10E83F;
	Tue, 23 Aug 2022 20:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3578110E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287322; x=1692823322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7eJi+O6gkrcx9Go+UpwgdOK6Mv1Uc9lVK252iVFrU/U=;
 b=nGmyumvxjyV//DpUZ4Mzwihau8BzeKMiiofY2Yp67jxiWy4mSp7ZVDmR
 rEGugDEIOs70pWL9u5IEEu+VfUpy++CYxKhCY9yThPuzURce40K4P03xg
 fo7SKMLDhNpKFwaZcnVZdsVaYqATGjsaq+ILJiX0C/1B99HDK+cGvJGR0
 27LqzsinQ4DjnBM+de+ZHynm5UdtgHzzu7w5xDGYCTHJ1kgXoGL7vWfQs
 P7B9BIaU1OeS0UWjn6eRpY1Ky2dozw5ucDbc5QxlQQo5wiyeHqb/0VpiF
 FlydJdVddCf3Zj1TtdpbnQNCosKNhNoLFVQ3v/YsFIhg8nNi7UXBadN0p A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294579393"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="294579393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815678"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:52 +0000
Message-Id: <20220823204155.8178-17-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/19] drm/i915/perf: Apply Wa_18013179988
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

OA reports in the OA buffer contain an OA timestamp field that helps
user calculate delta between 2 OA reports. The calculation relies on the
CS timestamp frequency to convert the timestamp value to nanoseconds.
The CS timestamp frequency is a function of the CTC_SHIFT value in
RPM_CONFIG0.

In DG2, OA unit assumes that the CTC_SHIFT is 3, instead of using the
actual value from RPM_CONFIG0. At the user level, this results in an
error in calculating delta between 2 OA reports since the OA timestamp
is not shifted in the same manner as CS timestamp.

To resolve this, return actual OA timestamp frequency to the user in
i915_getparam_ioctl.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_getparam.c |  3 +++
 drivers/gpu/drm/i915/i915_perf.c     | 30 ++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_perf.h     |  2 ++
 include/uapi/drm/i915_drm.h          |  6 ++++++
 4 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 6fd15b39570c..cdb2208ecabd 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -175,6 +175,9 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 	case I915_PARAM_PERF_REVISION:
 		value = i915_perf_ioctl_version();
 		break;
+	case I915_PARAM_OA_TIMESTAMP_FREQUENCY:
+		value = i915_perf_oa_timestamp_frequency(i915);
+		break;
 	default:
 		DRM_DEBUG("Unknown parameter %d\n", param->param);
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index efdd16edf8f3..132c2ce8b33b 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3180,6 +3180,30 @@ get_sseu_config(struct intel_sseu *out_sseu,
 	return i915_gem_user_to_context_sseu(engine->gt, drm_sseu, out_sseu);
 }
 
+/*
+ * OA timestamp frequency = CS timestamp frequency in most platforms. On some
+ * platforms OA unit ignores the CTC_SHIFT and the 2 timestamps differ. In such
+ * cases, return the adjusted CS timestamp frequency to the user.
+ */
+u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
+{
+	/* Wa_18013179988:dg2 */
+	if (IS_DG2(i915)) {
+		intel_wakeref_t wakeref;
+		u32 reg, shift;
+
+		with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref)
+			reg = intel_uncore_read(to_gt(i915)->uncore, RPM_CONFIG0);
+
+		shift = (reg & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
+			 GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT;
+
+		return to_gt(i915)->clock_frequency << (3 - shift);
+	}
+
+	return to_gt(i915)->clock_frequency;
+}
+
 /**
  * i915_oa_stream_init - validate combined props for OA stream and init
  * @stream: An i915 perf stream
@@ -3904,8 +3928,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
 static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
 {
-	return intel_gt_clock_interval_to_ns(to_gt(perf->i915),
-					     2ULL << exponent);
+	u64 nom = (2ULL << exponent) * NSEC_PER_SEC;
+	u32 den = i915_perf_oa_timestamp_frequency(perf->i915);
+
+	return div_u64(nom + den - 1, den);
 }
 
 static __always_inline bool
diff --git a/drivers/gpu/drm/i915/i915_perf.h b/drivers/gpu/drm/i915/i915_perf.h
index 1d1329e5af3a..f96e09a4af04 100644
--- a/drivers/gpu/drm/i915/i915_perf.h
+++ b/drivers/gpu/drm/i915/i915_perf.h
@@ -57,4 +57,6 @@ static inline void i915_oa_config_put(struct i915_oa_config *oa_config)
 	kref_put(&oa_config->ref, i915_oa_config_release);
 }
 
+u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915);
+
 #endif /* __I915_PERF_H__ */
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index d20d723925b5..5e42e94ea534 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -749,6 +749,12 @@ typedef struct drm_i915_irq_wait {
 /* Query if the kernel supports the I915_USERPTR_PROBE flag. */
 #define I915_PARAM_HAS_USERPTR_PROBE 56
 
+/*
+ * Frequency of the timestamps in OA reports. This used to be the same as the CS
+ * timestamp frequency, but differs on some platforms.
+ */
+#define I915_PARAM_OA_TIMESTAMP_FREQUENCY 57
+
 /* Must be kept compact -- no holes and well documented */
 
 /**
-- 
2.25.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4105FCE67
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3996510E22E;
	Wed, 12 Oct 2022 22:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30AC10E22E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613668; x=1697149668;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ot4GsPwp9QeUeTgrqs0LV3GL8ycSEvMnuhwz0h1eStk=;
 b=W0+j4OBwWnkfZHEDpoKh806+evCXaFdeXMepFx+73WVvFE0glab8fHPQ
 zSkc5rQKxDuN2YsXXX/TuaYxH0Y0cIE6+Qkkr1K7D5BqXK+T0L4qtO0cz
 s+MGxZZLnocokG4W0aqSmuGqNa5AsqDBIAKAClScPvdFpIY8p4CYkXGtY
 JalRJRhIjqYGbc4d/q9/tP5ifYZ1FwNLkILqyuUiYBBLA+HtE9IVGF2tb
 euBenhd2tTcO9EgXhktrLP9B6AhWtb4bOpTkJqIzZPD6dqoEGvz4r3Ulm
 RAg3XNR+9SvqnfyHnqz33um8CCbJwrZUt+CWwBXe3LMnCm5kKQwLEK5gY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="305983973"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="305983973"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097674"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097674"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:35 +0000
Message-Id: <20221012222739.27296-13-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 12/16] drm/i915/perf: Apply Wa_18013179988
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
is not shifted in the same manner as CS timestamp. Also the periodicity
of the reports is different from what the user configured because of
mismatch in the CS and OA frequencies.

The issue also affects MI_REPORT_PERF_COUNT command.

To resolve this, return actual OA timestamp frequency to the user in
i915_getparam_ioctl, so that user can calculate the right OA exponent as
well as interpret the reports correctly.

MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/18893

v2:
- Use REG_FIELD_GET (Ashutosh)
- Update commit msg

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_getparam.c |  3 +++
 drivers/gpu/drm/i915/i915_perf.c     | 30 ++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_perf.h     |  2 ++
 include/uapi/drm/i915_drm.h          |  6 ++++++
 4 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 342c8ca6414e..3047e80e1163 100644
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
index b725f204f496..d625962c4c31 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3112,6 +3112,30 @@ get_sseu_config(struct intel_sseu *out_sseu,
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
+		shift = REG_FIELD_GET(GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK,
+				      reg);
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
@@ -3833,8 +3857,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
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
index 7cad631040d3..17dab5a0f35d 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -765,6 +765,12 @@ typedef struct drm_i915_irq_wait {
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


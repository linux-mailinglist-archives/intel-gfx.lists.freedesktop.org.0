Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF56D60360C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 00:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46ADC10F047;
	Tue, 18 Oct 2022 22:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA72310F04A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 22:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666132630; x=1697668630;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sOj7czvw8Iyz7/T7VEZBcnCMddbpFGlsUmMOJFz4Lx8=;
 b=OXRi5ESm2oqa5Oj137VSc4wU+iGWMktTMF7nWZZAEkTnHJ5sa5nnrLh/
 AsYvmTguyMm/m/XPi3zgo3WcoNkD4GdMxj7igBRUv81KiUWMyCJf/WftA
 MTG/L98fky2DJQPdKagunzRi5fYPXhAWGH8mLJ87DpFX0XkH4oOGjwgOk
 mT5EjHSFhiSBt/+iTp9BjwppZH1/2hxo9l9SQip9qkTmOgrIbXzoourS3
 ZxAedyk0BKl9LTkHsE8XV2yah09QOJ6t5T76DOTVC5xfxg4+u8h9RwwBb
 IBq5tYUKEL/P7Nhx2wqczV3PiskZTz72SGUjXOGAHxjqOlcT1dsYQSeRV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="304986542"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="304986542"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="803986549"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="803986549"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:52 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 18 Oct 2022 22:36:44 +0000
Message-Id: <20221018223648.5244-13-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
References: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 12/16] drm/i915/perf: Apply Wa_18013179988
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
index 18619eb19769..8540eb6156e4 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3109,6 +3109,30 @@ get_sseu_config(struct intel_sseu *out_sseu,
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
@@ -3830,8 +3854,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 
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
index 158b35fb28f3..c346b1923d11 100644
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


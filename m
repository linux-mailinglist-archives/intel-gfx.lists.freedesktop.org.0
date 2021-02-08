Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B76313B1E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 18:40:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E5A895EE;
	Mon,  8 Feb 2021 17:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE92890EF
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 17:40:37 +0000 (UTC)
IronPort-SDR: 18VwLxGxiY6l6mE33mtIURpTX/CJxp6xomJLi1XPdSyHYFh2P8imL1NyPO7HN6jubjuV1mbZ8Y
 esseAEKw0I/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="200812314"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="200812314"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:40:36 -0800
IronPort-SDR: ZRRbOzXEIUPrNWqeXg2Uuj4hVoK6Fw6yCDPVkR5DlKt3lW7e2GBpPHqfF4Tj3+n0Qgdos2CRpy
 IJglHNptJi3Q==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="377857777"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 09:40:36 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 09:40:27 -0800
Message-Id: <20210208174029.45621-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] i915/perf: Store a mask of valid OA formats
 for a platform
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

Validity of an OA format is checked by using a sparse array of formats
per gen. Instead maintain a mask of supported formats for a platform in
the perf object.

v2: Use set_bit and test_bit style for the format_mask (Chris)

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 63 +++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h |  8 ++++
 2 files changed, 70 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 89665e14ab01..7b6aab5f3e46 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3524,6 +3524,18 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
 					     2ULL << exponent);
 }
 
+static __always_inline bool
+oa_format_valid(struct i915_perf *perf, enum drm_i915_oa_format format)
+{
+	return test_bit(format, perf->format_mask);
+}
+
+static __always_inline void
+oa_format_add(struct i915_perf *perf, enum drm_i915_oa_format format)
+{
+	__set_bit(format, perf->format_mask);
+}
+
 /**
  * read_properties_unlocked - validate + copy userspace stream open properties
  * @perf: i915 perf instance
@@ -3615,7 +3627,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 					  value);
 				return -EINVAL;
 			}
-			if (!perf->oa_formats[value].size) {
+			if (!oa_format_valid(perf, value)) {
 				DRM_DEBUG("Unsupported OA report format %llu\n",
 					  value);
 				return -EINVAL;
@@ -4259,6 +4271,53 @@ static struct ctl_table dev_root[] = {
 	{}
 };
 
+static void oa_init_supported_formats(struct i915_perf *perf)
+{
+	struct drm_i915_private *i915 = perf->i915;
+	enum intel_platform platform = INTEL_INFO(i915)->platform;
+
+	switch (platform) {
+	case INTEL_HASWELL:
+		oa_format_add(perf, I915_OA_FORMAT_A13);
+		oa_format_add(perf, I915_OA_FORMAT_A13);
+		oa_format_add(perf, I915_OA_FORMAT_A29);
+		oa_format_add(perf, I915_OA_FORMAT_A13_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_B4_C8);
+		oa_format_add(perf, I915_OA_FORMAT_A45_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_B4_C8_A16);
+		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
+		break;
+
+	case INTEL_BROADWELL:
+	case INTEL_CHERRYVIEW:
+	case INTEL_SKYLAKE:
+	case INTEL_BROXTON:
+	case INTEL_KABYLAKE:
+	case INTEL_GEMINILAKE:
+	case INTEL_COFFEELAKE:
+	case INTEL_COMETLAKE:
+	case INTEL_CANNONLAKE:
+	case INTEL_ICELAKE:
+	case INTEL_ELKHARTLAKE:
+	case INTEL_JASPERLAKE:
+		oa_format_add(perf, I915_OA_FORMAT_A12);
+		oa_format_add(perf, I915_OA_FORMAT_A12_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_C4_B8);
+		break;
+
+	case INTEL_TIGERLAKE:
+	case INTEL_ROCKETLAKE:
+	case INTEL_DG1:
+	case INTEL_ALDERLAKE_S:
+		oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
+		break;
+
+	default:
+		MISSING_CASE(platform);
+	}
+}
+
 /**
  * i915_perf_init - initialize i915-perf state on module bind
  * @i915: i915 device instance
@@ -4408,6 +4467,8 @@ void i915_perf_init(struct drm_i915_private *i915)
 			     500 * 1000 /* 500us */);
 
 		perf->i915 = i915;
+
+		oa_init_supported_formats(perf);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a36a455ae336..aa14354a5120 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -15,6 +15,7 @@
 #include <linux/types.h>
 #include <linux/uuid.h>
 #include <linux/wait.h>
+#include <uapi/drm/i915_drm.h>
 
 #include "gt/intel_sseu.h"
 #include "i915_reg.h"
@@ -441,6 +442,13 @@ struct i915_perf {
 	struct i915_oa_ops ops;
 	const struct i915_oa_format *oa_formats;
 
+	/**
+	 * Use a format mask to store the supported formats
+	 * for a platform.
+	 */
+#define FORMAT_MASK_SIZE DIV_ROUND_UP(I915_OA_FORMAT_MAX - 1, BITS_PER_LONG)
+	unsigned long format_mask[FORMAT_MASK_SIZE];
+
 	atomic64_t noa_programming_delay;
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

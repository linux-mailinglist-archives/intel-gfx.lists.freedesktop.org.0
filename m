Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B355830B8F7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 08:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288FF6E8B6;
	Tue,  2 Feb 2021 07:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654D76E0E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 07:54:25 +0000 (UTC)
IronPort-SDR: h8yQLXLjW1H6Ut983yqs6YnP5kHODD7nYemx7w3PFAvuFpsE5vUob2zsycGFHRXvf6edq/3Uld
 gWhpfIR5/eRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="167920407"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="167920407"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 23:54:24 -0800
IronPort-SDR: MaoMUjxifs2NOQo3f29s25z6A3HTZJE/x8p6n18YEC71DrAXI7Q2hKwoTQkXkuATcN7hfCKD0D
 DRb3KmnDWoUg==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="371858807"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 23:54:24 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 23:54:15 -0800
Message-Id: <20210202075417.28230-1-umesh.nerlige.ramappa@intel.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Validity of an OA format is checked by using a sparse array of formats
per gen. Instead maintain a mask of supported formats for a platform in
the perf object.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 64 +++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h | 16 +++++++
 2 files changed, 79 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 112ba5f2ce90..973577fcad58 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3524,6 +3524,19 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
 					     2ULL << exponent);
 }
 
+static __always_inline bool
+oa_format_valid(struct i915_perf *perf, enum drm_i915_oa_format format)
+{
+	return !!(perf->format_mask[__format_index(format)] &
+		  __format_bit(format));
+}
+
+static __always_inline void
+oa_format_add(struct i915_perf *perf, enum drm_i915_oa_format format)
+{
+	perf->format_mask[__format_index(format)] |= __format_bit(format);
+}
+
 /**
  * read_properties_unlocked - validate + copy userspace stream open properties
  * @perf: i915 perf instance
@@ -3615,7 +3628,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 					  value);
 				return -EINVAL;
 			}
-			if (!perf->oa_formats[value].size) {
+			if (!oa_format_valid(perf, value)) {
 				DRM_DEBUG("Unsupported OA report format %llu\n",
 					  value);
 				return -EINVAL;
@@ -4259,6 +4272,53 @@ static struct ctl_table dev_root[] = {
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
@@ -4408,6 +4468,8 @@ void i915_perf_init(struct drm_i915_private *i915)
 			     500 * 1000 /* 500us */);
 
 		perf->i915 = i915;
+
+		oa_init_supported_formats(perf);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a36a455ae336..f81bcb533723 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -15,6 +15,7 @@
 #include <linux/types.h>
 #include <linux/uuid.h>
 #include <linux/wait.h>
+#include <uapi/drm/i915_drm.h>
 
 #include "gt/intel_sseu.h"
 #include "i915_reg.h"
@@ -441,6 +442,21 @@ struct i915_perf {
 	struct i915_oa_ops ops;
 	const struct i915_oa_format *oa_formats;
 
+	/**
+	 * Use a format mask to store the supported formats
+	 * for a platform.
+	 */
+#define __fbits (BITS_PER_TYPE(u32))
+#define __format_bit(__f) \
+	BIT((__f) & (__fbits - 1))
+
+#define __format_index_shift (5)
+#define __format_index(__f) \
+	(((__f) & ~(__fbits - 1)) >> __format_index_shift)
+
+#define FORMAT_MASK_SIZE (((I915_OA_FORMAT_MAX - 1) / __fbits) + 1)
+	u32 format_mask[FORMAT_MASK_SIZE];
+
 	atomic64_t noa_programming_delay;
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

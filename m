Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ED2763FBD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 21:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4056110E4B8;
	Wed, 26 Jul 2023 19:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1F110E4B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 19:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690400040; x=1721936040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N4wE4MqprZD2zSMxEuJmTE+TyrXJAqt9cmKeF4TCJjc=;
 b=CefC0FHxuj3TcJpDvIEGJwn9x7oUhOoigAZtZbvaYX7fhzA7lV1MBCVM
 YKxz7V7uQoGQJww6MLImUU09Zh7HuiB86t9Xu1eGNG2ITHP9Ok7N+PUp3
 PqjqMJ07SGi71H9fs6B9UYxU5vF2ppzFxtqQ+kc86vwXzn6dSG2Hjzv/8
 dipMaYfONewgMfcpjsyPR8VET2VKoQbh5wSKNT7VNS34l+/iVJLL+OGm7
 v9k/q7Fa+sRNgwYwkCaAz9lb8nItzs6s6qNfatBgV1qIb8ZuI5YoQJjs8
 tea+SdsfbKt2IVEe3jCNBK6PEnwXYV/B4fQew0smvZl2m6Go0Zuln6Jx3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="353013257"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="353013257"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 12:33:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840383364"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="840383364"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2023 12:33:45 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:03:22 +0530
Message-Id: <20230726193333.2759197-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 03/14] drm/i915/skl: s/SKL/SKYLAKE for
 platform/subplatform defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace SKL with
SKYLAKE and Replace IS_SKL_GRAPHICS_STEP with
IS_SKYLAKE() && IS_GRAPHICS_STEP().

v2:
- Change subject skl instead of SKL(Anusha)

v3:
- Unrolled wrapper IS_SKL_GRAPHICS_STEP.
- Replace with IS_PLATFORM && DISPLAY_STEP(tvrtko/jani)

v4:
- Removed the unused macro.

Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c        |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 13 ++++++-------
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 5b2665a9d86d..e85eab21b09d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1746,9 +1746,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		encoder->get_buf_trans = kbl_u_get_buf_trans;
 	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i915)) {
 		encoder->get_buf_trans = kbl_get_buf_trans;
-	} else if (IS_SKL_ULX(i915)) {
+	} else if (IS_SKYLAKE_ULX(i915)) {
 		encoder->get_buf_trans = skl_y_get_buf_trans;
-	} else if (IS_SKL_ULT(i915)) {
+	} else if (IS_SKYLAKE_ULT(i915)) {
 		encoder->get_buf_trans = skl_u_get_buf_trans;
 	} else if (IS_SKYLAKE(i915)) {
 		encoder->get_buf_trans = skl_get_buf_trans;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index f2a5fb7fdca6..85176eabcda0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1192,7 +1192,7 @@ skl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaInPlaceDecompressionHang:skl */
-	if (IS_SKL_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
+	if (IS_SKYLAKE(gt->i915) && IS_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
 		wa_write_or(wal,
 			    GEN9_GAMT_ECO_REG_RW_IA,
 			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6607f233461a..d7f7ca135000 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -609,19 +609,19 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 /* ULX machines are also considered ULT. */
 #define IS_HASWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
-#define IS_SKL_ULT(i915) \
+#define IS_SKYLAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_SKL_ULX(i915) \
+#define IS_SKYLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
 #define IS_KBL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
 #define IS_KBL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_SKL_GT2(i915)	(IS_SKYLAKE(i915) && \
+#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
-#define IS_SKL_GT3(i915)	(IS_SKYLAKE(i915) && \
+#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
-#define IS_SKL_GT4(i915)	(IS_SKYLAKE(i915) && \
+#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 4)
 #define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
@@ -649,7 +649,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TGL_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
-#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
 #define IS_KBL_GRAPHICS_STEP(i915, since, until) \
 	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))
@@ -800,7 +799,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* WaRsDisableCoarsePowerGating:skl,cnl */
 #define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
-	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))
+	(IS_SKYLAKE_GT3(i915) || IS_SKYLAKE_GT4(i915))
 
 /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
  * rows, which changed the alignment requirements and fence programming.
-- 
2.34.1


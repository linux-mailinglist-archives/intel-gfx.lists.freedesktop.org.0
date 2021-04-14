Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78A935F2D7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04626E934;
	Wed, 14 Apr 2021 11:51:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00936E935
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:07 +0000 (UTC)
IronPort-SDR: SJu1c2kaVoaLcYaHwmiZOIegs0yMQ/8ZNvErQ53am0Btli2bLTPr8ooI9UOPYt9e3mhZyqw5o3
 GQn0qgJxgVmQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119580"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119580"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:07 -0700
IronPort-SDR: uzUWXrOMM0hSCtke+VlIY0v+R7N279J5IuWDdEI2+hUyPKKMi1tGqUGPpdz3by+BTukIhKRnRH
 BXr1wmY2IKog==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965276"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:25 +0100
Message-Id: <20210414115028.168504-26-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 25/28] drm/i915: Use IS_GEN in intel_engine_cs.c
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/intel_engine_cs.c | 92 +++++++++++---------------
 1 file changed, 38 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_engine_cs.c b/drivers/gpu/drm/i915/intel_engine_cs.c
index 32a1fee719a0..3f97e1491fad 100644
--- a/drivers/gpu/drm/i915/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/intel_engine_cs.c
@@ -156,36 +156,30 @@ __intel_engine_context_size(struct drm_i915_private *dev_priv, u8 class)
 
 	switch (class) {
 	case RENDER_CLASS:
-		switch (INTEL_GEN(dev_priv)) {
-		default:
-			MISSING_CASE(INTEL_GEN(dev_priv));
-			return DEFAULT_LR_CONTEXT_RENDER_SIZE;
-		case 11:
+		if (IS_GEN(dev_priv, 11, GEN_FOREVER)) {
 			return GEN11_LR_CONTEXT_RENDER_SIZE;
-		case 10:
+		} else if (IS_GEN(dev_priv, 10, GEN_FOREVER)) {
 			return GEN10_LR_CONTEXT_RENDER_SIZE;
-		case 9:
+		} else if (IS_GEN(dev_priv, 9, GEN_FOREVER)) {
 			return GEN9_LR_CONTEXT_RENDER_SIZE;
-		case 8:
+		} else if (IS_GEN(dev_priv, 8, GEN_FOREVER)) {
 			return GEN8_LR_CONTEXT_RENDER_SIZE;
-		case 7:
+		} else if (IS_GEN(dev_priv, 7, GEN_FOREVER)) {
 			if (IS_HASWELL(dev_priv))
 				return HSW_CXT_TOTAL_SIZE;
 
 			cxt_size = I915_READ(GEN7_CXT_SIZE);
 			return round_up(GEN7_CXT_TOTAL_SIZE(cxt_size) * 64,
 					PAGE_SIZE);
-		case 6:
+		} else if (IS_GEN(dev_priv, 6, GEN_FOREVER)) {
 			cxt_size = I915_READ(CXT_SIZE);
 			return round_up(GEN6_CXT_TOTAL_SIZE(cxt_size) * 64,
 					PAGE_SIZE);
-		case 5:
-		case 4:
-		case 3:
-		case 2:
-		/* For the special day when i810 gets merged. */
-		case 1:
+		} else if (IS_GEN(dev_priv, 1, 5)) {
 			return 0;
+		} else {
+			MISSING_CASE(INTEL_GEN(dev_priv));
+			return DEFAULT_LR_CONTEXT_RENDER_SIZE;
 		}
 		break;
 	default:
@@ -781,47 +775,39 @@ void intel_engine_get_instdone(struct intel_engine_cs *engine,
 
 	memset(instdone, 0, sizeof(*instdone));
 
-	switch (INTEL_GEN(dev_priv)) {
-	default:
+	if (IS_GEN7(dev_priv)) {
 		instdone->instdone = I915_READ(RING_INSTDONE(mmio_base));
 
-		if (engine->id != RCS)
-			break;
-
-		instdone->slice_common = I915_READ(GEN7_SC_INSTDONE);
-		for_each_instdone_slice_subslice(dev_priv, slice, subslice) {
-			instdone->sampler[slice][subslice] =
-				read_subslice_reg(dev_priv, slice, subslice,
-						  GEN7_SAMPLER_INSTDONE);
-			instdone->row[slice][subslice] =
-				read_subslice_reg(dev_priv, slice, subslice,
-						  GEN7_ROW_INSTDONE);
+		if (engine->id == RCS) {
+			instdone->slice_common = I915_READ(GEN7_SC_INSTDONE);
+			instdone->sampler[0][0] = I915_READ(GEN7_SAMPLER_INSTDONE);
+			instdone->row[0][0] = I915_READ(GEN7_ROW_INSTDONE);
 		}
-		break;
-	case 7:
-		instdone->instdone = I915_READ(RING_INSTDONE(mmio_base));
-
-		if (engine->id != RCS)
-			break;
-
-		instdone->slice_common = I915_READ(GEN7_SC_INSTDONE);
-		instdone->sampler[0][0] = I915_READ(GEN7_SAMPLER_INSTDONE);
-		instdone->row[0][0] = I915_READ(GEN7_ROW_INSTDONE);
-
-		break;
-	case 6:
-	case 5:
-	case 4:
+	} else if (IS_GEN(dev_priv, 4, 6)) {
 		instdone->instdone = I915_READ(RING_INSTDONE(mmio_base));
 
 		if (engine->id == RCS)
 			/* HACK: Using the wrong struct member */
 			instdone->slice_common = I915_READ(GEN4_INSTDONE1);
-		break;
-	case 3:
-	case 2:
+	} else if (IS_GEN(dev_priv, 2, 3)) {
 		instdone->instdone = I915_READ(GEN2_INSTDONE);
-		break;
+	} else {
+		instdone->instdone = I915_READ(RING_INSTDONE(mmio_base));
+
+		if (engine->id == RCS) {
+			instdone->slice_common = I915_READ(GEN7_SC_INSTDONE);
+			for_each_instdone_slice_subslice(dev_priv, slice,
+							 subslice) {
+				instdone->sampler[slice][subslice] =
+					read_subslice_reg(dev_priv, slice,
+							  subslice,
+							  GEN7_SAMPLER_INSTDONE);
+				instdone->row[slice][subslice] =
+					read_subslice_reg(dev_priv, slice,
+							  subslice,
+							  GEN7_ROW_INSTDONE);
+			}
+		}
 	}
 }
 
@@ -1634,17 +1620,15 @@ void intel_engines_unpark(struct drm_i915_private *i915)
 
 bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
 {
-	switch (INTEL_GEN(engine->i915)) {
-	case 2:
+	if (IS_GEN2(engine->i915))
 		return false; /* uses physical not virtual addresses */
-	case 3:
+	else if (IS_GEN3(engine->i915))
 		/* maybe only uses physical not virtual addresses */
 		return !(IS_I915G(engine->i915) || IS_I915GM(engine->i915));
-	case 6:
+	else if (IS_GEN6(engine->i915))
 		return engine->class != VIDEO_DECODE_CLASS; /* b0rked */
-	default:
+	else
 		return true;
-	}
 }
 
 unsigned int intel_engines_has_context_isolation(struct drm_i915_private *i915)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

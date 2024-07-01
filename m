Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F5891E0B5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2024 15:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC6D10E419;
	Mon,  1 Jul 2024 13:28:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+8Yl/9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1E710E419;
 Mon,  1 Jul 2024 13:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719840511; x=1751376511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8fS85381SF2QlqgBBxPQUPBIE5xlUfMSr+3mn0jeLZs=;
 b=F+8Yl/9rHH/IPx3vvy++E11wlJiLCq1bd9wNxUgKuP5sDa5f4AsHas5w
 qHcjprbGsIJEw2mZBPKzLpvLDXk6VGT68F341+v+pXYvrz8EFHaN2cVdT
 dzySV/opQv21bO40DNQoInNOH91Cs/bomhNgOVXZkeo+RWukEm40V/vMU
 1QXpq64CcsIuAAJQ1iU0Ejsm2AJx2c+w6ietCy0du7LCXHYDl+0qTWtFL
 ZBWcjfh4R0qBG3i06IZpGpcqVAL6Cbsw44b9yqa5vYw0lNSXAdQ8fNukf
 pU0t/esjC4aweHsXch+jGMYtYlXF3j9/Oe4wD0iJ6r3OwfcO53suRlUDu w==;
X-CSE-ConnectionGUID: ajwun7F1T+GG6kBJ/Bau0w==
X-CSE-MsgGUID: bgkcIxJBRdmmFrGO7VyZ1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="17104038"
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="17104038"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 06:28:29 -0700
X-CSE-ConnectionGUID: +7D+W2skQ6OvQfsloOL3QA==
X-CSE-MsgGUID: ZUEzJBARR7GUN5TdV2Zm6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="50728617"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO mwauld-desk.intel.com)
 ([10.245.244.52])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 06:28:28 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 2/2] drm/i915: disable fbc due to Wa_16023588340
Date: Mon,  1 Jul 2024 14:27:56 +0100
Message-ID: <20240701132754.101832-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240701132754.101832-3-matthew.auld@intel.com>
References: <20240701132754.101832-3-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On BMG-G21 we need to disable fbc due to complications around the WA.

v2:
 - Try to handle with i915_drv.h and compat layer. (Rodrigo)

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/display/intel_fbc.c          | 5 +++++
 drivers/gpu/drm/i915/i915_drv.h                   | 2 ++
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 5 +++++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 67116c9f1464..60131de77b4c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1237,6 +1237,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
+	if (DISPLAY_NEEDS_WA_16023588340(i915)) {
+		plane_state->no_fbc_reason = "Wa_16023588340";
+		return 0;
+	}
+
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
 	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
 		plane_state->no_fbc_reason = "VT-d enabled";
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d7723dd11c80..816a01fda3fe 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -762,4 +762,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
 				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 
+#define DISPLAY_NEEDS_WA_16023588340(i915)	false
+
 #endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 2feedddf1e40..a4256144dff7 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -15,6 +15,9 @@
 #include "i915_utils.h"
 #include "intel_runtime_pm.h"
 #include "xe_device_types.h"
+#include "xe_wa.h"
+
+#include <generated/xe_wa_oob.h>
 
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 {
@@ -120,6 +123,8 @@ struct i915_sched_attr {
 
 #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
 
+#define DISPLAY_NEEDS_WA_16023588340(xe)	XE_WA(xe_root_mmio_gt(xe), 16023588340)
+
 #ifdef CONFIG_ARM64
 /*
  * arm64 indirectly includes linux/rtc.h,
-- 
2.45.2


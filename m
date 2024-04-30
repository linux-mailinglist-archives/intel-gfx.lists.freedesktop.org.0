Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2329A8B7E85
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27FA5112D7E;
	Tue, 30 Apr 2024 17:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5bGVykX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49401112D7A;
 Tue, 30 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498222; x=1746034222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R8psRS3fEG7Y5lNMSQmgHZo5obRWnDjG/QTKOvl/++o=;
 b=P5bGVykXdeBmVP7RYR+eEgiydYSQPXJFQtKLY4xvIKnXJSMfr7dMbq5v
 uv6Zbxn3E+ee6aA0tvICoFRtu4tDpDIyjbO5F6Y+P3CDo4qYQVwDoHeVA
 U0BRILK9W4g2lkXVFfwMDQHpDW1M4VHkc1S70ALg0zyA1fCE8rIDDdZJf
 YgGkRqTIaBBRVHYcpGbT77P9INbXw2FmlpupkXfdK+otM0EUQVLbvKs2c
 MTEodlkk0Wsn4L7gcjfI723vVnS+3ZfrPQ29anah/8hQ2G6WpbsADoctn
 6d8k7Sb3pW7kgi51npC53sgJuMMFXTlZgmVLzkseqs+LoX+MPoISiF56J g==;
X-CSE-ConnectionGUID: dWIeD2HhTwOG0VlPSkLMmQ==
X-CSE-MsgGUID: r7u2DyYwSEiIu/vIbPPnag==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27742005"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27742005"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:22 -0700
X-CSE-ConnectionGUID: pxFnYOMhRY2QpJOrzjzNNw==
X-CSE-MsgGUID: GKhMz+A/SAGHvnLDHvNHBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617865"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:22 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 18/19] drm/i915/display: perform transient flush
Date: Tue, 30 Apr 2024 10:28:49 -0700
Message-Id: <20240430172850.1881525-19-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Matthew Auld <matthew.auld@intel.com>

Perform manual transient cache flush prior to flip and at the end of
frontbuffer_flush. This is needed to ensure display engine doesn't see
garbage if the surface is L3:XD dirty.

Testcase: igt@xe-pat@display-vs-wb-transient
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_tdf.h      | 25 +++++++++++++++++++
 drivers/gpu/drm/xe/Makefile                   |  3 ++-
 drivers/gpu/drm/xe/display/xe_tdf.c           | 13 ++++++++++
 5 files changed, 45 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00e583fc2a8c..294539b4ca99 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -109,6 +109,7 @@
 #include "intel_sdvo.h"
 #include "intel_snps_phy.h"
 #include "intel_tc.h"
+#include "intel_tdf.h"
 #include "intel_tv.h"
 #include "intel_vblank.h"
 #include "intel_vdsc.h"
@@ -7225,6 +7226,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_atomic_commit_fence_wait(state);
 
+	intel_td_flush(dev_priv);
+
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
 	intel_atomic_global_state_wait_for_dependencies(state);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 2ea37c0414a9..4923c340a0b6 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -65,6 +65,7 @@
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
 #include "intel_psr.h"
+#include "intel_tdf.h"
 
 /**
  * frontbuffer_flush - flush frontbuffer
@@ -93,6 +94,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
 
 	might_sleep();
+	intel_td_flush(i915);
 	intel_drrs_flush(i915, frontbuffer_bits);
 	intel_psr_flush(i915, frontbuffer_bits, origin);
 	intel_fbc_flush(i915, frontbuffer_bits, origin);
diff --git a/drivers/gpu/drm/i915/display/intel_tdf.h b/drivers/gpu/drm/i915/display/intel_tdf.h
new file mode 100644
index 000000000000..353cde21f6c2
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_tdf.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_TDF_H__
+#define __INTEL_TDF_H__
+
+/*
+ * TDF (Transient-Data-Flush) is needed for Xe2+ where special L3:XD caching can
+ * be enabled through various PAT index modes. Idea is to use this caching mode
+ * when for example rendering onto the display surface, with the promise that
+ * KMD will ensure transient cache entries are always flushed by the time we do
+ * the display flip, since display engine is never coherent with CPU/GPU caches.
+ */
+
+struct drm_i915_private;
+
+#ifdef I915
+static inline void intel_td_flush(struct drm_i915_private *i915) {}
+#else
+void intel_td_flush(struct drm_i915_private *i915);
+#endif
+
+#endif
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index a67977edff5b..b620389761d5 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -206,7 +206,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
 	display/xe_hdcp_gsc.o \
-	display/xe_plane_initial.o
+	display/xe_plane_initial.o \
+	display/xe_tdf.o
 
 # SOC code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
new file mode 100644
index 000000000000..2c0d4e144e09
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_tdf.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "xe_device.h"
+#include "intel_display_types.h"
+#include "intel_tdf.h"
+
+void intel_td_flush(struct drm_i915_private *i915)
+{
+	xe_device_td_flush(i915);
+}
-- 
2.34.1


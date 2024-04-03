Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3510896D46
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 381BA10E121;
	Wed,  3 Apr 2024 10:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RodU6ONA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E4710E121;
 Wed,  3 Apr 2024 10:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141558; x=1743677558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FVVgiX5Jc43lOhqsPdnPfM0PNc/Y3xki3wx35I+bzr0=;
 b=RodU6ONAf6SzegNLhZvO4hUXJLuxiL4ibSPm2UlXfPp4ppPYjUxNmiMX
 QvRNN6nyOnOz90zxzeBBZKvxpiy8DFwnJcoqhYChAcdWoZ3i8aiFxt4Ze
 4v6G2wsr4VLM7zAbhe3pK4zu0s10nbVlBpt/4/1Sa++8zpI2cthI9by2V
 6x6Mmfe0QJK+FCHUQoAft7SIGoxEFFa07JxKPOh3rPA4Vhs0Foa3RejMg
 JxYMi3/zw5CpXIkORv2bBSguPFwOte3aoR7daWbBT2FB9H3uz+M+9y5yd
 DlVVN5I+eB5vgsDWAdozDKSzvM5jOUgF5/tMxEKbJfVBRVeq6XdgLJPdB A==;
X-CSE-ConnectionGUID: emmBfadBTw+gRkic4MI0IA==
X-CSE-MsgGUID: hwFmhD7dSGuGqcWAPjhvwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212277"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212277"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:52:04 -0700
X-CSE-ConnectionGUID: uVloKiv9RNa9fJzK2zpNOQ==
X-CSE-MsgGUID: nWu5CKOTSviohU1wwBs1kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493457"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:52:02 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 24/25] drm/i915/display: perform transient flush
Date: Wed,  3 Apr 2024 16:21:22 +0530
Message-Id: <20240403105123.1327669-25-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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
index aed25890b6f5..0a720e9d12a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -110,6 +110,7 @@
 #include "intel_sdvo.h"
 #include "intel_snps_phy.h"
 #include "intel_tc.h"
+#include "intel_tdf.h"
 #include "intel_tv.h"
 #include "intel_vblank.h"
 #include "intel_vdsc.h"
@@ -7095,6 +7096,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
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
index 21316ee47026..71847e33f4c2 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -199,7 +199,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
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
2.25.1


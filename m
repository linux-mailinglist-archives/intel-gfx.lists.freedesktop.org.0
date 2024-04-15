Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204B88A4A18
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647E11122D3;
	Mon, 15 Apr 2024 08:14:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kcDfIp9S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8580E1122E7;
 Mon, 15 Apr 2024 08:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168882; x=1744704882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3Ys8OFzch4GqgkAAXHsZT1P7x/6Y+g9ifWx73wrXdPw=;
 b=kcDfIp9SW+PslF3QodoJ/uwB5aoKtS4gikwfSH/q+9wht/JX2ryGlsk+
 UaLERgQjUeo9BBV9XBN+EoFOnSXkgJKTT5TxgL4CxVQ5y0cUBJiXZueJQ
 oQTo4dc4KJSFvOJX9HuSKixbzOqFJF/zKA5EHdP1HuTTbIwLWxI+M3xZo
 QqcfiVWOijzWMOB5lggQmEilJCFOfKZ03deMNtS5nhF7bf7jP17yvSX70
 TdFXbuHZ8u7eCRWzXS8G6LUVslJunlYJrXi+MV1Bkf9/j5CotDuMHBS7H
 HBAWoDKu2QbaFJbUXDrq4BssfZdowWPnlYMUAZqM2C8aeUx0bJMUFz1O4 g==;
X-CSE-ConnectionGUID: M9SJaGWnTXmmrYoHHGRnNg==
X-CSE-MsgGUID: i1ORV5d0QgGK3kQfQo30TA==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096441"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096441"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:42 -0700
X-CSE-ConnectionGUID: w/QQaBG4Txqfl0N6xID13g==
X-CSE-MsgGUID: TT0RcuIXTVSaqHMEQWa20g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400514"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:40 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: [PATCH v3 20/21] drm/i915/display: perform transient flush
Date: Mon, 15 Apr 2024 13:44:22 +0530
Message-Id: <20240415081423.495834-21-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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
index 67697d9a559c..4fc46edcb4ad 100644
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
@@ -7242,6 +7243,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
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
index 6015c9e41f24..97a8674cdd76 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -198,7 +198,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
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


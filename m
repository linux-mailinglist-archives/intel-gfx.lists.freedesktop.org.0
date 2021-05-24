Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD92038F3B5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 21:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B596E925;
	Mon, 24 May 2021 19:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8346E5A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 19:30:33 +0000 (UTC)
IronPort-SDR: ptJY/bdicu29U/rD5aiDeg2pJdPP94ShmxHI2lysU1uZPkir0fAoZqcOQP2ZfQRBPHj8hlX8d5
 y18fc1gC2fnQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="200115205"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="200115205"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 12:30:33 -0700
IronPort-SDR: oPbyGBIp/GRj1YRD/LOvTFBgFMZRwy9e7A2CQi08ZgM/O/8T5cGHRbXIHXCQo8B8hayiIf1ADh
 /Sb/WhlqdJSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="632749096"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga005.fm.intel.com with ESMTP; 24 May 2021 12:30:32 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 12:30:28 -0700
Message-Id: <20210524193032.3015-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210524193032.3015-1-anusha.srivatsa@intel.com>
References: <20210524193032.3015-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/dmc: Move struct intel_dmc to
 intel_dmc.h
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

Move struct intel_dmc from i915_drv.h to intel_dmc.h.

v2: Add includes along with moving the struct.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.h | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h          | 18 +-----------------
 2 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 64816f4a71b6..4c22f567b61b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -6,12 +6,33 @@
 #ifndef __INTEL_DMC_H__
 #define __INTEL_DMC_H__
 
+#include "i915_reg.h"
+#include "intel_wakeref.h"
+#include <linux/workqueue.h>
+
 struct drm_i915_private;
 
 #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
 #define DMC_VERSION_MAJOR(version)	((version) >> 16)
 #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
 
+struct intel_dmc {
+	struct work_struct work;
+	const char *fw_path;
+	u32 required_version;
+	u32 max_fw_size; /* bytes */
+	u32 *dmc_payload;
+	u32 dmc_fw_size; /* dwords */
+	u32 version;
+	u32 mmio_count;
+	i915_reg_t mmioaddr[20];
+	u32 mmiodata[20];
+	u32 dc_state;
+	u32 target_dc_state;
+	u32 allowed_dc_mask;
+	intel_wakeref_t wakeref;
+};
+
 void intel_dmc_ucode_init(struct drm_i915_private *i915);
 void intel_dmc_load_program(struct drm_i915_private *i915);
 void intel_dmc_ucode_fini(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9cb02618ba15..b5962768a1f1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -67,6 +67,7 @@
 #include "display/intel_bios.h"
 #include "display/intel_display.h"
 #include "display/intel_display_power.h"
+#include "display/intel_dmc.h"
 #include "display/intel_dpll_mgr.h"
 #include "display/intel_dsb.h"
 #include "display/intel_frontbuffer.h"
@@ -328,23 +329,6 @@ struct drm_i915_display_funcs {
 	void (*read_luts)(struct intel_crtc_state *crtc_state);
 };
 
-struct intel_dmc {
-	struct work_struct work;
-	const char *fw_path;
-	u32 required_version;
-	u32 max_fw_size; /* bytes */
-	u32 *dmc_payload;
-	u32 dmc_fw_size; /* dwords */
-	u32 version;
-	u32 mmio_count;
-	i915_reg_t mmioaddr[20];
-	u32 mmiodata[20];
-	u32 dc_state;
-	u32 target_dc_state;
-	u32 allowed_dc_mask;
-	intel_wakeref_t wakeref;
-};
-
 enum i915_cache_level {
 	I915_CACHE_NONE = 0,
 	I915_CACHE_LLC, /* also used for snoopable memory on non-LLC */
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

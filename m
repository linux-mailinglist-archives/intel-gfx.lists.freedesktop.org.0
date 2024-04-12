Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B258A3191
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 16:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA9D10F6A4;
	Fri, 12 Apr 2024 14:53:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSsW0G7F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139E310F6A4;
 Fri, 12 Apr 2024 14:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712933597; x=1744469597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eKAivPNKuqhziSytJT5Ju7E43J+22EtsFhb2tVdyYIs=;
 b=bSsW0G7FVvHM/4oKmMd54yd3AlEj7PwtVgbRuBgRP/DSX6HXX+nBTnT2
 WloJI13rUjr6cunP6ZCffHBDDpQYZOMb3rjAVwzkcj0lETL7mIGHfR+lC
 Yhsd0In3QOR2SBobZNkB+X28Va6oQV65n+pYR6/EtxqFzlolal93hTPsB
 6NX+Dda/gTESp7dw/R7XM6isaVMkZUwoan9AMxfzRwsNeRkalI+sfUQKZ
 Zz6XnNrIsfjTShjGrEmjHr7TlR3peK8LG5V6qjvwYj7qlkz4iEkb9fAID
 ImNWdbU68KRxbDCKOJYsInMKb2nzN5L65zWlJ3lRp/TW9cNGEskM2mGXH w==;
X-CSE-ConnectionGUID: Q/1CgqUZRZa07WZvjBO5Mw==
X-CSE-MsgGUID: Zu03ilkWT9iQrXa1yOSC+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8246544"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8246544"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:17 -0700
X-CSE-ConnectionGUID: cnFoDqqXR4OkoFI3EYb/ow==
X-CSE-MsgGUID: MFKz96tfScGHCRlej3l6ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21162209"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 2/6] drm/i915/color: move palette registers to
 intel_color_regs.h
Date: Fri, 12 Apr 2024 17:52:54 +0300
Message-Id: <e82ca633fbe0c39d3d72379866737b509c05ece4.1712933479.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712933479.git.jani.nikula@intel.com>
References: <cover.1712933479.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

For some reason the paletter registers were missed when adding
intel_color_regs.h. Finish the job.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_color_regs.h   | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 30 -------------------
 2 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 9f4ae58f3e7e..969745821172 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -8,6 +8,36 @@
 
 #include "intel_display_reg_defs.h"
 
+/*
+ * Palette regs
+ */
+#define _PALETTE_A		0xa000
+#define _PALETTE_B		0xa800
+#define _CHV_PALETTE_C		0xc000
+/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
+#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
+#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
+#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
+/* pre-i965 10bit interpolated mode ldw */
+#define   PALETTE_10BIT_RED_LDW_MASK	REG_GENMASK(23, 16)
+#define   PALETTE_10BIT_GREEN_LDW_MASK	REG_GENMASK(15, 8)
+#define   PALETTE_10BIT_BLUE_LDW_MASK	REG_GENMASK(7, 0)
+/* pre-i965 10bit interpolated mode udw */
+#define   PALETTE_10BIT_RED_EXP_MASK	REG_GENMASK(23, 22)
+#define   PALETTE_10BIT_RED_MANT_MASK	REG_GENMASK(21, 18)
+#define   PALETTE_10BIT_RED_UDW_MASK	REG_GENMASK(17, 16)
+#define   PALETTE_10BIT_GREEN_EXP_MASK	REG_GENMASK(15, 14)
+#define   PALETTE_10BIT_GREEN_MANT_MASK	REG_GENMASK(13, 10)
+#define   PALETTE_10BIT_GREEN_UDW_MASK	REG_GENMASK(9, 8)
+#define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
+#define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
+#define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
+#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
+			       _PICK_EVEN_2RANGES(pipe, 2,			\
+						  _PALETTE_A, _PALETTE_B,	\
+						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
+						  (i) * 4)
+
 /* legacy palette */
 #define _LGC_PALETTE_A           0x4a000
 #define _LGC_PALETTE_B           0x4a800
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c689bc7e2867..b74965383a56 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1700,36 +1700,6 @@
 
 #define GMBUSFREQ_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6510)
 
-/*
- * Palette regs
- */
-#define _PALETTE_A		0xa000
-#define _PALETTE_B		0xa800
-#define _CHV_PALETTE_C		0xc000
-/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
-#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
-#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
-#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
-/* pre-i965 10bit interpolated mode ldw */
-#define   PALETTE_10BIT_RED_LDW_MASK	REG_GENMASK(23, 16)
-#define   PALETTE_10BIT_GREEN_LDW_MASK	REG_GENMASK(15, 8)
-#define   PALETTE_10BIT_BLUE_LDW_MASK	REG_GENMASK(7, 0)
-/* pre-i965 10bit interpolated mode udw */
-#define   PALETTE_10BIT_RED_EXP_MASK	REG_GENMASK(23, 22)
-#define   PALETTE_10BIT_RED_MANT_MASK	REG_GENMASK(21, 18)
-#define   PALETTE_10BIT_RED_UDW_MASK	REG_GENMASK(17, 16)
-#define   PALETTE_10BIT_GREEN_EXP_MASK	REG_GENMASK(15, 14)
-#define   PALETTE_10BIT_GREEN_MANT_MASK	REG_GENMASK(13, 10)
-#define   PALETTE_10BIT_GREEN_UDW_MASK	REG_GENMASK(9, 8)
-#define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
-#define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
-#define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
-#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
-			       _PICK_EVEN_2RANGES(pipe, 2,			\
-						  _PALETTE_A, _PALETTE_B,	\
-						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
-						  (i) * 4)
-
 #define PEG_BAND_GAP_DATA	_MMIO(0x14d68)
 
 #define BXT_RP_STATE_CAP        _MMIO(0x138170)
-- 
2.39.2


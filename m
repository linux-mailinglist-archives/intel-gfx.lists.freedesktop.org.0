Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173C7CC62AF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE20310EB46;
	Wed, 17 Dec 2025 06:10:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KTqhrhCs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E9910EBB1;
 Wed, 17 Dec 2025 06:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951846; x=1797487846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ljjJbSTC2fewhPcGashjdgeB+fL+HG/KVjS20by3gk=;
 b=KTqhrhCsEwdv83DVjiRyby8ykQrcEdFMKzpddiCcLjlhn1K1/RA/TcyY
 n9MUmOsVlaVZM+LqtLKHkbKxvoEz+NSPSTKnPpY0vxPS3u4DJa0Rcd6L1
 gfVSy9K0E35gwswOtZ7cGseEHPdpqRdx34QfkjKeoXNvFrM+0Enm9+PwZ
 8tchC7NZB82VTdevQijHLDe/2W6WbAnYPr6WVJY97VVkYsZXgq1nPQdOz
 z+G98rY3c9EhMcobm85i1XaZwZim060J0y/aQ7W7t0UsAYRNGa6cHdjcP
 7jy+s82Ghykp+o9vAYHNWnaE0cUB/el53p+ijtF4qYKr7pv9oIQTmXAla g==;
X-CSE-ConnectionGUID: 3F23UhmyQ86yUG271+3uQg==
X-CSE-MsgGUID: cvL2cMawT16Q4TFMrmi1Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471215"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471215"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:46 -0800
X-CSE-ConnectionGUID: dehQ+XthS3iJSU4dhtJJtA==
X-CSE-MsgGUID: CU5d52FORCy8zbtEwr15Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105213"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:44 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 15/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_fifo_underrun.c
Date: Wed, 17 Dec 2025 11:52:05 +0530
Message-ID: <20251217062209.852324-16-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
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

Move GEN7_ERR_INT reg to common header to make intel_fifo_underrun.c
free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/intel_fifo_underrun.c    |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 23 -------------------
 include/drm/intel/intel_gmd_common_regs.h     | 23 +++++++++++++++++++
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index b413b3e871d8..c834be759e40 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -28,8 +28,8 @@
 #include <linux/seq_buf.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 409c450a208a..ef2b33bbebee 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -326,29 +326,6 @@
 #define GEN7_MEDIA_MAX_REQ_COUNT	_MMIO(0x4070)
 #define GEN7_GFX_MAX_REQ_COUNT		_MMIO(0x4074)
 
-#define GEN7_ERR_INT	_MMIO(0x44040)
-#define   ERR_INT_POISON		(1 << 31)
-#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
-#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
-#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
-#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
-#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
-#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
-#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
-#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
-#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
-#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
-#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
-#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
-#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
-#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
-#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
-#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
-#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
-#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
-#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
-#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
-
 #define FPGA_DBG		_MMIO(0x42300)
 #define   FPGA_DBG_RM_NOCLAIM	REG_BIT(31)
 
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 13b3e4ad27f4..db7a03699bcb 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -325,4 +325,27 @@
 #define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
 #define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
 
+#define GEN7_ERR_INT	_MMIO(0x44040)
+#define   ERR_INT_POISON		(1 << 31)
+#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
+#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
+#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
+#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
+#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
+#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
+#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
+#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
+#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
+#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
+#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
+#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
+#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
+#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
+#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
+#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
+#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
+#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
+#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
+#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
+
 #endif
-- 
2.50.1


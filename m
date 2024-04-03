Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD297896E1B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17550112A22;
	Wed,  3 Apr 2024 11:23:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XYtaMSEG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC917112A22;
 Wed,  3 Apr 2024 11:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143407; x=1743679407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vDE2IhnL2kbkuWmMYO5AzV5fdSoom0Z7J2lGNmY/zmI=;
 b=XYtaMSEGQkGE6tU5KrHGWYxqgFOygKE9ClrSYwry0J7MoynFRDwc0DeH
 ZcbciodRgYIWOu6PLCzQ6ll9Jv+Bk5SeAFNGG/ZneClLSfiLIwLGhshhM
 ht7L8Z2kSrPYnWRdHGBg8NQ9Ab0JnoAJNd2Zr6ZetL51N8bjC+aZkg/vO
 GZBGUWyd8HDBmMvzI6IUM5yIoWEq/doLSiBYoHk6GgdPO8KfgEvlw0QBb
 6V+gKG4vJLcJ/LcM69Hi22HWCOiQhtbaImQ/x2lZJ4hmtVMWuvChZU6kN
 uZW0F9bNhKkLiZgS/05TGoinewk29d7NVUxE/LF1WY7uKe0UWsJLgJ6XP Q==;
X-CSE-ConnectionGUID: 9X7PoSSdT8uZIGsZA8VrPQ==
X-CSE-MsgGUID: P2ZWZT+3R7617UR4ORKaow==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824134"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824134"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:27 -0700
X-CSE-ConnectionGUID: NquJDDDwRo+pofAP8B9YUw==
X-CSE-MsgGUID: jhDN8j3wRES6HMzp5rl/RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358543"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:25 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 18/25] drm/i915/display: Enable RM timeout detection
Date: Wed,  3 Apr 2024 16:52:46 +0530
Message-Id: <20240403112253.1432390-19-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Enable RM timeout interrupt to detect any hang during display engine
register access. This interrupt is supported only on Display version 14.
Current default timeout is 2ms.

WA: 14012195489
Bspec: 50110

CC: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 10 ++++++++++
 drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f846c5b108b5..3035b50fcad9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -851,6 +851,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
 	bool found = false;
 
+	if (iir & GEN8_DE_RM_TIMEOUT) {
+		u32 val = intel_uncore_read(&dev_priv->uncore,
+				RMTIMEOUTREG_CAPTURE);
+		drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);
+		found = true;
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		if (iir & (XELPDP_PMDEMAND_RSP |
 			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
@@ -1666,6 +1673,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			de_port_masked |= DSI0_TE | DSI1_TE;
 	}
 
+	if (DISPLAY_VER(dev_priv) == 14)
+		de_misc_masked |= GEN8_DE_RM_TIMEOUT;
+
 	de_pipe_enables = de_pipe_masked |
 		GEN8_PIPE_VBLANK |
 		gen8_de_pipe_underrun_mask(dev_priv) |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 875d76fb8cd0..d1692b32bb8a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4212,6 +4212,8 @@
 #define RM_TIMEOUT		_MMIO(0x42060)
 #define  MMIO_TIMEOUT_US(us)	((us) << 0)
 
+#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420e0)
+
 /* interrupts */
 #define DE_MASTER_IRQ_CONTROL   (1 << 31)
 #define DE_SPRITEB_FLIP_DONE    (1 << 29)
@@ -4398,6 +4400,7 @@
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
+#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)
 #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
-- 
2.25.1


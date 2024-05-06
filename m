Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 940F78BCBA9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 12:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2793C10EBD1;
	Mon,  6 May 2024 10:09:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PyUzSvpD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FBF10EBD1
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 10:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714990159; x=1746526159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xkabKaZf6wBM6xGyFw8Z1NQY0i0JohXTHtjljAIPH0E=;
 b=PyUzSvpDCp+PykkqrKLtvbDYC+n9SseR+4t5Z7pVFrpZ7vHAVI6tW0mN
 7a6v/63SkwRhe+ir6xZXJvGdXibOP2nT66wzyn2bKpuqq2z3nP6MPrrpM
 +Wl+Yx30GuiQJctUOQ+jN6TAqmYk8nz6/0vmrxonC3FjKWUA37I3fDkEr
 oR5jWPKoPSUhr0rhwIdq787rBpCqMfAUlixMYH+FHnrfYlqqvSx4EtUHo
 E0ih6gzHD7rBTtn6CQuAQSnz8WiH/uO2NfW0PEnZ+ht/LaX8t7GjAedkZ
 9YCFZYsoya/A8STWn14WgJmcjeAXHyfX6JvCQVN+CAmU3vanuL5mNeSUv w==;
X-CSE-ConnectionGUID: shSylEFwTLCNQwH+Pd+ePw==
X-CSE-MsgGUID: ClhL4VciR+uDsU8P9GaXwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="21341448"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21341448"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:19 -0700
X-CSE-ConnectionGUID: ubaVb5fOR4OyYYbXIwT9iQ==
X-CSE-MsgGUID: MGJoEj1ST4K9kOKVcgPo8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32719085"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915: pass dev_priv explicitly to PIPE_CRC_*
Date: Mon,  6 May 2024 13:09:03 +0300
Message-Id: <849315d4417a2ce60e867648d9a040c5e96bc22d.1714990089.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714990089.git.jani.nikula@intel.com>
References: <cover.1714990089.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PIPE_CRC_RES_* register macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 24 ++++++++++---------
 drivers/gpu/drm/i915/i915_reg.h               | 22 ++++++++---------
 2 files changed, 24 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index c41f058acaff..1674570dff1e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -356,7 +356,7 @@ static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
 				     0, 0, 0, 0);
 }
 
@@ -364,11 +364,11 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(dev_priv, pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(dev_priv, pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(dev_priv, pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(dev_priv, pipe)));
 }
 
 static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
@@ -377,19 +377,21 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 	u32 res1, res2;
 
 	if (DISPLAY_VER(dev_priv) >= 3)
-		res1 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(pipe));
+		res1 = intel_uncore_read(&dev_priv->uncore,
+					 PIPE_CRC_RES_RES1_I915(dev_priv, pipe));
 	else
 		res1 = 0;
 
 	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
-		res2 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES2_G4X(pipe));
+		res2 = intel_uncore_read(&dev_priv->uncore,
+					 PIPE_CRC_RES_RES2_G4X(dev_priv, pipe));
 	else
 		res2 = 0;
 
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(dev_priv, pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(dev_priv, pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(dev_priv, pipe)),
 				     res1, res2);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4525afafc79f..4a88eb9cd1f8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1138,17 +1138,17 @@
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 
 #define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
-#define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
-#define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
-#define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
-#define PIPE_CRC_RES_4_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
-#define PIPE_CRC_RES_5_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
-
-#define PIPE_CRC_RES_RED(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
-#define PIPE_CRC_RES_GREEN(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
-#define PIPE_CRC_RES_BLUE(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
-#define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
-#define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
+#define PIPE_CRC_RES_1_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
+#define PIPE_CRC_RES_2_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
+#define PIPE_CRC_RES_3_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
+#define PIPE_CRC_RES_4_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
+#define PIPE_CRC_RES_5_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
+
+#define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
+#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
+#define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
-- 
2.39.2


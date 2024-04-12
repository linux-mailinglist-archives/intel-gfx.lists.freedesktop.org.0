Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7238A3190
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 16:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA2410E8B5;
	Fri, 12 Apr 2024 14:53:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j8kj+Gys";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC8010F6A3;
 Fri, 12 Apr 2024 14:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712933592; x=1744469592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KUUEuyKXqepX2T46KqDA2ADt+mw+6PNx7IyACnU66e0=;
 b=j8kj+GysipQFrSywueOLWzMWw2XTmNSkDjT+ll5V3jMkpNUTT+E6BcTf
 PhDcK3zelzOG1iHJdlo00Tn9dprbYrqDi6MtSSOItd3+Rc/fjMyKiAe+k
 mEPRcW6VGDJwu+mXK4eQ1C5ZfSljY3YV2qEP8aEG1Oh6OpI+GBS+trRmS
 LhMjJSezRk/MLVvH0V0sLBd1pLPEYu4jPcJI3OfLGFkIv1l1rzAHR1R0r
 pqRzB7MzmE2fOyRoML4mTrveVv53tn6boI/GH/Q7agkJT3tXZ96e9CFIg
 k+j1oxWEcLWxffDhHG5DitH5lJdaKM/1tN5URqJmNmrm9ZVy7THMEkmwd g==;
X-CSE-ConnectionGUID: CvF/KiK0SAOdYxHOGQdTGA==
X-CSE-MsgGUID: P1JG0/VqToWLnLXjdpZBpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19810873"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19810873"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:12 -0700
X-CSE-ConnectionGUID: VYlAtR5rRlyb27IEmKGsmQ==
X-CSE-MsgGUID: Z8yF1MPvSY2Wk047F2bDaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21677393"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/6] drm/i915/audio: move LPE audio regs to intel_audio_regs.h
Date: Fri, 12 Apr 2024 17:52:53 +0300
Message-Id: <4fbcf9e020bb6fa315581c86c9729a665917ed75.1712933479.git.jani.nikula@intel.com>
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

There are too few registers to warrant a dedicated file for LPE audio
regs, but the audio reg file is better than i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio_regs.h | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lpe_audio.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h                 | 16 ----------------
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index 616e7b1275c4..7a6d919481fc 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -148,4 +148,20 @@
 #define HBLANK_START_COUNT_96	4
 #define HBLANK_START_COUNT_128	5
 
+/* LPE Audio */
+#define I915_HDMI_LPE_AUDIO_BASE	(VLV_DISPLAY_BASE + 0x65000)
+#define I915_HDMI_LPE_AUDIO_SIZE	0x1000
+
+#define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62f38)
+#define   VLV_CHICKEN_BIT_DBG_ENABLE	REG_BIT(0)
+
+#define _VLV_AUD_PORT_EN_B_DBG		(VLV_DISPLAY_BASE + 0x62f20)
+#define _VLV_AUD_PORT_EN_C_DBG		(VLV_DISPLAY_BASE + 0x62f30)
+#define _VLV_AUD_PORT_EN_D_DBG		(VLV_DISPLAY_BASE + 0x62f34)
+#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_PORT3((port) - PORT_B,	\
+						    _VLV_AUD_PORT_EN_B_DBG, \
+						    _VLV_AUD_PORT_EN_C_DBG, \
+						    _VLV_AUD_PORT_EN_D_DBG)
+#define   VLV_AMP_MUTE			REG_BIT(1)
+
 #endif /* __INTEL_AUDIO_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 5863763de530..93e6cac9a4ed 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -72,7 +72,7 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
-#include "i915_reg.h"
+#include "intel_audio_regs.h"
 #include "intel_de.h"
 #include "intel_lpe_audio.h"
 #include "intel_pci_config.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3f34efcd7d6c..c689bc7e2867 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1228,22 +1228,6 @@
 #define I915_ASLE_INTERRUPT				(1 << 0)
 #define I915_BSD_USER_INTERRUPT				(1 << 25)
 
-#define I915_HDMI_LPE_AUDIO_BASE	(VLV_DISPLAY_BASE + 0x65000)
-#define I915_HDMI_LPE_AUDIO_SIZE	0x1000
-
-/* DisplayPort Audio w/ LPE */
-#define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62F38)
-#define VLV_CHICKEN_BIT_DBG_ENABLE	(1 << 0)
-
-#define _VLV_AUD_PORT_EN_B_DBG		(VLV_DISPLAY_BASE + 0x62F20)
-#define _VLV_AUD_PORT_EN_C_DBG		(VLV_DISPLAY_BASE + 0x62F30)
-#define _VLV_AUD_PORT_EN_D_DBG		(VLV_DISPLAY_BASE + 0x62F34)
-#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_PORT3((port) - PORT_B,	   \
-						    _VLV_AUD_PORT_EN_B_DBG, \
-						    _VLV_AUD_PORT_EN_C_DBG, \
-						    _VLV_AUD_PORT_EN_D_DBG)
-#define VLV_AMP_MUTE		        (1 << 1)
-
 #define GEN6_BSD_RNCID			_MMIO(0x12198)
 
 #define GEN7_FF_THREAD_MODE		_MMIO(0x20a0)
-- 
2.39.2


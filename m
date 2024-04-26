Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EAC8B3605
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 12:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9853710F5F9;
	Fri, 26 Apr 2024 10:51:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oGrYkxeZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EFC910F5F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 10:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714128708; x=1745664708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5/zjZi3PjY6Mm4bJQoqz4IR/JNShPRGFuXyc1j40YaY=;
 b=oGrYkxeZgJIvBRURp1nbW7E6QmbZHq1zmVgQjDhcrVBI60eEYj2T5vud
 xgHB55fhJRc0gbzg8Qf9Wswg6gXgZ9cUJ8gZqHTDKcfKl6aDRjRUBNaLw
 DOU0DtZt2MvTAoDp/6zhUcEjWrrWPZ83t8B8xH03Z3Z+sUYdWHeHp85Un
 Cl0T1eDuRt7ClM8ZSr+Sw7BxlUJWo9uZnxUa/97VDk09K8Q3FvV4r6RVQ
 0xIZd0RCQZXECiyhJSBrO1+9YudVFJp9Lq8ykxx610dg3uXCV4c1z226t
 tFfXmOpXQLK36kzCTLvfKpDK/n7lSNBS6/M+Po7PvqIDPUC8UyVr+u1Wh g==;
X-CSE-ConnectionGUID: ctSZYX7uQCiGD7urirDpOQ==
X-CSE-MsgGUID: a276l8/CRdCidX4p2PhEmg==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="21264952"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="21264952"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:47 -0700
X-CSE-ConnectionGUID: mEGZGopgQeWDUmTfbzp3zA==
X-CSE-MsgGUID: nX18OE8BSFmr/aqgtLF3Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25468578"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/4] drm/i915/audio: move LPE audio regs to
 intel_audio_regs.h
Date: Fri, 26 Apr 2024 13:51:34 +0300
Message-Id: <b5ee35309b2e0905aaa12d944b3d379c45a8a0bd.1714128645.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714128645.git.jani.nikula@intel.com>
References: <cover.1714128645.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

v2: Rebase

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio_regs.h | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lpe_audio.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h                 | 16 ----------------
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index 616e7b1275c4..88ea2740365d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -148,4 +148,20 @@
 #define HBLANK_START_COUNT_96	4
 #define HBLANK_START_COUNT_128	5
 
+/* LPE Audio */
+#define I915_HDMI_LPE_AUDIO_BASE	(VLV_DISPLAY_BASE + 0x65000)
+#define I915_HDMI_LPE_AUDIO_SIZE	0x1000
+
+#define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62F38)
+#define VLV_CHICKEN_BIT_DBG_ENABLE	(1 << 0)
+
+#define _VLV_AUD_PORT_EN_B_DBG		0x62F20
+#define _VLV_AUD_PORT_EN_C_DBG		0x62F30
+#define _VLV_AUD_PORT_EN_D_DBG		0x62F34
+#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_BASE_PORT3(VLV_DISPLAY_BASE, (port) - PORT_B, \
+							 _VLV_AUD_PORT_EN_B_DBG, \
+							 _VLV_AUD_PORT_EN_C_DBG, \
+							 _VLV_AUD_PORT_EN_D_DBG)
+#define VLV_AMP_MUTE		        (1 << 1)
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
index 4eb37f38d888..4913b9a371c0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -966,22 +966,6 @@
 #define I915_ASLE_INTERRUPT				(1 << 0)
 #define I915_BSD_USER_INTERRUPT				(1 << 25)
 
-#define I915_HDMI_LPE_AUDIO_BASE	(VLV_DISPLAY_BASE + 0x65000)
-#define I915_HDMI_LPE_AUDIO_SIZE	0x1000
-
-/* DisplayPort Audio w/ LPE */
-#define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62F38)
-#define VLV_CHICKEN_BIT_DBG_ENABLE	(1 << 0)
-
-#define _VLV_AUD_PORT_EN_B_DBG		0x62F20
-#define _VLV_AUD_PORT_EN_C_DBG		0x62F30
-#define _VLV_AUD_PORT_EN_D_DBG		0x62F34
-#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_BASE_PORT3(VLV_DISPLAY_BASE, (port) - PORT_B, \
-							 _VLV_AUD_PORT_EN_B_DBG, \
-							 _VLV_AUD_PORT_EN_C_DBG, \
-							 _VLV_AUD_PORT_EN_D_DBG)
-#define VLV_AMP_MUTE		        (1 << 1)
-
 #define GEN6_BSD_RNCID			_MMIO(0x12198)
 
 #define GEN7_FF_THREAD_MODE		_MMIO(0x20a0)
-- 
2.39.2


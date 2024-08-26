Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3955495F69C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D533A10E23D;
	Mon, 26 Aug 2024 16:31:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjLDc/sx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BFAF10E23B;
 Mon, 26 Aug 2024 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689913; x=1756225913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ALzjmxiQScC2OTw3KIoYMUZnPltOxQAsbhYEQcrWWQE=;
 b=HjLDc/sxHg5vfe/t6tP0bsFFyGFN0FObeW01oEqIegs6/kKYdd3/qQVN
 gkmhikIfBeMOI3h6w5bJQr4uF1IPtdmDE6eJCu0Rgqzc05V/A2lX1HA7G
 AiYgN4pNUXX+VDbq5Qo/kRMOUtyUlA2QwZatkMyL6PsFG1pfTjhNYaY3S
 omC3LRmJOdF/enFahUEhmcS/kCxvBp40NeTqY9tq9Wl14Nd4DPcurdaLU
 /l878+LDtH/0rVNlHcpejPwWQH4cuDnjVxiqX4zbca4sLQ8lcwVME21CP
 ViR6yWX478pkesJLL4Yi17v6Tfv6j5iCaSYtu+irrL92Ad4+r16PNBoda w==;
X-CSE-ConnectionGUID: j+A3k69VT0OJlyS5n4cZjA==
X-CSE-MsgGUID: j7JKYsJ0Sd+H2U2xo6pbOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22991568"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22991568"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:53 -0700
X-CSE-ConnectionGUID: 62x46SoEQdWD4sLN2s4enQ==
X-CSE-MsgGUID: lkX89WNTR3CQXsFW6NSXag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62529144"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/7] drm/i915/display: include drm/drm_probe_helper.h where
 needed
Date: Mon, 26 Aug 2024 19:31:16 +0300
Message-Id: <88f565495763d0f31a84f31059ab3b01af9bf2b9.1724689818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
References: <cover.1724689818.git.jani.nikula@intel.com>
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

Stop including drm/drm_probe_helper.h in intel_display_types.h and only
include it where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c             | 1 +
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_dvo.c           | 1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c       | 2 ++
 drivers/gpu/drm/i915/display/intel_lvds.c          | 1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c          | 1 +
 drivers/gpu/drm/i915/display/intel_tv.c            | 1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c             | 1 +
 drivers/gpu/drm/xe/display/xe_display.c            | 1 +
 10 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 293efc1f841d..87a27d91d15d 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -29,6 +29,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fixed.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_reg.h"
 #include "icl_dsi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7ca5fade19d4..56ed24928f4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -40,7 +40,6 @@
 #include <drm/drm_encoder.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
-#include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 12e7628cbecf..9508ceae0d84 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -31,6 +31,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index a43c8649d726..bd2f6ad0e76e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -38,6 +38,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_probe_helper.h>
 #include <drm/intel/intel_lpe_audio.h>
 
 #include "g4x_hdmi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index d9ec349f3c8c..2617c5f63a07 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -23,6 +23,8 @@
 
 #include <linux/kernel.h>
 
+#include <drm/drm_probe_helper.h>
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "intel_display_power.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index fb4ed9f7855b..1734b12ddf5e 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -37,6 +37,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 7cc519b402e9..b83bf813677d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -36,6 +36,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 581844d1db9a..e40aff490486 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -33,6 +33,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index d21f3fb39706..f19660064525 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -30,6 +30,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 78a884ddd499..50e62f82313e 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
+#include <drm/drm_probe_helper.h>
 #include <drm/xe_drm.h>
 
 #include "soc/intel_dram.h"
-- 
2.39.2


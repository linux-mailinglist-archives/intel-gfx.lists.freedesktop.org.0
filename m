Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB41F707D5F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 11:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF06A10E50C;
	Thu, 18 May 2023 09:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE99710E4F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 09:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684403775; x=1715939775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7/TYV/VkJebiw7B44qR/bvDaODK2AXgi7b+kUOIoJf4=;
 b=FR1saQ81t6+vXdA2fWwPXFDk9TFwLSofiuWcyjErhL2vcnjppD9VbRES
 lDU44epWI4eCaTdV6zsfe2KdHlm7M0CazKPakjutwwe4akQlTL1OdeKcO
 JavObnDzfUpMkj3BwDaX1QvhICIhpy6CZjKZu6BlnRi2w1cMbSvUeRcQ3
 bAq/CKtgYTUMlMES71UoACEwXZwXfGMN8bg6Dui+kFtOpDB0vxb+cMcGF
 CUm3R5ejyxTjmgNIdiaDMnAWGpzrobTEgunco2lsXdIk5p+U73JZWvkdd
 qzIFBQNlRn1FxP/InoIKWRS79tQudK9LBUchxiNHV4GWtfHOjKv912GW7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438366662"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438366662"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="791897344"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="791897344"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 02:56:14 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 15:19:12 +0530
Message-Id: <20230518094916.1142812-2-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230518094916.1142812-1-arun.r.murthy@intel.com>
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/display: global histogram irq
 handler
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

With the enablement of global histogram, upon generation of histogram,
an interrupt is triggered. This patch handles the irq.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 6 +++++-
 drivers/gpu/drm/i915/i915_reg.h | 5 +++--
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index e28bfb5f7347..d72fb6d9282d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -43,6 +43,7 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
+#include "display/intel_global_hist.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
@@ -2765,6 +2766,9 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		ret = IRQ_HANDLED;
 		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
 
+		if (iir & GEN9_PIPE_GLOBAL_HIST_EVENT)
+			intel_global_hist_irq_handler(dev_priv, pipe);
+
 		if (iir & GEN8_PIPE_VBLANK)
 			intel_handle_vblank(dev_priv, pipe);
 
@@ -5043,7 +5047,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
-		GEN8_PIPE_CDCLK_CRC_DONE;
+		GEN8_PIPE_CDCLK_CRC_DONE | GEN9_PIPE_GLOBAL_HIST_EVENT;
 	u32 de_pipe_enables;
 	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
 	u32 de_port_enables;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 94d0c8d14d43..546207ac4859 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3887,7 +3887,7 @@
 #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
 #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
 #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
-#define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
+#define   PIPE_GLOBAL_HIST_EVENT_ENABLE		(1UL << 23)
 #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
 #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
 #define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
@@ -3910,7 +3910,7 @@
 #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
 #define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
 #define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
-#define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
+#define   PIPE_GLOBAL_HIST_EVENT_STATUS		(1UL << 7)
 #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
 #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
 #define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
@@ -5815,6 +5815,7 @@
 #define  GEN8_PIPE_VSYNC		(1 << 1)
 #define  GEN8_PIPE_VBLANK		(1 << 0)
 #define  GEN9_PIPE_CURSOR_FAULT		(1 << 11)
+#define  GEN9_PIPE_GLOBAL_HIST_EVENT	(1 << 12)
 #define  GEN11_PIPE_PLANE7_FAULT	(1 << 22)
 #define  GEN11_PIPE_PLANE6_FAULT	(1 << 21)
 #define  GEN11_PIPE_PLANE5_FAULT	(1 << 20)
-- 
2.25.1


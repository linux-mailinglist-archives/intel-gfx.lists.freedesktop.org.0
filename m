Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E56B9779BA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 09:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A9610E8E2;
	Fri, 13 Sep 2024 07:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k8hw+cK0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BA110E8E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 07:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726212849; x=1757748849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oOd3Xob06M3l1wXmapdCkkstP67YPErPNieKU3hsURo=;
 b=k8hw+cK06qzXwQPJafrQrHEMp+tJugGTtlrZn2jm93erlI2LilDN8hnw
 jWJTI/DKZhuRVMA0OpxmtyVDGcRi3baIHbQiaA4VUptNbP/Vz8frGKmEL
 EK+TyVXyrI51Qxy2ETQKI68zYVAUrTycmMhWj44+a00jzJCAHq4KsCV8L
 xhslBNFeloAKHju63x9WOTCSVD2mK9eJFTmbWguH8OK2ECReKdFt80yeB
 mZDNJOHuMERuE3Oe2l6He2iciufdPceP5ORMjmuqn2IG89VNIU6irb899
 KzjR3y6HwIJL53K3r05fnpn8HG5NTusV5d4s0eGM7lidkBVm2BulWVM3y Q==;
X-CSE-ConnectionGUID: 6m4ydndtSbWCE9+qK1rwhA==
X-CSE-MsgGUID: vmNe49GKQVWvZ66vsH3kVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="24644228"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="24644228"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 00:34:09 -0700
X-CSE-ConnectionGUID: TvLj9oqJSNOQrkAO3Zl12A==
X-CSE-MsgGUID: YWaJ4GmBRwiYqsBaLwk3fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="72745195"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.104])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 00:34:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Add block_dc6_needed variable into
 intel_crtc
Date: Fri, 13 Sep 2024 10:33:46 +0300
Message-Id: <20240913073347.3273589-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240913073347.3273589-1-jouni.hogander@intel.com>
References: <20240913073347.3273589-1-jouni.hogander@intel.com>
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

We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
prevent DC6 in case of Panel Replay. This causes problems if user-space is
polling for vblank events. For this purpose add new block_dc6_needed
variable into intel_crtc.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  3 ++
 .../drm/i915/display/intel_display_types.h    |  7 +++++
 drivers/gpu/drm/i915/display/intel_psr.c      |  7 +++++
 4 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8f13f148c73e3..7ff721bcec0d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1361,6 +1361,34 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
 	return true;
 }
 
+/**
+ * block_dc6_on_vblank_get - get block DC6 entry reference
+ *
+ * @_crtc: drm crtc pointer
+ *
+ * This function is called from Panel Replay code when Panel Replay gets
+ * activated. Intention is to block DC6 entry when VBI is enabled and Panel
+ * Replay is active.
+ */
+void block_dc6_on_vblank_get(struct drm_crtc *_crtc)
+{
+	to_intel_crtc(_crtc)->block_dc6_needed++;
+}
+
+/**
+ * block_dc6_on_vblank_put - free block DC6 entry reference
+ *
+ * @crtc: drm crtc pointer
+ *
+ * This function is called from Panel Replay code when Panel Replay is
+ * deactivated. Intention is to block DC6 entry when VBI is enabled and Panel
+ * Replay is active.
+ */
+void block_dc6_on_vblank_put(struct drm_crtc *crtc)
+{
+	to_intel_crtc(crtc)->block_dc6_needed--;
+}
+
 int bdw_enable_vblank(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 2a090dd6abd7c..fe3ada8f37283 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -77,6 +77,9 @@ void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_
 void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_stats[I915_MAX_PIPES]);
 void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
+void block_dc6_on_vblank_get(struct drm_crtc *crtc);
+void block_dc6_on_vblank_put(struct drm_crtc *crtc);
+
 void intel_display_irq_init(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 000ab373c8879..df0c3eb750809 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1413,6 +1413,13 @@ struct intel_crtc {
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 #endif
+
+	/*
+	 * We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
+	 * prevent DC6 in case of Panel Replay. This causes problems if user-space is
+	 * polling for vblank events.
+	 */
+	u8 block_dc6_needed;
 };
 
 struct intel_plane {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1a4ef231a53ca..f9e5177893c46 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -35,6 +35,7 @@
 #include "intel_cursor_regs.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
@@ -970,6 +971,9 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 			       val);
 	}
 
+	if (intel_dp_is_edp(intel_dp))
+		block_dc6_on_vblank_get(&intel_crtc_for_pipe(display, intel_dp->psr.pipe)->base);
+
 	intel_de_rmw(display,
 		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
 		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
@@ -2005,6 +2009,9 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 	}
 
 	if (intel_dp->psr.panel_replay_enabled) {
+		if (intel_dp_is_edp(intel_dp))
+			block_dc6_on_vblank_put(drm_crtc_from_index(display->drm,
+								    intel_dp->psr.pipe));
 		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
 	} else if (intel_dp->psr.sel_update_enabled) {
-- 
2.34.1


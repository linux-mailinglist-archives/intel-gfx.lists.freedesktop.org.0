Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CF18FB757
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9B310E50C;
	Tue,  4 Jun 2024 15:31:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JkPtj3ua";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32D0310E51B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515081; x=1749051081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wDWOb0B0szTrnsmZofonY97KTm3kCF7Ubb6fsIMV4hE=;
 b=JkPtj3uayqXcn9J/rzDXYBFOeNzjDgWT8g8N5rHLsqv0OAwQ8slimRSQ
 xSm1kESL4CDe+iM6RD5ORYbEMYg1g329+ZPXeHggelpjZUM+Af7PT/Eus
 zhcE1w6VNMxE2AVB8PqiwklDaZ4F27YFyXnj0jxSM2/HBmYO4hLqouEjL
 Eo78ES6Z/t1gHfcG0KjE81+/t19RRV7DqF7CGITbb0CqDQ8Jx/26nPCKz
 dyEC3WCCFJ1xnv/W3gMJSDCIGtaCNhEz7fZ4xT7zcNL2H4W0WdyhPgb+Q
 xp2uj9Seu22BOK8pB7fMWD2CNMT2D48wmtAxJ46gjcOh1XG4lzAWviKsn g==;
X-CSE-ConnectionGUID: 9HEQLNvJRO297dkvU2DPJA==
X-CSE-MsgGUID: Pgfq4aojTjetEd02k8lOxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24733605"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="24733605"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:17 -0700
X-CSE-ConnectionGUID: Q1IcFFMgQoOYcWF+/Aueqw==
X-CSE-MsgGUID: 7wsEVo87To6CcfMdvvI8cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41828043"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 60/65] drm/i915: pass dev_priv explicitly to
 TRANS_DDI_FUNC_CTL2
Date: Tue,  4 Jun 2024 18:26:18 +0300
Message-Id: <2b61bf9c1f74ae633c99aa34fbf1aa85735cc5b6.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_DDI_FUNC_CTL2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           | 6 ++++--
 drivers/gpu/drm/i915/display/intel_ddi.c         | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 4 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index acc80d439352..ae8f6617aa70 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -784,7 +784,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 	if (intel_dsi->dual_link) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL2(dsi_trans),
+			intel_de_rmw(dev_priv,
+				     TRANS_DDI_FUNC_CTL2(dev_priv, dsi_trans),
 				     0, PORT_SYNC_MODE_ENABLE);
 		}
 
@@ -1344,7 +1345,8 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	if (intel_dsi->dual_link) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL2(dsi_trans),
+			intel_de_rmw(dev_priv,
+				     TRANS_DDI_FUNC_CTL2(dev_priv, dsi_trans),
 				     PORT_SYNC_MODE_ENABLE, 0);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c5571be3c66e..515996c49f5a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -603,7 +603,8 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 		}
 
 		intel_de_write(dev_priv,
-			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), ctl2);
+			       TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder),
+			       ctl2);
 	}
 
 	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
@@ -640,7 +641,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 
 	if (DISPLAY_VER(dev_priv) >= 11)
 		intel_de_write(dev_priv,
-			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), 0);
+			       TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder),
+			       0);
 
 	ctl = intel_de_read(dev_priv,
 			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
@@ -3757,7 +3759,8 @@ static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *de
 	u32 master_select;
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		u32 ctl2 = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcoder));
+		u32 ctl2 = intel_de_read(dev_priv,
+				         TRANS_DDI_FUNC_CTL2(dev_priv, cpu_transcoder));
 
 		if ((ctl2 & PORT_SYNC_MODE_ENABLE) == 0)
 			return INVALID_TRANSCODER;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 036f77c2702d..bf55c9064b76 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -913,7 +913,8 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	 * Incase of dual link, TE comes from DSI_1
 	 * this is to check if dual link is enabled
 	 */
-	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
+	val = intel_uncore_read(&dev_priv->uncore,
+				TRANS_DDI_FUNC_CTL2(dev_priv, TRANSCODER_DSI_0));
 	val &= PORT_SYNC_MODE_ENABLE;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 14f4060dd573..f330953e71cf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4009,7 +4009,7 @@ enum skl_power_gate {
 #define _TRANS_DDI_FUNC_CTL2_EDP	0x6f404
 #define _TRANS_DDI_FUNC_CTL2_DSI0	0x6b404
 #define _TRANS_DDI_FUNC_CTL2_DSI1	0x6bc04
-#define TRANS_DDI_FUNC_CTL2(tran)	_MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
+#define TRANS_DDI_FUNC_CTL2(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
 #define  PORT_SYNC_MODE_ENABLE			REG_BIT(4)
 #define  PORT_SYNC_MODE_MASTER_SELECT_MASK	REG_GENMASK(2, 0)
 #define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))
-- 
2.39.2


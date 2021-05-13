Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB12537F640
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 13:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F436E0B8;
	Thu, 13 May 2021 11:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14BEF6E0B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 11:03:18 +0000 (UTC)
IronPort-SDR: ZGPNzcPNyqhoK8SUD5kMIZcXdqknvNLfZFwLM1FFsfIxLUOUZJRAB2CEWFwmw+yLLM+wBKEM32
 l8zjBWFu5K6A==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="196827944"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="196827944"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 04:03:16 -0700
IronPort-SDR: e+Y5jiJeMTaPoT5bBSso5CXd+WpL/k1HDLDJ7srKJgVSiWda35agfHbgcW9+kROkG86Ie2zVwp
 89H7wyzYliiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="456207758"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 13 May 2021 04:03:14 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org,
	hariom.pandey@intel.com
Date: Thu, 13 May 2021 16:23:34 +0530
Message-Id: <20210513105334.175595-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/jsl: Add W/A 1409054076 for JSL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When pipe A is disabled and MIPI DSI is enabled on pipe B,
the AMT KVMR feature will incorrectly see pipe A as enabled.
Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
it set while DSI is enabled on pipe B. No impact to setting
it all the time.

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 39 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h        |  1 +
 2 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ce544e20f35c..7ca83b253d7e 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -40,6 +40,8 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
+static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
+				    enum pipe *pipe);
 static int header_credits_available(struct drm_i915_private *dev_priv,
 				    enum transcoder dsi_trans)
 {
@@ -1036,9 +1038,26 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
+	enum pipe pipe;
 	enum transcoder dsi_trans;
 	u32 tmp;
 
+	/*
+	 * WA 1409054076:JSL
+	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
+	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
+	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
+	 * it set while DSI is enabled on pipe B
+	 */
+	gen11_dsi_get_hw_state(encoder, &pipe);
+	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
+			pipe == PIPE_B &&
+			dev_priv->active_pipes != BIT(PIPE_A) &&
+			!(intel_de_read(dev_priv, CHICKEN_PAR1_1) &
+				IGNORE_KVMR_PIPE_A)) {
+		intel_de_write(dev_priv, CHICKEN_PAR1_1,
+				intel_de_read(dev_priv, CHICKEN_PAR1_1) | IGNORE_KVMR_PIPE_A);
+	}
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
 		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans));
@@ -1245,6 +1264,7 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
+
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
@@ -1260,9 +1280,28 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
+	enum pipe pipe;
 	enum transcoder dsi_trans;
 	u32 tmp;
 
+
+	/*
+	 * WA 1409054076:JSL
+	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
+	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
+	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
+	 * it set while DSI is enabled on pipe B
+	 */
+	gen11_dsi_get_hw_state(encoder, &pipe);
+	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
+			pipe == PIPE_B &&
+			dev_priv->active_pipes != BIT(PIPE_A) &&
+			(intel_de_read(dev_priv, CHICKEN_PAR1_1) &
+			 IGNORE_KVMR_PIPE_A)) {
+		intel_de_write(dev_priv, CHICKEN_PAR1_1,
+				intel_de_read(dev_priv, CHICKEN_PAR1_1) &
+				!IGNORE_KVMR_PIPE_A);
+	}
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 871d839dfcb8..bcad02d6f51b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8039,6 +8039,7 @@ enum {
 # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
 
 #define CHICKEN_PAR1_1			_MMIO(0x42080)
+#define  IGNORE_KVMR_PIPE_A		(1 << 23)
 #define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
 #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
 #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

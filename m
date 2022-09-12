Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 009495B5E99
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE00610E2F0;
	Mon, 12 Sep 2022 16:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADBD10E2F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001704; x=1694537704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HXWme6FP/xssCBX7kzhS1mH2vRZuqv8mTWTi2LRuX1U=;
 b=KGRMUhT/kbKN0yCKKUS7kTO05EvcFBsSvM6vWtU8y1V2aC7s7N3sEeNc
 haxqrkuSmVcp0rS0xKDGdYi9BP7ipwEXEzzdeq5kQNYLws5slVrLoQMPV
 8tivcYyHHL6vX3H5I6S83XxfLiIhtZ6DU6QW1pr8t3eqjlkHgzpg9X57x
 fKA5zymQGvbLLSN+0y2tXhWld4mZk4fSgyNaJzejUi1coZ9hfIdJwjHYG
 72iq46momuVeAjO/5xlmsCVSW8X/MxoUnT/DTHd2EfJaY2G0LRXkJPL0f
 y4zx8EiFXjR7bqOMH5KnwNi6sQ0x59FrHcx/LFetPFr5LokMNNOcSCs37 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="295503580"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="295503580"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="567241620"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:27 +0300
Message-Id: <bab34a20d70c6851b157678c658c380800fdd79a.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/15] drm/i915/dpio: un-inline the vlv
 phy/channel mapping functions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simplify the heavy intel_display_types.h header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_types.h    | 45 -------------------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 42 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  6 +++
 drivers/gpu/drm/i915/display/intel_dpll.c     |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
 6 files changed, 51 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2d0018ae34b1..407706448e9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -90,6 +90,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp_link_training.h"
+#include "intel_dpio_phy.h"
 #include "intel_dpt.h"
 #include "intel_dsb.h"
 #include "intel_fbc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3b7945aad22a..b683b8f90bcd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1799,51 +1799,6 @@ struct intel_dp_mst_encoder {
 	struct intel_connector *connector;
 };
 
-static inline enum dpio_channel
-vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
-{
-	switch (dig_port->base.port) {
-	default:
-		MISSING_CASE(dig_port->base.port);
-		fallthrough;
-	case PORT_B:
-	case PORT_D:
-		return DPIO_CH0;
-	case PORT_C:
-		return DPIO_CH1;
-	}
-}
-
-static inline enum dpio_phy
-vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
-{
-	switch (dig_port->base.port) {
-	default:
-		MISSING_CASE(dig_port->base.port);
-		fallthrough;
-	case PORT_B:
-	case PORT_C:
-		return DPIO_PHY0;
-	case PORT_D:
-		return DPIO_PHY1;
-	}
-}
-
-static inline enum dpio_channel
-vlv_pipe_to_channel(enum pipe pipe)
-{
-	switch (pipe) {
-	default:
-		MISSING_CASE(pipe);
-		fallthrough;
-	case PIPE_A:
-	case PIPE_C:
-		return DPIO_CH0;
-	case PIPE_B:
-		return DPIO_CH1;
-	}
-}
-
 struct intel_load_detect_pipe {
 	struct drm_atomic_state *restore_state;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 8732b8722ed7..6fc5b9e58152 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -655,6 +655,48 @@ bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
 	return mask;
 }
 
+enum dpio_channel vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
+{
+	switch (dig_port->base.port) {
+	default:
+		MISSING_CASE(dig_port->base.port);
+		fallthrough;
+	case PORT_B:
+	case PORT_D:
+		return DPIO_CH0;
+	case PORT_C:
+		return DPIO_CH1;
+	}
+}
+
+enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
+{
+	switch (dig_port->base.port) {
+	default:
+		MISSING_CASE(dig_port->base.port);
+		fallthrough;
+	case PORT_B:
+	case PORT_C:
+		return DPIO_PHY0;
+	case PORT_D:
+		return DPIO_PHY1;
+	}
+}
+
+enum dpio_channel vlv_pipe_to_channel(enum pipe pipe)
+{
+	switch (pipe) {
+	default:
+		MISSING_CASE(pipe);
+		fallthrough;
+	case PIPE_A:
+	case PIPE_C:
+		return DPIO_CH0;
+	case PIPE_B:
+		return DPIO_CH1;
+	}
+}
+
 void chv_set_phy_signal_level(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state,
 			      u32 deemph_reg_value, u32 margin_reg_value,
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index 9c3d008e8e1a..828ad58624d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -10,9 +10,11 @@
 
 enum dpio_channel;
 enum dpio_phy;
+enum pipe;
 enum port;
 struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_digital_port;
 struct intel_encoder;
 
 void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
@@ -30,6 +32,10 @@ void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
 				     u8 lane_lat_optim_mask);
 u8 bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder);
 
+enum dpio_channel vlv_dig_port_to_channel(struct intel_digital_port *dig_port);
+enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port);
+enum dpio_channel vlv_pipe_to_channel(enum pipe pipe);
+
 void chv_set_phy_signal_level(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state,
 			      u32 deemph_reg_value, u32 margin_reg_value,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 52f2fe1735da..8efc723657b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
+#include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_lvds.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..22f5e08d396b 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -9,6 +9,7 @@
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_lvds.h"
 #include "intel_pps.h"
-- 
2.34.1


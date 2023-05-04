Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8966F704B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 18:57:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF18910E1A5;
	Thu,  4 May 2023 16:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAEA010E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 16:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683219461; x=1714755461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5kSlJm/TpJEs5Hv7LZAR3c6gfqvKs6jltU9+3XTZ/Ow=;
 b=OzzS9I4grW/cftQuxkJEPi8TP5j31AjyTJCMF8nszqfOoUxcFeTWEWPi
 KGsN9VAPqHwTafW68TsCmKyBOTfiE1+vXdIX3jtoDeMsHJN9ynuep2dTZ
 mCe3X5uc4pxoHjvP+Qgaj3wdm7atZ++ouw7C1k6fB3zxXM2yWZWn29Pce
 uOpHbk5bZVrQQXiPKHiBi89FsU+vZfszSBhknBwCHtt2dENPLxex1T6qN
 nvG0WH+sP3H92qmhlCmS7r1dh1zbwSgeJSYlv+lL9g3+kMvqYKK0euC5G
 zaFOlx0pNJ/qyfydq84SD/yiDT9BhUQdD2riRlOJogI+XLy8pQ4qzSh5e A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="352013404"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="352013404"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="729881148"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="729881148"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 19:57:29 +0300
Message-Id: <e825385fc03cb3d53c1f0b66712eea42dad69d59.1683219363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683219362.git.jani.nikula@intel.com>
References: <cover.1683219362.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/irq: relocate gmbus and dp aux irq
 handlers
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move gmbus and dp aux irq handlers to their respective files. It should
be up to them what to do with the irq, not the generic irq code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c |  5 +++
 drivers/gpu/drm/i915/display/intel_dp_aux.h |  3 ++
 drivers/gpu/drm/i915/display/intel_gmbus.c  |  5 +++
 drivers/gpu/drm/i915/display/intel_gmbus.h  |  2 ++
 drivers/gpu/drm/i915/i915_irq.c             | 40 +++++++++------------
 5 files changed, 31 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index abf77ba76972..20226764757b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -815,3 +815,8 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
 
 	return aux_ch;
 }
+
+void intel_dp_aux_irq_handler(struct drm_i915_private *i915)
+{
+	wake_up_all(&i915->display.gmbus.wait_queue);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 138e340f94ee..5b608f9d3499 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -7,6 +7,7 @@
 #define __INTEL_DP_AUX_H__
 
 enum aux_ch;
+struct drm_i915_private;
 struct intel_dp;
 struct intel_encoder;
 
@@ -15,4 +16,6 @@ void intel_dp_aux_init(struct intel_dp *intel_dp);
 
 enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
 
+void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
+
 #endif /* __INTEL_DP_AUX_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 3ddfc8080ee8..e95ddb580ef6 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -991,3 +991,8 @@ void intel_gmbus_teardown(struct drm_i915_private *i915)
 		i915->display.gmbus.bus[pin] = NULL;
 	}
 }
+
+void intel_gmbus_irq_handler(struct drm_i915_private *i915)
+{
+	wake_up_all(&i915->display.gmbus.wait_queue);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.h b/drivers/gpu/drm/i915/display/intel_gmbus.h
index 20f704bd4e70..8111eb23e2af 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.h
@@ -46,4 +46,6 @@ void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit);
 bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter);
 void intel_gmbus_reset(struct drm_i915_private *dev_priv);
 
+void intel_gmbus_irq_handler(struct drm_i915_private *i915);
+
 #endif /* __INTEL_GMBUS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index e5f12aa141f6..02b6cbb832e9 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -37,8 +37,10 @@
 #include "display/intel_de.h"
 #include "display/intel_display_trace.h"
 #include "display/intel_display_types.h"
+#include "display/intel_dp_aux.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_fifo_underrun.h"
+#include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
@@ -925,16 +927,6 @@ static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
 	return hotplug;
 }
 
-static void gmbus_irq_handler(struct drm_i915_private *dev_priv)
-{
-	wake_up_all(&dev_priv->display.gmbus.wait_queue);
-}
-
-static void dp_aux_irq_handler(struct drm_i915_private *dev_priv)
-{
-	wake_up_all(&dev_priv->display.gmbus.wait_queue);
-}
-
 #if defined(CONFIG_DEBUG_FS)
 static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 					 enum pipe pipe,
@@ -1181,7 +1173,7 @@ static void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 		intel_opregion_asle_intr(dev_priv);
 
 	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
-		gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(dev_priv);
 }
 
 static void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
@@ -1204,7 +1196,7 @@ static void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 	}
 
 	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
-		gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(dev_priv);
 }
 
 static u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
@@ -1269,7 +1261,7 @@ static void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	if ((IS_G4X(dev_priv) ||
 	     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
-		dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(dev_priv);
 }
 
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
@@ -1483,10 +1475,10 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	}
 
 	if (pch_iir & SDE_AUX_MASK)
-		dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(dev_priv);
 
 	if (pch_iir & SDE_GMBUS)
-		gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(dev_priv);
 
 	if (pch_iir & SDE_AUDIO_HDCP_MASK)
 		drm_dbg(&dev_priv->drm, "PCH HDCP audio interrupt\n");
@@ -1571,10 +1563,10 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	}
 
 	if (pch_iir & SDE_AUX_MASK_CPT)
-		dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(dev_priv);
 
 	if (pch_iir & SDE_GMBUS_CPT)
-		gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(dev_priv);
 
 	if (pch_iir & SDE_AUDIO_CP_REQ_CPT)
 		drm_dbg(&dev_priv->drm, "Audio CP request interrupt\n");
@@ -1624,7 +1616,7 @@ static void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 	}
 
 	if (trigger_aux)
-		dp_aux_irq_handler(i915);
+		intel_dp_aux_irq_handler(i915);
 
 	if (!pin_mask && !trigger_aux)
 		drm_err(&i915->drm,
@@ -1666,7 +1658,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
 
 	if (pch_iir & SDE_GMBUS_ICP)
-		gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(dev_priv);
 }
 
 static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
@@ -1702,7 +1694,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
 
 	if (pch_iir & SDE_GMBUS_CPT)
-		gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(dev_priv);
 }
 
 static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
@@ -1730,7 +1722,7 @@ static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
 		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
 
 	if (de_iir & DE_AUX_CHANNEL_A)
-		dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(dev_priv);
 
 	if (de_iir & DE_GSE)
 		intel_opregion_asle_intr(dev_priv);
@@ -1782,7 +1774,7 @@ static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
 		ivb_err_int_handler(dev_priv);
 
 	if (de_iir & DE_AUX_CHANNEL_A_IVB)
-		dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(dev_priv);
 
 	if (de_iir & DE_GSE_IVB)
 		intel_opregion_asle_intr(dev_priv);
@@ -2174,7 +2166,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			ret = IRQ_HANDLED;
 
 			if (iir & gen8_de_port_aux_mask(dev_priv)) {
-				dp_aux_irq_handler(dev_priv);
+				intel_dp_aux_irq_handler(dev_priv);
 				found = true;
 			}
 
@@ -2196,7 +2188,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 			if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
 			    (iir & BXT_DE_PORT_GMBUS)) {
-				gmbus_irq_handler(dev_priv);
+				intel_gmbus_irq_handler(dev_priv);
 				found = true;
 			}
 
-- 
2.39.2


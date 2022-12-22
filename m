Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87049653C48
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 07:45:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D4310E4FC;
	Thu, 22 Dec 2022 06:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD76C10E4FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 06:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671691500; x=1703227500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qZ8UiHmvEb9t9sSREeoKX2DtTx7vNIXDi3Al0R7YFdA=;
 b=LgXRQ6ckMQ0NXCcBvK3WkBU57G3t/Ee6NKap60aJbzXDpaI/aqhuigoC
 /GV5Lm2wU8aIyezrGrELClRgwsQpSI1UJyECmbtoceRmJMmRuAmc74zV7
 of+cUv/8WJUOZJ7JuR0yGlf9zbP58W0JS8GNLZW+oavUmCPFRrRV5DoQF
 yMtb6ystbMvRX6MgA4fvDVUoR1ch3TxFlD02I47JrRPjIW30W6L92keyg
 KYt4w5qWPR9flMdEvqdoS6q98ZpRGTwLeFZyIOKpCiAA/xPTzCv5sXBlu
 Vcqs1d/acMRLfEYA7w25zdH7I+otUhLjKA+HboN2wSqHi6X9hWl4G0INR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="300397438"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="300397438"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 22:44:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="715052084"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="715052084"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 22:44:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 12:13:50 +0530
Message-Id: <20221222064355.3642557-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222064355.3642557-1-suraj.kandpal@intel.com>
References: <20221222064355.3642557-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/7] drm/i915/hdcp: Keep cp fw agonstic
 naming convention
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anshuman Gupta <anshuman.gupta@intel.com>

Change the include/drm/i915_mei_hdcp_interface.h to
include/drm/i915_hdcp_interface.h

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Tomas Winkler <tomas.winkler@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/misc/mei/hdcp/mei_hdcp.c              |  2 +-
 ...hdcp_interface.h => i915_hdcp_interface.h} | 86 +++++++++----------
 3 files changed, 45 insertions(+), 45 deletions(-)
 rename include/drm/{i915_mei_hdcp_interface.h => i915_hdcp_interface.h} (75%)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 32e8b2fc3cc6..81d195ef5e57 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -43,7 +43,7 @@
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
-#include <drm/i915_mei_hdcp_interface.h>
+#include <drm/i915_hdcp_interface.h>
 #include <media/cec-notifier.h>
 
 #include "i915_vma.h"
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index e889a8bd7ac8..cbad27511899 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -23,7 +23,7 @@
 #include <linux/component.h>
 #include <drm/drm_connector.h>
 #include <drm/i915_component.h>
-#include <drm/i915_mei_hdcp_interface.h>
+#include <drm/i915_hdcp_interface.h>
 
 #include "mei_hdcp.h"
 
diff --git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
similarity index 75%
rename from include/drm/i915_mei_hdcp_interface.h
rename to include/drm/i915_hdcp_interface.h
index f441cbcd95a4..d24f6726e50c 100644
--- a/include/drm/i915_mei_hdcp_interface.h
+++ b/include/drm/i915_hdcp_interface.h
@@ -6,8 +6,8 @@
  * Ramalingam C <ramalingam.c@intel.com>
  */
 
-#ifndef _I915_MEI_HDCP_INTERFACE_H_
-#define _I915_MEI_HDCP_INTERFACE_H_
+#ifndef _I915_HDCP_INTERFACE_H_
+#define _I915_HDCP_INTERFACE_H_
 
 #include <linux/mutex.h>
 #include <linux/device.h>
@@ -41,44 +41,44 @@ enum hdcp_wired_protocol {
 	HDCP_PROTOCOL_DP
 };
 
-enum mei_fw_ddi {
-	MEI_DDI_INVALID_PORT = 0x0,
+enum hdcp_ddi {
+	HDCP_DDI_INVALID_PORT = 0x0,
 
-	MEI_DDI_B = 1,
-	MEI_DDI_C,
-	MEI_DDI_D,
-	MEI_DDI_E,
-	MEI_DDI_F,
-	MEI_DDI_A = 7,
-	MEI_DDI_RANGE_END = MEI_DDI_A,
+	HDCP_DDI_B = 1,
+	HDCP_DDI_C,
+	HDCP_DDI_D,
+	HDCP_DDI_E,
+	HDCP_DDI_F,
+	HDCP_DDI_A = 7,
+	HDCP_DDI_RANGE_END = HDCP_DDI_A,
 };
 
 /**
- * enum mei_fw_tc - ME Firmware defined index for transcoders
- * @MEI_INVALID_TRANSCODER: Index for Invalid transcoder
- * @MEI_TRANSCODER_EDP: Index for EDP Transcoder
- * @MEI_TRANSCODER_DSI0: Index for DSI0 Transcoder
- * @MEI_TRANSCODER_DSI1: Index for DSI1 Transcoder
- * @MEI_TRANSCODER_A: Index for Transcoder A
- * @MEI_TRANSCODER_B: Index for Transcoder B
- * @MEI_TRANSCODER_C: Index for Transcoder C
- * @MEI_TRANSCODER_D: Index for Transcoder D
+ * enum hdcp_tc - ME Firmware defined index for transcoders
+ * @HDCP_INVALID_TRANSCODER: Index for Invalid transcoder
+ * @HDCP_TRANSCODER_EDP: Index for EDP Transcoder
+ * @HDCP_TRANSCODER_DSI0: Index for DSI0 Transcoder
+ * @HDCP_TRANSCODER_DSI1: Index for DSI1 Transcoder
+ * @HDCP_TRANSCODER_A: Index for Transcoder A
+ * @HDCP_TRANSCODER_B: Index for Transcoder B
+ * @HDCP_TRANSCODER_C: Index for Transcoder C
+ * @HDCP_TRANSCODER_D: Index for Transcoder D
  */
-enum mei_fw_tc {
-	MEI_INVALID_TRANSCODER = 0x00,
-	MEI_TRANSCODER_EDP,
-	MEI_TRANSCODER_DSI0,
-	MEI_TRANSCODER_DSI1,
-	MEI_TRANSCODER_A = 0x10,
-	MEI_TRANSCODER_B,
-	MEI_TRANSCODER_C,
-	MEI_TRANSCODER_D
+enum hdcp_transcoder {
+	HDCP_INVALID_TRANSCODER = 0x00,
+	HDCP_TRANSCODER_EDP,
+	HDCP_TRANSCODER_DSI0,
+	HDCP_TRANSCODER_DSI1,
+	HDCP_TRANSCODER_A = 0x10,
+	HDCP_TRANSCODER_B,
+	HDCP_TRANSCODER_C,
+	HDCP_TRANSCODER_D
 };
 
 /**
  * struct hdcp_port_data - intel specific HDCP port data
- * @fw_ddi: ddi index as per ME FW
- * @fw_tc: transcoder index as per ME FW
+ * @hdcp_ddi: ddi index as per ME FW
+ * @hdcp_transcoder: transcoder index as per ME FW
  * @port_type: HDCP port type as per ME FW classification
  * @protocol: HDCP adaptation as per ME FW
  * @k: No of streams transmitted on a port. Only on DP MST this is != 1
@@ -90,8 +90,8 @@ enum mei_fw_tc {
  *	     streams
  */
 struct hdcp_port_data {
-	enum mei_fw_ddi fw_ddi;
-	enum mei_fw_tc fw_tc;
+	enum hdcp_ddi hdcp_ddi;
+	enum hdcp_transcoder hdcp_transcoder;
 	u8 port_type;
 	u8 protocol;
 	u16 k;
@@ -100,7 +100,7 @@ struct hdcp_port_data {
 };
 
 /**
- * struct i915_hdcp_component_ops- ops for HDCP2.2 services.
+ * struct i915_hdcp_ops- ops for HDCP2.2 services.
  * @owner: Module providing the ops
  * @initiate_hdcp2_session: Initiate a Wired HDCP2.2 Tx Session.
  *			    And Prepare AKE_Init.
@@ -119,9 +119,9 @@ struct hdcp_port_data {
  * @close_hdcp_session: Close the Wired HDCP Tx session per port.
  *			This also disables the authenticated state of the port.
  */
-struct i915_hdcp_component_ops {
+struct i915_hdcp_ops {
 	/**
-	 * @owner: mei_hdcp module
+	 * @owner: hdcp module
 	 */
 	struct module *owner;
 
@@ -169,16 +169,16 @@ struct i915_hdcp_component_ops {
 
 /**
  * struct i915_hdcp_component_master - Used for communication between i915
- * and mei_hdcp drivers for the HDCP2.2 services
- * @mei_dev: device that provide the HDCP2.2 service from MEI Bus.
- * @hdcp_ops: Ops implemented by mei_hdcp driver, used by i915 driver.
+ * and hdcp drivers for the HDCP2.2 services
+ * @hdcp_dev: device that provide the HDCP2.2 service from MEI Bus.
+ * @hdcp_ops: Ops implemented by hdcp driver or intel_hdcp_gsc , used by i915 driver.
  */
-struct i915_hdcp_comp_master {
-	struct device *mei_dev;
-	const struct i915_hdcp_component_ops *ops;
+struct i915_hdcp_master {
+	struct device *hdcp_dev;
+	const struct i915_hdcp_ops *ops;
 
 	/* To protect the above members. */
 	struct mutex mutex;
 };
 
-#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
+#endif /* _I915_HDCP_INTERFACE_H_ */
-- 
2.25.1


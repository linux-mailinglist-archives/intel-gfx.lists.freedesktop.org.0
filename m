Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C196795F69B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6513210E239;
	Mon, 26 Aug 2024 16:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0+pJ03e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF32210E238;
 Mon, 26 Aug 2024 16:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689908; x=1756225908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vCDlEkIFF5PlrvJtoPRPfkVP5m3xwcBl+mpIw214Q74=;
 b=b0+pJ03eEaoRSTwvgEMyNXZUIOli6JWZkCt3hfvDtDtgrdpsZI70dAvB
 eToQjpC+zi/S+6FbSRE1Lt1ufIaIjUUJGxzRxqH1BPPxYOgR8eIrF4VTb
 Jc7QzcxVGdXeENqC2OrRGtmVgZd5OyueZMNNnddXcmz5OITcBSa/543ec
 9BHaBoAFlkwHlliAFwZwinIkzUT5RJucKi+xubP7Ry55BzNFq7YQJwZ+1
 BL9Du4l6f65CbXwvVNVyecN7AKEYm4ynXAiu4esWXdufBZTZaa/kech0m
 o3ZXC+HcBQNQTnoBQYzrX4/E2I6isjtwWc71g2nvDJ1qa1bwCPdWPN3M5 Q==;
X-CSE-ConnectionGUID: JibazxYsTBiQj88Ydn5QeA==
X-CSE-MsgGUID: tvXcToysSZ6x7z2OmvdTfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22991538"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22991538"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:47 -0700
X-CSE-ConnectionGUID: 54jAp0p4RJKnjoQPx55JRQ==
X-CSE-MsgGUID: WO1veVkvRN2E+tEcQI8DCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62529094"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/7] drm/i915/hdcp: split out intel_hdcp_shim.h for struct
 intel_hdcp_shim
Date: Mon, 26 Aug 2024 19:31:15 +0300
Message-Id: <8dc62bed1f4c827730f66f91a18e1cf0712df123.1724689818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
References: <cover.1724689818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

There are only a handful of files that need the struct intel_hdcp_shim
definition. Move it to a new file intel_hdcp_shim.h and include where
needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 125 +---------------
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   1 +
 .../gpu/drm/i915/display/intel_hdcp_shim.h    | 137 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   1 +
 5 files changed, 142 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_shim.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b4755fb8b94a..7ca5fade19d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -59,9 +59,10 @@
 
 struct drm_printer;
 struct __intel_global_objs_state;
+struct intel_connector;
 struct intel_ddi_buf_trans;
 struct intel_fbc;
-struct intel_connector;
+struct intel_hdcp_shim;
 struct intel_tc_port;
 
 /*
@@ -430,128 +431,6 @@ struct intel_panel {
 
 struct intel_digital_port;
 
-enum check_link_response {
-	HDCP_LINK_PROTECTED	= 0,
-	HDCP_TOPOLOGY_CHANGE,
-	HDCP_LINK_INTEGRITY_FAILURE,
-	HDCP_REAUTH_REQUEST
-};
-
-/*
- * This structure serves as a translation layer between the generic HDCP code
- * and the bus-specific code. What that means is that HDCP over HDMI differs
- * from HDCP over DP, so to account for these differences, we need to
- * communicate with the receiver through this shim.
- *
- * For completeness, the 2 buses differ in the following ways:
- *	- DP AUX vs. DDC
- *		HDCP registers on the receiver are set via DP AUX for DP, and
- *		they are set via DDC for HDMI.
- *	- Receiver register offsets
- *		The offsets of the registers are different for DP vs. HDMI
- *	- Receiver register masks/offsets
- *		For instance, the ready bit for the KSV fifo is in a different
- *		place on DP vs HDMI
- *	- Receiver register names
- *		Seriously. In the DP spec, the 16-bit register containing
- *		downstream information is called BINFO, on HDMI it's called
- *		BSTATUS. To confuse matters further, DP has a BSTATUS register
- *		with a completely different definition.
- *	- KSV FIFO
- *		On HDMI, the ksv fifo is read all at once, whereas on DP it must
- *		be read 3 keys at a time
- *	- Aksv output
- *		Since Aksv is hidden in hardware, there's different procedures
- *		to send it over DP AUX vs DDC
- */
-struct intel_hdcp_shim {
-	/* Outputs the transmitter's An and Aksv values to the receiver. */
-	int (*write_an_aksv)(struct intel_digital_port *dig_port, u8 *an);
-
-	/* Reads the receiver's key selection vector */
-	int (*read_bksv)(struct intel_digital_port *dig_port, u8 *bksv);
-
-	/*
-	 * Reads BINFO from DP receivers and BSTATUS from HDMI receivers. The
-	 * definitions are the same in the respective specs, but the names are
-	 * different. Call it BSTATUS since that's the name the HDMI spec
-	 * uses and it was there first.
-	 */
-	int (*read_bstatus)(struct intel_digital_port *dig_port,
-			    u8 *bstatus);
-
-	/* Determines whether a repeater is present downstream */
-	int (*repeater_present)(struct intel_digital_port *dig_port,
-				bool *repeater_present);
-
-	/* Reads the receiver's Ri' value */
-	int (*read_ri_prime)(struct intel_digital_port *dig_port, u8 *ri);
-
-	/* Determines if the receiver's KSV FIFO is ready for consumption */
-	int (*read_ksv_ready)(struct intel_digital_port *dig_port,
-			      bool *ksv_ready);
-
-	/* Reads the ksv fifo for num_downstream devices */
-	int (*read_ksv_fifo)(struct intel_digital_port *dig_port,
-			     int num_downstream, u8 *ksv_fifo);
-
-	/* Reads a 32-bit part of V' from the receiver */
-	int (*read_v_prime_part)(struct intel_digital_port *dig_port,
-				 int i, u32 *part);
-
-	/* Enables HDCP signalling on the port */
-	int (*toggle_signalling)(struct intel_digital_port *dig_port,
-				 enum transcoder cpu_transcoder,
-				 bool enable);
-
-	/* Enable/Disable stream encryption on DP MST Transport Link */
-	int (*stream_encryption)(struct intel_connector *connector,
-				 bool enable);
-
-	/* Ensures the link is still protected */
-	bool (*check_link)(struct intel_digital_port *dig_port,
-			   struct intel_connector *connector);
-
-	/* Detects panel's hdcp capability. This is optional for HDMI. */
-	int (*hdcp_get_capability)(struct intel_digital_port *dig_port,
-				   bool *hdcp_capable);
-
-	/* HDCP adaptation(DP/HDMI) required on the port */
-	enum hdcp_wired_protocol protocol;
-
-	/* Detects whether sink is HDCP2.2 capable */
-	int (*hdcp_2_2_get_capability)(struct intel_connector *connector,
-				       bool *capable);
-
-	/* Write HDCP2.2 messages */
-	int (*write_2_2_msg)(struct intel_connector *connector,
-			     void *buf, size_t size);
-
-	/* Read HDCP2.2 messages */
-	int (*read_2_2_msg)(struct intel_connector *connector,
-			    u8 msg_id, void *buf, size_t size);
-
-	/*
-	 * Implementation of DP HDCP2.2 Errata for the communication of stream
-	 * type to Receivers. In DP HDCP2.2 Stream type is one of the input to
-	 * the HDCP2.2 Cipher for En/De-Cryption. Not applicable for HDMI.
-	 */
-	int (*config_stream_type)(struct intel_connector *connector,
-				  bool is_repeater, u8 type);
-
-	/* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport Link */
-	int (*stream_2_2_encryption)(struct intel_connector *connector,
-				     bool enable);
-
-	/* HDCP2.2 Link Integrity Check */
-	int (*check_2_2_link)(struct intel_digital_port *dig_port,
-			      struct intel_connector *connector);
-
-	/* HDCP remote sink cap */
-	int (*get_remote_hdcp_capability)(struct intel_connector *connector,
-					  bool *hdcp_capable, bool *hdcp2_capable);
-};
-
 struct intel_hdcp {
 	const struct intel_hdcp_shim *shim;
 	/* Mutex for hdcp state of the connector */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 3425b3643143..dce645a07cdb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -19,6 +19,7 @@
 #include "intel_dp_hdcp.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_regs.h"
+#include "intel_hdcp_shim.h"
 
 static u32 transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 94418f218448..89f1d0a1dc65 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -25,6 +25,7 @@
 #include "intel_hdcp.h"
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_regs.h"
+#include "intel_hdcp_shim.h"
 #include "intel_pcode.h"
 
 #define KEY_LOAD_TRIES	5
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_shim.h b/drivers/gpu/drm/i915/display/intel_hdcp_shim.h
new file mode 100644
index 000000000000..abf9ae2f4ada
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_shim.h
@@ -0,0 +1,137 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __INTEL_HDCP_SHIM_H__
+#define __INTEL_HDCP_SHIM_H__
+
+#include <linux/types.h>
+
+#include <drm/intel/i915_hdcp_interface.h>
+
+enum transcoder;
+struct intel_connector;
+struct intel_digital_port;
+
+enum check_link_response {
+	HDCP_LINK_PROTECTED	= 0,
+	HDCP_TOPOLOGY_CHANGE,
+	HDCP_LINK_INTEGRITY_FAILURE,
+	HDCP_REAUTH_REQUEST
+};
+
+/*
+ * This structure serves as a translation layer between the generic HDCP code
+ * and the bus-specific code. What that means is that HDCP over HDMI differs
+ * from HDCP over DP, so to account for these differences, we need to
+ * communicate with the receiver through this shim.
+ *
+ * For completeness, the 2 buses differ in the following ways:
+ *	- DP AUX vs. DDC
+ *		HDCP registers on the receiver are set via DP AUX for DP, and
+ *		they are set via DDC for HDMI.
+ *	- Receiver register offsets
+ *		The offsets of the registers are different for DP vs. HDMI
+ *	- Receiver register masks/offsets
+ *		For instance, the ready bit for the KSV fifo is in a different
+ *		place on DP vs HDMI
+ *	- Receiver register names
+ *		Seriously. In the DP spec, the 16-bit register containing
+ *		downstream information is called BINFO, on HDMI it's called
+ *		BSTATUS. To confuse matters further, DP has a BSTATUS register
+ *		with a completely different definition.
+ *	- KSV FIFO
+ *		On HDMI, the ksv fifo is read all at once, whereas on DP it must
+ *		be read 3 keys at a time
+ *	- Aksv output
+ *		Since Aksv is hidden in hardware, there's different procedures
+ *		to send it over DP AUX vs DDC
+ */
+struct intel_hdcp_shim {
+	/* Outputs the transmitter's An and Aksv values to the receiver. */
+	int (*write_an_aksv)(struct intel_digital_port *dig_port, u8 *an);
+
+	/* Reads the receiver's key selection vector */
+	int (*read_bksv)(struct intel_digital_port *dig_port, u8 *bksv);
+
+	/*
+	 * Reads BINFO from DP receivers and BSTATUS from HDMI receivers. The
+	 * definitions are the same in the respective specs, but the names are
+	 * different. Call it BSTATUS since that's the name the HDMI spec
+	 * uses and it was there first.
+	 */
+	int (*read_bstatus)(struct intel_digital_port *dig_port,
+			    u8 *bstatus);
+
+	/* Determines whether a repeater is present downstream */
+	int (*repeater_present)(struct intel_digital_port *dig_port,
+				bool *repeater_present);
+
+	/* Reads the receiver's Ri' value */
+	int (*read_ri_prime)(struct intel_digital_port *dig_port, u8 *ri);
+
+	/* Determines if the receiver's KSV FIFO is ready for consumption */
+	int (*read_ksv_ready)(struct intel_digital_port *dig_port,
+			      bool *ksv_ready);
+
+	/* Reads the ksv fifo for num_downstream devices */
+	int (*read_ksv_fifo)(struct intel_digital_port *dig_port,
+			     int num_downstream, u8 *ksv_fifo);
+
+	/* Reads a 32-bit part of V' from the receiver */
+	int (*read_v_prime_part)(struct intel_digital_port *dig_port,
+				 int i, u32 *part);
+
+	/* Enables HDCP signalling on the port */
+	int (*toggle_signalling)(struct intel_digital_port *dig_port,
+				 enum transcoder cpu_transcoder,
+				 bool enable);
+
+	/* Enable/Disable stream encryption on DP MST Transport Link */
+	int (*stream_encryption)(struct intel_connector *connector,
+				 bool enable);
+
+	/* Ensures the link is still protected */
+	bool (*check_link)(struct intel_digital_port *dig_port,
+			   struct intel_connector *connector);
+
+	/* Detects panel's hdcp capability. This is optional for HDMI. */
+	int (*hdcp_get_capability)(struct intel_digital_port *dig_port,
+				   bool *hdcp_capable);
+
+	/* HDCP adaptation(DP/HDMI) required on the port */
+	enum hdcp_wired_protocol protocol;
+
+	/* Detects whether sink is HDCP2.2 capable */
+	int (*hdcp_2_2_get_capability)(struct intel_connector *connector,
+				       bool *capable);
+
+	/* Write HDCP2.2 messages */
+	int (*write_2_2_msg)(struct intel_connector *connector,
+			     void *buf, size_t size);
+
+	/* Read HDCP2.2 messages */
+	int (*read_2_2_msg)(struct intel_connector *connector,
+			    u8 msg_id, void *buf, size_t size);
+
+	/*
+	 * Implementation of DP HDCP2.2 Errata for the communication of stream
+	 * type to Receivers. In DP HDCP2.2 Stream type is one of the input to
+	 * the HDCP2.2 Cipher for En/De-Cryption. Not applicable for HDMI.
+	 */
+	int (*config_stream_type)(struct intel_connector *connector,
+				  bool is_repeater, u8 type);
+
+	/* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport Link */
+	int (*stream_2_2_encryption)(struct intel_connector *connector,
+				     bool enable);
+
+	/* HDCP2.2 Link Integrity Check */
+	int (*check_2_2_link)(struct intel_digital_port *dig_port,
+			      struct intel_connector *connector);
+
+	/* HDCP remote sink cap */
+	int (*get_remote_hdcp_capability)(struct intel_connector *connector,
+					  bool *hdcp_capable, bool *hdcp2_capable);
+};
+
+#endif /* __INTEL_HDCP_SHIM_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 19498ee455fa..a43c8649d726 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -55,6 +55,7 @@
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_regs.h"
+#include "intel_hdcp_shim.h"
 #include "intel_hdmi.h"
 #include "intel_lspcon.h"
 #include "intel_panel.h"
-- 
2.39.2


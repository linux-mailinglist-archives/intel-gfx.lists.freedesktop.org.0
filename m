Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687CFC11730
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 21:56:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D2210E18C;
	Mon, 27 Oct 2025 20:56:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jvmGKSn1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B2FF10E18C;
 Mon, 27 Oct 2025 20:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761598590; x=1793134590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SkT1gTTRIHX3ohsSGu9csBLFkAxHRFH2I2pJK3SsWss=;
 b=jvmGKSn1DFP1GiRo7hjl2Bdb+/OdubUQolHZUIr22Y63ZDQodKR3XmwE
 lj10qEI6JibAhGGriG4GBmJxo3zgyYnJbZkzPAEILZG2RysSiF0EMMPQn
 Z0XlFX5ftBIGRAwtjdEW4oJLJH1MJbIZgE1YXuK7XaxvT86FACcVjMQsw
 ckdpgGTwtfUMHUU6OW0tMz+xHoFZY0XztnUvQRzcBI5Ci9+vABm9UQlNb
 hRsXYPoTbCZ3aC6PSXKd50lyyNgJKJwxnnZkazUoIBG3HBtFl8hywAceK
 VYSxrlPPc4CQ/EfTp8EHZkjj/nNd6v3YNgsMDNwLBWfNLfQnIl1wbEb4X Q==;
X-CSE-ConnectionGUID: ZTt6aOyDR82rhwtSpu8QVA==
X-CSE-MsgGUID: 9vvsaEtbRxulOnMaVKBucQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81320818"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81320818"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 13:56:30 -0700
X-CSE-ConnectionGUID: NKUcaRevQjKN4uwr6vs1EQ==
X-CSE-MsgGUID: bGofuZAORv+b9NUQr2pQwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="185496070"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by fmviesa008.fm.intel.com with ESMTP; 27 Oct 2025 13:56:29 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v5] drm/i915/display: Extend i915_display_info with Type-C
 port details
Date: Mon, 27 Oct 2025 13:56:28 -0700
Message-ID: <20251027205628.3067346-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027200256.3058319-1-khaled.almahallawy@intel.com>
References: <20251027200256.3058319-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
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

Expose key Type-C port data in i915_display_info to make it easier to
understand the port configuration and active mode, especially whether
the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.

Tested in DP-Alt, TBT-Alt, SST, and MST.

Expected output:

[CONNECTOR:290:DP-2]: status: connected
	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
	physical dimensions: 600x340mm
...
[CONNECTOR:263:DP-5]: status: connected
	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
	physical dimensions: 610x350mm

v2: Use drm_printer (Ville)
    Lock/Unlock around the printf (Imre)
v3: Forward Declaration drm_printer struct (Jani)
v4: Handle MST connector with no active encoder (Imre)
    Add a delimiter between fields and ":" after the port name (Imre)
v5: Init dig_port and use it in intel_encorder_is_tc and tc_info (Imre)
    Move tc->port_name to a newline (Imre)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c    |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_tc.c             | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_tc.h             |  3 +++
 3 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 10dddec3796f..7014331108aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -47,6 +47,7 @@
 #include "intel_psr_regs.h"
 #include "intel_vdsc.h"
 #include "intel_wm.h"
+#include "intel_tc.h"
 
 static struct intel_display *node_to_intel_display(struct drm_info_node *node)
 {
@@ -246,6 +247,8 @@ static void intel_connector_info(struct seq_file *m,
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	const struct drm_display_mode *mode;
+	struct drm_printer p = drm_seq_file_printer(m);
+	struct intel_digital_port *dig_port = NULL;
 
 	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
 		   connector->base.id, connector->name,
@@ -268,14 +271,19 @@ static void intel_connector_info(struct seq_file *m,
 			intel_dp_mst_info(m, intel_connector);
 		else
 			intel_dp_info(m, intel_connector);
+		dig_port = dp_to_dig_port(intel_attached_dp(intel_connector));
 		break;
 	case DRM_MODE_CONNECTOR_HDMIA:
 		intel_hdmi_info(m, intel_connector);
+		dig_port = hdmi_to_dig_port(intel_attached_hdmi(intel_connector));
 		break;
 	default:
 		break;
 	}
 
+	if (dig_port != NULL && intel_encoder_is_tc(&dig_port->base))
+		intel_tc_info(&p, dig_port);
+
 	intel_hdcp_info(m, intel_connector);
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index c4a5601c5107..addc876f455b 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1703,6 +1703,19 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 	mutex_unlock(&tc->lock);
 }
 
+void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	mutex_lock(&tc->lock);
+	drm_printf(p, "\tTC Port %s: mode: %s, pin assignment: %c, max lanes: %d\n",
+		   tc->port_name,
+		   tc_port_mode_name(tc->mode),
+		   pin_assignment_name(tc->pin_assignment),
+		   tc->max_lane_count);
+	mutex_unlock(&tc->lock);
+}
+
 /*
  * The type-C ports are different because even when they are connected, they may
  * not be available/usable by the graphics driver: see the comment on
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index fff8b96e4972..6719aea5bd58 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_printer;
 struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
@@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
 
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
 
+void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port);
+
 #endif /* __INTEL_TC_H__ */
-- 
2.43.0


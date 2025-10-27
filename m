Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0700DC114C8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 21:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB2610E09C;
	Mon, 27 Oct 2025 20:03:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f9MoAyhU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D102E10E09C;
 Mon, 27 Oct 2025 20:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761595382; x=1793131382;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=koNz2UOA85aVG+97G6eYD9tEXDuGl2PlnydndY6KwyI=;
 b=f9MoAyhU6gNpihhIUvoGs2y/LwUAkJbwFYRio7lxgvdWmOOpFtu2gzG7
 LtQOGVjuuoR94uAk5pma+lTjkMon5Q8fa05xkTCqxYaVykdJ7TY6A2+Lf
 jPTvr336z0JFO+vp6UN7W9NNCFEO6PMw0JuFkkuQeA2LlVnI/BTlwhlRs
 Q9x2ZqWeU5zPKMiQoaZs0EakfOQbl2cCpVQVKmjUYRv50Trd2EAtPIbCy
 QZczmEPlwvaR8k+fmesPek56jRSu1uHWcYNvEkaqmXvZxZTERabP2gzQ3
 bF8mW7uHJAzQLxWjaMzztzSJBrQKefEYKmF0qD1IKMRZTNKJ3+7yEjskz A==;
X-CSE-ConnectionGUID: pH0diEWGTcKHhTaPK3Q2aw==
X-CSE-MsgGUID: qJFFizuTSS+ObEDpmrs5sQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63593493"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="63593493"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 13:03:01 -0700
X-CSE-ConnectionGUID: q2qqXaQaQyavDJ5glGSkWw==
X-CSE-MsgGUID: 5LLKd+5/Td+lm63OQkxhQw==
X-ExtLoop1: 1
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by fmviesa003.fm.intel.com with ESMTP; 27 Oct 2025 13:03:01 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4] drm/i915/display: Extend i915_display_info with Type-C
 port details
Date: Mon, 27 Oct 2025 13:02:56 -0700
Message-ID: <20251027200256.3058319-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_tc.c              | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_tc.h              |  3 +++
 3 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 10dddec3796f..4d931e4bef81 100644
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
+	struct intel_digital_port *dig_port;
 
 	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
 		   connector->base.id, connector->name,
@@ -268,14 +271,20 @@ static void intel_connector_info(struct seq_file *m,
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
 
+	if (dig_port != NULL  &&
+	    intel_encoder_is_tc(intel_attached_encoder(intel_connector)))
+		intel_tc_info(&p, intel_attached_dig_port(intel_connector));
+
 	intel_hdcp_info(m, intel_connector);
 
 	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index c4a5601c5107..ef38d8483b46 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1703,6 +1703,18 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 	mutex_unlock(&tc->lock);
 }
 
+void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	mutex_lock(&tc->lock);
+	drm_printf(p, "\tTC Port %s: mode: %s, pin assignment: %c, max lanes: %d\n", tc->port_name,
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


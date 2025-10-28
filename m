Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB26C1690D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 20:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02C810E035;
	Tue, 28 Oct 2025 19:07:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+bQWUDU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6592A10E035;
 Tue, 28 Oct 2025 19:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761678475; x=1793214475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EcaSJ4vn5PYEh4vyHZVCiyVNX/+UDjaQezq/UoFzp/o=;
 b=A+bQWUDUPSISm0IfSZyFYtAcvDd/FoQ+D9j+HWohGDW/yXGFch9V+hUa
 IMU4qby9MOgxs+4oVwqtnpebXdSz8EARLoScxZ9xCGyCwyPx5XCBcOS4t
 Uvd8w1B1sjIY7X6pxbOxhryt9elq0vy9JMJp1VVcDF2ntWQREjw6Or/Lh
 g2RqNj0kN91QgPjaBt0FjH7228MZ2yIJckTRBFV4c7tYMHIAQ7GtOu86i
 SC8EL8DD526BySo7wBKQJkIOAnpgjMcX85mT6snCGhwowicoIDgKulVhN
 k7PsT1PMIFVOwhBBsgsq4urbXysvQasWZjTaNtVzXJTVylNfiNjVeDmzg g==;
X-CSE-ConnectionGUID: Ur+6w/frRQ2EzYhXaocEaw==
X-CSE-MsgGUID: S3tY/7V6Qp+NbL25HXUlRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75134204"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="75134204"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 12:07:55 -0700
X-CSE-ConnectionGUID: xH5XBjjYRNWYxntxfBUJYg==
X-CSE-MsgGUID: jDQcB1fnShGCZLKomyoP2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="222657813"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa001.jf.intel.com with ESMTP; 28 Oct 2025 12:07:56 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v6] drm/i915/display: Extend i915_display_info with Type-C
 port details
Date: Tue, 28 Oct 2025 12:07:53 -0700
Message-ID: <20251028190753.3089937-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027205628.3067346-1-khaled.almahallawy@intel.com>
References: <20251027205628.3067346-1-khaled.almahallawy@intel.com>
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
v6: Use intel_tc_port_lock/Unlock (Imre)

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
index c4a5601c5107..08e94004d3a7 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1703,6 +1703,19 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 	mutex_unlock(&tc->lock);
 }
 
+void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	intel_tc_port_lock(dig_port);
+	drm_printf(p, "\tTC Port %s: mode: %s, pin assignment: %c, max lanes: %d\n",
+		   tc->port_name,
+		   tc_port_mode_name(tc->mode),
+		   pin_assignment_name(tc->pin_assignment),
+		   tc->max_lane_count);
+	intel_tc_port_unlock(dig_port);
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


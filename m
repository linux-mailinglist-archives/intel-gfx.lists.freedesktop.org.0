Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56138BAEB2C
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 00:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A69D10E2DC;
	Tue, 30 Sep 2025 22:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCYvnQfh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF17210E080;
 Tue, 30 Sep 2025 22:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759270761; x=1790806761;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZZJ9QMHnhvl/5PZwAMGDZ6ppCOv4e2OuixtsH/bh1D0=;
 b=PCYvnQfh7WHmBtjC7n0XL/fixrEqU1iMuU3upaUd4biy3N4zeRT+oRky
 CC7HOAU8guKTSnXaZJmdtGhwxK3Z0N0+yrNHYaVbibi41dja2oxWl6m8c
 sljfiQMWeTKNfpO9ShyssK8UervCyMcyxWm5dnyh+qjK1F9mgnayHuNMA
 Hqnbft+1PsvKa63KgWd5orCsY6+3W54Yp0X2zfeZCLnHwz2XvaczfULpQ
 AiZI7vQqDp/GmvLT2091v7XtePY5O6u7cIHCIWkRprg0EVR1ypQCcY+SM
 yeR0+LjSIJ06SgyBPcBDzq90qvEo2G7eGUaSlAqDWby2v6oga5UCaSL3R A==;
X-CSE-ConnectionGUID: 5B6WrIOPT9G07dRN1EwXnA==
X-CSE-MsgGUID: Ezhvff8wRi29aDrwZw3a7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="86986798"
X-IronPort-AV: E=Sophos;i="6.18,305,1751266800"; d="scan'208";a="86986798"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 15:19:20 -0700
X-CSE-ConnectionGUID: OVwvEuSJQhKBqaVfr/vcSw==
X-CSE-MsgGUID: cPuwfMz+Sh6vzwBW71BUwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,305,1751266800"; d="scan'208";a="177758825"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa006.jf.intel.com with ESMTP; 30 Sep 2025 15:19:20 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/i915/display: Extend i915_display_info with Type-C
 port details
Date: Tue, 30 Sep 2025 15:19:18 -0700
Message-ID: <20250930221918.2224702-1-khaled.almahallawy@intel.com>
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c   |  5 +++++
 drivers/gpu/drm/i915/display/intel_tc.c            | 14 ++++++++++++--
 drivers/gpu/drm/i915/display/intel_tc.h            |  3 +++
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 10dddec3796f..5f5f1c50adfa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -47,6 +47,7 @@
 #include "intel_psr_regs.h"
 #include "intel_vdsc.h"
 #include "intel_wm.h"
+#include "intel_tc.h"
 
 static struct intel_display *node_to_intel_display(struct drm_info_node *node)
 {
@@ -246,6 +247,7 @@ static void intel_connector_info(struct seq_file *m,
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	const struct drm_display_mode *mode;
+	struct drm_printer p = drm_seq_file_printer(m);
 
 	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
 		   connector->base.id, connector->name,
@@ -254,6 +256,9 @@ static void intel_connector_info(struct seq_file *m,
 	if (connector->status == connector_status_disconnected)
 		return;
 
+	if (intel_encoder_is_tc(intel_attached_encoder(intel_connector)))
+		intel_tc_info(&p, intel_attached_dig_port(intel_connector));
+
 	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
 		   connector->display_info.width_mm,
 		   connector->display_info.height_mm);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index c4a5601c5107..04946b7b8662 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,8 +5,6 @@
 
 #include <linux/iopoll.h>
 
-#include <drm/drm_print.h>
-
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
@@ -1703,6 +1701,18 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 	mutex_unlock(&tc->lock);
 }
 
+void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	mutex_lock(&tc->lock);
+	drm_printf(p, "\tTC Port: %s mode: %s pin assignment: %c max lanes: %d\n", tc->port_name,
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
index fff8b96e4972..81043829a270 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -7,6 +7,7 @@
 #define __INTEL_TC_H__
 
 #include <linux/types.h>
+#include <drm/drm_print.h>
 
 struct intel_crtc_state;
 struct intel_digital_port;
@@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
 
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
 
+void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port);
+
 #endif /* __INTEL_TC_H__ */
-- 
2.43.0


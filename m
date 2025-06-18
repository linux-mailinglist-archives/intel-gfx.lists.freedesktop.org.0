Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BED5ADE62B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 10:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A8C10E7AC;
	Wed, 18 Jun 2025 08:57:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJSO9K6D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F4DE10E7A9;
 Wed, 18 Jun 2025 08:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750237042; x=1781773042;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=hTyKtOZEOgXxi4sGID2VnnW/SOfRp5kAsuwjdvp+9t8=;
 b=PJSO9K6DOKV05Wdg1zqPm8h0Wa3+2sRs8r5BYquxfy5rWOkc3AWv2cKU
 gX+Sv/BrbU7xr2R++z3XWqsAfnQOZZmZoeHLEF5L1cwpc20Rkw2LyzuAa
 VnYYx+9lSCv3NIdk1MpiWziiHhKTfICIlJrMtP2t/Gw4ccA3ZPokv8Hub
 hX1RuLyih782UZ1S+zhWcKMoa/EAi3DKw8TVDceoGNzy5pFWYvRZu28xR
 LDMN0LzTnQc+UuXyVyQleFmyD+JfkFb0xgXVv3M4dMH1mru4vrwTOD5ra
 LLAl9rxEMgmOQIHArycDA5siPCxw6wAsbxTwJnu/DvBX4BnDPOm4NQ7Ix w==;
X-CSE-ConnectionGUID: vaAA1XTVTeO+Invfpmo/fQ==
X-CSE-MsgGUID: cx90wVQ0R2uqiN8EpRE8cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="40053191"
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="40053191"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 01:57:22 -0700
X-CSE-ConnectionGUID: pDJuroq8SROumrlDqJUv5A==
X-CSE-MsgGUID: wrWqbj6NQoG2B/+zKqKhVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="149203341"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa007.fm.intel.com with ESMTP; 18 Jun 2025 01:57:20 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Wed, 18 Jun 2025 14:12:46 +0530
Subject: [PATCH v2] drm/i915/panel: register drm_panel and call
 prepare/unprepare for eDP
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-edp_panel-v2-1-41487e741c9d@intel.com>
X-B4-Tracking: v=1; b=H4sIAAV8UmgC/23MywrCMBCF4VcpszaSifSiq76HFEmTiR2oaUlKU
 Ere3di1y/9w+HaIFJgi3KodAiWOvPgS6lSBmbR/kmBbGpRUtWywFWTXx6o9zcKNVzmiaS+N0lD
 +ayDH78O6D6UnjtsSPged8Lf+UxIKFIZQ1x1S54zt2W80n83ygiHn/AV0h8WUogAAAA==
X-Change-ID: 20250617-edp_panel-fb90b1c7362a
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, shawn.c.lee@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Allocate and register drm_panel to allow the panel_follower framework to
detect the eDP panel and pass drm_connector::kdev device to drm_panel
allocation for matching.
Call drm_panel_prepare/unprepare in ddi_enable for eDP to allow the
followers to get notified of the panel power state changes.

v2: remove backlight setup from panel_register (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
v1: Initial patch version based on the panel_follower added for DSI by
Jani.
---
Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://lore.kernel.org/r/20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com
---
 drivers/gpu/drm/i915/display/intel_ddi.c   | 4 ++++
 drivers/gpu/drm/i915/display/intel_panel.c | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cbd1060e966431e0884aa9df7b5e6d2f27fde6d5..36aa6d14589d37614fe13ba15baf4c7e60014e2c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -73,6 +73,7 @@
 #include "intel_lspcon.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_modeset_lock.h"
+#include "intel_panel.h"
 #include "intel_pfit.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -3355,6 +3356,8 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
 	drm_connector_update_privacy_screen(conn_state);
 	intel_edp_backlight_on(crtc_state, conn_state);
 
+	intel_panel_prepare(crtc_state, conn_state);
+
 	if (!intel_lspcon_active(dig_port) || intel_dp_has_hdmi_sink(&dig_port->dp))
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
@@ -3552,6 +3555,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
 
 	intel_dp->link.active = false;
 
+	intel_panel_unprepare(old_conn_state);
 	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_alpm_disable(intel_dp);
 	intel_edp_backlight_off(old_conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index f956919dc648eab507cdcca149672c1ce0173481..84de4d128b7bd34ae9bfad222c51aade01f06b8c 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -515,7 +515,8 @@ int intel_panel_register(struct intel_connector *connector)
 	if (ret)
 		return ret;
 
-	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
+	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI ||
+	    connector->base.connector_type == DRM_MODE_CONNECTOR_eDP) {
 		struct device *dev = connector->base.kdev;
 		struct drm_panel *base;
 

---
base-commit: 6f72990d9e0fe084afe257621edd730444a8bc52
change-id: 20250617-edp_panel-fb90b1c7362a

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65455AE5D6E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E62510E1FC;
	Tue, 24 Jun 2025 07:09:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MjFMeRPG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC28D10E1FC;
 Tue, 24 Jun 2025 07:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750748962; x=1782284962;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=SJ5GlKqMg7Y0rVKmO5Vmjjbykji3wJQmtneMBTq8LnU=;
 b=MjFMeRPGk0q703EQwX+sG2h0fqjdUX9PoIGpoxxfOgMOxoZ5f2pHN6qr
 VSIFfyDhLGBao7qlQpkxhvGX5Ei8pcZMQ+l8xRRnN7VeprSY7gXVKatXX
 VEeabDzI58du8D1Wc/KDkLV8BCyfhOcodthQC+Wzj3ZERKBHt43ceDBBE
 KS34zUL6s3RKj51Mh22Rib3noNlR/aamc2CQdgKsmJEQ1F9jkLorQXJXI
 IfufYSfIxkAS3KBU+yOabxYqJf52M84LCY9Uwc0vuO/4tfyX98JFomkka
 hP6jiaT82451zNdsFNpbfFY3Hsr5lQqwBg4qCe7C/tgbuEutmxwrPcdkl Q==;
X-CSE-ConnectionGUID: nanYJ4a1R+SGWdO1la1wdg==
X-CSE-MsgGUID: n/ZuzgAvT6G80fceYYBAiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="75514824"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="75514824"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:09:21 -0700
X-CSE-ConnectionGUID: mj2qVf1SQI6/NtdeFPOX1g==
X-CSE-MsgGUID: wEO9PAgfTbuFEb2u7eBq1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="151250026"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 24 Jun 2025 00:09:19 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Tue, 24 Jun 2025 12:24:58 +0530
Subject: [PATCH v3] drm/i915/panel: register drm_panel and call
 prepare/unprepare for eDP
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250624-edp_panel-v3-1-e8197b6d9fde@intel.com>
X-B4-Tracking: v=1; b=H4sIAMFLWmgC/03MTQrCMBBA4auUWTvSxNhUV95DRPIztQNtEpJSh
 NK7G1x1+cHjbVAoMxW4NxtkWrlwDBWXUwNuNOFDyL4aZCuvbScVkk/vZAJNaHrtdWetEtZD7VO
 mgb//1/NVPeQ44zJmMoeD6A+HVaJAJVSvSSvhbv7BYaHp7OIM+/4DZVAOApwAAAA=
X-Change-ID: 20250624-edp_panel-a87d76bb41bd
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Arun R Murthy <arun.r.murthy@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>
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

Note: This is for eDP with DDI platforms only.

v2: remove backlight setup from panel_register (Jani)
v3: Updated the commit message (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index e28ad72c4f2b2d777de698e6e8f1b365f6603e92..2a20aaaaac39b788759d604976ebee3635205cea 100644
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
base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
change-id: 20250624-edp_panel-a87d76bb41bd

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>


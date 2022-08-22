Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D675659C163
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 16:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6ED8910A;
	Mon, 22 Aug 2022 14:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D318FBCE
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 14:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661177343; x=1692713343;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YuCk5i2aHEWAKw3lPqDaUIW6kM7trs7Gx8nq51v3HdE=;
 b=B1P73mvhApn6ekJ2JU/CJilS7kOxjkZSIEtTzsgeRNhsB66m3K0NJt7a
 TFXTy6mXTmvgqNXOvuNg4CYnQId/1yTv+mX0nc2fETOSV4ZvAcWHxYjIw
 r5d9+Bhkv7jt+L08D5fi65VUTaTBQ9WI828h/mtWOHOyRgCRDMmfPx/VH
 ZZrqh71jp5+/JbkIaqirTtta8+X9aYoF+RAZ4yQqknyW3yYtYnjlkoJHs
 WC+CK5660/pZIKW1GehefSpujxX7eBZzLp/2JQFpuOWMdJEG5zcMr1knY
 K4h8BljIoC3FVmS8J4fHYE61UckYJWXgisJa1pipC5cwLVPbhSpmBnyLx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="355153192"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="355153192"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 07:09:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="585534909"
Received: from fmerten-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.51.221])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 07:08:59 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 17:08:36 +0300
Message-Id: <20220822140836.534432-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/backlight: Disable pps power hook for
 aux based backlight
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pps power hook seems to be problematic for backlight controlled via
aux channel. Disable it for such cases.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3657
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_dp.c        |  2 --
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index af28b143d27a..5d317a20dd0f 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -17,6 +17,7 @@
 #include "intel_dsi_dcs_backlight.h"
 #include "intel_panel.h"
 #include "intel_pci_config.h"
+#include "intel_pps.h"
 
 /**
  * scale - scale values from one range to another
@@ -1778,9 +1779,13 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 		panel->backlight.pwm_funcs = &i9xx_pwm_funcs;
 	}
 
-	if (connector->base.connector_type == DRM_MODE_CONNECTOR_eDP &&
-	    intel_dp_aux_init_backlight_funcs(connector) == 0)
-		return;
+	if (connector->base.connector_type == DRM_MODE_CONNECTOR_eDP) {
+		if (intel_dp_aux_init_backlight_funcs(connector) == 0)
+			return;
+
+		if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
+			connector->panel.backlight.power = intel_pps_backlight_power;
+	}
 
 	/* We're using a standard PWM backlight interface */
 	panel->backlight.funcs = &pwm_bl_funcs;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32292c0be2bd..ac90d455a7c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5293,8 +5293,6 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	intel_panel_init(intel_connector);
 
-	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
-		intel_connector->panel.backlight.power = intel_pps_backlight_power;
 	intel_backlight_setup(intel_connector, pipe);
 
 	intel_edp_add_properties(intel_dp);
-- 
2.34.1


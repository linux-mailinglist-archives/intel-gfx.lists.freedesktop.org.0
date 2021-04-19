Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5EF3646D0
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Apr 2021 17:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F216E3F2;
	Mon, 19 Apr 2021 15:13:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A886E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Apr 2021 15:13:38 +0000 (UTC)
IronPort-SDR: YQjBabf1P0neLeZcJtyY5J9cc8AxfrKv8vo9/2/WLuJN2U+m1kOqCTcsisu+NEZzp9mLIA5AYp
 gHpsXtxTSH/A==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="175450126"
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="175450126"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 08:13:26 -0700
IronPort-SDR: kacIdmh8j42h8gVc8AgwzhJ/Z0ioxKDheNfXcuRwo7MuWiusSKybEg/FHlHmEaTecUL7q0TBN1
 F74ACEuy0ABA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="534171860"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.34])
 by orsmga004.jf.intel.com with ESMTP; 19 Apr 2021 08:13:24 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Apr 2021 23:17:18 +0800
Message-Id: <20210419151718.22979-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: set min brightness for aux backlight
 interface.
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Min brightness level for aux backlight interface is always zero.
Driver should refer to VBT's setting to configure proper minimum
level just like PWM backlight interface.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
 drivers/gpu/drm/i915/display/intel_panel.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_panel.h            | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4f8337c7fd2e..efd8fa155105 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -571,7 +571,7 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 	if (!panel->backlight.max)
 		return -ENODEV;
 
-	panel->backlight.min = 0;
+	panel->backlight.min = get_backlight_min_vbt(connector);
 	panel->backlight.level = intel_dp_aux_vesa_get_backlight(connector, pipe);
 	panel->backlight.enabled = intel_dp_aux_vesa_backlight_dpcd_mode(connector) &&
 				   panel->backlight.level != 0;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 551fcaa77c2c..6d58ec192a04 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1614,7 +1614,7 @@ static u32 get_backlight_max_vbt(struct intel_connector *connector)
 /*
  * Note: The setup hooks can't assume pipe is set!
  */
-static u32 get_backlight_min_vbt(struct intel_connector *connector)
+u32 get_backlight_min_vbt(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 1d340f77bffc..63da4e355585 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -53,6 +53,7 @@ void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32
 u32 intel_panel_invert_pwm_level(struct intel_connector *connector, u32 level);
 u32 intel_panel_backlight_level_to_pwm(struct intel_connector *connector, u32 level);
 u32 intel_panel_backlight_level_from_pwm(struct intel_connector *connector, u32 val);
+u32 get_backlight_min_vbt(struct intel_connector *connector);
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 int intel_backlight_device_register(struct intel_connector *connector);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

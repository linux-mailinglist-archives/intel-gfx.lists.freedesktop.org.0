Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D052EF6AD
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:44:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319E2892A1;
	Fri,  8 Jan 2021 17:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9C96E859
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:44:51 +0000 (UTC)
IronPort-SDR: QtnZjoTTOa7WTO5kjuUQJHb+Ukr21kSY3ddwOZNp/ZJTesX6sEuAD8mNt2umvJdTkAobaU9JJn
 b0O4RrcAG69g==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="174121446"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="174121446"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:51 -0800
IronPort-SDR: ZRHXHlOpYeT0Dnfwb8bXuSuIIrvijB54VcJatc5zYeyVzStxUlh25RSCkypkdJLCw/K76XgQil
 Trc1h2Mk75Ww==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="463451433"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:11 +0200
Message-Id: <9887e4e278ed9a20da064bbf1d0845e52b7c3b3d.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/17] drm/i915/pps: rename
 intel_edp_backlight_* to intel_pps_backlight_*
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming pattern for functions. No functional changes.

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_pps.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_pps.h |  6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6e9b114171be..421e68bb436f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2563,7 +2563,7 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 	drm_dbg_kms(&i915->drm, "\n");
 
 	intel_panel_enable_backlight(crtc_state, conn_state);
-	_intel_edp_backlight_on(intel_dp);
+	intel_pps_backlight_on(intel_dp);
 }
 
 /* Disable backlight PP control and backlight PWM. */
@@ -2577,7 +2577,7 @@ void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
 
 	drm_dbg_kms(&i915->drm, "\n");
 
-	_intel_edp_backlight_off(intel_dp);
+	intel_pps_backlight_off(intel_dp);
 	intel_panel_disable_backlight(old_conn_state);
 }
 
@@ -7128,7 +7128,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 
 	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
-	intel_connector->panel.backlight.power = intel_edp_backlight_power;
+	intel_connector->panel.backlight.power = intel_pps_backlight_power;
 	intel_panel_setup_backlight(connector, pipe);
 
 	if (fixed_mode) {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 1a05f2c7f690..36d8782d8df1 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -844,7 +844,7 @@ void intel_edp_panel_off(struct intel_dp *intel_dp)
 }
 
 /* Enable backlight in the panel power control. */
-void _intel_edp_backlight_on(struct intel_dp *intel_dp)
+void intel_pps_backlight_on(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
@@ -870,7 +870,7 @@ void _intel_edp_backlight_on(struct intel_dp *intel_dp)
 }
 
 /* Disable backlight in the panel power control. */
-void _intel_edp_backlight_off(struct intel_dp *intel_dp)
+void intel_pps_backlight_off(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
@@ -897,7 +897,7 @@ void _intel_edp_backlight_off(struct intel_dp *intel_dp)
  * Hook for controlling the panel power control backlight through the bl_power
  * sysfs attribute. Take care to handle multiple calls.
  */
-void intel_edp_backlight_power(struct intel_connector *connector, bool enable)
+void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
@@ -914,9 +914,9 @@ void intel_edp_backlight_power(struct intel_connector *connector, bool enable)
 		    enable ? "enable" : "disable");
 
 	if (enable)
-		_intel_edp_backlight_on(intel_dp);
+		intel_pps_backlight_on(intel_dp);
 	else
-		_intel_edp_backlight_off(intel_dp);
+		intel_pps_backlight_off(intel_dp);
 }
 
 static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index f44e6ce9e8c1..81e4e9fc3cf5 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -23,9 +23,9 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wake
 	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
 
 void intel_dp_check_edp(struct intel_dp *intel_dp);
-void _intel_edp_backlight_on(struct intel_dp *intel_dp);
-void _intel_edp_backlight_off(struct intel_dp *intel_dp);
-void intel_edp_backlight_power(struct intel_connector *connector, bool enable);
+void intel_pps_backlight_on(struct intel_dp *intel_dp);
+void intel_pps_backlight_off(struct intel_dp *intel_dp);
+void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
 
 bool edp_panel_vdd_on(struct intel_dp *intel_dp);
 void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

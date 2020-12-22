Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D9A2E0C01
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86AB16E406;
	Tue, 22 Dec 2020 14:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DDA6E879
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:50:19 +0000 (UTC)
IronPort-SDR: WKuzLyJY0ZxWpy6Ck8P/YjDG5Xtr3DNTh6mgIMc1CqRp30gEXsRCpQW176gDqAGQjCmwXn3Gxp
 pfNYfHH43Jig==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="163596275"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="163596275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:19 -0800
IronPort-SDR: 2XMQlF1FX4/jK6WtmEflTNl29KyCSGjjD7AFQqTdAjXQosFkR6qqF3LXJvlL0wdA43Qjd35IDX
 H4Z9HhNI3hUw==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="373385034"
Received: from sauterhx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.229])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 16:49:43 +0200
Message-Id: <dc2762904d9d78c46c75f72047720ab1820870f1.1608648128.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608648128.git.jani.nikula@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/pps: rename
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

Follow the usual naming pattern for functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_pps.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_pps.h |  6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0870872fb594..9813fb7e109c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2536,7 +2536,7 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 	drm_dbg_kms(&i915->drm, "\n");
 
 	intel_panel_enable_backlight(crtc_state, conn_state);
-	_intel_edp_backlight_on(intel_dp);
+	intel_pps_backlight_on(intel_dp);
 }
 
 /* Disable backlight PP control and backlight PWM. */
@@ -2550,7 +2550,7 @@ void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
 
 	drm_dbg_kms(&i915->drm, "\n");
 
-	_intel_edp_backlight_off(intel_dp);
+	intel_pps_backlight_off(intel_dp);
 	intel_panel_disable_backlight(old_conn_state);
 }
 
@@ -6688,7 +6688,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 
 	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
-	intel_connector->panel.backlight.power = intel_edp_backlight_power;
+	intel_connector->panel.backlight.power = intel_pps_backlight_power;
 	intel_panel_setup_backlight(connector, pipe);
 
 	if (fixed_mode) {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9b0c432552b7..0edda87dee94 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -847,7 +847,7 @@ void intel_edp_panel_off(struct intel_dp *intel_dp)
 }
 
 /* Enable backlight in the panel power control. */
-void _intel_edp_backlight_on(struct intel_dp *intel_dp)
+void intel_pps_backlight_on(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
@@ -873,7 +873,7 @@ void _intel_edp_backlight_on(struct intel_dp *intel_dp)
 }
 
 /* Disable backlight in the panel power control. */
-void _intel_edp_backlight_off(struct intel_dp *intel_dp)
+void intel_pps_backlight_off(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
@@ -900,7 +900,7 @@ void _intel_edp_backlight_off(struct intel_dp *intel_dp)
  * Hook for controlling the panel power control backlight through the bl_power
  * sysfs attribute. Take care to handle multiple calls.
  */
-void intel_edp_backlight_power(struct intel_connector *connector, bool enable)
+void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
@@ -917,9 +917,9 @@ void intel_edp_backlight_power(struct intel_connector *connector, bool enable)
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

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B95232EF6BB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 225356E85E;
	Fri,  8 Jan 2021 17:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094316E85E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:34 +0000 (UTC)
IronPort-SDR: UNPSW5JosAuUny5y+BMDMs1oYTivM5qPDZZ+8qMZvk87D9DtGBWp3HTr2ExDYSZFbqot4mcjsd
 B4G8JcCRy3Dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177778022"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="177778022"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:34 -0800
IronPort-SDR: gbQQyJgAHysbnaVzKTryFaiiSy6MsAMkVhRdQgmmjhX7lyU5CLqzeoyUUdMHWGja9Gv1ufvva3
 B5dX1W6Fo1nQ==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="396368949"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:19 +0200
Message-Id: <4b712770deab9de8c3aeea8df35269433977038a.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/17] drm/i915/pps: add locked
 intel_pps_wait_power_cycle
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

Prefer keeping the unlocked variants hidden if possible. No functional
changes.

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  7 +------
 drivers/gpu/drm/i915/display/intel_pps.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_pps.h |  3 +--
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1685e48b17cd..ffb6f6c9b858 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6273,13 +6273,8 @@ void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
 void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
-	intel_wakeref_t wakeref;
-
-	if (!intel_dp_is_edp(intel_dp))
-		return;
 
-	with_intel_pps_lock(intel_dp, wakeref)
-		wait_panel_power_cycle(intel_dp);
+	intel_pps_wait_power_cycle(intel_dp);
 }
 
 static enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index d396ee5f6f69..79276ab20c75 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -500,7 +500,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
 	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
 }
 
-void wait_panel_power_cycle(struct intel_dp *intel_dp)
+static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	ktime_t panel_power_on_time;
@@ -522,6 +522,17 @@ void wait_panel_power_cycle(struct intel_dp *intel_dp)
 	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
 }
 
+void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+
+	if (!intel_dp_is_edp(intel_dp))
+		return;
+
+	with_intel_pps_lock(intel_dp, wakeref)
+		wait_panel_power_cycle(intel_dp);
+}
+
 static void wait_backlight_on(struct intel_dp *intel_dp)
 {
 	wait_remaining_ms_from_jiffies(intel_dp->last_power_on,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index ecd9ea2a095c..fdf7a17e2dfa 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -37,8 +37,7 @@ void intel_pps_on(struct intel_dp *intel_dp);
 void intel_pps_off(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
 bool intel_pps_have_power(struct intel_dp *intel_dp);
-
-void wait_panel_power_cycle(struct intel_dp *intel_dp);
+void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 
 void intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

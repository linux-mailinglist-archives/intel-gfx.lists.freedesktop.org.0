Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D702EF6B4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB456E84D;
	Fri,  8 Jan 2021 17:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B7C56E85B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:14 +0000 (UTC)
IronPort-SDR: HsipnHfxfo+uALpeuiAafk8KxQ2c40iUxWGZBYrfLPVSz54yOfRZcmqrrm65lF94RxdZshbq5v
 nEu79Z2tLdmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="156813593"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="156813593"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:12 -0800
IronPort-SDR: XFkppcYoLOb4GUv9Pd4zMVNxTsDVv0uwYNik1C3cimT0qYacRG1q245chMMPBtBmseCulH8IWh
 iIDC/OBeNfTg==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="403414674"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:15 +0200
Message-Id: <290865ed9b0ea79120222a24c233a2d596239076.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/17] drm/i915/pps: add higher level
 intel_pps_init() call
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

Add a new init call to be called only once, unlike some of the other
various init calls. This lets us hide more functions within
intel_pps.c. No functional changes.

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  9 +--------
 drivers/gpu/drm/i915/display/intel_pps.c | 17 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_pps.h |  3 +--
 3 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bff5e735a92e..31c5474f85d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7026,14 +7026,11 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	struct drm_display_mode *downclock_mode = NULL;
 	bool has_dpcd;
 	enum pipe pipe = INVALID_PIPE;
-	intel_wakeref_t wakeref;
 	struct edid *edid;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
-	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
-
 	/*
 	 * On IBX/CPT we may get here with LVDS already registered. Since the
 	 * driver uses the only internal power sequencer available for both
@@ -7049,11 +7046,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	with_intel_pps_lock(intel_dp, wakeref) {
-		intel_dp_init_panel_power_timestamps(intel_dp);
-		intel_dp_pps_init(intel_dp);
-		intel_pps_vdd_sanitize(intel_dp);
-	}
+	intel_pps_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b6c07694ae9d..799190fafa4f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -694,7 +694,7 @@ void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
 		intel_pps_vdd_off_sync_unlocked(intel_dp);
 }
 
-void edp_panel_vdd_work(struct work_struct *__work)
+static void edp_panel_vdd_work(struct work_struct *__work)
 {
 	struct intel_dp *intel_dp =
 		container_of(to_delayed_work(__work),
@@ -1078,7 +1078,7 @@ bool intel_pps_have_power(struct intel_dp *intel_dp)
 	return have_power;
 }
 
-void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
+static void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
 {
 	intel_dp->panel_power_off_time = ktime_get_boottime();
 	intel_dp->last_power_on = jiffies;
@@ -1348,3 +1348,16 @@ void intel_dp_pps_init(struct intel_dp *intel_dp)
 		intel_dp_init_panel_power_sequencer_registers(intel_dp, false);
 	}
 }
+
+void intel_pps_init(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+
+	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
+
+	with_intel_pps_lock(intel_dp, wakeref) {
+		intel_dp_init_panel_power_timestamps(intel_dp);
+		intel_dp_pps_init(intel_dp);
+		intel_pps_vdd_sanitize(intel_dp);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 3cab183658c6..53c0fafd1440 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -31,7 +31,6 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
 void intel_pps_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_off_unlocked(struct intel_dp *intel_dp);
-void edp_panel_vdd_work(struct work_struct *__work);
 
 void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
 void intel_pps_vdd_on(struct intel_dp *intel_dp);
@@ -42,9 +41,9 @@ bool intel_pps_have_power(struct intel_dp *intel_dp);
 
 void wait_panel_power_cycle(struct intel_dp *intel_dp);
 
+void intel_pps_init(struct intel_dp *intel_dp);
 void intel_dp_pps_init(struct intel_dp *intel_dp);
 void intel_power_sequencer_reset(struct drm_i915_private *i915);
-void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp);
 
 void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

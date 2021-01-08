Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EADD2EF6B7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08856E85B;
	Fri,  8 Jan 2021 17:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E8EA6E85B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:24 +0000 (UTC)
IronPort-SDR: PkJ5Q5wxsYE+NRCzLSEXyUpdUz++N7YcWhrCfFnrqZO0nZyjQw/l3u9iIiiHhm/++896CwrH5b
 R6bSaf2ypvZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="239178769"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="239178769"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:23 -0800
IronPort-SDR: B2zWfc8bGFPjUPTYd08JOH8MWRMz3zfes1pt9dgAHDDWbtBqlqyjNBlEEbCBH2HnB/BzvcTk4n
 3SGRt1AURxRA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="566532492"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:17 +0200
Message-Id: <f03f7195fb62b250847909e0972f69a151095529.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/17] drm/i915/pps: rename
 intel_dp_check_edp to intel_pps_check_power_unlocked
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
 drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cfaadeaf9f00..1685e48b17cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1069,7 +1069,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 */
 	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
 
-	intel_dp_check_edp(intel_dp);
+	intel_pps_check_power_unlocked(intel_dp);
 
 	/* Try to wait for any previous AUX channel activity */
 	for (try = 0; try < 3; try++) {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3b962be4f4c0..9e5744578b26 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -428,7 +428,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
 }
 
-void intel_dp_check_edp(struct intel_dp *intel_dp)
+void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 7c3b5ea4f47b..e0391c9c8383 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -22,7 +22,6 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wake
 #define with_intel_pps_lock(dp, wf)						\
 	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
 
-void intel_dp_check_edp(struct intel_dp *intel_dp);
 void intel_pps_backlight_on(struct intel_dp *intel_dp);
 void intel_pps_backlight_off(struct intel_dp *intel_dp);
 void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
@@ -31,6 +30,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
 void intel_pps_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_off_unlocked(struct intel_dp *intel_dp);
+void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
 
 void intel_pps_vdd_on(struct intel_dp *intel_dp);
 void intel_pps_on(struct intel_dp *intel_dp);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

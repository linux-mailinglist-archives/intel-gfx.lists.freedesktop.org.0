Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6988E2E0C05
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB436E886;
	Tue, 22 Dec 2020 14:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 921526E886
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:50:48 +0000 (UTC)
IronPort-SDR: elFoYsVMa3dRXaIdOt5n5cLKsd9RuWqV7kpg46di8/+PvUimBCEpcZPeTgSTamsWo9hrc+iExF
 DTHqzDzrcyFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="172364397"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="172364397"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:48 -0800
IronPort-SDR: t92UzM1BztALvdpUHD5EIo58cQqa/7miGtHis6h5LF6ozelMam8eQPHLoQzpWSsuoeYtIN6dG4
 sW66QWfKUv1g==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="457472683"
Received: from sauterhx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.229])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 16:49:49 +0200
Message-Id: <a5a60c020b4f9277de1276b2d6010119a5f072ab.1608648128.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608648128.git.jani.nikula@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/pps: rename intel_dp_check_edp
 to intel_pps_check_power_unlocked
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
 drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 334ba1775cd3..65406d4ccdbe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1046,7 +1046,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 */
 	cpu_latency_qos_update_request(&i915->pm_qos, 0);
 
-	intel_dp_check_edp(intel_dp);
+	intel_pps_check_power_unlocked(intel_dp);
 
 	/* Try to wait for any previous AUX channel activity */
 	for (try = 0; try < 3; try++) {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3e62d1450682..dfd6722bc40e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -431,7 +431,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
 }
 
-void intel_dp_check_edp(struct intel_dp *intel_dp)
+void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 4780b59a59df..8dda282abd42 100644
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

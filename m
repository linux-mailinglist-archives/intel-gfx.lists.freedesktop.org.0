Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B00092E0C03
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:50:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187F86E884;
	Tue, 22 Dec 2020 14:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC186E884
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:50:35 +0000 (UTC)
IronPort-SDR: ru7G7WDqIfvhM+ANZ7RmUN4yZB62HKm9nj8CDbeiIdzq4al7zfvn7FiQRTjpls+Or3xH+u1In1
 W9tgdfYXkv2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="155665405"
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="155665405"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:34 -0800
IronPort-SDR: m0sRc9j1REduqgm/INzdHVlLOOaKzOjTHgLtm61n5adZ7jpcM8ImMAIwIaFacMFrFhNwTxogSE
 0QX4NPgUr0Qg==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="416605397"
Received: from sauterhx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.229])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 16:49:46 +0200
Message-Id: <511ebda7b1fe5402e0312b20f7cf642318da9132.1608648128.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608648128.git.jani.nikula@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/pps: abstract
 intel_pps_vdd_off_sync
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

Add a locked version of intel_pps_vdd_off_sync_unlocked() that does
everything the callers expect it to.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 31 +++---------------------
 drivers/gpu/drm/i915/display/intel_pps.c | 17 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_pps.h |  2 +-
 3 files changed, 20 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f2794cc4292a..1a34c9351c30 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5809,17 +5809,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 	struct intel_dp *intel_dp = &dig_port->dp;
 
 	intel_dp_mst_encoder_cleanup(dig_port);
-	if (intel_dp_is_edp(intel_dp)) {
-		intel_wakeref_t wakeref;
 
-		cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
-		/*
-		 * vdd might still be enabled do to the delayed vdd off.
-		 * Make sure vdd is actually turned off here.
-		 */
-		with_intel_pps_lock(intel_dp, wakeref)
-			intel_pps_vdd_off_sync_unlocked(intel_dp);
-	}
+	intel_pps_vdd_off_sync(intel_dp);
 
 	intel_dp_aux_fini(intel_dp);
 }
@@ -5835,18 +5826,8 @@ static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
 void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
-	intel_wakeref_t wakeref;
-
-	if (!intel_dp_is_edp(intel_dp))
-		return;
 
-	/*
-	 * vdd might still be enabled do to the delayed vdd off.
-	 * Make sure vdd is actually turned off here.
-	 */
-	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
-	with_intel_pps_lock(intel_dp, wakeref)
-		intel_pps_vdd_off_sync_unlocked(intel_dp);
+	intel_pps_vdd_off_sync(intel_dp);
 }
 
 void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
@@ -6700,13 +6681,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	return true;
 
 out_vdd_off:
-	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
-	/*
-	 * vdd might still be enabled do to the delayed vdd off.
-	 * Make sure vdd is actually turned off here.
-	 */
-	with_intel_pps_lock(intel_dp, wakeref)
-		intel_pps_vdd_off_sync_unlocked(intel_dp);
+	intel_pps_vdd_off_sync(intel_dp);
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 01c9e69f4e3a..acd6d0092bc6 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -641,7 +641,7 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
 			dp_to_dig_port(intel_dp)->base.base.name);
 }
 
-void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
+static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port =
@@ -682,6 +682,21 @@ void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 				fetch_and_zero(&intel_dp->vdd_wakeref));
 }
 
+void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+	if (!intel_dp_is_edp(intel_dp))
+		return;
+
+	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
+	/*
+	 * vdd might still be enabled do to the delayed vdd off.
+	 * Make sure vdd is actually turned off here.
+	 */
+	with_intel_pps_lock(intel_dp, wakeref)
+		intel_pps_vdd_off_sync_unlocked(intel_dp);
+}
+
 void edp_panel_vdd_work(struct work_struct *__work)
 {
 	struct intel_dp *intel_dp =
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index e7f0473be9a7..3cab183658c6 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -29,7 +29,6 @@ void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
 
 bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
-void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp);
 void intel_pps_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_off_unlocked(struct intel_dp *intel_dp);
 void edp_panel_vdd_work(struct work_struct *__work);
@@ -38,6 +37,7 @@ void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
 void intel_pps_vdd_on(struct intel_dp *intel_dp);
 void intel_pps_on(struct intel_dp *intel_dp);
 void intel_pps_off(struct intel_dp *intel_dp);
+void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
 bool intel_pps_have_power(struct intel_dp *intel_dp);
 
 void wait_panel_power_cycle(struct intel_dp *intel_dp);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

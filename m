Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C55DE2CE9A3
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 09:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7E26E135;
	Fri,  4 Dec 2020 08:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11056E135
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 08:32:44 +0000 (UTC)
IronPort-SDR: U1Vh5Bmbmj6TPMfVCJlRMqzJ60M2EyJpssDkKU1V1E7Z985HWHgnaZRI9CzfeCVm5FSngEYcIE
 r7zFToDgcLhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="173442278"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="173442278"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 00:32:41 -0800
IronPort-SDR: OuuTcqVoyE2mJBPPRJkKlxDLollGA9hmsxxa/0Q2BOTWKZsZrIJ2PRnJ9/AH9RDg4HnbekbDgp
 ZtH9JW5POmhQ==
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="362110848"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 00:32:39 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 13:48:45 +0530
Message-Id: <20201204081845.26528-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201204081845.26528-1-anshuman.gupta@intel.com>
References: <20201204081845.26528-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dp: optimize pps_lock wherever
 required
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reading backlight status from PPS register doesn't require
AUX power on the platform which has South Display Engine on PCH.
It invokes a unnecessary power well enable/disable noise.
optimize it wherever is possible.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2d4d5e95af84..7e18e4ff50f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -892,6 +892,47 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
 	return 0;
 }
 
+/*
+ * Platform with PCH based SDE doesn't require to enable AUX power
+ * for simple PPS register access like whether backlight is enabled.
+ * use pch_pps_lock()/pch_pps_unlock() wherever we don't require
+ * aux power to avoid unnecessary power well enable/disable back
+ * and forth.
+ */
+static intel_wakeref_t
+pch_pps_lock(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	intel_wakeref_t wakeref;
+
+	if (!HAS_PCH_SPLIT(dev_priv))
+		wakeref = intel_display_power_get(dev_priv,
+						  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
+	else
+		wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+
+	mutex_lock(&dev_priv->pps_mutex);
+
+	return wakeref;
+}
+
+static intel_wakeref_t
+pch_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	mutex_unlock(&dev_priv->pps_mutex);
+
+	if (!HAS_PCH_SPLIT(dev_priv))
+		intel_display_power_put(dev_priv,
+					intel_aux_power_domain(dp_to_dig_port(intel_dp)),
+					wakeref);
+	else
+		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+
+	return 0;
+}
+
 #define with_pps_lock(dp, wf) \
 	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))
 
@@ -3453,8 +3494,10 @@ static void intel_edp_backlight_power(struct intel_connector *connector,
 	bool is_enabled;
 
 	is_enabled = false;
-	with_pps_lock(intel_dp, wakeref)
-		is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
+	wakeref = pch_pps_lock(intel_dp);
+	is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
+	pch_pps_unlock(intel_dp, wakeref);
+
 	if (is_enabled == enable)
 		return;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

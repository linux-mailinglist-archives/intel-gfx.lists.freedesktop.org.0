Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A96E11E2C1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 12:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A860289935;
	Fri, 13 Dec 2019 11:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B394589935
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 11:27:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 03:27:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="216611775"
Received: from sorvi.fi.intel.com ([10.237.72.159])
 by orsmga003.jf.intel.com with ESMTP; 13 Dec 2019 03:27:50 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 13:27:48 +0200
Message-Id: <20191213112748.14506-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/display: Read DP link status with DRM
 helper function
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The patch proposes that we read DP link status with DRM helper function
instead of intel specific one. Functionally there are no changes.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c             | 13 +------------
 drivers/gpu/drm/i915/display/intel_dp.h             |  2 --
 .../gpu/drm/i915/display/intel_dp_link_training.c   |  6 ++++--
 3 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2f31d226c6eb..c01d790208d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3767,17 +3767,6 @@ static void chv_dp_post_pll_disable(struct intel_encoder *encoder,
 	chv_phy_post_pll_disable(encoder, old_crtc_state);
 }
 
-/*
- * Fetch AUX CH registers 0x202 - 0x207 which contain
- * link status information
- */
-bool
-intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_status,
-				DP_LINK_STATUS_SIZE) == DP_LINK_STATUS_SIZE;
-}
-
 /* These are source-specific values. */
 u8
 intel_dp_voltage_max(struct intel_dp *intel_dp)
@@ -5077,7 +5066,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_psr_enabled(intel_dp))
 		return false;
 
-	if (!intel_dp_get_link_status(intel_dp, link_status))
+	if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) <= 0)
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3da166054788..7595326798d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -101,8 +101,6 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
 bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
 bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
-bool
-intel_dp_get_link_status(struct intel_dp *intel_dp, u8 *link_status);
 
 bool intel_dp_read_dpcd(struct intel_dp *intel_dp);
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 2a1130dd1ad0..edffdb88ab4e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -192,7 +192,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
 
 		drm_dp_link_train_clock_recovery_delay(intel_dp->dpcd);
 
-		if (!intel_dp_get_link_status(intel_dp, link_status)) {
+		if (drm_dp_dpcd_read_link_status(&intel_dp->aux,
+						 link_status) <= 0) {
 			DRM_ERROR("failed to get link status\n");
 			return false;
 		}
@@ -302,7 +303,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 	for (tries = 0; tries < 5; tries++) {
 
 		drm_dp_link_train_channel_eq_delay(intel_dp->dpcd);
-		if (!intel_dp_get_link_status(intel_dp, link_status)) {
+		if (drm_dp_dpcd_read_link_status(&intel_dp->aux,
+						 link_status) <= 0) {
 			DRM_ERROR("failed to get link status\n");
 			break;
 		}
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

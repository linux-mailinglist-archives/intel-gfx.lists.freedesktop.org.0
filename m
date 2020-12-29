Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB612E7295
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 18:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1057A8935B;
	Tue, 29 Dec 2020 17:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C560F8935B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 17:22:05 +0000 (UTC)
IronPort-SDR: TIoUrgopV7QdwKyekPRiD8HlWZQUDx/Y/gS1a1MJD+4/tcGs8D3c7zAJzoK7R8GnQ7oON3Qng1
 6XLqWAq2ZBoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9849"; a="155719778"
X-IronPort-AV: E=Sophos;i="5.78,458,1599548400"; d="scan'208";a="155719778"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 09:22:04 -0800
IronPort-SDR: 1I0dW16nLFzbUfsP4HhWdZDM2LwUIxAuxQnbE4cPa4IfmfeezXKmw03vMCdakGcRjB6WsMkhgj
 thMTbZQ6QgTg==
X-IronPort-AV: E=Sophos;i="5.78,458,1599548400"; d="scan'208";a="376125058"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 09:22:03 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 19:22:00 +0200
Message-Id: <20201229172201.4155327-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Move
 intel_dp_set_signal_levels() to intel_dp_link_training.c
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

intel_dp_set_signal_levels() is needed for link training, so move it to
intel_dp_link_training.c.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c        | 18 ------------------
 drivers/gpu/drm/i915/display/intel_dp.h        |  3 ---
 .../drm/i915/display/intel_dp_link_training.c  | 18 ++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h  |  2 ++
 4 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0e8aaac413c..88a6033d6867 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5003,24 +5003,6 @@ ivb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp,
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
-void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
-				const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u8 train_set = intel_dp->train_set[0];
-
-	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s\n",
-		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
-		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "");
-	drm_dbg_kms(&dev_priv->drm, "Using pre-emphasis level %d%s\n",
-		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
-		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
-		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
-		    " (max)" : "");
-
-	intel_dp->set_signal_levels(intel_dp, crtc_state);
-}
-
 void
 intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 4280a09fd8fd..4ebda4e43003 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -96,9 +96,6 @@ void
 intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
 				       u8 dp_train_pat);
-void
-intel_dp_set_signal_levels(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state);
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
 bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 91d3979902d0..7876e781f698 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -334,6 +334,24 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
 	return drm_dp_dpcd_write(&intel_dp->aux, reg, buf, len) == len;
 }
 
+void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	u8 train_set = intel_dp->train_set[0];
+
+	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s\n",
+		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
+		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "");
+	drm_dbg_kms(&dev_priv->drm, "Using pre-emphasis level %d%s\n",
+		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
+		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
+		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
+		    " (max)" : "");
+
+	intel_dp->set_signal_levels(intel_dp, crtc_state);
+}
+
 static bool
 intel_dp_reset_link_train(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 86905aa24db7..c3110c032bc2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -17,6 +17,8 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state,
 			       enum drm_dp_phy dp_phy,
 			       const u8 link_status[DP_LINK_STATUS_SIZE]);
+void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
+				const struct intel_crtc_state *crtc_state);
 void intel_dp_start_link_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state);
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

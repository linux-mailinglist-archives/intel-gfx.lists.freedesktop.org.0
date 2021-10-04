Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B35C420A01
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 13:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAEF6E9CF;
	Mon,  4 Oct 2021 11:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8EB6E9D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 11:23:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="311589777"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="311589777"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 04:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="482908240"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 04 Oct 2021 04:23:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 14:23:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 14:23:03 +0300
Message-Id: <20211004112306.28544-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
References: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Show LTTPR in the TPS debug print
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Indicate which LTTPR we're currently attempting to train when
we print which training pattern we're using.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                 |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dp_link_training.h |  1 +
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 60ae2ba52006..85a09c3e09e8 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -637,7 +637,7 @@ static void intel_dp_enable_port(struct intel_dp *intel_dp,
 	/* enable with pattern 1 (as per spec) */
 
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state,
-					       DP_TRAINING_PATTERN_1);
+					       DP_PHY_DPRX, DP_TRAINING_PATTERN_1);
 
 	/*
 	 * Magic for VLV/CHV. We _must_ first set up the register
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a45569b8c959..6bab097cafd2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -376,7 +376,7 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
 	int len;
 
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state,
-					       dp_train_pat);
+					       dp_phy, dp_train_pat);
 
 	buf[0] = dp_train_pat;
 	/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
@@ -404,17 +404,20 @@ static char dp_training_pattern_name(u8 train_pat)
 void
 intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
+				       enum drm_dp_phy dp_phy,
 				       u8 dp_train_pat)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u8 train_pat = intel_dp_training_pattern_symbol(dp_train_pat);
+	char phy_name[10];
 
 	if (train_pat != DP_TRAINING_PATTERN_DISABLE)
 		drm_dbg_kms(&dev_priv->drm,
-			    "[ENCODER:%d:%s] Using DP training pattern TPS%c\n",
+			    "[ENCODER:%d:%s] Using DP training pattern TPS%c, at %s\n",
 			    encoder->base.base.id, encoder->base.name,
-			    dp_training_pattern_name(train_pat));
+			    dp_training_pattern_name(train_pat),
+			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
 
 	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
 }
@@ -855,7 +858,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	intel_dp->link_trained = true;
 
 	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
-	intel_dp_program_link_training_pattern(intel_dp, crtc_state,
+	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
 					       DP_TRAINING_PATTERN_DISABLE);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 9d24d594368c..6a3a7b37349a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -19,6 +19,7 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			       const u8 link_status[DP_LINK_STATUS_SIZE]);
 void intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state,
+					    enum drm_dp_phy dp_phy,
 					    u8 dp_train_pat);
 void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 				const struct intel_crtc_state *crtc_state,
-- 
2.32.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDFC4214E4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 19:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CBB6EA5B;
	Mon,  4 Oct 2021 17:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA28C6EA5B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 17:10:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="212467725"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="212467725"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 10:05:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="558622930"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2021 10:05:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 20:05:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 20:05:33 +0300
Message-Id: <20211004170535.4173-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004170535.4173-1-ville.syrjala@linux.intel.com>
References: <20211004170535.4173-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915: Print the DP vswing adjustment
 request
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

Print out each DP vswing adjustment request we got from the RX.
Could help in diagnosing what's going on during link training.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6bab097cafd2..5657be1461ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -343,14 +343,41 @@ static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
 	return v | p;
 }
 
+#define TRAIN_REQ_FMT "%d/%d/%d/%d"
+#define _TRAIN_REQ_VSWING_ARGS(link_status, lane) \
+	(drm_dp_get_adjust_request_voltage((link_status), (lane)) >> DP_TRAIN_VOLTAGE_SWING_SHIFT)
+#define TRAIN_REQ_VSWING_ARGS(link_status) \
+	_TRAIN_REQ_VSWING_ARGS(link_status, 0), \
+	_TRAIN_REQ_VSWING_ARGS(link_status, 1), \
+	_TRAIN_REQ_VSWING_ARGS(link_status, 2), \
+	_TRAIN_REQ_VSWING_ARGS(link_status, 3)
+#define _TRAIN_REQ_PREEMPH_ARGS(link_status, lane) \
+	(drm_dp_get_adjust_request_pre_emphasis((link_status), (lane)) >> DP_TRAIN_PRE_EMPHASIS_SHIFT)
+#define TRAIN_REQ_PREEMPH_ARGS(link_status) \
+	_TRAIN_REQ_PREEMPH_ARGS(link_status, 0), \
+	_TRAIN_REQ_PREEMPH_ARGS(link_status, 1), \
+	_TRAIN_REQ_PREEMPH_ARGS(link_status, 2), \
+	_TRAIN_REQ_PREEMPH_ARGS(link_status, 3)
+
 void
 intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state,
 			  enum drm_dp_phy dp_phy,
 			  const u8 link_status[DP_LINK_STATUS_SIZE])
 {
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	char phy_name[10];
 	int lane;
 
+	drm_dbg_kms(encoder->base.dev, "[ENCODER:%d:%s] lanes: %d, "
+		    "vswing request: " TRAIN_REQ_FMT ", "
+		    "pre-emphasis request: " TRAIN_REQ_FMT ", at %s\n",
+		    encoder->base.base.id, encoder->base.name,
+		    crtc_state->lane_count,
+		    TRAIN_REQ_VSWING_ARGS(link_status),
+		    TRAIN_REQ_PREEMPH_ARGS(link_status),
+		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
+
 	for (lane = 0; lane < 4; lane++)
 		intel_dp->train_set[lane] =
 			intel_dp_get_lane_adjust_train(intel_dp, crtc_state,
-- 
2.32.0


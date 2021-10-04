Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B294F420A03
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 13:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1036E9D2;
	Mon,  4 Oct 2021 11:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117C16E9D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 11:23:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="225705408"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="225705408"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 04:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="567001527"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2021 04:23:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 14:23:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 14:23:04 +0300
Message-Id: <20211004112306.28544-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
References: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Print the DP vswing adjustment
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5606EA4FDF8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 12:48:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C93A710E76D;
	Wed,  5 Mar 2025 11:48:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C7XeWw+o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956E110E758;
 Wed,  5 Mar 2025 11:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741175305; x=1772711305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ew7xf1Qz7HFth9YOZ7BPUj3mbcSYNjK/cwBNQCmFf8k=;
 b=C7XeWw+o7JSPwXY78QHZbwDHxNBdKdi0f89WgkF8RYvBzgf4Da1bNJHc
 48nXb1TkLxQVuo940VEV26hKEJocZGR+gciGvpQngFXSvzHCmJg4wa8dE
 oWD9GgqUFmINIurqhJBWaV3vrp0CNXnOLy6tSPFuVcfbV05x6Kv+q/79P
 Fm2dtY//ytGdlbdvr8xnKstp7oMS5wkgUCfWs9IJ/TzAoTMa72dI+t256
 /N/Yi+LXJ3R23mxSAZLZFUN1vTB6BqAlWUmDceJ40xopp1v0lE/sL7kAq
 uIP/1nJm9Bv+yMiaQTIMsSu0rgRqWfFxU8t3xInELyg2bKEqV2A2zG6h8 A==;
X-CSE-ConnectionGUID: /SEUPuINSRCRgPL+q2n9+w==
X-CSE-MsgGUID: CDuVF/s9QMSJPlO7c8p2lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42042487"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="42042487"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 03:48:25 -0800
X-CSE-ConnectionGUID: j6tNN6b2QzauxXGORj7F1w==
X-CSE-MsgGUID: psqOlUVsSvSzrpy15RHBkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149627343"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 03:48:24 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v6 5/6] drm/i915/dp: Queue a link check after link training is
 complete
Date: Wed,  5 Mar 2025 13:48:20 +0200
Message-ID: <20250305114820.3523077-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250304152917.3407080-6-imre.deak@intel.com>
References: <20250304152917.3407080-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

After link training - both in case of a passing and failing LT result -
a work is scheduled to check the link state. This check should take
place after the link training is completed by disabling the link
training pattern and setting intel_dp::link_trained=true. Atm, the work
is scheduled before these steps, which may result in checking the link
state too early (and thus not retraining the link as expected).

Fix the above by scheduling the link check work after link training is
complete.

v2:
- Add MAX_SEQ_TRAIN_FAILURES instead of open-coding it. (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 3906c11acc968..384eb615caf64 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -56,6 +56,8 @@
 		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
 } while (0)
 
+#define MAX_SEQ_TRAIN_FAILURES 2
+
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
 	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
@@ -1110,6 +1112,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	intel_dp->link_trained = true;
@@ -1124,6 +1127,13 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	}
 
 	intel_hpd_unblock(encoder);
+
+	if (!display->hotplug.ignore_long_hpd &&
+	    intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
+		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
+
+		intel_encoder_link_check_queue_work(encoder, delay_ms);
+	}
 }
 
 static bool
@@ -1628,7 +1638,6 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
 		intel_dp->link.seq_train_failures = 0;
-		intel_encoder_link_check_queue_work(encoder, 2000);
 		return;
 	}
 
@@ -1651,10 +1660,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (intel_dp->link.seq_train_failures < 2) {
-		intel_encoder_link_check_queue_work(encoder, 0);
+	if (intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
 		return;
-	}
 
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
 		return;
-- 
2.44.2


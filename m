Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE520A42CC5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 20:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7D010E4F9;
	Mon, 24 Feb 2025 19:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GNPS++R2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE59510E4EA;
 Mon, 24 Feb 2025 19:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740425419; x=1771961419;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xtfe5dSg+191jdDRD6P50pmjKSOz/8RHFr7XhIfTA9A=;
 b=GNPS++R2VbjbJl8vVHyuFa51OziJTAh17vzJWipYOq0D9yZhsDn86D3Q
 pqscjg1ZfFZfAawfYXP4EgVG85baPy/Geqd/hyElXkH5OTH5F8m+QeEEi
 9VNuZMS0saF8hZPBz8f/6LhavCxpEgrCYV+fxldu1EtdQbbplNa5Uguna
 taO8doOkxS/0B/GsEOBNZ6HAD+94M5j4AXIk4wkFqzH8Hd/dI8FUGhsPj
 ANBOBLnJyznEEhOcz6dWL4RZY5M0Ka1p2CCXEkznEvY1aMxYVy+/vhCjt
 Fqi6lPrnPNwvGNMHfiUEqIEEmC66cVwhhohVTvzqhK14neCxz5cyM+yXY w==;
X-CSE-ConnectionGUID: dXQVvVA0SA+zvEE9p4fR9w==
X-CSE-MsgGUID: G7E5yw9YSfKcd0acN2f2ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40388255"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40388255"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:18 -0800
X-CSE-ConnectionGUID: ujh0qLnvQl21JbHumuZVDw==
X-CSE-MsgGUID: DasQsEZsT0en5lyLyLrW1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="116169056"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:17 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915/dp: Fix link training interrupted by a short HPD
 pulse
Date: Mon, 24 Feb 2025 21:31:13 +0200
Message-ID: <20250224193115.2058512-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250224193115.2058512-1-imre.deak@intel.com>
References: <20250224193115.2058512-1-imre.deak@intel.com>
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

During Display Port link training the handling of HPD pulses should be
prevented, as that handling can interfere with the link training:

- Accessing DPCD registers outside the range of link training registers
  are not allowed by the Standard (see DP Standard v2.1, 3.5.2.16.1,
  3.6.6.1). The pulse handler reads the DPRX capability registers, which
  are outside of the allowed range.
- Switching of the LTTPR transparent/non-transparent mode may reset the
  LTTPRs on the link, thus aborting any ongoing link training. The pulse
  handler does set the LTTPR mode, thus it could unexpectedly abort the
  ongoing link training.

Suspend/resume the HPD pulse handling for the duration of the link
training to prevent the above DPCD register accesses / LTTPR mode
change.

Apart from the above scenarios, there are other ways a non-link training
DPCD register could be accessed during link training: via the DRM AUX
device node, or via DPCD register probing (as performed by
drm_dp_dpcd_probe()). These will be addressed by a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 11953b03bb6aa..1519c202bf8c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1123,6 +1123,8 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
 	intel_dp->link_trained = true;
 
 	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
@@ -1133,6 +1135,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
 	}
+
+	intel_hpd_resume(encoder);
 }
 
 static bool
@@ -1615,7 +1619,11 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	 * non-transparent mode. During an earlier LTTPR detection this
 	 * could've been prevented by an active link.
 	 */
-	int lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
+	int lttpr_count;
+
+	intel_hpd_suspend(encoder);
+
+	lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
 
 	if (lttpr_count < 0)
 		/* Still continue with enabling the port and link training. */
-- 
2.44.2


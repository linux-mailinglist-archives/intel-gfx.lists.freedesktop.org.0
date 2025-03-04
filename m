Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C308AA4E33F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:29:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2281D10E624;
	Tue,  4 Mar 2025 15:29:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ReBgj+dN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E4710E61B;
 Tue,  4 Mar 2025 15:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741102167; x=1772638167;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=m4g8JgaZj/lq5XLMYbWvetVFA30K1lFJHiE16rIdRCw=;
 b=ReBgj+dN1Nh0uuYtJmKFlos/o5F7G7SvYTT7tp5kFEBMU9cIPl22j7fQ
 BwnsdLTK7H9SzeuqC10eV0gUtyTjs8dhfVLFwbxaOaijGB6JeqG+Goeji
 AjeJvW7bHoOGlJ7bruTXL0TGfUI8W9B9nBoJ7SEzoarDS44Dnckrg6AuF
 bDxZ5/mSjvXqI6F68nleCvcWmEJvgZeVldZeRz4ilo5b1OAknCHwGZTvn
 H/xT9YU1dS8m9mQ5I917QIW2/9tPvAgDmKqweJcd7TI2jolhT6u5dakxf
 nf4PiWuni2+NFzJZR9UtRVQHvHUqqUeTf9WRx2thP1i+Xz8RVcSVsmYW/ A==;
X-CSE-ConnectionGUID: dYDGIcVNRLepWflmI7Xzqw==
X-CSE-MsgGUID: N1Au6RvpSyqBdtg2kjQzwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59575825"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="59575825"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:27 -0800
X-CSE-ConnectionGUID: DRbfJvBLR36Xgb3paNcFJg==
X-CSE-MsgGUID: DaIxE69OT7e9ZnAGYt5mKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118921360"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:26 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 4/6] drm/i915/dp: Fix link training interrupted by a short
 HPD pulse
Date: Tue,  4 Mar 2025 17:29:15 +0200
Message-ID: <20250304152917.3407080-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250304152917.3407080-1-imre.deak@intel.com>
References: <20250304152917.3407080-1-imre.deak@intel.com>
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

Block/unblock the HPD pulse handling for the duration of the link
training to prevent the above DPCD register accesses / LTTPR mode
change.

Apart from the above scenarios, there are other ways a non-link training
DPCD register could be accessed during link training: via the DRM AUX
device node, or via DPCD register probing (as performed by
drm_dp_dpcd_probe()). These will be addressed by a follow-up change.

v2: Rebase on the intel_hpd_suspend/resume -> intel_hpd_block/unblock()
    rename change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 2966f5b393922..3906c11acc968 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1110,6 +1110,8 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
 	intel_dp->link_trained = true;
 
 	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
@@ -1120,6 +1122,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
 	}
+
+	intel_hpd_unblock(encoder);
 }
 
 static bool
@@ -1602,7 +1606,11 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	 * non-transparent mode. During an earlier LTTPR detection this
 	 * could've been prevented by an active link.
 	 */
-	int lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
+	int lttpr_count;
+
+	intel_hpd_block(encoder);
+
+	lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
 
 	if (lttpr_count < 0)
 		/* Still continue with enabling the port and link training. */
-- 
2.44.2


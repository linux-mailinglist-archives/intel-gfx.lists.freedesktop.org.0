Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A1B7FD6D8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 13:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3660B10E1C7;
	Wed, 29 Nov 2023 12:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 29 Nov 2023 12:35:41 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D1210E1C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 12:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701261341; x=1732797341;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n5Ynec3V2zxZbGVNa45QxDbhK/W35fZEF0MxYMw7Hu4=;
 b=bmUs9g5CP1dI+pOe8rdE0xy7ctOEl8bvSubON6j0bR7zFRgxk3B54Mzp
 fBqrWas3ZMztARfLVWbUQFXzyl02eWHQAe2++3W8msgUbd8ROkYuFyH3V
 OMrxYZkjsm2hVsJJKFTKl/B2rxFNWa2oGJ4NeZBSwIvFFcGRiBuKELafq
 CYdo1znzYAT8TyEVecbJfKi4y3jRWnS0PR7m2yQBoDgFQClobIwouwohn
 SsFwK15XMT/zJBFgyuonTksC66A8YRgYreT/acAXV8izE98Jq17yRqgEO
 6qNfTJIzP9nfZ54N3+8CQ57I88vpJsMLPaoaV8AMIfbum3ZHWaR045ODL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="42457"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; 
   d="scan'208";a="42457"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 04:28:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="762302795"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="762302795"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga007.jf.intel.com with ESMTP; 29 Nov 2023 04:28:32 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 14:22:21 +0200
Message-Id: <20231129122221.1109084-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification with
 TBT-ALT mode
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

With TBT-ALT mode we are not programming C20 chip PLL's and
hence we don't need to check state verification. We don't
need to program DP link signal levels i.e.pre-emphasis and
voltage swing either.

This patch fixes dmesg errors like this one

"[drm] ERROR PHY F Write 0c06 failed after 3 retries."

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a8fa76580802..5fbec5784b83 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -415,9 +415,15 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
+	u8 owned_lane_mask;
 	intel_wakeref_t wakeref;
 	int n_entries, ln;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		return;
+
+	owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
@@ -3136,6 +3142,9 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	phy = intel_port_to_phy(i915, encoder->port);
 
+	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
+		return;
+
 	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
 
 	if (intel_is_c10phy(i915, phy))
-- 
2.34.1


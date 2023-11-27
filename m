Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF357FA546
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 16:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280F410E143;
	Mon, 27 Nov 2023 15:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92B910E2EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 15:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701100397; x=1732636397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=THl1d0Oz9NgyYAVWxBubVaM0epbHZfQVfJXntxC+Di8=;
 b=AJt4nR5He30M9klFKoTUMXiHIPRsowmH1bZ63SWZ5Glwtn2mKlA6fYzk
 z8ZgJhFbWnmAsPUmhGjFM6Tf2E8JU4YgSsS1hVYBvWP/JvRMGzVaekDGD
 jaPbjbjB31IdCOPLckN6xcdkIg/fZrzH+bn0TFHyr+YRJBtAz663Ltp5D
 TcKxz3BPONa15wn+Bm66ld3FGd8TS8Q+oqK7V2N0AyhwBVf6axyyyO6Rc
 u6Fbkla0sf/lMtrsKA5Lf1n9UGZ5CFgJfVI6uHTaaRtfqem3Ead51z/gi
 Jq899pG1skXIrhGOrZjcPDZjgWBemb3lnC3qTDZsoMot3MFcoGL0Y5Qmg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="391608424"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="391608424"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 07:53:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="941602581"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="941602581"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 27 Nov 2023 07:53:13 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Nov 2023 17:47:02 +0200
Message-Id: <20231127154702.979401-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a8fa76580802..3a30cffd450c 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -418,6 +418,10 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
 	intel_wakeref_t wakeref;
 	int n_entries, ln;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		return;
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
@@ -3136,6 +3140,9 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	phy = intel_port_to_phy(i915, encoder->port);
 
+	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
+		return;
+
 	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
 
 	if (intel_is_c10phy(i915, phy))
-- 
2.34.1


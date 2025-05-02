Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3B3AA6D39
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A81410E8D9;
	Fri,  2 May 2025 08:59:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KucG5evU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A4210E8D7;
 Fri,  2 May 2025 08:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176377; x=1777712377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+OEwWoJbVkY2Rtumy2ZnN0KLDN4GVgotDWsb8o0+vPk=;
 b=KucG5evUWsON1Q7WfqPKYcX+WHDVdDXQhk93aeTqdvGKsI6dt4zJDiiA
 zR7AoTTMOSTg6qeGYVt/4lyXXNBHgo/dsBbTuIxw/YqSgL98u2YjQ7SrJ
 nuGjP3wsErgXOj+PZcltY6bHH1uNilhgfRYSs3RsEKwFgJrKSQV49um1i
 /ENFaVDSe1Himem3gGXFeYjwFg7LMildHM6fBGMVc1azAsNhN34K036PI
 icISg2BaaiFeftZFNVfyrYyD30Eg7OFcHGoVSCTTgkrnGpWYAzmNORG7T
 mg1GGl5vdDHM8Vl1vX0OtPfUP1O3iVqPV02Y5CEsxowv6g4/omXicPKc6 Q==;
X-CSE-ConnectionGUID: sZOTa4FORB6nEzVFTEG49Q==
X-CSE-MsgGUID: +NY3szdORseE5XV39IUmHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943200"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943200"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:36 -0700
X-CSE-ConnectionGUID: Ly7cexSySs2RoDaJxja9gA==
X-CSE-MsgGUID: lqKN0QIRQDuLAnfEtiVNgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346747"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 09/11] drm/i915/display: Add function to configure LFPS sending
Date: Fri,  2 May 2025 11:59:00 +0300
Message-ID: <20250502085902.154740-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add function to configre LFPS sending for Panel Replay according to link
training sequence in HAS document.

This assumes we are using AUX Less always if it's supported by the sink and
the source.

HAS: 14012758795
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 29 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  8 +++++-
 3 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1318886e34dd7..d8c1d372339c6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3232,6 +3232,35 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 		intel_cx0pll_enable(encoder, crtc_state);
 }
 
+/**
+ * intel_lnl_mac_transmit_lfps - Enable MAC transmitting LFPS
+ * @encoder: Intel encoder
+ * @crtc_state: Intel CRTC State
+ *
+ * Enable MAC transmitting LFPS in case of AUX Less ALPM.
+ */
+void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state)
+{
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
+	bool enable = intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
+						  crtc_state);
+	int i;
+
+	for (i = 0; i < 4; i++) {
+		int tx = i % 2 + 1;
+		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
+
+		if (!(owned_lane_mask & lane_mask))
+			continue;
+
+		intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0),
+			      CONTROL0_MAC_TRANSMIT_LFPS,
+			      enable ? CONTROL0_MAC_TRANSMIT_LFPS : 0,
+			      MB_WRITE_COMMITTED);
+	}
+}
+
 static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index a8f811ca5e7bc..c5a7b529955b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,5 +43,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
+void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ce7a4765b10ea..f8cdaae52ccfe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3745,10 +3745,16 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 
 	/*
-	 * 6.k If AUX-Less ALPM is going to be enabled
+	 * 6.k If AUX-Less ALPM is going to be enabled:
 	 *     i. Configure PORT_ALPM_CTL and PORT_ALPM_LFPS_CTL here
 	 */
 	intel_alpm_port_configure(intel_dp, crtc_state);
+
+	/*
+	 *     ii. Enable MAC Transmits LFPS in the "PHY Common Control 0" PIPE
+	 *         register
+	 */
+	intel_lnl_mac_transmit_lfps(encoder, crtc_state);
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
-- 
2.43.0


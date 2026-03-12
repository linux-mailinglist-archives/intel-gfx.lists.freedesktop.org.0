Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOafHy10smlbMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FD326E9BB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B895810E9A5;
	Thu, 12 Mar 2026 08:07:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MsSBZDyP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1648B10E9A3;
 Thu, 12 Mar 2026 08:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773302826; x=1804838826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MykETSOLSCqxnD3CqCPGHcZ3q+lcMyjqCY5oP+Uz4z8=;
 b=MsSBZDyP1AceaC6wDZWQmjzLxKubG9GE4AqXpxXMDWBcM7VCvlcwUFL0
 FBfbmekJeo6jSvur5k38Rqp4+76TYWYRo+Q6NTNMuXQ0L7mxPDNiDpOxE
 Vp4FSYD3ImRblhMdMcYXxQ5SRJ/zUz/oeGMbDjm4bb/liVDpqDb9rMj6X
 oYah5TjhUQy+Me5X7h0SK13Sr/aycY0DhuUBSB0GszCu6ghLhHUMifR3C
 DL3vjsElVUP6ykBHd7LtBphTT8yWujxv3GLfZ3B0vPP/R1RmoYc5tPsIn
 booLxgozX6aBpbh8CihySPx+nzJvUdgsBLyoHo1xOsxSmwuv01XjKbLja w==;
X-CSE-ConnectionGUID: Um5BjrpNSBe8Zs/PV4EVcg==
X-CSE-MsgGUID: mFS7tugQQUmLFapo3kSlZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85013720"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85013720"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:07:06 -0700
X-CSE-ConnectionGUID: fb4jMWsgScO3U+ArK9nfxA==
X-CSE-MsgGUID: BcChH5+oQ7m7ZAcyjNC4oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="223206797"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa004.fm.intel.com with ESMTP; 12 Mar 2026 01:07:05 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 05/24] drm/i915/lt_phy: Add lane_count to PLL state
Date: Thu, 12 Mar 2026 08:06:38 +0000
Message-ID: <20260312080657.2648265-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312080657.2648265-1-mika.kahola@intel.com>
References: <20260312080657.2648265-1-mika.kahola@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 32FD326E9BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Cache lane count as part of PLL state.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 9 +++++----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 4cc14ce5eebe..d408ccf6f902 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -278,6 +278,7 @@ struct intel_lt_phy_pll_state {
 	u8 config[3];
 	bool ssc_enabled;
 	bool tbt_mode;
+	int lane_count;
 };
 
 struct intel_dpll_hw_state {
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 2d52242cb3fc..3e83ac775d84 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1767,11 +1767,13 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			}
 			crtc_state->dpll_hw_state.ltpll.ssc_enabled =
 				intel_lt_phy_pll_is_ssc_enabled(crtc_state, encoder);
+			crtc_state->dpll_hw_state.ltpll.lane_count = crtc_state->lane_count;
 			return 0;
 		}
 	}
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		crtc_state->dpll_hw_state.ltpll.lane_count = crtc_state->lane_count;
 		return intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
 							 crtc_state->port_clock);
 	}
@@ -1811,11 +1813,11 @@ intel_lt_phy_program_pll(struct intel_encoder *encoder,
 
 static void
 intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
-			       const struct intel_lt_phy_pll_state *ltpll,
-			       u8 lane_count)
+			       const struct intel_lt_phy_pll_state *ltpll)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
+	u8 lane_count = ltpll->lane_count;
 	bool is_dp_alt =
 		intel_tc_port_in_dp_alt_mode(dig_port);
 	enum intel_tc_pin_assignment tc_pin =
@@ -2025,8 +2027,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
 					       XELPDP_P0_STATE_ACTIVE);
 
-	intel_lt_phy_enable_disable_tx(encoder, &crtc_state->dpll_hw_state.ltpll,
-				       crtc_state->lane_count);
+	intel_lt_phy_enable_disable_tx(encoder, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
-- 
2.43.0


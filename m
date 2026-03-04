Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAl1G0YwqGm+pQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 423BB200375
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67DD10EA0C;
	Wed,  4 Mar 2026 13:14:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7fdxIa3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0460A10EA07;
 Wed,  4 Mar 2026 13:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630083; x=1804166083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o7R2Ai3a/g3aH4D+yxav3PCAa1SOvwZjR1kMmEKZz4s=;
 b=A7fdxIa3/+GQQDl/e/MwyUghGhbCCZGGJ3lkUBHiLISQU+YFFJpArzpE
 edT4pUf7xEWSKeBf8/TWu6Jz03GAcRo4Dfr/j0H5/SBgO/vySpwl6qGej
 zcwJWtpI5g74QY5ZBsyibzbEpe1XvJqiKltC7X3SbzgZ04k7E3f09z7HY
 4e46EgGqYhh8G+ZAhWzEXpKteJ7ODhYLySpOhS4kMmAfmU6ZYgBSncO2I
 xL4VnF8XSljgf2AJNiXxkWWyoWB+jS4lfd9U2hFlR8yG/TWhB7A0qOKj6
 UaR1FBufh2CSeysQKhPP9ZL+/d9rvEkiQwa2d8kZCqi2r3OlfRnyHHqhH g==;
X-CSE-ConnectionGUID: 4pmm68U3TjiEKQ/1pXqaJA==
X-CSE-MsgGUID: zAuNwIuYSxS5osxGZ1Wr0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293474"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293474"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:42 -0800
X-CSE-ConnectionGUID: uQHaeq4cRvKguy/g57rqag==
X-CSE-MsgGUID: nI0kC7ltTbOzOn9MDY2fPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350813"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:42 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Date: Wed,  4 Mar 2026 13:14:13 +0000
Message-ID: <20260304131423.1017821-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304131423.1017821-1-mika.kahola@intel.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 423BB200375
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Add .get_freq function hook to support dpll framework for xe3plpd
platform.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     |  5 -----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 147baa777856..88f11cb8c5e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1219,17 +1219,12 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
-	struct intel_display *display = to_intel_display(encoder);
 	int ret;
 
 	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state->dpll_hw_state);
 	if (ret)
 		return ret;
 
-	/* TODO: Do the readback via intel_compute_shared_dplls() */
-	crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
-
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6502916793f5..412582e29ca6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4583,8 +4583,21 @@ static bool xe3plpd_pll_get_hw_state(struct intel_display *display,
 	return intel_lt_phy_pll_readout_hw_state(encoder, &dpll_hw_state->ltpll);
 }
 
+static int xe3plpd_pll_get_freq(struct intel_display *display,
+				const struct intel_dpll *pll,
+				const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return -EINVAL;
+
+	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);
+}
+
 static const struct intel_dpll_funcs xe3plpd_pll_funcs = {
 	.get_hw_state = xe3plpd_pll_get_hw_state,
+	.get_freq = xe3plpd_pll_get_freq,
 };
 
 static const struct dpll_info xe3plpd_plls[] = {
-- 
2.43.0


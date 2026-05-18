Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKOiGcPrCmo89gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:36:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1987E56ACA8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557C010E79A;
	Mon, 18 May 2026 10:36:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQBmXyOY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCB610E7AA;
 Mon, 18 May 2026 10:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779100606; x=1810636606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GtXde5MyVpnCuMMZYT8ENpsKbCA3jCo+fFgyItATr2g=;
 b=BQBmXyOY6QZIxFgRBUO13MX2b0wAO2BY1Hor3Y4AYy0ID6/VcEZR5WtI
 Wk5kOLAwBGsu+4cguNPbQ6BmaMBMJfAkj3EcjF2utax/iqjHtJhtP+NlL
 NjJPyaeKOhFrwq4QOysrc17Twjd5otm/XqcQVGEa/HAb7a8dVyCyPY4ad
 G/eEQ/Y2a5z6f/kUrTZgVOY0gfTATrDRxNYMCWa4m6sB7k09fxn6J5+F2
 65HMtBLPZeEYC4xvLO7M+o7EfhcgJkQDnC7OlK45EBIzGItLhHYtLdL3N
 k20GMJyTU4/wliN4FteA4lTKg9e/pda3GY9B3RSjJ9RhpJguovVejFyT8 g==;
X-CSE-ConnectionGUID: PMud652sSXqShwfZhYu3EQ==
X-CSE-MsgGUID: 9PXK/BtvQL+1Ga4YOhprpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="83820608"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="83820608"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 03:36:46 -0700
X-CSE-ConnectionGUID: DDj1FrSPRsKwCc4jEf1bjw==
X-CSE-MsgGUID: JBnWPMyASO2m+lOlyM6jmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="263173308"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa001.fm.intel.com with ESMTP; 18 May 2026 03:36:45 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 1/4] drm/i915/display: Split out DG2 MPLLB enable helper
Date: Mon, 18 May 2026 10:36:39 +0000
Message-ID: <20260518103642.3678448-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260518103642.3678448-1-mika.kahola@intel.com>
References: <20260518103642.3678448-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 1987E56ACA8
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Refactor the DG2 MPLLB enable path by splitting out a helper that
programs the PHY directly from an intel_mpllb_state.

This is preparatory work for moving DG2 MPLLB handling under the DPLL
framework, where callbacks operate on dpll_hw_state rather than the
full crtc_state.

Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  2 ++
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index bf9df566630f..dfb3a5c35c85 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1816,11 +1816,10 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 	return -EINVAL;
 }
 
-void intel_mpllb_enable(struct intel_encoder *encoder,
-			const struct intel_crtc_state *crtc_state)
+void intel_mpllb_enable_phy(struct intel_encoder *encoder,
+			    const struct intel_mpllb_state *pll_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	const struct intel_mpllb_state *pll_state = &crtc_state->dpll_hw_state.mpllb;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	intel_reg_t enable_reg = (phy <= PHY_D ?
 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
@@ -1875,6 +1874,12 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 */
 }
 
+void intel_mpllb_enable(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state)
+{
+	intel_mpllb_enable_phy(encoder, &crtc_state->dpll_hw_state.mpllb);
+}
+
 void intel_mpllb_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 7f96da22d028..2c7a5f2040f1 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -22,6 +22,8 @@ void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
 
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder);
+void intel_mpllb_enable_phy(struct intel_encoder *encoder,
+			    const struct intel_mpllb_state *pll_state);
 void intel_mpllb_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
 void intel_mpllb_disable(struct intel_encoder *encoder);
-- 
2.43.0


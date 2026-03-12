Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIW0EEV0sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A8E26EA45
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B5E10E9CB;
	Thu, 12 Mar 2026 08:07:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H6MlpWIM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3642D10E9C8;
 Thu, 12 Mar 2026 08:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773302850; x=1804838850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oI6a4FOOHgdXy0VTnClF5BeMLfuc6hPgTTcDqzUpxNc=;
 b=H6MlpWIMa9sa7dfOwcBA9Y5fPU0AdX2cQRwvrKpzSpof+RCi5xns/8tM
 2lslS6+n2w2IBd3tzsN0sURjT3pF4EyBknUyCm+SI1XCv9tBs2PygZxPM
 4Dkm0NJmgCjH4DH9e0pgsZpD4vH1V/qDw2umSuQvlNmoSPIPAJrf1Wg7/
 1El7t5DZdBFnZGPa1eGfkp8w4GwdPhO8Kr+8W8cgowv7/eBO3yqZtmQX1
 FoOBt6v4Ad/bty9cECyZmwhk/sYQ8/uzcu2Fmpkkwwvt39Jt0lJ916QoP
 gT5Tw9IHnQs8zNjCp5XqABdsAAGB/ZTk/LDvZzMIURzL9VK+8xMBbCiMO A==;
X-CSE-ConnectionGUID: QpaPtQP9TYCrFBrO+z/q3A==
X-CSE-MsgGUID: jEZTy4SATIexCYxXi/bfqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85013748"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85013748"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:07:30 -0700
X-CSE-ConnectionGUID: nO5ejciNQO2PtEW5CCdRGQ==
X-CSE-MsgGUID: eg5u8gfaTFK1UoSzj2Sdvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="223206935"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa004.fm.intel.com with ESMTP; 12 Mar 2026 01:07:29 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 24/24] drm/i915/lt_phy: Replace crtc compute clock
Date: Thu, 12 Mar 2026 08:06:57 +0000
Message-ID: <20260312080657.2648265-25-mika.kahola@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 13A8E26EA45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The existing DPLL compute clock callback for the XE3PLPD platform
(`xe3plpd_crtc_compute_clock`) was specific to that platform. Replace it
with the more generic Haswell (`hsw_crtc_compute_clock`) implementation
so that the compute clock path does not rely on the XE3PLPD hook.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 25 +----------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index e13a5e12109d..c7d37e74fbe9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1212,29 +1212,6 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
-				      struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
-	struct intel_display *display = to_intel_display(encoder);
-	int ret;
-
-	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state->dpll_hw_state);
-	if (ret)
-		return ret;
-
-	/* TODO: Do the readback via intel_compute_shared_dplls() */
-	crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
-
-	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
-
-	return 0;
-}
-
 static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -1695,7 +1672,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 }
 
 static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs = {
-	.crtc_compute_clock = xe3plpd_crtc_compute_clock,
+	.crtc_compute_clock = hsw_crtc_compute_clock,
 	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
-- 
2.43.0


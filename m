Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 452295E6B8E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 21:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7B810E02B;
	Thu, 22 Sep 2022 19:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FDC10E02B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 19:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663874003; x=1695410003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H1RzTdpIZnIcQFWHORjufu9/WwmRU7rDq5THYAgYyLs=;
 b=MGBcoW6Vo6Ly3ehW++6cAhsNhokg9i333OidyxmsjDIbUP27wLa3ZL3B
 YGF7oGfeo9sdUi0rDaC5MZpI8KoWRumVjmCSKfTnxQZhBxiHiVkT36tXm
 7wfHwDJeXR3yIYuIvyWlinr0FRgpSHyhUyyJ84gq6XVudRsixeXNXLGoE
 InCCZHypjQLd9EtxPL3XvskHYWgoFtD7p2nTRluIjDCNHtmayeeFgt1sC
 euHGkAt2Lo6Kk0TndiFpaBKk4UPwVsXSyUC8vpvRpWnZf33MkolIshZhr
 NTYazgErFPISxkKm/vOVB8PPwDpNv9ZTzSgEPGWaxqdBf6SlKkcGjiFH4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362207989"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="362207989"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 12:12:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="619929590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Sep 2022 12:12:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 22:12:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 22:12:36 +0300
Message-Id: <20220922191236.4194-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921211525.10675-2-ville.syrjala@linux.intel.com>
References: <20220921211525.10675-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Force DPLL calculation for TC
 ports after readout
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We always allocate two DPLLs (TC and TBT) for TC ports. This
is because we can't know ahead of time wherher we need to put
the PHY into DP-Alt or TBT mode.

However during readout we can obviously only read out the state
of the DPLL that the port is actually using. Thus the state after
readout will not have both DPLLs populated.

We run into problems if during readout the TC port is in DP-Alt
mode, but we then perform a modeset on the port without going
through the full .compute_config() machinery, and during said
modeset the port cannot be switched back into DP-Alt mode and
we need to take the TBT fallback path. Such a modeset can
happen eg. due to cdclk reprogramming.

This wasn't a problem earlier because we did all the DPLL
calculations much later in the modeset. So even if flagged
a modeset very late we'd still have gone through the DPLL
calculations. But now all the DPLL calculations happen much
earlier and so we need to deal with it, or else we'll attempt
a modeset without a DPLL.

To guarantee that we always have both DPLLs fully cal/ulated
for TC ports force a full modeset computation during the
initial commit.

v2: Avoid bitwise operation on bool (Jani)
    Call the return variable 'fastset' to convey its meaning

Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
Fixes: b000abd3b3d2 ("drm/i915: Do .crtc_compute_clock() earlier")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 643832d55c28..da8472cdc135 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3600,10 +3600,22 @@ static void intel_ddi_sync_state(struct intel_encoder *encoder,
 static bool intel_ddi_initial_fastset_check(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state)
 {
-	if (intel_crtc_has_dp_encoder(crtc_state))
-		return intel_dp_initial_fastset_check(encoder, crtc_state);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	bool fastset = true;
 
-	return true;
+	if (intel_phy_is_tc(i915, phy)) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute TC port DPLLs\n",
+			    encoder->base.base.id, encoder->base.name);
+		crtc_state->uapi.mode_changed = true;
+		fastset = false;
+	}
+
+	if (intel_crtc_has_dp_encoder(crtc_state) &&
+	    !intel_dp_initial_fastset_check(encoder, crtc_state))
+		fastset = false;
+
+	return fastset;
 }
 
 static enum intel_output_type
-- 
2.35.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F9D5E5507
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 23:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4FE110E522;
	Wed, 21 Sep 2022 21:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8D210E522
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 21:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663794932; x=1695330932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y21G8aODXAxDyN808S6adrXRds/zry2e2XBK/AUwDzQ=;
 b=K852tB2G+hKcGGuDaJU3qGEV2LjbaB54tqh0Uf31+pup5K3+EcOLMNc6
 4V03ZcQIZ2lKM+4YXExKbYGWRzos+yQ6sdt04jqx12rzgSMfZrXk0zajE
 NmEBs/oufrRCmZp76DmbjGPFzrF/464hAysSCZ/uqrN3mIPKlFonR0ePo
 DUMrCSXQSqTFZZ/sEiNnaghx5ngCG3dJ2xcBcvuS6RDMQUpl5tINc9wQ7
 eCf2cOmvDVU1FRXm9Y2j/5ZohH4v/fj687qHLXnZe4R24GPrnck4s2Xm5
 LmGHktPTf63NdfgIomWbm0853sYl3INriP9dQ8n0hyoxS7QtvYqFZ0TFu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="283176171"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="283176171"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 14:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="681938199"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 21 Sep 2022 14:15:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 00:15:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 00:15:22 +0300
Message-Id: <20220921211525.10675-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
References: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Force DPLL calculation for TC
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

Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
Fixes: b000abd3b3d2 ("drm/i915: Do .crtc_compute_clock() earlier")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 643832d55c28..6278b8ea5bf1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3600,10 +3600,21 @@ static void intel_ddi_sync_state(struct intel_encoder *encoder,
 static bool intel_ddi_initial_fastset_check(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	bool ret = true;
+
+	if (intel_phy_is_tc(i915, phy)) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute TC port DPLLs\n",
+			    encoder->base.base.id, encoder->base.name);
+		crtc_state->uapi.mode_changed = true;
+		ret = false;
+	}
+
 	if (intel_crtc_has_dp_encoder(crtc_state))
-		return intel_dp_initial_fastset_check(encoder, crtc_state);
+		ret &= intel_dp_initial_fastset_check(encoder, crtc_state);
 
-	return true;
+	return ret;
 }
 
 static enum intel_output_type
-- 
2.35.1


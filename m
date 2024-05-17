Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B873A8C888D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437C210EF00;
	Fri, 17 May 2024 14:54:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LxuIpnL+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D159110EEFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957660; x=1747493660;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KabiJgJyWr8qZrePASfxx6Z3uANKcQucl2FQbZYedwA=;
 b=LxuIpnL+DlYXq9pLk6NnUnyfhuOrE4Uo19KITYtDZoS2DxA7QP0dfEuv
 HceGZUvNnoUDNbfQPpCMKolPyyqUnqgrYg29vrv3apT74fJ8BcoGZJQF+
 zHHr34MENMvWePMcI2LgX/A6N0eqNQRT+WqQz0Ko0XVanZnw5PNF0zP44
 l0WeINGtxAoeR8Reuc6L0ifLgNIH4MCaT29ck8kbhyEQs113wofTBG2kh
 nlmVFY0UqIis/QUqzyzRQWwUVQ5YgTv9kHaRmkXY6U4oZftPvNygqHl+C
 Pv3S2Q0283LHE5ggd85o8g+V0nbi9LtLxiApM6CRnHl7WBsVDyG9aemL0 A==;
X-CSE-ConnectionGUID: SUxKxHAOREurVuUsXSYPew==
X-CSE-MsgGUID: G4HZ3J81Qm+Tn7+DRhZcqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008051"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008051"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:54:20 -0700
X-CSE-ConnectionGUID: tL4D4Z58TdCnLxeClQ3IFQ==
X-CSE-MsgGUID: U14bgcNATtaKfrxf20a4Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31801030"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:54:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:54:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915: Remove bogus MST check in intel_dp_has_audio()
Date: Fri, 17 May 2024 17:53:56 +0300
Message-ID: <20240517145356.26103-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

No idea what this MST checks is doing in intel_dp_has_audio().
Looks completely pointless, so get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index af298d5017d9..4a486bb6d48c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2806,7 +2806,6 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 }
 
 static bool intel_dp_has_audio(struct intel_encoder *encoder,
-			       struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
@@ -2815,8 +2814,7 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 
-	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
-	    !intel_dp_port_has_audio(i915, encoder->port))
+	if (!intel_dp_port_has_audio(i915, encoder->port))
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
@@ -2875,7 +2873,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct drm_connector_state *conn_state)
 {
 	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
+		intel_dp_has_audio(encoder, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	pipe_config->sdp_split_enable = pipe_config->has_audio &&
-- 
2.44.1


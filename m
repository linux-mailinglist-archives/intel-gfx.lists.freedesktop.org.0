Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DC2917AB9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 10:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3688310E7BA;
	Wed, 26 Jun 2024 08:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4PoQOKo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3AC10E7B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2024 08:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719389927; x=1750925927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/HvweWm0FjAHAmJoXUEeZ/H5GN/qnCnXBhGPD/2aTsc=;
 b=C4PoQOKomXYV6T/Mw9VO4GYf2tGleT/xJaAIxEBGwWkmykEU0XnPyGpD
 2JWJh933xBE04g0xtJ6OIW/MHINiHO5cZOHhdwA3JY7mvyB4lltB8bSRI
 KhcGbNl5r3fNTXGYdfcStuRtmqn50akGte7pTuV29QzspEq/bX2qprJmp
 btZZqDWvC9QvbA6MqyPoeEkgdITY1HoDNtaUgEX9zT5XTvOkdpzMyMZSU
 rAzIAJf0+xM8yTZFV2VvECe8ax2lYdum89scFNh6eLj4H6ea9/2wHVkjE
 2kydyTO05k0BKLV4XPbxnMqom0dvhGcnqU/qNqOnImTKs7mR4aiVuZmtA A==;
X-CSE-ConnectionGUID: GXFe+jNDTciOU0Z6B0XWZA==
X-CSE-MsgGUID: 8cXYRscARae/inrq780L/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="20256535"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="20256535"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 01:18:47 -0700
X-CSE-ConnectionGUID: f38eQqUNSrWtRWH02A768w==
X-CSE-MsgGUID: 3GeqhrsLQfWKLcIr88Bheg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="75134414"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa001.fm.intel.com with ESMTP; 26 Jun 2024 01:18:44 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/4] drm/i915: Add some essential functionality for joiners
Date: Wed, 26 Jun 2024 11:18:39 +0300
Message-Id: <20240626081842.10614-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
References: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
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

In most of the cases we now try to avoid mentioning things like
"bigjoiner" or "ultrajoiner" trying to unify the API and refer
mostly to all this functionality as "joiner".
In majority cases that should be way to go.
However in some cases we still need to distinguish between
bigjoiner primaries and secondaries(such as DSC register programming).

Create correspondent helper functions and start using them,
in order be prepared for adding ultrajoiner functionality.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 76 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  8 +-
 .../drm/i915/display/intel_modeset_verify.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +-
 5 files changed, 77 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 8ec1bab1b15d..966f8d0fd231 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -723,7 +723,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 
 	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
 		struct intel_crtc *primary_crtc =
-			intel_primary_crtc(new_crtc_state);
+			intel_joiner_primary_crtc(new_crtc_state);
 		struct intel_plane *primary_crtc_plane =
 			intel_crtc_get_plane(primary_crtc, plane->id);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7bc4f3de691e..5bc867ff81e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -251,6 +251,69 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
 	return ffs(crtc_state->joiner_pipes) - 1;
 }
 
+static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
+{
+	return hweight8(crtc_state->joiner_pipes);
+}
+
+bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state)
+{
+	return intel_joiner_num_pipes(crtc_state) == 4;
+}
+
+static bool intel_is_joiner(const struct intel_crtc_state *crtc_state)
+{
+	return intel_joiner_num_pipes(crtc_state) > 1;
+}
+
+static u8 bigjoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
+{
+	int lsb = ffs(crtc_state->joiner_pipes) - 1;
+	int msb = fls(crtc_state->joiner_pipes) - 1;
+	int i;
+	u8 bigjoiner_primary_mask = 0;
+
+	for (i = lsb; i < msb; i += 4)
+	{
+		/*
+		 * Regardless of how joiner_pipes mask is set, currently
+		 * we always assume, that primary pipe bit goes before secondary
+		 * pipe bit. So in each set of 2 bits, least significant bit is
+		 * bigjoiner primary pipe and most significant bit is secondary pipe.
+		 */
+		bigjoiner_primary_mask |=
+			((BIT(0) | BIT(2)) << i) & crtc_state->joiner_pipes;
+	}
+
+	return bigjoiner_primary_mask;
+}
+
+bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (!intel_is_joiner(crtc_state))
+		return false;
+
+	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
+}
+
+bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state)
+{
+	if (!intel_is_joiner(crtc_state))
+		return false;
+
+	return !intel_crtc_is_bigjoiner_primary(crtc_state);
+}
+
+bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return intel_crtc_is_ultrajoiner(crtc_state) &&
+		(crtc->pipe == joiner_primary_pipe(crtc_state));
+}
+
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
@@ -275,11 +338,6 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
-{
-	return hweight8(crtc_state->joiner_pipes);
-}
-
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -287,7 +345,7 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
 }
 
-struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
+struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
@@ -807,7 +865,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 	int num_encoders = 0;
 	int i;
 
-	primary_crtc = intel_primary_crtc(crtc_state);
+	primary_crtc = intel_joiner_primary_crtc(crtc_state);
 
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		if (connector_state->crtc != &primary_crtc->base)
@@ -4516,7 +4574,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *secondary_crtc_state =
 		intel_atomic_get_new_crtc_state(state, secondary_crtc);
-	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
+	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
 	const struct intel_crtc_state *primary_crtc_state =
 		intel_atomic_get_new_crtc_state(state, primary_crtc);
 
@@ -4536,7 +4594,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *secondary_crtc_state =
 		intel_atomic_get_new_crtc_state(state, secondary_crtc);
-	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
+	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
 	const struct intel_crtc_state *primary_crtc_state =
 		intel_atomic_get_new_crtc_state(state, primary_crtc);
 	struct intel_crtc_state *saved_state;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b0cf6ca70952..bac81b7ab764 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -423,10 +423,14 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
-bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
-struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
+struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 3491db5cad31..b53b810c6470 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -193,7 +193,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
 			sw_crtc_state->hw.active, crtc->active);
 
-	primary_crtc = intel_primary_crtc(sw_crtc_state);
+	primary_crtc = intel_joiner_primary_crtc(sw_crtc_state);
 
 	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
 		enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b9687b7692b8..11058bb37d5a 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -761,7 +761,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	u32 dss_ctl1_val = 0;
 
 	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
-		if (intel_crtc_is_joiner_secondary(crtc_state))
+		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
@@ -790,7 +790,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 	}
 	if (crtc_state->joiner_pipes) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!intel_crtc_is_joiner_secondary(crtc_state))
+		if (intel_crtc_is_bigjoiner_primary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
-- 
2.37.3


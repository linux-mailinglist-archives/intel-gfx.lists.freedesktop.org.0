Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOc9JX1E1WnY3wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:53:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D2C3B29D1
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DEB210E3DA;
	Tue,  7 Apr 2026 17:52:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hCjOn402";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CB110E153;
 Tue,  7 Apr 2026 17:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775584378; x=1807120378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bDVfmQDbQlvQP66rK0+O+Fs9f4UrIC8WvSh6XEI3PsA=;
 b=hCjOn402XOrQC+AYXDjIk1000SL9jgCx1LNRwkDJEB05JTTlxFu/TcUg
 +Mmx+OBB4/jufOREWy4Vvq5bFbxgcH3lyjRN1r/BtlhaoQsB82YPN0o7h
 TPCZ6eAD210h5sxmo36Zl1p7sSON8UsQ+dhbqD6Wi6fSbaL+QdvCSgMZT
 w9LuSqVMMlmYT6B94lHkqdpx0M3McCGCU1qd+mEsjCL8mARC6y5769QyK
 nqynIwhu/CpTkl5B8CKeh/n6c3Mf8XwANPHX2+KqmOb8tc99uVOqsONJA
 R1rQeMF1XEy8FE1jWNvxVOxEgmPDBOxgMuf7iv5YsdjldFfeVD9wwKIRM A==;
X-CSE-ConnectionGUID: mA/lRaBCT828dEn+OeNeTA==
X-CSE-MsgGUID: eqhrsgWoQvSqoZZWYxwRAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="64101739"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="64101739"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:52:58 -0700
X-CSE-ConnectionGUID: +LTSzEgzSdeQ2j/bwrBDnQ==
X-CSE-MsgGUID: Dzj8DhDnTY+pn9bM7viXCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="258661101"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:52:57 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2 2/9] drm/i915/casf: Make a proper hw state copy of the
 sharpness_strength
Date: Tue,  7 Apr 2026 20:52:36 +0300
Message-ID: <20260407175244.19654-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407175244.19654-1-ville.syrjala@linux.intel.com>
References: <20260407175244.19654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 45D2C3B29D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make a copy of the uapi.sharpness_strength property value in our hw
state. This is how we deal with having proper state for joined pipes.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_display.c         | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_display_types.h   | 1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c   | 1 +
 6 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 32e6f7c8acdd..4316d8214e80 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -109,7 +109,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 	if (!HAS_CASF(display))
 		return 0;
 
-	if (crtc_state->uapi.sharpness_strength == 0) {
+	if (crtc_state->hw.sharpness_strength == 0) {
 		crtc_state->hw.casf_params.enable = false;
 		crtc_state->hw.casf_params.strength = 0;
 		return 0;
@@ -132,7 +132,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 	 * Also 85 + 16 = 101.
 	 */
 	crtc_state->hw.casf_params.strength =
-		min(crtc_state->uapi.sharpness_strength, 0xEF) + 0x10;
+		min(crtc_state->hw.sharpness_strength, 0xEF) + 0x10;
 
 	intel_casf_compute_win_size(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index a11a79a0211e..42676adf6062 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -328,11 +328,12 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->linetime, pipe_config->ips_linetime);
 
 	if (DISPLAY_VER(display) >= 9)
-		drm_printf(&p, "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d\n",
+		drm_printf(&p, "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d, scaling_filter: %d, sharpness_strength: %d\n",
 			   crtc->num_scalers,
 			   pipe_config->scaler_state.scaler_users,
 			   pipe_config->scaler_state.scaler_id,
-			   pipe_config->hw.scaling_filter);
+			   pipe_config->hw.scaling_filter,
+			   pipe_config->hw.sharpness_strength);
 
 	drm_printf(&p, "pipe src: " DRM_RECT_FMT "\n",
 		   DRM_RECT_ARG(&pipe_config->pipe_src));
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78d97441f682..a02c58b5a34d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4550,6 +4550,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 	drm_mode_copy(&crtc_state->hw.adjusted_mode,
 		      &crtc_state->uapi.adjusted_mode);
 	crtc_state->hw.scaling_filter = crtc_state->uapi.scaling_filter;
+	crtc_state->hw.sharpness_strength = crtc_state->uapi.sharpness_strength;
 
 	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 }
@@ -4615,6 +4616,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 	drm_mode_copy(&secondary_crtc_state->hw.adjusted_mode,
 		      &primary_crtc_state->hw.adjusted_mode);
 	secondary_crtc_state->hw.scaling_filter = primary_crtc_state->hw.scaling_filter;
+	secondary_crtc_state->hw.sharpness_strength = primary_crtc_state->hw.sharpness_strength;
 
 	if (primary_crtc_state->dp_tunnel_ref.tunnel)
 		drm_dp_tunnel_ref_get(primary_crtc_state->dp_tunnel_ref.tunnel,
@@ -6441,6 +6443,10 @@ int intel_atomic_check(struct drm_device *dev,
 		if (new_crtc_state->uapi.scaling_filter !=
 		    old_crtc_state->uapi.scaling_filter)
 			new_crtc_state->uapi.mode_changed = true;
+
+		if (new_crtc_state->uapi.sharpness_strength !=
+		    old_crtc_state->uapi.sharpness_strength)
+			new_crtc_state->uapi.mode_changed = true;
 	}
 
 	intel_vrr_check_modeset(state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2614c4863c87..f244a2b5d139 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -416,11 +416,12 @@ static void intel_scaler_info(struct seq_file *m, struct intel_crtc *crtc)
 
 	/* Not all platforms have a scaler */
 	if (num_scalers) {
-		seq_printf(m, "\tnum_scalers=%d, scaler_users=%x scaler_id=%d scaling_filter=%d",
+		seq_printf(m, "\tnum_scalers=%d, scaler_users=%x scaler_id=%d scaling_filter=%d sharpness_strength=%d",
 			   num_scalers,
 			   crtc_state->scaler_state.scaler_users,
 			   crtc_state->scaler_state.scaler_id,
-			   crtc_state->hw.scaling_filter);
+			   crtc_state->hw.scaling_filter,
+			   crtc_state->hw.sharpness_strength);
 
 		for (i = 0; i < num_scalers; i++) {
 			const struct intel_scaler *sc =
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 83bb5d19b6f6..af0d870de342 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1036,6 +1036,7 @@ struct intel_crtc_state {
 		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
 		struct drm_display_mode mode, pipe_mode, adjusted_mode;
 		enum drm_scaling_filter scaling_filter;
+		u8 sharpness_strength;
 		struct intel_casf casf_params;
 	} hw;
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 4086f16a12bf..40a65a0d7ec7 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -333,6 +333,7 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 
 	crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
 	crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
+	crtc_state->uapi.sharpness_strength = crtc_state->hw.sharpness_strength;
 
 	if (DISPLAY_INFO(display)->color.degamma_lut_size) {
 		/* assume 1:1 mapping */
-- 
2.52.0


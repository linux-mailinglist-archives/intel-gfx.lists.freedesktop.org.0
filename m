Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKB8Ar8gxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9349334E5A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F1210E9E1;
	Thu, 26 Mar 2026 12:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gZKPP0P1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05CDB10E9E1;
 Thu, 26 Mar 2026 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774526648; x=1806062648;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U4+xsYGoEoyyouwhBHTL/pK5bNW8O2Qyr9U2celAtXU=;
 b=gZKPP0P1FI+dNuziHLLk1M+XBiGO/SLAu2dOR3iXYJnDtNohfSyhmAos
 jCuf6tsIrIi8iAc7hJOVYOC8OWjc9Q7XOQlc8UYLVNd9R2pHCKfY0atSG
 mWJNCnhCWSo8LAdsv/yE8vL0LgJP3kT4X316KicUSMQX/h0hDdTqyIFyW
 vZhUunxjxx6W8QPomqF/yNhfoChxtVLOpCipAYyzFu4nJFlTy3iOO1uzv
 1upn87ZK1nx4ok+jwSS9udNCTxVVsdNj8QW3MnQPuiaC49BmPZAtZc+S1
 Ns9O7mH67hLXWrshcu/BTTVlQH3cuhxXEKiSaRsaG5j44wQdhTMgHuUrJ Q==;
X-CSE-ConnectionGUID: prm0cvUCQzCFXUk/taQYqw==
X-CSE-MsgGUID: SgKf7nOxSv2CQ1KitOFlsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86960544"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="86960544"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:04:07 -0700
X-CSE-ConnectionGUID: trb2Tt2WS1egdX3BE349DQ==
X-CSE-MsgGUID: VPJq1mm8QIuiCN32mWSkGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="224999453"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa008.jf.intel.com with ESMTP; 26 Mar 2026 05:04:06 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/3] drm/i915/display: Common wrapper for casf and pfit
Date: Thu, 26 Mar 2026 17:30:29 +0530
Message-Id: <20260326120029.3409676-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260326120029.3409676-1-nemesa.garg@intel.com>
References: <20260326120029.3409676-1-nemesa.garg@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A9349334E5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Make a common wrapper for pipe_scaling and sharpness which will be
invoked from hsw_crtc_enable and pipe_fastset. Then according to the
condition pfit_enable or casf_enable or casf_update_strength can be
invoked. This is done so that all pipe scaler related functions can
be under one umberalla.

v2: Move intel_casf_enabling back to intel_casf.[Ankit]
    Make skl_pfit_enable static.[Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c    | 11 +++++++++
 drivers/gpu/drm/i915/display/intel_casf.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c | 24 ++++----------------
 drivers/gpu/drm/i915/display/skl_scaler.c    | 18 ++++++++++++++-
 drivers/gpu/drm/i915/display/skl_scaler.h    |  5 ++--
 5 files changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index b167af31de5b..4e4168278824 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -293,3 +293,14 @@ void intel_casf_disable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
 	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
 }
+
+bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
+			 const struct intel_crtc_state *old_crtc_state)
+{
+	if (!new_crtc_state->hw.active)
+		return false;
+
+	return ((!(old_crtc_state)->hw.casf_params.casf_enable ||
+		 intel_crtc_needs_modeset(new_crtc_state)) &&
+		 (new_crtc_state)->hw.casf_params.casf_enable);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index b3fb0bcb3f5b..d76d844536e5 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -17,5 +17,7 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state);
 void intel_casf_disable(const struct intel_crtc_state *crtc_state);
 void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
 bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
+bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
+			 const struct intel_crtc_state *old_crtc_state);
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 29c165bd8960..f28287e32a8d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -988,15 +988,6 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
 		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
 }
 
-static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
-				const struct intel_crtc_state *old_crtc_state)
-{
-	if (!new_crtc_state->hw.active)
-		return false;
-
-	return is_enabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
-}
-
 static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
 				 const struct intel_crtc_state *new_crtc_state)
 {
@@ -1701,7 +1692,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 			glk_pipe_scaler_clock_gating_wa(pipe_crtc, true);
 
 		if (DISPLAY_VER(display) >= 9)
-			skl_pfit_enable(pipe_crtc_state);
+			skl_scaler_enable(state, crtc);
 		else
 			ilk_pfit_enable(pipe_crtc_state);
 
@@ -6645,7 +6636,8 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 	}
 }
 
-static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
+static void intel_pipe_fastset(struct intel_atomic_state *state,
+			       const struct intel_crtc_state *old_crtc_state,
 			       const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_display *display = to_intel_display(new_crtc_state);
@@ -6663,8 +6655,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 
 	/* on skylake this is done by detaching scalers */
 	if (DISPLAY_VER(display) >= 9) {
-		if (new_crtc_state->pch_pfit.enabled)
-			skl_pfit_enable(new_crtc_state);
+		skl_scaler_enable(state, crtc);
 	} else if (HAS_PCH_SPLIT(display)) {
 		if (new_crtc_state->pch_pfit.enabled)
 			ilk_pfit_enable(new_crtc_state);
@@ -6716,7 +6707,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 			bdw_set_pipe_misc(NULL, new_crtc_state);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
-			intel_pipe_fastset(old_crtc_state, new_crtc_state);
+			intel_pipe_fastset(state, old_crtc_state, new_crtc_state);
 	}
 
 	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
@@ -6815,11 +6806,6 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
-	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
-		intel_casf_enable(new_crtc_state);
-	else if (new_crtc_state->hw.casf_params.strength != old_crtc_state->hw.casf_params.strength)
-		intel_casf_update_strength(new_crtc_state);
-
 	intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 6de4be353402..4a29da5a1fba 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -809,7 +809,7 @@ void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
 			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
 }
 
-void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
+static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -858,6 +858,22 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
 }
 
+void skl_scaler_enable(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+
+	if (new_crtc_state->pch_pfit.enabled)
+		skl_pfit_enable(new_crtc_state);
+	else if (intel_casf_enabling(new_crtc_state, old_crtc_state))
+		intel_casf_enable(new_crtc_state);
+	else if (new_crtc_state->hw.casf_params.strength != old_crtc_state->hw.casf_params.strength)
+		intel_casf_update_strength(new_crtc_state);
+}
+
 void
 skl_program_plane_scaler(struct intel_dsb *dsb,
 			 struct intel_plane *plane,
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 7e8d819c019d..d46bc7f5ed68 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -24,8 +24,6 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 int intel_atomic_setup_scalers(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 
-void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
-
 void skl_program_plane_scaler(struct intel_dsb *dsb,
 			      struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state,
@@ -38,6 +36,9 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
 
 void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state);
 
+void skl_scaler_enable(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc);
+
 enum drm_mode_status
 skl_scaler_mode_valid(struct intel_display *display,
 		      const struct drm_display_mode *mode,
-- 
2.25.1


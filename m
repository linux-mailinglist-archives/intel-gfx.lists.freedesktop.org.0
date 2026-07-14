Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pQPeCGAUVmqLywAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868B275392D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DJyJdL59;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEDB10E500;
	Tue, 14 Jul 2026 10:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7124310E054;
 Tue, 14 Jul 2026 10:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784026204; x=1815562204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T/BiTRVwuD1d3zqw+7Du9KYKnSoRJHWWlg7YZj/g8VA=;
 b=DJyJdL592pH2j5HsI4qDGwQGLHN8e2k3zWpqKUqwYc0+4o80QDVlMdB4
 WTa7TrmZrt8Q00eBWUfwhB8r7wwuK1gavAg0AXVqaaz4ZRqPGjBtn/XcX
 JvgT7kTxkgK1wj3R0zNomye+0QwDYasDfWQ6+Ok/3dSNuNeZVAVULkhsH
 4fUayRXzK9gjgt7W3VcXnupCtT6FvjNP8GBnjNgxrNqiZzm7NT2vOsILV
 L3ROGNyFVbGm2lRuHPuJA/yecZrpeG6hr+tKyCVh1KaW0V7NgJiPdpdXX
 NoyEwujXPVvyLxQjRw6ehbee6R3VbRyxxLaO6/f0BDvQxffPrcha9STJ0 A==;
X-CSE-ConnectionGUID: uyDx8m2cRhm0MGo4xGjOQA==
X-CSE-MsgGUID: EJuXptV0S++1rOQUj2nmVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88544448"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88544448"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 03:50:04 -0700
X-CSE-ConnectionGUID: hVNa4OyCSxmWU15/kntCFg==
X-CSE-MsgGUID: Yi+gEm2aQfGSKlNzfDtl+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="260134500"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 14 Jul 2026 03:50:02 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v3 2/8] drm/i915/display: Move CMRR crtc_state members under
 VRR
Date: Tue, 14 Jul 2026 16:09:31 +0530
Message-ID: <20260714103938.2371448-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 868B275392D

Move CMRR crtc state members under VRR infrastructure as
it is enabled during fix refresh rate  VRR timing generator
is enabled.

--v2:
- Move cmrr structure under vrr umbrella.
- Remove dups. (Jani)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 10 +++----
 .../drm/i915/display/intel_display_types.h    | 12 ++++----
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 30 +++++++++----------
 5 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index c8e0f90af910..3c0f5b2fb2e7 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -326,7 +326,7 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
 		  XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
 
 	/* TODO: The code below may need to be revisited once CMRR is enabled */
-	if (crtc_state->cmrr.enable)
+	if (crtc_state->vrr.cmrr.enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 214454f419e9..96e77e6a8725 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -950,8 +950,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 				const struct intel_crtc_state *new_crtc_state)
 {
-	return old_crtc_state->cmrr.cmrr_m != new_crtc_state->cmrr.cmrr_m ||
-		old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n;
+	return old_crtc_state->vrr.cmrr.cmrr_m != new_crtc_state->vrr.cmrr.cmrr_m ||
+		old_crtc_state->vrr.cmrr.cmrr_n != new_crtc_state->vrr.cmrr.cmrr_n;
 }
 
 static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
@@ -5495,9 +5495,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.flipline);
 		PIPE_CONF_CHECK_I(vrr.vsync_start);
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
-		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
-		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
-		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_LLI(vrr.cmrr.cmrr_m);
+		PIPE_CONF_CHECK_LLI(vrr.cmrr.cmrr_n);
+		PIPE_CONF_CHECK_BOOL(vrr.cmrr.enable);
 		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
 		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
 		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 84a6d016e226..644a3f32fb5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1401,13 +1401,13 @@ struct intel_crtc_state {
 			u16 max_increase, max_decrease;
 			u16 vblank_target;
 		} dc_balance;
-	} vrr;
 
-	/* Content Match Refresh Rate state */
-	struct {
-		bool enable;
-		u64 cmrr_n, cmrr_m;
-	} cmrr;
+		/* Content Match Refresh Rate state */
+		struct {
+			bool enable;
+			u64 cmrr_n, cmrr_m;
+		} cmrr;
+	} vrr;
 
 	/* Stream Splitter for eDP MSO */
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0922d23b284c..01ef34d9d358 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3090,7 +3090,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 	as_sdp->revision = 0x2;
 	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
 
-	if (crtc_state->cmrr.enable) {
+	if (crtc_state->vrr.cmrr.enable) {
 		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8b6e36ee9f55..b36026183399 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -229,12 +229,12 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 		multiplier_n = 1000;
 	}
 
-	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
-					      multiplier_n);
+	crtc_state->vrr.cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
+						  multiplier_n);
 	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
-				  crtc_state->cmrr.cmrr_n);
+				  crtc_state->vrr.cmrr.cmrr_n);
 	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
-	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
+	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
 
 	return vtotal;
 }
@@ -252,7 +252,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
-	crtc_state->cmrr.enable = true;
+	crtc_state->vrr.cmrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
@@ -645,15 +645,15 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
-	if (crtc_state->cmrr.enable) {
+	if (crtc_state->vrr.cmrr.enable) {
 		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
-			       upper_32_bits(crtc_state->cmrr.cmrr_m));
+			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
 		intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
-			       lower_32_bits(crtc_state->cmrr.cmrr_m));
+			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_m));
 		intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
-			       upper_32_bits(crtc_state->cmrr.cmrr_n));
+			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
 		intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
-			       lower_32_bits(crtc_state->cmrr.cmrr_n));
+			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
 	}
 
 	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
@@ -974,7 +974,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_vrr_enable_dc_balancing(crtc_state);
 
 	if (!intel_vrr_always_use_vrr_tg(display))
-		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
+		intel_vrr_tg_enable(crtc_state, crtc_state->vrr.cmrr.enable);
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -1071,12 +1071,12 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
 	if (HAS_CMRR(display))
-		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
+		crtc_state->vrr.cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
 
-	if (crtc_state->cmrr.enable) {
-		crtc_state->cmrr.cmrr_n =
+	if (crtc_state->vrr.cmrr.enable) {
+		crtc_state->vrr.cmrr.cmrr_n =
 			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder));
-		crtc_state->cmrr.cmrr_m =
+		crtc_state->vrr.cmrr.cmrr_m =
 			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder));
 	}
 
-- 
2.48.1


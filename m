Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YG6hNXhE1WnY3wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:52:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD2F3B29C9
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9150810E043;
	Tue,  7 Apr 2026 17:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBZxoiPx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7718A10E153;
 Tue,  7 Apr 2026 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775584374; x=1807120374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XPMI7S8CJRk+J7T+ya/o2kQxqCwBXOAQgeJTb+aqmwU=;
 b=SBZxoiPxTTRyNbfPAZUjnRVy5JJyZWtQFBQTVlcvRP2VgS1qjdH6yNEJ
 7Ny4I0oW8Uw6ogd1wVq1+nlpjGOOT/cpIC5Xo0cbjUtaZEsnj/kPtqfM0
 fQyOrcZV4Hy2BbrUN5qoOI/v+xF7evJGQ8s8gkJZMbGaJp6nodzE4ISSK
 tlpgEc4Gt0qATJeEzxlisX+ZNlIyByohGCnL/7kAM73aoDhzb49m68ayu
 l1E4CFf173yI6wCO5KuZL1lu84j6cEPkwMTuzaWyglB2RzBvA1T927IYr
 IKt2nWg5KXczRkoGaSsCTCiuspGx/Ozct4R0jhqQCE838oog3qzXn6dHO w==;
X-CSE-ConnectionGUID: 7B/rFMTJTK+syJW1cBTB3A==
X-CSE-MsgGUID: ezIBe8l+QB2qvQNh4e6ZwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="64101731"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="64101731"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:52:53 -0700
X-CSE-ConnectionGUID: q3v+ZG08QkepFhP7KSb9iA==
X-CSE-MsgGUID: 9A3Gh0BOR4ykTZP+4/5cRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="258661070"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:52:52 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2 1/9] drm/i915/casf: s/casf_enable/enable/
Date: Tue,  7 Apr 2026 20:52:35 +0300
Message-ID: <20260407175244.19654-2-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 3FD2F3B29C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The 'casf_enable' boolean is already inside a casf specific
structure, so drop the extra 'casf_' namespace from the bool.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c            | 8 ++++----
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c         | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_types.h   | 2 +-
 drivers/gpu/drm/i915/display/skl_scaler.c            | 4 ++--
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index b167af31de5b..32e6f7c8acdd 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -110,7 +110,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 		return 0;
 
 	if (crtc_state->uapi.sharpness_strength == 0) {
-		crtc_state->hw.casf_params.casf_enable = false;
+		crtc_state->hw.casf_params.enable = false;
 		crtc_state->hw.casf_params.strength = 0;
 		return 0;
 	}
@@ -121,7 +121,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 		return -EINVAL;
 	}
 
-	crtc_state->hw.casf_params.casf_enable = true;
+	crtc_state->hw.casf_params.enable = true;
 
 	/*
 	 * HW takes a value in form (1.0 + strength) in 4.4 fixed format.
@@ -155,7 +155,7 @@ void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state)
 		else
 			crtc_state->hw.casf_params.strength =
 				REG_FIELD_GET(FILTER_STRENGTH_MASK, sharp);
-		crtc_state->hw.casf_params.casf_enable = true;
+		crtc_state->hw.casf_params.enable = true;
 		crtc_state->hw.casf_params.win_size =
 			REG_FIELD_GET(FILTER_SIZE_MASK, sharp);
 	}
@@ -163,7 +163,7 @@ void intel_casf_sharpness_get_config(struct intel_crtc_state *crtc_state)
 
 bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->hw.casf_params.casf_enable)
+	if (crtc_state->hw.casf_params.enable)
 		return true;
 
 	return false;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index c85ba9a95322..a11a79a0211e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -351,7 +351,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "sharpness strength: %d, sharpness tap size: %d, sharpness enable: %d\n",
 		   pipe_config->hw.casf_params.strength,
 		   pipe_config->hw.casf_params.win_size,
-		   pipe_config->hw.casf_params.casf_enable);
+		   pipe_config->hw.casf_params.enable);
 
 	drm_printf(&p, "ips: %i, double wide: %i, drrs: %i\n",
 		   pipe_config->ips_enabled, pipe_config->double_wide,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 10b6c6fcb03f..78d97441f682 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -994,7 +994,7 @@ static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_enabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
+	return is_enabling(hw.casf_params.enable, old_crtc_state, new_crtc_state);
 }
 
 static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
@@ -1003,7 +1003,7 @@ static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
 	if (!new_crtc_state->hw.active)
 		return false;
 
-	return is_disabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
+	return is_disabling(hw.casf_params.enable, old_crtc_state, new_crtc_state);
 }
 
 static bool intel_crtc_lobf_enabling(const struct intel_crtc_state *old_crtc_state,
@@ -5371,7 +5371,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
 		PIPE_CONF_CHECK_I(pixel_rate);
-		PIPE_CONF_CHECK_BOOL(hw.casf_params.casf_enable);
+		PIPE_CONF_CHECK_BOOL(hw.casf_params.enable);
 		PIPE_CONF_CHECK_I(hw.casf_params.win_size);
 		PIPE_CONF_CHECK_I(hw.casf_params.strength);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2496db1642a..83bb5d19b6f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -997,7 +997,7 @@ struct intel_casf {
 	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
 	u8 strength;
 	u8 win_size;
-	bool casf_enable;
+	bool enable;
 };
 
 struct intel_crtc_state {
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 7c5cb188ebf0..cfa17ddb4018 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -986,13 +986,13 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		if (HAS_CASF(display) && id == 1)
 			intel_casf_sharpness_get_config(crtc_state);
 
-		if (!crtc_state->hw.casf_params.casf_enable)
+		if (!crtc_state->hw.casf_params.enable)
 			crtc_state->pch_pfit.enabled = true;
 
 		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
 		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
 
-		if (!crtc_state->hw.casf_params.casf_enable)
+		if (!crtc_state->hw.casf_params.enable)
 			drm_rect_init(&crtc_state->pch_pfit.dst,
 				      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
 				      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
-- 
2.52.0


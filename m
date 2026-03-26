Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMfqHtezxWnEAwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:31:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2850233C73B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9922110EA4F;
	Thu, 26 Mar 2026 22:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B+3fahgs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD9610E85D;
 Thu, 26 Mar 2026 22:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774564308; x=1806100308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q0QDZbMT37q7M2bMZ+1Ydop+19BXUS85ykn1TvLLTvA=;
 b=B+3fahgsmsuXDC4trKYIU2H37+EgKlhHGDkKXgUHW6XJg7kJE7vuNcjC
 2AmECfg0HFgb0yzUewW3lC+KdncuifwKW1VrQP52z5mESRmN41uaSOxeF
 q4+s2NfwLJKAz/wTP9G78hDiBB/xDV+8Yh/Ax1Ln2FKUXV5zKFNZG9Uv5
 Q3eJORt+Yj1quCdBHsUj7k6kOXbavqEiF344kUWrS2gArqbVx4VWD+hGf
 qj3TSfUbc8eRyqiWfDpVYNN5/BB3q+DXAelx9Y8fYz8BBdv9IjVZcMZB9
 b+asEr4aJVs3Qmz1gPwz5Klx0rchXZgHB9D1IcMgfbAQfh2QAuTwfgiQ5 A==;
X-CSE-ConnectionGUID: lgDaC/oXQ46sRJ/0cWXpSg==
X-CSE-MsgGUID: nVGC+sR3R8WTiwFDHECjxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="78233025"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="78233025"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:31:48 -0700
X-CSE-ConnectionGUID: Hu4S8cg4QSOv2cM53GlfCg==
X-CSE-MsgGUID: 0ZfpHYX3RneZW6+KtUNDng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="226769456"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:31:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/9] drm/i915/casf: s/casf_enable/enable/
Date: Fri, 27 Mar 2026 00:31:31 +0200
Message-ID: <20260326223139.19116-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 2850233C73B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The 'casf_enable' boolean is already inside a casf specific
structure, so drop the extra 'casf_' namespace from the bool.

Cc: Nemesa Garg <nemesa.garg@intel.com>
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
index 234843b8f83a..a42153a465fe 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -383,7 +383,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "sharpness strength: %d, sharpness tap size: %d, sharpness enable: %d\n",
 		   pipe_config->hw.casf_params.strength,
 		   pipe_config->hw.casf_params.win_size,
-		   pipe_config->hw.casf_params.casf_enable);
+		   pipe_config->hw.casf_params.enable);
 
 dump_planes:
 	if (!state)
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


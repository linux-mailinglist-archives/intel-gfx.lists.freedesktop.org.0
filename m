Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHBGNoIxBGo/FAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 10:08:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916E452F586
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 10:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BB110ED4E;
	Wed, 13 May 2026 08:08:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDiZNoWC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C481C10ED40;
 Wed, 13 May 2026 08:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778659706; x=1810195706;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5Vf6IquwuENwLh2AXZA8ZCP5E5EdM7QpXfcPZUBYVXQ=;
 b=XDiZNoWC/d0MHU5DXAJ7K9t+LxCadj+qreTOc7aCN5HWhyy475bst0aZ
 HNq6wCYYTCpkXAglQpm8/q4nwnCgFb0jZQIT76+quLzOYAKtgvlybNkLE
 yny0aYFP6w+CUHoCl6GcUAjy5DWuPZcZ0drsfbWHmsQsC9+W9c17lZ7rE
 bfvgkh4yvgjK8qrZeLZps3CEdQs+t5YcZ1TPINgH7ObfS/77/7zo1vx2Y
 GWW/dIzmtB8yEIWaESg9Dn6UPis4N/AdsXiNK+UpuWEm3mIMJrrua6xpz
 fxLiIR3P5RMvnOsEOCPACUlhwENQf1pBTut58DvXDssVQ7uQs8Gdmr+Sn w==;
X-CSE-ConnectionGUID: RgpVgFKcRXiie65RgOnfDQ==
X-CSE-MsgGUID: U76LGOuiQCKrbvVafFkAJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="89884671"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="89884671"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 01:08:26 -0700
X-CSE-ConnectionGUID: pCcLl1/yQeCBJGbjvlSaEQ==
X-CSE-MsgGUID: RMbkE4qfSvSnrlGtCt1kBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="237165571"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 13 May 2026 01:08:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in full-AUX
 VESA path
Date: Wed, 13 May 2026 13:38:19 +0530
Message-Id: <20260513080819.849479-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Queue-Id: 916E452F586
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[intel.com:query timed out];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RBL_SEM_FAIL(0.00)[131.252.210.177:query timed out];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[intel.com:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

In full-AUX VESA mode (aux_enable && aux_set) the driver never touches
the native PCH PWM. If BIOS left PWM CTL register enabled, the PCH PWM
keeps system alive during s2idle and blocks S0ix.
Always run pwm_funcs->setup() so pwm_enabled reflects real HW state,
and on first enable in full-AUX mode call pwm_funcs->disable() once to
clear the stale bit. Runtime behaviour is otherwise unchanged.

Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 32 +++++++++++++------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index a8d56ebf06a2..c828c568fb8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -496,6 +496,17 @@ intel_dp_aux_vesa_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 
+	/*
+	 * In full AUX VESA mode the native PWM is never driven by us. If BIOS
+	 * left it enabled, the PCH PWM keeps the system alive and blocks
+	 * S0ix. Sanitize it once via pwm_funcs->disable.
+	 */
+	if (panel->backlight.edp.vesa.info.aux_enable &&
+	    panel->backlight.edp.vesa.info.aux_set &&
+	    panel->backlight.pwm_enabled)
+		panel->backlight.pwm_funcs->disable(conn_state,
+						    intel_backlight_invert_pwm_level(connector, 0));
+
 	if (!(panel->backlight.edp.vesa.info.aux_enable ||
 	      panel->backlight.edp.vesa.info.luminance_set)) {
 		u32 pwm_level;
@@ -558,15 +569,18 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 				    panel->backlight.edp.vesa.info.luminance_set),
 		    backlight_unit_str(panel));
 
-	if (!panel->backlight.edp.vesa.info.aux_set ||
-	    !panel->backlight.edp.vesa.info.aux_enable) {
-		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
-		if (ret < 0) {
-			drm_err(display->drm,
-				"[CONNECTOR:%d:%s] Failed to setup PWM backlight controls for eDP backlight: %d\n",
-				connector->base.base.id, connector->base.name, ret);
-			return ret;
-		}
+	/*
+	 * Always probe the native PWM HW state so panel->backlight.pwm_enabled
+	 * reflects what BIOS left behind. Required for the full-AUX VESA path
+	 * to detect and sanitize a BIOS-enabled PCH PWM that would otherwise
+	 * block S0ix.
+	 */
+	ret = panel->backlight.pwm_funcs->setup(connector, pipe);
+	if (ret < 0) {
+		drm_err(display->drm,
+			"[CONNECTOR:%d:%s] Failed to setup PWM backlight controls for eDP backlight: %d\n",
+			connector->base.base.id, connector->base.name, ret);
+		return ret;
 	}
 
 	if (panel->backlight.edp.vesa.info.luminance_set) {
-- 
2.34.1


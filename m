Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHTPJo9BB2oCvAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:53:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B81A552723
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5870710E209;
	Fri, 15 May 2026 15:53:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nt2HpvXt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD81210E190;
 Fri, 15 May 2026 15:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778860428; x=1810396428;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NnVmRh74bzU4s0rzDm5vd1frnNUHKvjU0xREINI6OyY=;
 b=Nt2HpvXttnrkd03/cmq+hhdmKl6uUJRjrhGRxvkPWEoOgkgYDTK2Qdyl
 h7wXkzkCVHcc0COWPCZdHGoH4NzMPtso5DXvO6bOQy3yMqtjy5sESFnWk
 4+AvY96byqeVxZEpVc7bejgp+0NOjgxycaMsGpH4kK/+A0WdjGRU0ntLo
 i67ATV90jLCpXGB/tUBYYJ5U5Ytiaxclc5kWV4VtGfBnSVXQXw3U6rKFR
 x+6MsTyTByDoJwHS3sb6c6P03xnotnZG9AUHZbAFTBe7LAsZGa7Vl6LEx
 LF80ovvfwy3ygeBLb+157m5NenxvDqARoFBeBCHsFKs2iPvwlokKOScJY w==;
X-CSE-ConnectionGUID: SoHkT7cwTXin/XDP8434mw==
X-CSE-MsgGUID: 6eyx0pfKTZOU/2uc0lajBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="90920819"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90920819"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:53:48 -0700
X-CSE-ConnectionGUID: kO3p1QMgQemwmlj/CmD1lw==
X-CSE-MsgGUID: wYM6IhQ4RCmkkdx7DX76lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="240543084"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa004.fm.intel.com with ESMTP; 15 May 2026 08:53:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] Revert "drm/i915/backlight: Remove try_vesa_interface"
Date: Fri, 15 May 2026 21:23:40 +0530
Message-Id: <20260515155340.1000997-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 0B81A552723
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

This reverts commit 40d2f5820951dee818d05c14677277048bd85f9f.

Removing the try_vesa_interface gate caused a backlight regression on
panels whose VBT correctly reports INTEL_BACKLIGHT_DISPLAY_DDI and whose
PWM path is the actual backlight control, but whose DPCD optimistically
advertises DP_EDP_BACKLIGHT_AUX_ENABLE_CAP / _BRIGHTNESS_AUX_SET_CAP.
After the commit such panels silently bind to the VESA AUX backlight
funcs; AUX writes complete but the panel ignores them, leaving
brightness stuck (no-op backlight). Observed on at least KBL and TGL
eDP setups.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index a8d56ebf06a2..7a6c07f6aaeb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -691,10 +691,9 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_device *dev = connector->base.dev;
 	struct intel_panel *panel = &connector->panel;
-	bool try_intel_interface = false;
+	bool try_intel_interface = false, try_vesa_interface = false;
 
-	/*
-	 * Check the VBT and user's module parameters to figure out which
+	/* Check the VBT and user's module parameters to figure out which
 	 * interfaces to probe
 	 */
 	switch (display->params.enable_dpcd_backlight) {
@@ -703,6 +702,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	case INTEL_DP_AUX_BACKLIGHT_AUTO:
 		switch (panel->vbt.backlight.type) {
 		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
+			try_vesa_interface = true;
 			break;
 		case INTEL_BACKLIGHT_DISPLAY_DDI:
 			try_intel_interface = true;
@@ -715,12 +715,20 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
 			try_intel_interface = true;
 
+		try_vesa_interface = true;
+		break;
+	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
+		try_vesa_interface = true;
 		break;
 	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
 		try_intel_interface = true;
 		break;
 	}
 
+	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
+	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
+		try_vesa_interface = true;
+
 	/*
 	 * Since Intel has their own backlight control interface, the majority of machines out there
 	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
@@ -733,9 +741,6 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
 	 * backlight interface at all. This means that the only sensible way for us to detect both
 	 * interfaces is to probe for Intel's first, and VESA's second.
-	 *
-	 * Also there is a chance some VBTs may advertise false Intel backlight support even if the
-	 * TCON DPCD says otherwise. This means we keep VESA interface as fallback in that case.
 	 */
 	if (try_intel_interface && intel_dp->edp_dpcd[0] <= DP_EDP_14b &&
 	    intel_dp_aux_supports_hdr_backlight(connector)) {
@@ -745,7 +750,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 		return 0;
 	}
 
-	if (intel_dp_aux_supports_vesa_backlight(connector)) {
+	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
 		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
 			    connector->base.base.id, connector->base.name);
 		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
-- 
2.34.1


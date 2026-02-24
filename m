Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMJiLVsXnWlTMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:13:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3FD181522
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506BD10E144;
	Tue, 24 Feb 2026 03:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mw/FqRaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6AEB10E144;
 Tue, 24 Feb 2026 03:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771902807; x=1803438807;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uqTtlTOCt1/uhhkWhLQpPQx8mf/LJr6VoN39Gtbpjzc=;
 b=Mw/FqRaYs+acB3+eomPWtHT4cHRJgdxwRdp3BJDjTDnoNMGO/QYR9i6C
 3qsiIpzawoaJ+VgwTzg5tQ6g0V1y7SNhME1Pd+Dw36EVMySbbz3jrVPsu
 uabtqL5NvxDhvGgB45sbYAZz9UINhoTj7/9dBw+nEETSEr/epAfZhtt5d
 2pG3R3v5HF2+ATY9G3ZXC5YFLGyA0gh/VrYFoI1YOC7tf0ISrXEJCpQgf
 SwAY8SKN0awQFP4bFpBV6eMJeZDuWW6due1uovr79qm+DafJ5pXxHVYh1
 CfboAHhpljCHc7ZQR8IKAfkRUNOzDoXPyW4KsMptpcGrJGQzQOHBEJ+t6 w==;
X-CSE-ConnectionGUID: cY4MNWM9TSSCqR17PNQRdw==
X-CSE-MsgGUID: 6d5coJyaQIO/hhY5Vhuhcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83233784"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83233784"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:13:26 -0800
X-CSE-ConnectionGUID: tj0J9Z3/RxOAQ5MTc3ewDQ==
X-CSE-MsgGUID: j+PgAN3GQcG/Y2q/cgkzFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="219867788"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 23 Feb 2026 19:13:25 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Date: Tue, 24 Feb 2026 08:43:22 +0530
Message-Id: <20260224031322.2568874-1-suraj.kandpal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: DD3FD181522
X-Rspamd-Action: no action

Remove try_vesa_interface. This is because we now make VESA Interface
as a fallback mechanism for Panels which needs VESA DPCD AUX backlight
mechanism to work but have a broken VBT indicating otherwise.
While at in sneak in a small comment cleanup too.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index eb05ef4bd9f6..a8e9872566cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -644,9 +644,10 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_device *dev = connector->base.dev;
 	struct intel_panel *panel = &connector->panel;
-	bool try_intel_interface = false, try_vesa_interface = false;
+	bool try_intel_interface = false;
 
-	/* Check the VBT and user's module parameters to figure out which
+	/*
+	 * Check the VBT and user's module parameters to figure out which
 	 * interfaces to probe
 	 */
 	switch (display->params.enable_dpcd_backlight) {
@@ -655,7 +656,6 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	case INTEL_DP_AUX_BACKLIGHT_AUTO:
 		switch (panel->vbt.backlight.type) {
 		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
-			try_vesa_interface = true;
 			break;
 		case INTEL_BACKLIGHT_DISPLAY_DDI:
 			try_intel_interface = true;
@@ -668,20 +668,12 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
 			try_intel_interface = true;
 
-		try_vesa_interface = true;
-		break;
-	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
-		try_vesa_interface = true;
 		break;
 	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
 		try_intel_interface = true;
 		break;
 	}
 
-	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
-	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
-		try_vesa_interface = true;
-
 	/*
 	 * Since Intel has their own backlight control interface, the majority of machines out there
 	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
@@ -694,6 +686,9 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
 	 * backlight interface at all. This means that the only sensible way for us to detect both
 	 * interfaces is to probe for Intel's first, and VESA's second.
+	 *
+	 * Also there is a chance some VBT's may advertise false Intel backlight support even if the
+	 * tcon's DPCD says otherwise. This mean we keep VESA interface as fallback in that case.
 	 */
 	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector) &&
 	    intel_dp->edp_dpcd[0] <= DP_EDP_14b) {
@@ -703,7 +698,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 		return 0;
 	}
 
-	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
+	if (intel_dp_aux_supports_vesa_backlight(connector)) {
 		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
 			    connector->base.base.id, connector->base.name);
 		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
-- 
2.34.1


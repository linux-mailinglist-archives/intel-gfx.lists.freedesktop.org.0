Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ujczNDZdrmm6CgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 06:40:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F723233F69
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 06:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13AA10E48A;
	Mon,  9 Mar 2026 05:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mQ5NpcV5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB55D10E488;
 Mon,  9 Mar 2026 05:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773034803; x=1804570803;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RlncYc9Z04pP4Jmu3dXCvoEdUkuEUVkzYMoopvM/QbA=;
 b=mQ5NpcV5x8us+Yd+30S1yTm9/NN2dg5113BayPCrzx/hy34TmfLLfJY/
 43stLcGXbwxa7yYxDjJk4HTE53I1PuJgTNPG3PlRcc5CydNTZSzMbyMWb
 TgWvGKMouJX0WfaawUrouzxWQF1IDzqnirydlcM4MrGw75Wx6qwLTNyyI
 zL/x2ieXixVPglgXZwnPGaSygoXHpEcsgj7a2txEO8oUF9tFjTI/JFSRj
 FplO6Yf9ht5WcDVnbw7x+xj2QDMMTEgs8/+th8dxSEBmNTUiFBrjUVxws
 jzWlTY6fzJd7YH/DrphdPsIWKWMrcfFoUDGehZLwADwqaoF5gdGq/kPkU w==;
X-CSE-ConnectionGUID: s+EPCwMhT6SiNcmOQ5+9rA==
X-CSE-MsgGUID: 7fpoeJ4vRsi1LL2g0Bjj7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="74020973"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="74020973"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 22:40:02 -0700
X-CSE-ConnectionGUID: as1R6B6iR46pgYa6Qu1n0g==
X-CSE-MsgGUID: lWT0AplwSKqeEstnMJjYQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="224098487"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa004.jf.intel.com with ESMTP; 08 Mar 2026 22:40:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/backlight: Check if VESA backlight is possible
Date: Mon,  9 Mar 2026 11:09:56 +0530
Message-Id: <20260309053956.3966624-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 3F723233F69
X-Rspamd-Server: lfdr
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
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Check if BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit is
set then EDP_PWMGEN_BIT_COUNT_CAP_MIN and EDP_PWMGEN_BIT_COUNT_CAP_MAX
follow the eDP 1.4b Section 10.3. Which states min should
be > 1 and max should be >= min. Some legacy panels
do not follow this properly. They set the
BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit while not correctly
populating the min and max fields leading to a 0 max value.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7514
Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 36 ++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index a7b186d0e3c4..5b6f5c5f00e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -609,6 +609,38 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 	return 0;
 }
 
+static bool
+check_if_vesa_backlight_possible(struct intel_dp *intel_dp)
+{
+	int ret;
+	bool aux_set = false;
+	u8 bit_min, bit_max;
+
+	if (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)
+		aux_set = true;
+
+	if (!aux_set)
+		return true;
+
+	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
+	if (ret < 0)
+		return false;
+
+	bit_min &= DP_EDP_PWMGEN_BIT_COUNT_MASK;
+	if (bit_min < 1)
+		return false;
+
+	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &bit_max);
+	if (ret < 0)
+		return false;
+
+	bit_max &= DP_EDP_PWMGEN_BIT_COUNT_MASK;
+	if (bit_max < bit_min)
+		return false;
+
+	return true;
+}
+
 static bool
 intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 {
@@ -625,12 +657,14 @@ intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 		return true;
 	}
 
-	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
+	if (drm_edp_backlight_supported(intel_dp->edp_dpcd) &&
+	    check_if_vesa_backlight_possible(intel_dp)) {
 		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] AUX Backlight Control Supported!\n",
 			    connector->base.base.id, connector->base.name);
 		return true;
 	}
+
 	return false;
 }
 
-- 
2.34.1


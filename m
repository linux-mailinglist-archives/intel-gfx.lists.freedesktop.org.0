Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2520A897E03
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 05:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F14E11131AB;
	Thu,  4 Apr 2024 03:32:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TDOskB+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0A51131A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 03:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712201535; x=1743737535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DNwm+JNpReM/aVHGYRimBQ+os0poivF7AbON104WE+Y=;
 b=TDOskB+TFvBDZvNobLnsZPk1mqQR9ZroHntrMODLGl9YVz16HiCTyxby
 35yiJandGAC3B8qPHqhEqt052aBDXL6hqhnoyahaYH36bGKBYSJbmGnb2
 paa3midbbTSb5A7vFnYc43sN+dab8wK0h+QUwDHh2g9WTmfmzSnkFLqq4
 rs/CtviThsPK+KhzkT3R/PxYEPUnbX3/xpvWtZQOEdSSugO5OqCN54YF/
 wGtDl2nLayP9ZLflHPusuRM2a4dYwDtxP1wNtUNrP0daZVRbCh9qvEH5w
 isKqGItZd2iNgUpfe8rnUaVNC3/zxTyRZwAUF+sd3vCuDlptwbbhNvRxE w==;
X-CSE-ConnectionGUID: QZroL4ezSwK64CDavlr3dw==
X-CSE-MsgGUID: 32b1EV1fSfWS5Qr2eoIVrg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11282642"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11282642"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 20:32:15 -0700
X-CSE-ConnectionGUID: 3zbQpCLFS1yskGq1goP9Xg==
X-CSE-MsgGUID: 0zkgSObxSeiW7Kj7r/pyjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18747752"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 03 Apr 2024 20:32:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 6/7] drm/i915/dp: Write panel override luminance values
Date: Thu,  4 Apr 2024 08:59:30 +0530
Message-ID: <20240404032931.380887-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404032931.380887-2-suraj.kandpal@intel.com>
References: <20240404032931.380887-2-suraj.kandpal@intel.com>
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

Write panel override luminance values which helps the TCON decide
if tone mapping needs to be enabled or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 7af876e2d210..20dd5a6a0f3f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -381,6 +381,29 @@ static const char *dpcd_vs_pwm_str(bool aux)
 	return aux ? "DPCD" : "PWM";
 }
 
+static void
+intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_panel *panel = &connector->panel;
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
+	int ret;
+	u8 buf[4] = {};
+
+	buf[0] = panel->backlight.min & 0xFF;
+	buf[1] = (panel->backlight.min & 0xFF00) >> 8;
+	buf[2] = panel->backlight.max & 0xFF;
+	buf[3] = (panel->backlight.max & 0xFF00) >> 8;
+
+	ret = drm_dp_dpcd_write(&intel_dp->aux,
+				INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE,
+				buf, sizeof(buf));
+	if (ret < 0)
+		drm_dbg_kms(&i915->drm,
+			    "Panel Luminance DPCD reg write failed, err:-%d\n",
+			    ret);
+}
+
 static int
 intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pipe)
 {
@@ -412,6 +435,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		panel->backlight.min = 0;
 	}
 
+	intel_dp_aux_write_panel_luminance_override(connector);
+
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.min, panel->backlight.max);
-- 
2.43.2


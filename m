Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 827698AC31B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 05:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E13C1126FD;
	Mon, 22 Apr 2024 03:35:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gYhnISgJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B14A1126FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 03:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713756942; x=1745292942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3YiUzbBiCLRxx4Pe3sR4C20DO4Up5PUX6ttKUU//A8A=;
 b=gYhnISgJAoQo6/s6dnQTC75/Z0Q7LD0v71/Kc7fJVAZu2x9wXFBnfvtT
 mV6tVyRDjljrXQNVnU9XUK8r0rbFuujRKokQS9VMSpSuroSF8TZ86EcbD
 XfbVZ7iUeUc6uSCFfvl1Hov/C93mG6J8lT2n0uWYC5jAI+5Y8pioEc+Zg
 WnaebC7rBNACLzSJF3zn3zkfsG2mdzUyBy7R/3CPSE41HEjM9J29VLAjz
 1YVBGM9TTrFd2JvF+6NO8sdK6+nYe7lUjVpYigm7m21wRf0UlC7GH6diU
 IBbsMl6sbFM7Luuv7NsCQJbbEFaVE+1oJSK6IngXhr8YY8jNCVtCI6vVd g==;
X-CSE-ConnectionGUID: qR551EA4SWeo5Wy1F0Hhgw==
X-CSE-MsgGUID: K2rRghK1Sg+FWenu/Xgzvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9158255"
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; 
   d="scan'208";a="9158255"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 20:35:42 -0700
X-CSE-ConnectionGUID: iVbpMLsNQTGAMLGZGxvL2A==
X-CSE-MsgGUID: yvYjkit5QBCBsAW+z1QDvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; d="scan'208";a="23907414"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Apr 2024 20:35:40 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 naveen1.kumar@intel.com, sebastian.wick@redhat.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 6/6] drm/i915/dp: Write panel override luminance values
Date: Mon, 22 Apr 2024 09:02:55 +0530
Message-ID: <20240422033256.713902-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422033256.713902-1-suraj.kandpal@intel.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
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
index e23694257ea5..9e885eb40805 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -374,6 +374,29 @@ static const char *dpcd_vs_pwm_str(bool aux)
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
@@ -405,6 +428,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		panel->backlight.min = 0;
 	}
 
+	intel_dp_aux_write_panel_luminance_override(connector);
+
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.min, panel->backlight.max);
-- 
2.43.2


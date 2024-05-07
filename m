Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A538BDA04
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 06:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9A810E9FA;
	Tue,  7 May 2024 04:06:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gVoHty2+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7142110EA75
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 04:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715054810; x=1746590810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CuTvnTjGvPJXto5cuCvjmSr/Fx79i37Mpvf1W4KVSG8=;
 b=gVoHty2+p221+CU+RyYGcdPvN7MONHZ3AbRNtHR1dfxg22Pbo82mPBj8
 OJIj1p4rl3yptHasu6f8jO0qitpE84d/7ReGczrDbhOs+E74l2sFxNsDl
 6JgrrQMnxR95uDXnYi+4Aty+tJ9zMqhzP/gmIP56aOS0CVvYuVNxPH/P6
 QUfHyh/RCwsSlx54zNubQmBq0BzYllEos+HL5otYKxZULPBr3GFFjfvnH
 pZB/pG/t0DKQ9lC1o2H+rJhX5tuEeAvhNHs9PO0Pr8DWdnz+Z5kgjVrwq
 Ms8bQE6rgukfqnom8iWcgCn5E47wXfUhMSBAzxTJRsu0e5ICxO0iQXFmU g==;
X-CSE-ConnectionGUID: 76gUAjBNRouKTpS/u7NcXg==
X-CSE-MsgGUID: Mi4oNuguQt2UonySInWBCw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14645356"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="14645356"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 21:06:50 -0700
X-CSE-ConnectionGUID: nZupMeyUS2qeZ1sSUDwIcQ==
X-CSE-MsgGUID: pITXQ+ttTyq9Et7JQYnEmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28468459"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 06 May 2024 21:06:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Sebastian Wick <sebastian.wick@redhat.com>
Subject: [PATCH 7/7] drm/i915/dp: Write panel override luminance values
Date: Tue,  7 May 2024 09:34:07 +0530
Message-ID: <20240507040407.1056061-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507040407.1056061-1-suraj.kandpal@intel.com>
References: <20240507040407.1056061-1-suraj.kandpal@intel.com>
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
Reviewed-by: Sebastian Wick <sebastian.wick@redhat.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index da42f6704930..8ce60d53dcde 100644
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


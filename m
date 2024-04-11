Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7B98A0823
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 08:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC6310EE5A;
	Thu, 11 Apr 2024 06:12:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ObzlPJVB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38DDD10EE5A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 06:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712815934; x=1744351934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aI3DYDDJ9Va/tLQsWztcz90BpPxagJOWnGgCEq9HV6k=;
 b=ObzlPJVBWBx+Gq/EChmVE6RXFUmVu8WFaNbBN+U7TbHBnACCwJIgvRbj
 kzt4QBtnJAx1TZZOHnCVqgc7YeyAN+dfV9Oo0RwXkVqx7RXV32kzYOess
 5M7bFSWRvXU+skLcYRPWyn4+TEWd7hVyBzgusMGajp6ky+TAh9WaUFrGp
 Oc/TzyWXyepxDwa8nUMTuPrUfKExSNhtx4QsjLJKacDJuD2wrXiDpcR/U
 7nY3b+LFyTtdaf06b1LI9U3Qf4zq6bakQopdLAbXYCMAee+NHZZxbySKu
 ZrgkiRiJdJn7OmFoDU1TEAitUNaaq30e5uPdReKDtkC2SoOyGiH4CZlKt w==;
X-CSE-ConnectionGUID: TFoWf0GpSluvBqUK+/NzLg==
X-CSE-MsgGUID: bkQaASiqTkWyugF5+dxLNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8385018"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; 
   d="scan'208";a="8385018"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 23:12:12 -0700
X-CSE-ConnectionGUID: NAugEJYNT1yYPEbHZtFwwA==
X-CSE-MsgGUID: v1z1gl/qTmKwMidFNwTZWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="58226466"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa001.jf.intel.com with ESMTP; 10 Apr 2024 23:12:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 naveen1.kumar@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 6/6] drm/i915/dp: Write panel override luminance values
Date: Thu, 11 Apr 2024 11:39:25 +0530
Message-ID: <20240411060925.475456-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240411060925.475456-1-suraj.kandpal@intel.com>
References: <20240411060925.475456-1-suraj.kandpal@intel.com>
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
index b13eee250dc4..cb6f01daae42 100644
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


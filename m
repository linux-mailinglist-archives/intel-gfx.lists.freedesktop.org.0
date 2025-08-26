Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D8FB3563F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 10:00:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61AE10E614;
	Tue, 26 Aug 2025 08:00:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bK/7/BDa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D4910E616;
 Tue, 26 Aug 2025 08:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756195211; x=1787731211;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tpk/ddwqgICbWK42gOs4hHKhjwk1cVuCOhvy3+iA7gQ=;
 b=bK/7/BDa0iu2mbW1vkZlED93YEAAHci93fNr0BF86i2YODef2MDI7bIA
 SvfFkUeDnGdVMyy7ZCxLw9Vjvlqy0CHclpFWQYA8fs1j4+CZdd4PEu0Ve
 qS1BEqyE0owhO79SWNCNXfp7T1QfXLgZfxEN5UYXrEqWwmqnhLbQl5LH0
 m6AYJKdKRiRf+sq5kdUNto3d04RV5KHnWPB65paR+CiinUPTATO+vkidS
 Vzn7aaH6sktP/w3lAwSIKVh9WLSX+T4DPz3GvDBQxpPgF3+Q65G7+gDpN
 E/xSgPH4tEvXvRFAangfRO6YFiOuzu13SFfmbXfMeatmC0TrTLS7XDODI Q==;
X-CSE-ConnectionGUID: gTvtpyzdQqW3u+LbNBBl4w==
X-CSE-MsgGUID: AtfdB9bySNegaM1tsvsrkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58341179"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58341179"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 01:00:10 -0700
X-CSE-ConnectionGUID: BHdHaBLnSZe1LoNbejnPxA==
X-CSE-MsgGUID: to7Z3StyTiWjsbMrDZZuBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="173909072"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa004.jf.intel.com with ESMTP; 26 Aug 2025 01:00:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/backlight: Disable backlight when using luminance
 control
Date: Tue, 26 Aug 2025 13:30:05 +0530
Message-Id: <20250826080005.501534-1-suraj.kandpal@intel.com>
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

We just return when using luminance control instead we should be
calling the disable helper to get everything cleaned up properly.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 12084a542fc5..7306858467fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -508,10 +508,10 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 
-	if (panel->backlight.edp.vesa.luminance_control_support)
+	if (panel->backlight.edp.vesa.luminance_control_support) {
+		drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
 		return;
-
-	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
+	}
 
 	if (!panel->backlight.edp.vesa.info.aux_enable)
 		panel->backlight.pwm_funcs->disable(old_conn_state,
-- 
2.34.1


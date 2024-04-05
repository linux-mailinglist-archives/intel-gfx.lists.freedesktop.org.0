Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D5F899819
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 10:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9072810E6A3;
	Fri,  5 Apr 2024 08:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="malsuEaq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4EE10E6A3
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 08:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712306398; x=1743842398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nvd66UejkvTx7BLWJUIcWsHFaDYZfLgMRf5nMTJbDDY=;
 b=malsuEaqjjU8E0AxJ4R3IO1VsCtfV3YKdNO6GUBgv2FkXUOqOKkcp3nr
 gkqKza/E1hYv9CP17kTzMFMLHZ6cAYw5CDAa6qDwkpbVqv12wXmzI3Fz9
 og4PKVtXsEAHYSS5INczKIHP7GU60fZLbF06nxyNn3vKZUaU2ao6zdhV4
 /QgsoXYmNLZmFQHKmij5VXromZJQkvc+7foVbuPgU7PeDhuABJgDGv72o
 nMS2Lssn8FI4tCZjjrqJjrewAFjfzfjTbVfluHVRe0+6IO1D+KGIbhb8r
 hmJpBbTEV4xlH+HbC83qrNBdp+y2xZwQJD0OTcVAywnuyISpFhsLg483I w==;
X-CSE-ConnectionGUID: BsTIG84XRFGLzo0YQYZz0Q==
X-CSE-MsgGUID: r0v2qLpiSr+uQLofPIqXJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7783587"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7783587"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 01:39:57 -0700
X-CSE-ConnectionGUID: Ef4NtwplRf+7NC76JQRL/Q==
X-CSE-MsgGUID: M+UdjGuRTyWjoQBMlh7yBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19035340"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 05 Apr 2024 01:39:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 naveen1.kumar@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 7/7] drm/i915/dp: Limit brightness level to vbt min brightness
Date: Fri,  5 Apr 2024 14:07:05 +0530
Message-ID: <20240405083704.393996-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404032931.380887-9-suraj.kandpal@intel.com>
References: <20240404032931.380887-9-suraj.kandpal@intel.com>
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

Limit minimum brightness to vbt min brightness when using aux
based brightness control to avoid letting the screen
from going completely blank.
Sometimes vbt can have some bogus values hence clamping the value
for sanity in case of corner case.

--v2
-Use something same mechanism to limit minimum brightness
that PWM method uses [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 20dd5a6a0f3f..eb2a7225dfaa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -411,6 +411,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 	struct intel_panel *panel = &connector->panel;
 	struct drm_luminance_range_info *luminance_range =
 		&connector->base.display_info.luminance_range;
+	u32 min_level = clamp_t(u32,
+				connector->panel.vbt.backlight.min_brightness, 0, 64);
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
@@ -427,14 +429,12 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		}
 	}
 
-	if (luminance_range->max_luminance) {
+	if (luminance_range->max_luminance)
 		panel->backlight.max = luminance_range->max_luminance;
-		panel->backlight.min = luminance_range->min_luminance;
-	} else {
+	else
 		panel->backlight.max = 512;
-		panel->backlight.min = 0;
-	}
 
+	panel->backlight.min = min_level;
 	intel_dp_aux_write_panel_luminance_override(connector);
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
-- 
2.43.2


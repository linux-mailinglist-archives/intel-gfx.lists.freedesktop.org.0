Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA41A82E6C
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FB910E6CC;
	Wed,  9 Apr 2025 18:18:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NnJB+XD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E5E10E6AB;
 Wed,  9 Apr 2025 18:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222728; x=1775758728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9UoEgr6Mlz7C5Kzhz/W4fPmaHsBXCkR9Cl7dNn9VV6U=;
 b=NnJB+XD49gO1dwd93Gm245UgTYuZ9yTkg0QfOg04AFYHE6qZ6XICJIim
 9yRjiGgwMHBf8zYijqUA84E82c/b0bLeboRAgMK+b255zl+13t4vAknYY
 orAOuSHZb3Y+WmpGbgZ5j1X7m7BlkkJOUNFxCz8BIoEwCP4O4lA4ZAN2L
 wbo2hP3yZgakHoIPGUwno5Le/kunYBY8chMUg/dUd7gMmuVTZSEhdtRUS
 xzmrSNkjdtFNidiqUiHZcbeMkr0xkz+tbZj7e5nKLM02twHoJ1HBRhyKj
 MRNfYDTqKzlp1D4dATHbg+jDokWU6e17F+LBgX4NBLKl4kVDwtm2HpfSB Q==;
X-CSE-ConnectionGUID: yUV7OTL7S+epMjCTHBgspQ==
X-CSE-MsgGUID: 91j6cPAlRDelu+SU8sZeaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45729956"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45729956"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:48 -0700
X-CSE-ConnectionGUID: TFcLfehYTUW4Q8ZyXAuy0A==
X-CSE-MsgGUID: o+atZmE1Si++ZHesjM/i3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="165879036"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/14] drm/i915/dp-aux: switch to display->platform based
 platform detection
Date: Wed,  9 Apr 2025 21:17:49 +0300
Message-Id: <a5cde717001eb2843344beb21ca8907ab2e43d4f.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer display->platform based platform detection over the old IS_*()
macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 0496061203fb..3245a15935db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -177,12 +177,11 @@ static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
 				int send_bytes,
 				u32 aux_clock_divider)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u32 timeout;
 
 	/* Max timeout value on G4x-BDW: 1.6ms */
-	if (IS_BROADWELL(i915))
+	if (display->platform.broadwell)
 		timeout = DP_AUX_CH_CTL_TIME_OUT_600us;
 	else
 		timeout = DP_AUX_CH_CTL_TIME_OUT_400us;
@@ -804,7 +803,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	} else if (HAS_PCH_SPLIT(i915)) {
 		intel_dp->aux_ch_ctl_reg = ilk_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = ilk_aux_data_reg;
-	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+	} else if (display->platform.valleyview || display->platform.cherryview) {
 		intel_dp->aux_ch_ctl_reg = vlv_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = vlv_aux_data_reg;
 	} else {
@@ -814,7 +813,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 
 	if (DISPLAY_VER(display) >= 9)
 		intel_dp->get_aux_clock_divider = skl_get_aux_clock_divider;
-	else if (IS_BROADWELL(i915) || IS_HASWELL(i915))
+	else if (display->platform.broadwell || display->platform.haswell)
 		intel_dp->get_aux_clock_divider = hsw_get_aux_clock_divider;
 	else if (HAS_PCH_SPLIT(i915))
 		intel_dp->get_aux_clock_divider = ilk_get_aux_clock_divider;
-- 
2.39.5


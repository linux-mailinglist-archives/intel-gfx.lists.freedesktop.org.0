Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7718168CFA9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 07:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C7010E1D3;
	Tue,  7 Feb 2023 06:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5323E10E2F1
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 06:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675752230; x=1707288230;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6CHhlKUS2jqYVG4lXlnJKMnKk+PT8sDSEl3dLgCAgVI=;
 b=Xy7vjKYSsSectbcD/9qzs63YFB8ldP+wsWuLO+11GVbxNliE5SD6VoF6
 Xb9q7ZPDNKfxs+u3GWQVUxW+W0QS20U3SCAznw2rzWgMta7it6gSEW/l6
 ub+Andfjonr3w2yA+PJEKy2+/GCTf9BDHiJvNKbPQvFZlOw20+fKmWiuX
 X6pbHQ6nz7XNbgDKZ4caW/6Oc+df4e8y6JIz0x3nZx1zenULOFPGq53li
 Df0O0L1x/c+nN4j9V/d9HNod8X6LYJushB9uYxtPIRb6nevo+IquOtcvp
 IcS7B/1mb3EQtRm6WBSAdr/MVh2CUgLspbYnAV+e1VuHoReA7u97VbExy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309067922"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309067922"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 22:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="660107584"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="660107584"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 06 Feb 2023 22:43:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Feb 2023 08:43:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 08:43:37 +0200
Message-Id: <20230207064337.18697-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Pick the backlight controller
 based on VBT on ICP+
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use the second backlight controller on ICP+ if the VBT asks
us to do so.

On pre-MTP we also check the chicken bit to make sure the
pins have been correctly muxed by the firmware.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 34 +++++++++++++++++--
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 5b7da72c95b8..a4e4b7f79e4d 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1431,6 +1431,30 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 	return 0;
 }
 
+static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
+{
+	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
+		return 1;
+
+	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
+		return 2;
+
+	return 1;
+}
+
+static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int controller)
+{
+	if (controller < 0 || controller >= cnp_num_backlight_controllers(i915))
+		return false;
+
+	if (controller == 1 &&
+	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
+	    INTEL_PCH_TYPE(i915) < PCH_MTP)
+		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
+
+	return true;
+}
+
 static int
 cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
@@ -1440,10 +1464,14 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	/*
 	 * CNP has the BXT implementation of backlight, but with only one
-	 * controller. TODO: ICP has multiple controllers but we only use
-	 * controller 0 for now.
+	 * controller. ICP+ can have two controllers, depending on pin muxing.
 	 */
-	panel->backlight.controller = 0;
+	panel->backlight.controller = connector->panel.vbt.backlight.controller;
+	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.controller)) {
+		drm_dbg_kms(&i915->drm, "Invalid backlight controller %d, assuming 0\n",
+			    panel->backlight.controller);
+		panel->backlight.controller = 0;
+	}
 
 	pwm_ctl = intel_de_read(i915,
 				BXT_BLC_PWM_CTL(panel->backlight.controller));
-- 
2.39.1


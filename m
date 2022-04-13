Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C189A4FF1E5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 10:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E412610FC4B;
	Wed, 13 Apr 2022 08:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4504110FC4B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 08:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649838535; x=1681374535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uG3ZaMazPcEQ8CpNsNjf7aUkbb/evwjpUjJlhc89/WQ=;
 b=QNOJGiLopVFAvQBTDdLQjDUI0MxoSykULnVDU2AOT46c8LV8PzffVZ8e
 ixhrHE19li5tPt+7FjcTZGQ8e1xEWpQ+o7pBnz7NVXGn9uSgdndP7VAQj
 kMJ1qpbubAa3UOppulIyh54/kcOqKFyYuOfQgHwq23CnTMyAP2SO0qruk
 rIE8GCo6YBk4Nv5GVez9y7GG0WUKa9CTntf5QnXbYKmbACAFTj/U1mR58
 34LxTc602387SNWpdiIDJAAtFjFZrDhyfjlvXKspZr1RlaEKi790r9J+A
 Eoq+zA7DsSs4FfEi8oSeEwiDcz4w1NLw33ZHXvDA0t78EWfxthlH+F6kq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="261455363"
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="261455363"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 01:28:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="573172151"
Received: from marisaku-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.45.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 01:28:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 11:28:26 +0300
Message-Id: <20220413082826.120634-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Check EDID for HDR static metadata
 when choosing blc
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
Cc: Jani Nikula <jani.nikula@intel.com>, stable@vger.kernel.org,
 Filippo Falezza <filippo.falezza@outlook.it>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have now seen panel (XMG Core 15 e21 laptop) advertizing support
for Intel proprietary eDP backlight control via DPCD registers, but
actually working only with legacy pwm control.

This patch adds panel EDID check for possible HDR static metadata and
Intel proprietary eDP backlight control is used only if that exists.
Missing HDR static metadata is ignored if user specifically asks for
Intel proprietary eDP backlight control via enable_dpcd_backlight
parameter.

v2 :
- Ignore missing HDR static metadata if Intel proprietary eDP
  backlight control is forced via i915.enable_dpcd_backlight
- Printout info message if panel is missing HDR static metadata and
  support for Intel proprietary eDP backlight control is detected

Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface (only SDR for now)")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5284
Cc: Lyude Paul <lyude@redhat.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Filippo Falezza <filippo.falezza@outlook.it>
Cc: stable@vger.kernel.org
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 34 ++++++++++++++-----
 1 file changed, 26 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 97cf3cac0105..fb6cf30ee628 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -97,6 +97,14 @@
 
 #define INTEL_EDP_BRIGHTNESS_OPTIMIZATION_1                            0x359
 
+enum intel_dp_aux_backlight_modparam {
+	INTEL_DP_AUX_BACKLIGHT_AUTO = -1,
+	INTEL_DP_AUX_BACKLIGHT_OFF = 0,
+	INTEL_DP_AUX_BACKLIGHT_ON = 1,
+	INTEL_DP_AUX_BACKLIGHT_FORCE_VESA = 2,
+	INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL = 3,
+};
+
 /* Intel EDP backlight callbacks */
 static bool
 intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
@@ -126,6 +134,24 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 		return false;
 	}
 
+	/*
+	 * If we don't have HDR static metadata there is no way to
+	 * runtime detect used range for nits based control. For now
+	 * do not use Intel proprietary eDP backlight control if we
+	 * don't have this data in panel EDID. In case we find panel
+	 * which supports only nits based control, but doesn't provide
+	 * HDR static metadata we need to start maintaining table of
+	 * ranges for such panels.
+	 */
+	if (i915->params.enable_dpcd_backlight != INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
+	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
+	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
+		drm_info(&i915->drm,
+			 "Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d. needs this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
+			 INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
+		return false;
+	}
+
 	panel->backlight.edp.intel.sdr_uses_aux =
 		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
 
@@ -413,14 +439,6 @@ static const struct intel_panel_bl_funcs intel_dp_vesa_bl_funcs = {
 	.get = intel_dp_aux_vesa_get_backlight,
 };
 
-enum intel_dp_aux_backlight_modparam {
-	INTEL_DP_AUX_BACKLIGHT_AUTO = -1,
-	INTEL_DP_AUX_BACKLIGHT_OFF = 0,
-	INTEL_DP_AUX_BACKLIGHT_ON = 1,
-	INTEL_DP_AUX_BACKLIGHT_FORCE_VESA = 2,
-	INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL = 3,
-};
-
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 {
 	struct drm_device *dev = connector->base.dev;
-- 
2.25.1


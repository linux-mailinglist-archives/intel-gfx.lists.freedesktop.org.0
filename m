Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A484EAFEA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573C010F0BA;
	Tue, 29 Mar 2022 15:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C56A10E8C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566489; x=1680102489;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7/w00WpShgniglqODY0pi4IoXqSSzu9Io7Ub3og0sE0=;
 b=dRy3w93JPN4xZiOtBcmCk0jCr91vQzNb2kKd3j+gtvf3TPpbHYyVQe+v
 GpgJxed3NZiZz3+ty1B5ECp2Fhpc1l9BUmq1IGhHJrvmmgE00do35LyEL
 xHOXj17coqgwmAX4uO+OU4+QzP73TPjEknHicc1lOvm+ljY66nQSm29dZ
 P1PtzZfWa03LwjiMFuaGUuWhC8uK1i7WF9WQsu4v/x625MdJ2qOlPSX+D
 zrXoIGpHFmA6hPcaH+NPli8eF4OCU6NLQ7GjqoQcBlpk+zTE0KaBSm5Md
 o9YS3LOBPWRZ7WzccMfgP7Zycj6WPb1idlZKBHM/WHrOjc/81OxksOGG/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239203044"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239203044"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="604831283"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 29 Mar 2022 08:08:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:08:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:39 +0300
Message-Id: <20220329150742.31783-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Allow higher refresh rate
 alternate fixed modes
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

We shouldn't restrict ourselves to just downclock modes with
lower refresh rate than the preferred mode. Laptops these
days can offer higher refresh rate modes as well.

Remove the arbitrary limit and allow all modes that, apart
from the clock, match the preferred mode.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index d359c8050fdc..f3e52e7413fe 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -149,29 +149,29 @@ int intel_panel_compute_config(struct intel_connector *connector,
 	return 0;
 }
 
-static bool is_downclock_mode(const struct drm_display_mode *downclock_mode,
-			      const struct drm_display_mode *fixed_mode)
+static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
+			      const struct drm_display_mode *preferred_mode)
 {
-	return drm_mode_match(downclock_mode, fixed_mode,
+	return drm_mode_match(mode, preferred_mode,
 			      DRM_MODE_MATCH_TIMINGS |
 			      DRM_MODE_MATCH_FLAGS |
 			      DRM_MODE_MATCH_3D_FLAGS) &&
-		downclock_mode->clock < fixed_mode->clock;
+		mode->clock != preferred_mode->clock;
 }
 
 static void intel_panel_add_edid_downclock_modes(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	const struct drm_display_mode *fixed_mode =
+	const struct drm_display_mode *preferred_mode =
 		intel_panel_preferred_fixed_mode(connector);
 	struct drm_display_mode *mode, *next;
 
 	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
-		if (!is_downclock_mode(mode, fixed_mode))
+		if (!is_alt_fixed_mode(mode, preferred_mode))
 			continue;
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
+			    "[CONNECTOR:%d:%s] using alternate EDID fixed mode: " DRM_MODE_FMT "\n",
 			    connector->base.base.id, connector->base.name,
 			    DRM_MODE_ARG(mode));
 
@@ -179,7 +179,7 @@ static void intel_panel_add_edid_downclock_modes(struct intel_connector *connect
 	}
 }
 
-static void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
+static void intel_panel_add_edid_preferred_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct drm_display_mode *scan, *fixed_mode = NULL;
@@ -223,7 +223,7 @@ static void intel_panel_destroy_probed_modes(struct intel_connector *connector)
 
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool has_drrs)
 {
-	intel_panel_add_edid_fixed_mode(connector);
+	intel_panel_add_edid_preferred_mode(connector);
 	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
 		intel_panel_add_edid_downclock_modes(connector);
 	intel_panel_destroy_probed_modes(connector);
-- 
2.34.1


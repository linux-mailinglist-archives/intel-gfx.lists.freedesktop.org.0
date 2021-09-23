Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 644C041664D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 22:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E41F6EDA6;
	Thu, 23 Sep 2021 20:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7AF89E1D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 20:01:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223578128"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223578128"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 13:01:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="455242002"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 23 Sep 2021 13:01:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Sep 2021 23:01:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 23:01:08 +0300
Message-Id: <20210923200109.4459-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Reject user modes that don't
 match fixed mode's refresh rate
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

When using a panel with a fixed mode we don't change the refresh
rate of the display. Reject any user requested mode which doesn't
match that fixed refresh rate.

Unfortunately when Xorg sees the scaling_mode property on the
connecor it likes to automagically cook up modes whose refresh
rate is a fair bit off from the fixed refresh rate we use. So
we have to give it some extra latitude so that we don't start to
reject all of it.

Note that sDVO is a bit special in the way it cooks up the
display timings and thus doesn't use intel_panel_compute_config()
so we just hand roll the check there for the time being.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 9 ++++++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 77c1ca387de0..8c1ea322502c 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -53,6 +53,15 @@ int intel_panel_compute_config(struct intel_connector *connector,
 	if (!fixed_mode)
 		return 0;
 
+	/*
+	 * We don't want to lie too much to the user about the refresh
+	 * rate they're going to get. But we have to allow a bit of latitude
+	 * for Xorg since it likes to automagically cook up modes with slightly
+	 * off refresh rates.
+	 */
+	if (abs(drm_mode_vrefresh(adjusted_mode) - drm_mode_vrefresh(fixed_mode)) > 1)
+		return -EINVAL;
+
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
 	drm_mode_set_crtcinfo(adjusted_mode, 0);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index fe0ea1db4cf1..33631dbe5589 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1335,8 +1335,15 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 							   adjusted_mode);
 		pipe_config->sdvo_tv_clock = true;
 	} else if (IS_LVDS(intel_sdvo_connector)) {
+		const struct drm_display_mode *fixed_mode =
+			intel_sdvo_connector->base.panel.fixed_mode;
+
+		/* see intel_panel_compute_config() */
+		if (abs(drm_mode_vrefresh(mode) - drm_mode_vrefresh(fixed_mode)) > 1)
+			return -EINVAL;
+
 		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
-							     intel_sdvo_connector->base.panel.fixed_mode))
+							     fixed_mode))
 			return -EINVAL;
 
 		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
-- 
2.32.0


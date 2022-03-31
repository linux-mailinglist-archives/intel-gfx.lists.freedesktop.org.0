Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0AA4ED87E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BC110F2FF;
	Thu, 31 Mar 2022 11:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB2610F2FF
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726128; x=1680262128;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7/w00WpShgniglqODY0pi4IoXqSSzu9Io7Ub3og0sE0=;
 b=T2h+WhKYniY6jVTZrfwuuZHlohpjkqi80LHH1YgZ06ya2rwXezJi72ee
 660TOskMo09M7OcuG1SVTLqH3xPEHUzm+O4GSUuxbkC1p2/n1Y/hH+MoH
 ooqEv2wdZnp3KUvrnl4iGGFDxd+y9Yp2LAS2HcYX4cZvOtx6s5BFaYMXN
 7qetnOXD30k5KRAhc4XMTaDNh8UHzcV0wYmgTlKyGNafUmjD7ts4bjkjv
 V6HEvQ7LXSklKaQ/YR1KUi4/bSsG8Ami0RzyLm1QdA/WT2Ixp+mrqqZKc
 blwgcseiGFdv6N/lNweqA720Z7/QCP1xzQfHylPaDBl10mQmxxaB98ZWe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="258633357"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="258633357"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="522302394"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga006.jf.intel.com with SMTP; 31 Mar 2022 04:28:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:19 +0300
Message-Id: <20220331112822.11462-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/11] drm/i915: Allow higher refresh rate
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


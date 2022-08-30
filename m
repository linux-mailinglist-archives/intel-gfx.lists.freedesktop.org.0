Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C0D5A6F18
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 23:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E26A910E1B6;
	Tue, 30 Aug 2022 21:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8417410E1B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 21:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661894679; x=1693430679;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7pBFyrriZv6daMQUwnSJTy4/zGeSFszi1uzcVSSoN8E=;
 b=dvWJ5N8GjPXJd+nSWzVv+oMpE2R/DiazUjEb8Bu10RY0cMUSUPbu3hq2
 nnTs74o8e0LgfzWbJGUsLXPNMV49HQ4kEMMDFTlaoFrN/lmKO8iIItPcS
 LNZ2vPFKk0IlPWh2DnmF1bSQfSw38ek+O8WEN3C0Qu7ilibW1kp+gfq1n
 sjPbJ3JWwT9DO3ozZ++VwXFKynJqHbPH1PdJXr7nX3i58eYIIwRchcjkV
 0YA1HEPpNCaaJvYlmaYTR1r4U4GOb+EAtaxXNLf/I3NAdnY9Eo0zNEXq3
 ZvbnoIF7n0CkaNiI9yBuI2pBmxG0nneJtCnxBrzhQ7nj0Ds1fjU4P6XOL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="296582466"
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="296582466"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 14:24:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="607987302"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 30 Aug 2022 14:24:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Aug 2022 00:24:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Aug 2022 00:24:36 +0300
Message-Id: <20220830212436.2021-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Allow more varied alternate fixed
 modes for panels
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

On some systems the panel reports alternate modes with
different blanking periods. If the EDID reports them and VBT
doesn't tell us otherwise then I can't really see why they
should be rejected. So allow their use for the purposes of
static DRRS.

For seamless DRRS we still require a much more exact match
of course. But that logic only kicks in when selecting the
downclock mode (or in the future when determining whether
we can do a seamless refresh rate change due to a user
modeset).

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6374
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 25 ++++++----------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 237a40623dd7..cb44984bb9a2 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -81,15 +81,14 @@ static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
 		mode->clock != preferred_mode->clock;
 }
 
-static bool is_alt_vrr_mode(const struct drm_display_mode *mode,
-			    const struct drm_display_mode *preferred_mode)
+static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
+			      const struct drm_display_mode *preferred_mode)
 {
 	return drm_mode_match(mode, preferred_mode,
 			      DRM_MODE_MATCH_FLAGS |
 			      DRM_MODE_MATCH_3D_FLAGS) &&
 		mode->hdisplay == preferred_mode->hdisplay &&
-		mode->vdisplay == preferred_mode->vdisplay &&
-		mode->clock != preferred_mode->clock;
+		mode->vdisplay == preferred_mode->vdisplay;
 }
 
 const struct drm_display_mode *
@@ -172,19 +171,7 @@ int intel_panel_compute_config(struct intel_connector *connector,
 	return 0;
 }
 
-static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
-			      const struct drm_display_mode *preferred_mode,
-			      bool has_vrr)
-{
-	/* is_alt_drrs_mode() is a subset of is_alt_vrr_mode() */
-	if (has_vrr)
-		return is_alt_vrr_mode(mode, preferred_mode);
-	else
-		return is_alt_drrs_mode(mode, preferred_mode);
-}
-
-static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connector,
-						 bool has_vrr)
+static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *preferred_mode =
@@ -192,7 +179,7 @@ static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connect
 	struct drm_display_mode *mode, *next;
 
 	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
-		if (!is_alt_fixed_mode(mode, preferred_mode, has_vrr))
+		if (!is_alt_fixed_mode(mode, preferred_mode))
 			continue;
 
 		drm_dbg_kms(&dev_priv->drm,
@@ -255,7 +242,7 @@ void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
 {
 	intel_panel_add_edid_preferred_mode(connector);
 	if (intel_panel_preferred_fixed_mode(connector) && (has_drrs || has_vrr))
-		intel_panel_add_edid_alt_fixed_modes(connector, has_vrr);
+		intel_panel_add_edid_alt_fixed_modes(connector);
 	intel_panel_destroy_probed_modes(connector);
 }
 
-- 
2.35.1


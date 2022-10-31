Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19438614008
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 22:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FC6B10E187;
	Mon, 31 Oct 2022 21:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C1410E087
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 21:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667252445; x=1698788445;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1Tu2dYF0pbj1dW0kdV+apPPaxaFkH3OYYaCg86kB6b0=;
 b=W7AwqQj86FVzN3inRiW4PS7uUp0ZzzthhtQPXSWjq4Sg3ggA59dVnLrR
 WkjxLJdRQg0pTuLs0lZH1gtXULNVa85N2pkq35oDTKr7U6lN0HY9eFLas
 GB5MW5rh8Ysop1z60QaCw9fwdeV3Gs/34A7YsbJbkH7aX68jb0lXqBgzO
 UtmtzvvvnKhXBO/W0EhzD0nDSNhUFzhsyFt8xWHJ05EIaLN0FEsZWoyJb
 K9vgBPMsyAaSMQaU2m6E72uT/dn0LTvAiqupvPAT4USJqW15rMFUfe9ak
 KbVXvnJfarWgBpcMIXMwEcGgOzbx5ZJrY6ddbFloMwQLgli/jYlFb5WeT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288719230"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="288719230"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 14:40:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="664939299"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="664939299"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 31 Oct 2022 14:40:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 23:40:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 23:40:37 +0200
Message-Id: <20221031214037.1636-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
References: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Switch
 intel_connector_needs_modeset() to drm types
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

intel_connector_needs_modeset() currently uses a mix of drm_
and intel_ types. But it doesn't actually need anything from
the intel_ stuff, so seems better to switch the whole thing
over to the drm_ types. Should help anyone who wants to steal
it as well :)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c  | 11 +++++------
 drivers/gpu/drm/i915/display/intel_atomic.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
 5 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 6621aa245caf..f3fe2889bde3 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -175,18 +175,17 @@ intel_digital_connector_duplicate_state(struct drm_connector *connector)
  * @connector: the connector
  */
 bool
-intel_connector_needs_modeset(struct intel_atomic_state *state,
+intel_connector_needs_modeset(struct drm_atomic_state *state,
 			      struct drm_connector *connector)
 {
 	const struct drm_connector_state *old_conn_state, *new_conn_state;
 
-	old_conn_state = drm_atomic_get_old_connector_state(&state->base, connector);
-	new_conn_state = drm_atomic_get_new_connector_state(&state->base, connector);
+	old_conn_state = drm_atomic_get_old_connector_state(state, connector);
+	new_conn_state = drm_atomic_get_new_connector_state(state, connector);
 
 	return old_conn_state->crtc != new_conn_state->crtc ||
-	       (new_conn_state->crtc &&
-		drm_atomic_crtc_needs_modeset(drm_atomic_get_new_crtc_state(&state->base,
-									    new_conn_state->crtc)));
+		(new_conn_state->crtc &&
+		 drm_atomic_crtc_needs_modeset(drm_atomic_get_new_crtc_state(state, new_conn_state->crtc)));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
index 1dc439983dd9..8829b6f58aee 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic.h
@@ -33,7 +33,7 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 					 struct drm_atomic_state *state);
 struct drm_connector_state *
 intel_digital_connector_duplicate_state(struct drm_connector *connector);
-bool intel_connector_needs_modeset(struct intel_atomic_state *state,
+bool intel_connector_needs_modeset(struct drm_atomic_state *state,
 				   struct drm_connector *connector);
 bool intel_any_crtc_needs_modeset(struct intel_atomic_state *state);
 struct intel_digital_connector_state *
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2d91c59a827d..1a16625ce058 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1517,7 +1517,7 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 		struct intel_encoder *encoder;
 		struct intel_crtc *crtc;
 
-		if (!intel_connector_needs_modeset(state, connector))
+		if (!intel_connector_needs_modeset(&state->base, connector))
 			continue;
 
 		intel_connector = to_intel_connector(connector);
@@ -1546,7 +1546,7 @@ static void intel_encoders_update_complete(struct intel_atomic_state *state)
 		struct intel_encoder *encoder;
 		struct intel_crtc *crtc;
 
-		if (!intel_connector_needs_modeset(state, connector))
+		if (!intel_connector_needs_modeset(&state->base, connector))
 			continue;
 
 		intel_connector = to_intel_connector(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..7c740463e9b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5028,7 +5028,7 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 	if (DISPLAY_VER(dev_priv) < 9)
 		return 0;
 
-	if (!intel_connector_needs_modeset(state, conn))
+	if (!intel_connector_needs_modeset(&state->base, conn))
 		return 0;
 
 	if (conn->has_tile) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index cd4e61026d98..1220776eafc3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -269,7 +269,7 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
 	if (DISPLAY_VER(dev_priv) < 12)
 		return  0;
 
-	if (!intel_connector_needs_modeset(state, &connector->base))
+	if (!intel_connector_needs_modeset(&state->base, &connector->base))
 		return 0;
 
 	drm_connector_list_iter_begin(&dev_priv->drm, &connector_list_iter);
-- 
2.37.4


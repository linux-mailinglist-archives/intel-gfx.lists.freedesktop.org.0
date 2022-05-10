Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8812552126B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F4A10EB4F;
	Tue, 10 May 2022 10:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A66710F081
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179368; x=1683715368;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kN1e8G0iCBsdFbTSTveyFxUuw5+j1XGgKcOxPvzWmk4=;
 b=Jj1VTbnC9BJZVjT5/TepmDqmZMDG9pLEHK/p+iHBSfhLEngxiYLt0471
 hOJsB0zABw7vC+EY0nLZ8zwTpk88A2ZBuPFSLVcljfQvQkitDGDIRwQfc
 r2qugMe4vByDO9bo99QMsQMVEwNpSQHcqbi1492K+RFTOD5lBchRjs+vo
 rfQHBCE3J2nXgSK4puzHjTEkO5tzB0oLoyPkMwKRv9DkxwTt1kJBYqSgN
 6dzJGuQI4BIKEtA6d3TSDS2/VPJyfwuqA81vGjrOAkxWwC/846bZuG5NX
 jxW0WqYxluEZrrZSJ7k9UOn497D2aydLIDx4I1k8MAw81AwppATvlQUmZ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="266920778"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="266920778"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:42:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="657597245"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 10 May 2022 03:42:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:42:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:28 +0300
Message-Id: <20220510104242.6099-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/15] drm/i915: Pass intel_connector to
 intel_vrr_is_capable()
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

Pass intel_connector instead of drm_connector to
intel_vrr_is_capable(). Will result in less ugly casts.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_vrr.h |  4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4a79c11fd25..8637959b5de2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4524,7 +4524,7 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
 	edid = intel_dp_get_edid(intel_dp);
 	connector->detect_edid = edid;
 
-	vrr_capable = intel_vrr_is_capable(&connector->base);
+	vrr_capable = intel_vrr_is_capable(connector);
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
 		    connector->base.base.id, connector->base.name, str_yes_no(vrr_capable));
 	drm_connector_set_vrr_capable_property(&connector->base, vrr_capable);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 396f2f994fa0..081e52dd6c4e 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,17 +9,17 @@
 #include "intel_display_types.h"
 #include "intel_vrr.h"
 
-bool intel_vrr_is_capable(struct drm_connector *connector)
+bool intel_vrr_is_capable(struct intel_connector *connector)
 {
+	const struct drm_display_info *info = &connector->base.display_info;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp;
-	const struct drm_display_info *info = &connector->display_info;
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 
-	if (connector->connector_type != DRM_MODE_CONNECTOR_eDP &&
-	    connector->connector_type != DRM_MODE_CONNECTOR_DisplayPort)
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
+	    connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort)
 		return false;
 
-	intel_dp = intel_attached_dp(to_intel_connector(connector));
+	intel_dp = intel_attached_dp(connector);
 	/*
 	 * DP Sink is capable of VRR video timings if
 	 * Ignore MSA bit is set in DPCD.
@@ -97,7 +97,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
-	if (!intel_vrr_is_capable(&connector->base))
+	if (!intel_vrr_is_capable(connector))
 		return;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 1c2da572693d..9fda1135b0dd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -8,15 +8,15 @@
 
 #include <linux/types.h>
 
-struct drm_connector;
 struct drm_connector_state;
 struct intel_atomic_state;
+struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dp;
 struct intel_encoder;
 
-bool intel_vrr_is_capable(struct drm_connector *connector);
+bool intel_vrr_is_capable(struct intel_connector *connector);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-- 
2.35.1


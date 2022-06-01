Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D34A853A9D9
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 17:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107F110EA63;
	Wed,  1 Jun 2022 15:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597D510EA63
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 15:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654096756; x=1685632756;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iFJJqDKAZehhdny+HQxk4WZcVx/6U8MewcBrOJ6Zw9Q=;
 b=Oz8ocdAh+BTZqjpyBO2ytMqUZJM+j/vvwIw/Gbe5vv2YWCBbgwyMsXa2
 +rfWyBYcvIMU7/8XFD274Juspu3QFVdQ9kZHUoIeOzvRrPjIaWX4M4Ayk
 H0iQl6dwvbu1X1Eo3Klovqh9GmmwPr9O4Reqxzueo7vqj8XjzqPm91VIS
 xmB1ctbpF9WVbxWoKJTqU6+3Xm7h3IZ/fmxrIcYYdGSFiK6KXdZCZO3u4
 WXY5lLO3xyvgF3DoREGE/LS6StR1dz2dHytzEehiyAMW7zX6bjNWb0rSa
 x8eTBaDed6TeXxiHNlz9RtgCzT5PvRQceBV2/EQXvvF/blo54lJJHZBzK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="257693257"
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="257693257"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 08:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="576987588"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 01 Jun 2022 08:19:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jun 2022 18:19:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jun 2022 18:19:05 +0300
Message-Id: <20220601151907.18725-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Initialize eDP source rates after
 per-panel VBT parsing
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

We'll need to know the VBT panel_type before we can determine the
maximum link rate for eDP. To that end move
intel_dp_set_source_rates() & co. to be called after the per-panel
VBT parsing has been done.

I'm not immediately spotting anything that would consult the link
rate arrays before this, so seems safe enough.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b8e2d3cd4d68..03af93ef9e93 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2852,9 +2852,6 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 		intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
 
-	intel_dp_set_common_rates(intel_dp);
-	intel_dp_reset_max_link_params(intel_dp);
-
 	/* Read the eDP DSC DPCD registers */
 	if (DISPLAY_VER(dev_priv) >= 10)
 		intel_dp_get_dsc_sink_cap(intel_dp);
@@ -5342,11 +5339,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		type = DRM_MODE_CONNECTOR_DisplayPort;
 	}
 
-	intel_dp_set_source_rates(intel_dp);
 	intel_dp_set_default_sink_rates(intel_dp);
 	intel_dp_set_default_max_sink_lane_count(intel_dp);
-	intel_dp_set_common_rates(intel_dp);
-	intel_dp_reset_max_link_params(intel_dp);
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
@@ -5384,6 +5378,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		goto fail;
 	}
 
+	intel_dp_set_source_rates(intel_dp);
+	intel_dp_set_common_rates(intel_dp);
+	intel_dp_reset_max_link_params(intel_dp);
+
 	intel_dp_add_properties(intel_dp, connector);
 
 	if (is_hdcp_supported(dev_priv, port) && !intel_dp_is_edp(intel_dp)) {
-- 
2.35.1


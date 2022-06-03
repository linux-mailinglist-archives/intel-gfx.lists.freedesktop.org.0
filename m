Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 385E353CD9D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 18:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71ADB10FC12;
	Fri,  3 Jun 2022 16:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F2110FC12
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 16:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654275525; x=1685811525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f8ynvlsawhDv/9ppWI2KRHOoLnrMoC0bMN7idmddjHw=;
 b=CM1ZlU758xT2FetA2iDk6fDN/ask7YSIZrO5UZaJy9sUxz94ypzkrvTN
 jQgWDsVRiEpbIP268ckv4i5IQBJGNjrm2vmnll+2CHydQuIcMgf7DJ+nB
 rpg8eNEKqD/rh/jgXQRNoZ3XVw6hl7BKMCi3ebBY8AwN9mBBFWNzuc27P
 IX6fSJY4EJdA7KZ0yDXnFj+YdC8yrMaeD3k/jl3vYXEFMHzrKQmxsnCA1
 CHOS5Jmi4GYCj3yJ95fm+NgktPe50vVCXiOHN6fGPB+w6Gyy2232AvyfS
 GZYEyHWClPRXgXuD3w888Z7u8rz3tAjjoT64l1r4DUxVS3uSHTiTowkmq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10367"; a="258381130"
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="258381130"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 09:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="681213642"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 03 Jun 2022 09:58:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Jun 2022 19:58:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 19:58:41 +0300
Message-Id: <20220603165841.15481-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601151907.18725-2-ville.syrjala@linux.intel.com>
References: <20220601151907.18725-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Initialize eDP source rates
 after per-panel VBT parsing
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We'll need to know the VBT panel_type before we can determine the
maximum link rate for eDP. To that end move
intel_dp_set_source_rates() & co. to be called after the per-panel
VBT parsing has been done.

intel_dp_mst_encoder_init() depends on the source rates so we'll
have to do it a bit later as well.

v2: Fix the intel_dp_mst_encoder_init() oops

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b8e2d3cd4d68..60b89a722bd8 100644
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
@@ -5374,16 +5368,19 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	else
 		intel_connector->get_hw_state = intel_connector_get_hw_state;
 
-	/* init MST on ports that can support it */
-	intel_dp_mst_encoder_init(dig_port,
-				  intel_connector->base.base.id);
-
 	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
 		intel_dp_aux_fini(intel_dp);
-		intel_dp_mst_encoder_cleanup(dig_port);
 		goto fail;
 	}
 
+	intel_dp_set_source_rates(intel_dp);
+	intel_dp_set_common_rates(intel_dp);
+	intel_dp_reset_max_link_params(intel_dp);
+
+	/* init MST on ports that can support it */
+	intel_dp_mst_encoder_init(dig_port,
+				  intel_connector->base.base.id);
+
 	intel_dp_add_properties(intel_dp, connector);
 
 	if (is_hdcp_supported(dev_priv, port) && !intel_dp_is_edp(intel_dp)) {
-- 
2.35.1


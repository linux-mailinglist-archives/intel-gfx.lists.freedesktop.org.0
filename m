Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937944E3DF8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8074C10E55C;
	Tue, 22 Mar 2022 12:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ACCF10E55C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950434; x=1679486434;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1k01XVi5PwICq1RZPZZGKfpYZA5g1Ux2NENOIeDv2Eg=;
 b=BcTWrso6Mju213PCV9HZrJPIzSPnum7N7p11zS84UOEIzdW/ZjgwhqEC
 FGHLZhdztKN2AxJ3oBZlNutoJ6U3nmSMLC0Ql3HEO0sN0d8v/YG/RBirp
 /B/RM+g4LsexfIue+VI7KFELasqbll/AjoOzUSXaVLBfQrd1v/qxqO7ix
 rGbrzb636tVBUSFitqthRlJwCHdUFK9fEZEV+hIWh2aAeUZn4heT5BcHO
 j5B4O9g7fQeZVXHSCm3XfnQni2f+f/HaD4sXlW0+7wIkkNOU9WXHTbioF
 pKmAiyjhGJiw+E36ze/NWyEIwjFv4qAWFs7IoDEBwuLvBe+8ivj8enRor A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257989539"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="257989539"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="515315540"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga002.jf.intel.com with SMTP; 22 Mar 2022 05:00:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:08 +0200
Message-Id: <20220322120015.28074-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/12] drm/i915/dp: Reorder
 intel_dp_compute_config() a bit
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

Consolidate the double pfit call, and reorder things so that
intel_dp_output_format() and intel_dp_compute_link_config() are
back-to-back. They are intimately related, and will need to be
called twice to properly handle the "4:2:0 also" modes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9720571438e9..a655af1ab359 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1832,15 +1832,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
-	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
-							    adjusted_mode);
-
-	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_panel_fitting(pipe_config, conn_state);
-		if (ret)
-			return ret;
-	}
-
 	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
 
 	fixed_mode = intel_panel_fixed_mode(intel_connector, adjusted_mode);
@@ -1848,10 +1839,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
 		if (ret)
 			return ret;
-
-		ret = intel_panel_fitting(pipe_config, conn_state);
-		if (ret)
-			return ret;
 	}
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
@@ -1867,10 +1854,20 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
+	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
+							    adjusted_mode);
+
 	ret = intel_dp_compute_link_config(encoder, pipe_config, conn_state);
 	if (ret < 0)
 		return ret;
 
+	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
+	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		ret = intel_panel_fitting(pipe_config, conn_state);
+		if (ret)
+			return ret;
+	}
+
 	pipe_config->limited_color_range =
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
-- 
2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 372542975E9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 19:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABEDA6E2ED;
	Fri, 23 Oct 2020 17:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F766E2ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 17:40:41 +0000 (UTC)
IronPort-SDR: Gxu38eyRAA6BBnMTvTpLHPeXxKlNLry5AGCnMTYKtH9q18trjgf5mpoJfwODmPt4tYHkZoFqzu
 Cey6UpoO77fA==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="154668963"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="154668963"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 10:40:40 -0700
IronPort-SDR: PCsDpyO2vvUWTQjaco/rDEbxHuUd07EXta+NJPkbdELfAYTfeyVIV8Ytgmawfyd1T6l5BU/2oE
 YiVM/5/IuiCw==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="321808574"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 23 Oct 2020 10:40:40 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Oct 2020 10:42:19 -0700
Message-Id: <20201023174219.7335-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-12-manasi.d.navare@intel.com>
References: <20201022222709.29386-12-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/11] drm/i915/display: Add HW state readout
 for VRR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This functions gets the VRR config from the VRR registers
to match the crtc state variables for VRR.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
 3 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f70cc3b2a1a4..30904e466cb5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -56,6 +56,7 @@
 #include "display/intel_sdvo.h"
 #include "display/intel_tv.h"
 #include "display/intel_vdsc.h"
+#include "display/intel_vrr.h"
 
 #include "gt/intel_rps.h"
 
@@ -11387,6 +11388,9 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		intel_get_transcoder_timings(crtc, pipe_config);
 	}
 
+	if (INTEL_GEN(dev_priv) >= 12)
+		intel_vrr_get_config(crtc, pipe_config);
+
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	if (IS_HASWELL(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5075ecb9b5a7..aede2c86cc71 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -141,3 +141,20 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		pipe_name(pipe));
 }
 
+void intel_vrr_get_config(struct intel_crtc *crtc,
+			  struct intel_crtc_state *pipe_config)
+{
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum pipe pipe = crtc->pipe;
+	u32 trans_vrr_ctl;
+
+	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(pipe));
+	pipe_config->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	if (!pipe_config->vrr.enable)
+		return;
+
+	pipe_config->vrr.vtotalmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(pipe)) + 1;
+	pipe_config->vrr.vtotalmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(pipe)) + 1;
+}
+
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 8c6fd2d1bee5..2c679377c53b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -13,6 +13,7 @@ struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_dp;
+struct intel_crtc;
 
 bool intel_is_vrr_capable(struct drm_connector *connector);
 void intel_vrr_compute_config(struct intel_dp *intel_dp,
@@ -21,5 +22,7 @@ void intel_vrr_enable(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
+void intel_vrr_get_config(struct intel_crtc *crtc,
+			  struct intel_crtc_state *pipe_config);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

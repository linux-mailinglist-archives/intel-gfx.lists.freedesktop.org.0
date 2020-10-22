Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0759729671E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63CE06E413;
	Thu, 22 Oct 2020 22:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F3F6E40B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:43 +0000 (UTC)
IronPort-SDR: THo+NXJHXx2nh01txS6V1tsfiW2wcjVxFcMrYfT8aYqQ0S4QfZxti5Q/I+AqXendQFAHlrGAH0
 rVALyQBLUVLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386825"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386825"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: r/x85D7i3qYK7uI/CBDE0uXOefpgsJtDu4vB20r5a63PbIh0a3SMw38svWWL4WCYyQpz3ePhxb
 SzjajzNxgIZg==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153976"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:27:09 -0700
Message-Id: <20201022222709.29386-12-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-1-manasi.d.navare@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/display: Add HW state readout
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
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 3 files changed, 23 insertions(+)

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
index 8c6fd2d1bee5..dc20359d0821 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -21,5 +21,7 @@ void intel_vrr_enable(struct intel_encoder *encoder,
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

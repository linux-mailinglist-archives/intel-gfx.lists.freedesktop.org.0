Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9CB2CE307
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 00:51:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2226E0DF;
	Thu,  3 Dec 2020 23:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D7E6E0DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 23:51:04 +0000 (UTC)
IronPort-SDR: rkj3SZHxmrBsxSbgde0oKSAIjHTTo1PpP30/WENLbPq6glIiJdFTK+coqte1/9Jm1TI01pMVaL
 hdXfiuJtOyLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="161067213"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="161067213"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 15:51:03 -0800
IronPort-SDR: XY903eZvL9TUqWmAQuyGgAu1IsgAxFh6SYg9KLF4TlVNgRZvEXLvIKjDA1bsfGMYm7h17ZqysU
 4Vi0V22P9XzQ==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="550716513"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 03 Dec 2020 15:51:03 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 15:53:58 -0800
Message-Id: <20201203235358.18041-9-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201203235358.18041-1-manasi.d.navare@intel.com>
References: <20201203235358.18041-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 9/9] drm/i915/display: Add HW state readout
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

v2:
* Rebase (Manasi)
* Use HAS_VRR (Jani N)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 +++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fa452eb3adb8..d5b934ecb30c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11449,6 +11449,9 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		intel_get_transcoder_timings(crtc, pipe_config);
 	}
 
+	if (HAS_VRR(dev_priv))
+		intel_vrr_get_config(crtc, pipe_config);
+
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	if (IS_HASWELL(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a3edfadb50f1..9b867f629f86 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -149,3 +149,20 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	drm_dbg_kms(&dev_priv->drm, "Disabling VRR on pipe %c\n",
 		    pipe_name(pipe));
 }
+
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
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 5d3def024006..ae01eef6947f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -14,6 +14,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dp;
 struct intel_encoder;
+struct intel_crtc;
 
 bool intel_vrr_is_capable(struct drm_connector *connector);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
@@ -23,5 +24,7 @@ void intel_vrr_enable(struct intel_encoder *encoder,
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

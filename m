Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B92E41568AD
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 04:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1FD6E517;
	Sun,  9 Feb 2020 03:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83ACE6E505;
 Sun,  9 Feb 2020 03:53:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Feb 2020 19:53:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,419,1574150400"; d="scan'208";a="221210496"
Received: from rrcarnag-mobl.amr.corp.intel.com (HELO
 helsinki.ger.corp.intel.com) ([10.252.14.133])
 by orsmga007.jf.intel.com with ESMTP; 08 Feb 2020 19:53:51 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  9 Feb 2020 05:53:30 +0200
Message-Id: <20200209035345.357436-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200209035345.357436-1-gwan-gyeong.mun@intel.com>
References: <20200209035345.357436-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 03/18] drm/i915/dp: Add compute routine for
 DP HDR Metadata Infoframe SDP
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It stores computed dp hdr metadata infoframe sdp to infoframes.drm of
crtc state. It referenced intel_hdmi_compute_drm_infoframe().

While computing, we'll also fill out the infoframes.enable bitmask
appropriately.

v2: Wrap a long line.
v4: Use struct drm_device logging macros
v5: Fix typo [Uma]

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 499377bf2891..472ce3203a09 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2469,6 +2469,29 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 					 &crtc_state->infoframes.vsc);
 }
 
+static void
+intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
+					    struct intel_crtc_state *crtc_state,
+					    const struct drm_connector_state *conn_state)
+{
+	int ret;
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct hdmi_drm_infoframe *drm_infoframe = &crtc_state->infoframes.drm.drm;
+
+	if (!conn_state->hdr_output_metadata)
+		return;
+
+	ret = drm_hdmi_infoframe_set_hdr_metadata(drm_infoframe, conn_state);
+
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm, "couldn't set HDR metadata in infoframe\n");
+		return;
+	}
+
+	crtc_state->infoframes.enable |=
+		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -2575,6 +2598,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_psr_compute_config(intel_dp, pipe_config);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
+	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
 	return 0;
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

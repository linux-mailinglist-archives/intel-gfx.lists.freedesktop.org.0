Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53F714F412
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:47:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8196FC03;
	Fri, 31 Jan 2020 21:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3F06FC03;
 Fri, 31 Jan 2020 21:47:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 13:47:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="262691456"
Received: from helsinki.fi.intel.com ([10.237.66.145])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2020 13:47:10 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 23:46:47 +0200
Message-Id: <20200131214701.1085737-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
References: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/18] drm/i915/dp: Add compute routine for DP
 HDR Metadata Infoframe SDP
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

While computing, we'll also fill out the inforames.enable bitmask
appropriately.

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 705d36b548b1..64e697445085 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2463,6 +2463,26 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 					 &crtc_state->infoframes.vsc);
 }
 
+static void
+intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_crtc_state *crtc_state,
+					    const struct drm_connector_state *conn_state)
+{
+	int ret;
+	struct hdmi_drm_infoframe *drm_infoframe = &crtc_state->infoframes.drm.drm;
+
+	if (!conn_state->hdr_output_metadata)
+		return;
+
+	ret = drm_hdmi_infoframe_set_hdr_metadata(drm_infoframe, conn_state);
+
+	if (ret) {
+		DRM_DEBUG_KMS("couldn't set HDR metadata in infoframe\n");
+		return;
+	}
+
+	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -2569,6 +2589,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_psr_compute_config(intel_dp, pipe_config);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
+	intel_dp_compute_hdr_metadata_infoframe_sdp(pipe_config, conn_state);
 
 	return 0;
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

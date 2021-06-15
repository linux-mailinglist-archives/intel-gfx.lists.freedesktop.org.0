Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A39EB3A825A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C196E40B;
	Tue, 15 Jun 2021 14:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [159.69.62.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830F76E3E3;
 Tue, 15 Jun 2021 14:14:40 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 4669AC80095;
 Tue, 15 Jun 2021 16:14:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10026)
 with LMTP id BuHW6cdI2jkT; Tue, 15 Jun 2021 16:14:39 +0200 (CEST)
Received: from wsembach-tuxedo.fritz.box
 (p200300e37F3949009F7CF2Abd5Da2787.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f39:4900:9f7c:f2ab:d5da:2787])
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPA id D584EC800B9;
 Tue, 15 Jun 2021 16:14:38 +0200 (CEST)
From: Werner Sembach <wse@tuxedocomputers.com>
To: harry.wentland@amd.com, sunpeng.li@amd.com, alexander.deucher@amd.com,
 christian.koenig@amd.com, airlied@linux.ie, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 15 Jun 2021 16:14:25 +0200
Message-Id: <20210615141426.6001-15-wse@tuxedocomputers.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210615141426.6001-1-wse@tuxedocomputers.com>
References: <20210615141426.6001-1-wse@tuxedocomputers.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 14/14] drm/i915/display: Add handling for new
 "preferred color format" property
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

This commit implements the "preferred color format" drm property for the Intel GPU
driver.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 5 +++++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d648582d0786..5c83ae624ad1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -616,9 +616,12 @@ intel_dp_output_format(struct drm_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	const struct drm_display_info *info = &connector->display_info;
+	const struct drm_connector_state *connector_state = connector->state;
 
 	if (!connector->ycbcr_420_allowed ||
-	    !drm_mode_is_420_only(info, mode))
+	    !(drm_mode_is_420_only(info, mode) ||
+	    (drm_mode_is_420_also(info, mode) && connector_state &&
+	    connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420)))
 		return INTEL_OUTPUT_FORMAT_RGB;
 
 	if (intel_dp->dfp.rgb_to_ycbcr &&
@@ -4691,12 +4694,14 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 	if (HAS_GMCH(dev_priv)) {
 		drm_connector_attach_max_bpc_property(connector, 6, 10);
 		drm_connector_attach_active_bpc_property(connector, 6, 10);
+		drm_connector_attach_preferred_color_format_property(connector);
 		drm_connector_attach_active_color_format_property(connector);
 		drm_connector_attach_active_color_range_property(connector);
 	}
 	else if (DISPLAY_VER(dev_priv) >= 5) {
 		drm_connector_attach_max_bpc_property(connector, 6, 12);
 		drm_connector_attach_active_bpc_property(connector, 6, 12);
+		drm_connector_attach_preferred_color_format_property(connector);
 		drm_connector_attach_active_color_format_property(connector);
 		drm_connector_attach_active_color_range_property(connector);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index cb876175258f..67f0fb649876 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -856,6 +856,11 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	if (connector->active_bpc_property)
 		drm_connector_attach_active_bpc_property(connector, 6, 12);
 
+	connector->preferred_color_format_property =
+		intel_dp->attached_connector->base.preferred_color_format_property;
+	if (connector->preferred_color_format_property)
+		drm_connector_attach_preferred_color_format_property(connector);
+
 	connector->active_color_format_property =
 		intel_dp->attached_connector->base.active_color_format_property;
 	if (connector->active_color_format_property)
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index dacac23a6c30..0d917d61482d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2153,6 +2153,10 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
+	if (connector->ycbcr_420_allowed && conn_state->preferred_color_format == DRM_COLOR_FORMAT_YCRCB420 &&
+	    drm_mode_is_420_also(&connector->display_info, adjusted_mode))
+		crtc_state->output_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+
 	ret = intel_hdmi_compute_clock(encoder, crtc_state);
 	if (ret) {
 		if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420 &&
@@ -2516,6 +2520,7 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
 	if (!HAS_GMCH(dev_priv)) {
 		drm_connector_attach_max_bpc_property(connector, 8, 12);
 		drm_connector_attach_active_bpc_property(connector, 8, 12);
+		drm_connector_attach_preferred_color_format_property(connector);
 		drm_connector_attach_active_color_format_property(connector);
 		drm_connector_attach_active_color_range_property(connector);
 	}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

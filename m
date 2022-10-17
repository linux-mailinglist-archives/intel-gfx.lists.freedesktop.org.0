Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2F0601122
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 16:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9A910E0B4;
	Mon, 17 Oct 2022 14:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD1F410ED91
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 14:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666017021; x=1697553021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cgES+8XJU6QCOfdEcSoKjo7nUzgI0GM6UKxD4lU/RZE=;
 b=jnF3U7IWfTPR/pWT9lmtsNUaM8A/4/QRyKV1zUsy4uqm/JqXP/cYOkVl
 GOnQ/OGjZ81YpXaGLtiQdK8rPVGv7d4LCBvqT5fbosZShDIAmFHKJ2d+9
 6Yg6XiE44lt+mdDeV8WkMZbanspO7/WzM39hcqMAJksQOl/xXMq13xP+l
 FtePcRYD/SB2V/bh5Qj4eZbXkiH2e0YM0rADiHcM72H9XhU9OA/ayc6EP
 9prMlEWjnGeJ1WWBXkw0ZemYuUOMaCLXTWu7kfLJwIJxoH1aPbP0aCbDz
 fYJXCkDWLkb/AscxzagUx0IUYh4UjpFuu9n7Eg8UAZlTx8l3XDE7MTpMo Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="332348805"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="332348805"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 07:30:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="957353072"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="957353072"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 07:30:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Oct 2022 20:00:38 +0530
Message-Id: <20221017143038.1748319-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Prune Interlace modes for
 Display >=12
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

Defeature Display Interlace support.
Support for interlace modes is removed from Gen 12 onwards.
Pruning the interlace modes for HDMI for Display >=12.
Bspec: 50490

v2: Add check for both DP and HDMI. (Ville)
Get rid of redundant check for interlace mode in modevalid. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 +++++++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1f83ddf13928..3dc197a45f16 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2032,7 +2032,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (HAS_GMCH(dev_priv) &&
+	if ((HAS_GMCH(dev_priv) || DISPLAY_VER(dev_priv) >= 12) &&
 	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return -EINVAL;
 
@@ -5412,7 +5412,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
 	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
 
-	if (!HAS_GMCH(dev_priv))
+	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
 		connector->interlace_allowed = true;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e21deb6ef7fa..05ab0a4f6d39 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2244,6 +2244,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (DISPLAY_VER(dev_priv) >= 12 &&
+	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
 							 conn_state);
@@ -2953,7 +2957,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 				    ddc);
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
-	connector->interlace_allowed = true;
+	if (DISPLAY_VER(dev_priv) < 12)
+		connector->interlace_allowed = true;
+
 	connector->stereo_allowed = true;
 
 	if (DISPLAY_VER(dev_priv) >= 10)
-- 
2.25.1


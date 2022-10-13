Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DB05FD41B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 07:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F8310E05D;
	Thu, 13 Oct 2022 05:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C4910E05D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 05:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665637869; x=1697173869;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dQJsae9wqZVEEhvG4Qhqou01Kr8uURCxaj1JVfuyrnk=;
 b=NXqRBDNPvlMtRWAcQiFUHeRHO2x8++rbnjji9NAGvnsUqV5hzwi2IikK
 X2DKdy2R4rSzEjtWWZcDfj4dXNM/rNw5aifWr48o+0f6AnIQHD+DD/W4w
 KT1SE4dy04JIUoslVWh58r2WtSX6WTPiIpf7mOdAR3ad0EqMHaN1hlGix
 v3Gk3AWuigCeLm4EmJi6wz9jFkGFiDaK0sYzmOUk68OEv7whPmYEJUraa
 d/kVDGWSzGM4UGCIO8BvRwHw4gLiDCfYyIplwuIRcXcEWlKsrgHkLEHe2
 fGMBXXIoJYjhcVIJ1Ud2tvXl2ax3q525bcHU20I+e6eL/JFpNLQhJZkyi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="288247954"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="288247954"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 22:11:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="695739177"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="695739177"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 22:11:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 10:41:24 +0530
Message-Id: <20221013051124.1093410-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune Interlaced modes for
 Display >= 12
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
Support for Interlace modes is removed from Gen 12 onwards.
For DP we do not support interlace modes (except for very old
platforms). Pruning the interlaced modes for HDMI for Display >=12.
Bspec: 50490

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93519fb23d9d..791bfb062c49 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1990,6 +1990,9 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
+	if (DISPLAY_VER(dev_priv) >= 12 && mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return MODE_NO_INTERLACE;
+
 	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
 		clock *= 2;
 
@@ -2247,6 +2250,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (DISPLAY_VER(dev_priv) >= 12 &&
+	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_hdmi,
 							 conn_state);
@@ -2956,7 +2963,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
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


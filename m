Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B02C4F9E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B9C6E7F5;
	Thu, 26 Nov 2020 07:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53556E5D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:24 +0000 (UTC)
IronPort-SDR: qWGdc7RyS54dHGdAvHG9bxdSx5yOoD3IsvFAiixCrqdvalKs9hL3gN9YJuKERdK2hTG1mOVCTp
 RNh/sewuZd+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741356"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741356"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:24 -0800
IronPort-SDR: AdPcB/4QozWP1nM0bIoXJLdWseuwjH9Xhc01i43kB3B6gcop8GCETAKq0j8IpAu8Q7fUjRkIiw
 Gz8tzRkq56Pg==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448094"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:22 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:38 +0530
Message-Id: <20201126081445.29759-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 06/13] drm/i915/display: Attach content type
 property for LSPCON
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

Content type is supported on HDMI sink devices. Attached the
property for the same for LSPCON based devices.

v2: Added the content type programming when we are attaching
the property to connector, as suggested by Ville.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5aaa06d73609..c4bbebc8c23d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6803,6 +6803,7 @@ intel_dp_connector_register(struct drm_connector *connector)
 			drm_object_attach_property(&connector->base,
 						   connector->dev->mode_config.hdr_output_metadata_property,
 						   0);
+		drm_connector_attach_content_type_property(connector);
 	}
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 9552dfc55e20..0a4c05d67108 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -539,6 +539,8 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 		frame.avi.ycc_quantization_range = HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
 	}
 
+	drm_hdmi_avi_infoframe_content_type(&frame.avi, conn_state);
+
 	ret = hdmi_infoframe_pack(&frame, buf, sizeof(buf));
 	if (ret < 0) {
 		DRM_ERROR("Failed to pack AVI IF\n");
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

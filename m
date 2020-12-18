Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C7C2DE0ED
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 11:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D2F6E08C;
	Fri, 18 Dec 2020 10:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E24B76E0B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 10:25:50 +0000 (UTC)
IronPort-SDR: uqKIE3SVqSM7J9llbt7yvbmAUIemgUxRg4bRJ5iqPu6N9JLsPUayIU93PVasaS+x6b7d1T4Z62
 7/VEvT6bBDlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="172848368"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="172848368"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 02:25:50 -0800
IronPort-SDR: QxCGiL6IA6pz6E5U3yuMiDdc6RFRE3JgMe6FTJhUXtqOXQKCgqRI4/03Mzc5lNmWQkaSVNJflm
 m0nczHlYdBhw==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="340335046"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2020 02:25:48 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 16:03:35 +0530
Message-Id: <20201218103337.31068-2-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201218103337.31068-1-swati2.sharma@intel.com>
References: <20201218103337.31068-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC][PATCH 1/3] drm/i915: Export
 intel_hdmi_compute_avi_infoframe()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of re-writing the avi_infoframe_compute func in intel_dp;
exporting hdmi_compute_avi_infoframe func so that it can be called
directly while encapsulating AVI infoframes in GMP dip.

This is required when HDMI 2.1 PCON (dp to hdmi) is used and we need
to send AVI infoframes to PCON in source control mode.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_hdmi.h | 3 +++
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 41eb1c175a0e..537739f9f984 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -716,10 +716,9 @@ void intel_read_infoframe(struct intel_encoder *encoder,
 			    frame->any.type, type);
 }
 
-static bool
-intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
-				 struct intel_crtc_state *crtc_state,
-				 struct drm_connector_state *conn_state)
+bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state,
+				      struct drm_connector_state *conn_state)
 {
 	struct hdmi_avi_infoframe *frame = &crtc_state->infoframes.avi.avi;
 	const struct drm_display_mode *adjusted_mode =
@@ -772,6 +771,7 @@ intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
 
 	return true;
 }
+EXPORT_SYMBOL(intel_hdmi_compute_avi_infoframe);
 
 static bool
 intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index fa1a9b030850..b8e6630d01e3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -57,5 +57,8 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int src_max_slices, int src_max_slice_width,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
+bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
+                                      struct intel_crtc_state *crtc_state,
+                                      struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_HDMI_H__ */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A14A3EB12B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF4B6E546;
	Fri, 13 Aug 2021 07:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9596E544
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:14:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215509485"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215509485"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="571727763"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2021 00:14:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Swati Sharma <swati2.sharma@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Fri, 13 Aug 2021 12:31:16 +0530
Message-Id: <20210813070121.48530-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915: Export
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Swati Sharma <swati2.sharma@intel.com>

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
index b04685bb6439..0fbcdddb7ad5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -702,10 +702,9 @@ void intel_read_infoframe(struct intel_encoder *encoder,
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
@@ -758,6 +757,7 @@ intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
 
 	return true;
 }
+EXPORT_SYMBOL(intel_hdmi_compute_avi_infoframe);
 
 static bool
 intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index b43a180d007e..2bdfd0838753 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -54,5 +54,8 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int src_max_slices, int src_max_slice_width,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
+bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state,
+				      struct drm_connector_state *conn_state);
 
 #endif /* __INTEL_HDMI_H__ */
-- 
2.25.1


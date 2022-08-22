Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D911959BDF0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEA9112411;
	Mon, 22 Aug 2022 10:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B98591123A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661165694; x=1692701694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZgDzaRnqBLrubKzrk+l9vKZDKsYoMNnp3wtwJHmya/g=;
 b=I2deYOUEH/YtfWehnQ0saaCjiadq7IXaMWIk0CUVeDwnKtwBXXqOnj18
 tdsZ0dl0X4+lOyFaJYlsID3OLfD+/opoirvjVAT8eIGl6WPcBjNASz0dL
 0xtVLhfqadWLsvKPBg9A167MW78JfFpA8M3d0rbh6KAWCu1O6j5y/3gCC
 1GySJo1oz6md7CmE91yrbODWEjMvRoFZVENTOLx7104TeFfDNGPqngv40
 6spjuMHCiVkOOnF/xcWwO0OV2yDYLLOAGUtVSW+R1dcqatJpTeRr6tDRS
 LjlY+bXZXtKThaXW6Yroz7SXmxVvlfhrinRRmIm3WM85F0p+n9MiFFL6K g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="280353979"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="280353979"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="585474033"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 16:24:22 +0530
Message-Id: <20220822105426.3521960-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/dp: Add helper to check DSC1.2 for
 HDMI2.1 DFP
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

Add helper function to check if Downstream HDMI 2.1 sink supports
DSC1.2.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32292c0be2bd..fdf82373a22d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -118,6 +118,15 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 
+static bool
+is_dfp_hdmi_sink_dsc_1_2(struct intel_dp *intel_dp)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+
+	return connector->display_info.hdmi.dsc_cap.v_1p2;
+}
+
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
 {
@@ -2393,7 +2402,7 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
 	rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
 	max_frl_rate = max_lanes * rate_per_lane;
 
-	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
+	if (is_dfp_hdmi_sink_dsc_1_2(intel_dp)) {
 		max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
 		dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
 		if (max_dsc_lanes && dsc_rate_per_lane)
@@ -2605,7 +2614,7 @@ intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 	if (!intel_connector)
 		return;
 	connector = &intel_connector->base;
-	hdmi_is_dsc_1_2 = connector->display_info.hdmi.dsc_cap.v_1p2;
+	hdmi_is_dsc_1_2 = is_dfp_hdmi_sink_dsc_1_2(intel_dp);
 
 	if (!drm_dp_pcon_enc_is_dsc_1_2(intel_dp->pcon_dsc_dpcd) ||
 	    !hdmi_is_dsc_1_2)
-- 
2.25.1


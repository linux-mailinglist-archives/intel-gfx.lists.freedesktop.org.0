Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 324A45AE53E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 12:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C0410E5BA;
	Tue,  6 Sep 2022 10:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1656A10E5BA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 10:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662459762; x=1693995762;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=coP6L6PCh6fYzzXdrkTx4/3MFmWxfmnoR4AzlM7HWbw=;
 b=WvvqfRfINWAjhXwV6Dw4P9o25VHa17F3/L6/AHAXb4RyL2VK84fnJlKg
 ZkCS3yqmuwPyQXm4YDF9BsKjBo9xlHcVvtJxfSY+Mn5SSY+f9PZ4l9zwd
 CGOH3V/NHq7u/z2CFD9lw+4IquLSdZPu+pYEaDJ/vvoxdmxQVJsbaSsW3
 UPaDCoQoI8kvzv8gWSEhXSphu9qSQKFJ7VOh41IEwX9dv6Y+7vtckQK/n
 GQ+iS8g5P3WuNehVC3xVmxL2ElHGLwlt6ipevQxSTn6oSlN3tMEjHJtx1
 /3hPaqHcgCpV4XSpIeYjSY+3tKXmowIvVPr4DrlKJwIEj0xRG8d33Io/d Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="294143484"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="294143484"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 03:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="647182081"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 06 Sep 2022 03:22:38 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 13:23:29 +0300
Message-Id: <20220906102329.7073-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix intel_dp_atomic_find_vcpi_slots
 function
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm_dp_atomic_find_vcpi_slots no longer exists and needs
to be used as drm_dp_atomic_find_time_slots.
Also rename the function itself.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: 7ae5ab441402 ("Extract drm_dp_atomic_find_vcpi_slots cycle to separate function")
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8869b7707cda..54a7b31162c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -44,7 +44,7 @@
 #include "intel_hotplug.h"
 #include "skl_scaler.h"
 
-static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
+static int intel_dp_mst_find_time_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
 						int min_bpp,
@@ -64,7 +64,6 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		&crtc_state->hw.adjusted_mode;
 	int bpp, slots = -EINVAL;
 	int ret = 0;
-	int pbn_div;
 
 	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
 	if (IS_ERR(mst_state))
@@ -73,9 +72,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
-	pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
-					   crtc_state->port_clock,
-					   crtc_state->lane_count);
+	mst_state->pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
+						      crtc_state->port_clock,
+						      crtc_state->lane_count);
 
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		crtc_state->pipe_bpp = bpp;
@@ -84,10 +83,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						       dsc ? bpp << 4 : crtc_state->pipe_bpp,
 						       dsc);
 
-		slots = drm_dp_atomic_find_vcpi_slots(state, &intel_dp->mst_mgr,
+		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
-						      crtc_state->pbn,
-						      pbn_div);
+						      crtc_state->pbn);
 		if (slots == -EDEADLK)
 			return slots;
 
@@ -126,7 +124,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int slots = -EINVAL;
 
-	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
+	slots = intel_dp_mst_find_time_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
 						     limits->min_bpp, limits,
 						     conn_state, 2 * 3, false);
 
@@ -184,7 +182,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	drm_dbg_kms(&i915->drm, "DSC Sink supported min bpp %d max bpp %d\n",
 		    min_bpp, max_bpp);
 
-	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
+	slots = intel_dp_mst_find_time_slots_for_bpp(encoder, crtc_state, max_bpp,
 						     min_bpp, limits,
 						     conn_state, 2 * 3, true);
 
-- 
2.37.3


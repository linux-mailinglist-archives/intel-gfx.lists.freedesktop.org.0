Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F779E131D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 07:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7772310E905;
	Tue,  3 Dec 2024 06:05:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nuj5x5I3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54ED10E90C;
 Tue,  3 Dec 2024 06:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733205916; x=1764741916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/sDmkVsBQO56PNET7nCq+SdHjoIDpO+dWbNsDho4rj0=;
 b=Nuj5x5I3FyPpRBEgznx+DY4X1P4GwOG195WNMrhrYsTwXo68I96TEsnD
 JG4otLlZ/+TLxiUJLbN6GTYDoGUG9ORK39k0neks7jyBPsfaweMaER7OE
 fagnaf/zG2YmzP0NONSuZ4/34hGj4CnFBdULrWnIQsHdiJuxnF2Nrg3YV
 MacdXjrwnGCOidigJW0zIV52NYT94SZe14Gukgb/Q2rEkBmYT7WNx7qXm
 fS0fEEZunywrMLMNFsPz/GW07M/NcIblFG7FUTnoOlYbg9ysxzJH5yFSV
 8acWbjyE5Cdldbo11nXWbcwfNKAm1fDcJk83tHwNdbDHXNMCIu5yTuSRN Q==;
X-CSE-ConnectionGUID: SHSdIWOLREOEHO8jLW5Siw==
X-CSE-MsgGUID: 04+Qzb8eRT2kRzQ4VOAkgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="37058861"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="37058861"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 22:05:16 -0800
X-CSE-ConnectionGUID: uaNb32ufTQKZCpqNPZRHCg==
X-CSE-MsgGUID: zHZ1oBNfTzq2chg9pI1n0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="124163870"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa002.jf.intel.com with ESMTP; 02 Dec 2024 22:05:15 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 07/10] drm/i915/display: handle drm-crtc histogram property
 updates
Date: Tue,  3 Dec 2024 11:25:17 +0530
Message-Id: <20241203055520.1704661-8-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241203055520.1704661-1-arun.r.murthy@intel.com>
References: <20241203055520.1704661-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Check for any updates on drm_crtc property histogram_enable and
histogram_iet_updated and call/act accordingly to update histogram or
update the image enhancement LUT data API defined in i915 histogram.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display.c  | 17 ++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 .../gpu/drm/i915/display/intel_histogram.c    | 20 +++++++++++++++++++
 5 files changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 03dc54c802d3..dff130b3565a 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -278,6 +278,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->dsb_color_vblank = NULL;
 	crtc_state->dsb_commit = NULL;
 	crtc_state->use_dsb = false;
+	crtc_state->histogram_updated = false;
 
 	return &crtc_state->uapi;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a2c528d707f4..0c8741ca9a71 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -27,6 +27,7 @@
 #include "intel_drrs.h"
 #include "intel_dsi.h"
 #include "intel_fifo_underrun.h"
+#include "intel_histogram.h"
 #include "intel_pipe_crc.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
@@ -210,6 +211,7 @@ static struct intel_crtc *intel_crtc_alloc(void)
 static void intel_crtc_free(struct intel_crtc *crtc)
 {
 	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
+	intel_histogram_finish(crtc);
 	kfree(crtc);
 }
 
@@ -380,10 +382,15 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
 
+	if (drm_crtc_create_histogram_property(&crtc->base))
+		drm_err(&dev_priv->drm, "Failed to initialize histogram properties\n");
+
 	intel_color_crtc_init(crtc);
 	intel_drrs_crtc_init(crtc);
 	intel_crtc_crc_init(crtc);
 
+	intel_histogram_init(crtc);
+
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
 
 	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9db255bb1230..eeeb59fb39c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -93,6 +93,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
+#include "intel_histogram.h"
 #include "intel_hotplug.h"
 #include "intel_link_bw.h"
 #include "intel_lvds.h"
@@ -4612,6 +4613,12 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	if (crtc_state->histogram_updated) {
+		ret = intel_histogram_atomic_check(crtc);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
@@ -6831,6 +6838,10 @@ int intel_atomic_check(struct drm_device *dev,
 		if (new_crtc_state->uapi.scaling_filter !=
 		    old_crtc_state->uapi.scaling_filter)
 			new_crtc_state->uapi.mode_changed = true;
+
+		if (new_crtc_state->uapi.histogram_enable |=
+				old_crtc_state->uapi.histogram_enable)
+			new_crtc_state->histogram_updated = true;
 	}
 
 	intel_vrr_check_modeset(state);
@@ -7897,6 +7908,12 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);
 		old_crtc_state->dsb_commit = fetch_and_zero(&new_crtc_state->dsb_commit);
+
+		if (new_crtc_state->histogram_updated)
+			intel_histogram_update(crtc, crtc->base.state->histogram_enable);
+		if (new_crtc_state->uapi.histogram_iet_updated)
+			intel_histogram_set_iet_lut(crtc,
+						    new_crtc_state->uapi.histogram_iet);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 351441efd10a..2e8640e84e7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1306,6 +1306,8 @@ struct intel_crtc_state {
 
 	/* LOBF flag */
 	bool has_lobf;
+
+	bool histogram_updated;
 };
 
 enum intel_pipe_crc_source {
diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
index 57bb45b36a03..8f25cfe00ba5 100644
--- a/drivers/gpu/drm/i915/display/intel_histogram.c
+++ b/drivers/gpu/drm/i915/display/intel_histogram.c
@@ -68,6 +68,26 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
 		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
 	for (retry = 0; retry < HISTOGRAM_BIN_READ_RETRY_COUNT; retry++) {
 		if (intel_histogram_get_data(intel_crtc)) {
+			u32 *data;
+			u32 size;
+			struct drm_histogram *hist;
+
+			size = sizeof(u32) * sizeof(histogram->bin_data);
+			data = kzalloc(sizeof(data) * sizeof(histogram->bin_data), GFP_KERNEL);
+			if (!data)
+				return;
+			memcpy(histogram->bin_data, data, size);
+			hist = kzalloc(sizeof(struct drm_histogram), GFP_KERNEL);
+			if (!hist)
+				return;
+			hist->data_ptr = *data;
+			hist->nr_elements = sizeof(histogram->bin_data);
+
+			drm_property_replace_global_blob(display->drm,
+				&intel_crtc->base.state->histogram_data,
+				sizeof(struct drm_histogram),
+				hist, &intel_crtc->base.base,
+				intel_crtc->base.histogram_data_property);
 			/* Notify user for Histogram rediness */
 			if (kobject_uevent_env(&display->drm->primary->kdev->kobj,
 					       KOBJ_CHANGE, histogram_event))
-- 
2.25.1


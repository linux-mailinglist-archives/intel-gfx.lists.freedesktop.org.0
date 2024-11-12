Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811E59C511F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9EF10E595;
	Tue, 12 Nov 2024 08:48:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nAYrFoPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219D410E599;
 Tue, 12 Nov 2024 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401322; x=1762937322;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tJw5jf1UwoQWtl7pacdbkG0EI6YvziiwFxYbm8gv/DY=;
 b=nAYrFoPmV/FWeW7VHfyXduwZWI0Mr6D3M3nvAeukOZ7AkIqKG3G9zgGc
 uXzjWsULHGiCsVh5sT5rypjhxozMqORSdnolVqQ2657SypfVUttb5PmoX
 zaOQaLnoOGBHk2FtGayJsqqQz5wGda44RCcb1J2+ZYELouuM0vacyNeYD
 SSZZ204BZJBkzh+o09tYUcG93ncqvorw86Q33y+bf9j+sFhGODLVUcYbE
 mFJxNWVk1zG7lepG8sO5dBnaEu9M/I1NuhhjHjVPxL+SI2SBqX15ZFFvI
 BRwJpYTws5/JDUY0BhGPsoz3V3PxziJoxsoPllgxaPS7X6x8gMl+sy2gw A==;
X-CSE-ConnectionGUID: sZFsYTpxTmemv35JiBW+/w==
X-CSE-MsgGUID: EaKLiM+jSDanXrspsRI8RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="18835736"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="18835736"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:48:42 -0800
X-CSE-ConnectionGUID: JXaSEMBGQnSb8p65rLFoyg==
X-CSE-MsgGUID: az6ionaLRTmFOnZG/h3snQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87759860"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa009.fm.intel.com with ESMTP; 12 Nov 2024 00:48:41 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [RFC v1 1/4] drm/i915/scaler: Calculate scaler prefill latency
Date: Tue, 12 Nov 2024 14:20:36 +0530
Message-ID: <20241112085039.1258860-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
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

Calculate scaler prefill latency which accounts for time for
each scaler in pipeline.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 39 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h |  1 +
 2 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 7dbc99b02eaa..eec4a5f783fa 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -6,6 +6,7 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_crtc.h"
 #include "intel_fb.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
@@ -839,3 +840,41 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	else
 		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
 }
+
+int skl_calc_scaler_prefill_latency(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	const struct intel_plane_state *plane_state = to_intel_plane_state(plane->base.state);
+	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int scaler_prefill_latency[2];
+	int num_scaler_in_use, count, hscale, vscale, tot_scaler_prefill_usec;
+	int hscan_time = DIV_ROUND_UP(crtc_state->hw.adjusted_mode.htotal * 1000,
+				      crtc_state->hw.adjusted_mode.crtc_clock);
+
+	for (count = 0; count < crtc->num_scalers; count++)
+		if (scaler_state->scalers[count].in_use)
+			num_scaler_in_use++;
+
+	if (!num_scaler_in_use)
+		return 0;
+
+	if (num_scaler_in_use == 2) {
+		hscale = drm_rect_calc_hscale(&plane_state->uapi.src,
+					      &plane_state->uapi.dst,
+					      0, INT_MAX);
+		vscale = drm_rect_calc_vscale(&plane_state->uapi.src,
+					      &plane_state->uapi.dst,
+					      0, INT_MAX);
+		scaler_prefill_latency[1] = 4 * hscan_time * hscale * vscale;
+	}
+
+	/*
+	 * FIXME : When only 1 scaler used, 1st scaler can be downscale/upscale
+	 */
+	scaler_prefill_latency[0] = 4 * hscan_time;
+	tot_scaler_prefill_usec = scaler_prefill_latency[0] + scaler_prefill_latency[1];
+
+	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+					tot_scaler_prefill_usec);
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 63f93ca03c89..cd4d961d3b02 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -34,4 +34,5 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
 
 void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
 
+int skl_calc_scaler_prefill_latency(struct intel_crtc_state *crtc_state);
 #endif
-- 
2.46.0


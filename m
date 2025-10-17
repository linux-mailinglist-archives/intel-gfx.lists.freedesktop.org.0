Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF841BE6633
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 07:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4F710EAFD;
	Fri, 17 Oct 2025 05:15:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itf+i9CQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E4910EB09;
 Fri, 17 Oct 2025 05:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760678113; x=1792214113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GjyF8+HL6YDHWU/1kc3VDDf6aBymPu9kirKOxGbdkwk=;
 b=itf+i9CQbK1BSzFGggghbOyqSmlISS4fB/htbgf4qVXN7+IzKBzlpU7N
 IC/9WVNKaOhs3zSisrDNAfWCEcq8WJ6subQvMx62qHI3Y40FFKmp2ipyM
 vcvLD9JqCfM93ZWFn8jhO9vLdSYHwBsLIfvofRZfZJz9dchG4/HtBWRce
 MrzAuMSoe+SLgD5m2LTbsZfjkGC4oqzbLhFVqQvwUoIvWXSRY/bS4QMvP
 uAPr8Z5DrDedkpIly4Cn/WGYSGPPiPMtxiTxFHWj27kckyP9Dt8hZo2C6
 FP3A65p/jxRlWusGF2mZBTNDwyiqfqBkiDNeFFVCRKwp5LcsOdaU+59Go g==;
X-CSE-ConnectionGUID: VaPdmagLSlmAySB6vLvreg==
X-CSE-MsgGUID: HXfftEzkSDC/tsTmfi1RkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88352613"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="88352613"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:13 -0700
X-CSE-ConnectionGUID: /mPNw0B/RtCtC8c4gPOBdg==
X-CSE-MsgGUID: R3GqVxzhTxSIR9KSUWDzsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182576572"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/5] drm/i915/dp: Check if guardband can accommodate sdp
 latencies
Date: Fri, 17 Oct 2025 10:32:00 +0530
Message-ID: <20251017050202.2211985-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
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

Check if guardband is sufficient for all DP SDP latencies.
If its not, fail .compute_config_late().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3f2c319e3d6f..8ae99cee79d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -93,6 +93,7 @@
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_tc.h"
+#include "intel_vblank.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 
@@ -6980,14 +6981,35 @@ void intel_dp_mst_resume(struct intel_display *display)
 	}
 }
 
+static
+int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int guardband = intel_crtc_vblank_length(crtc_state);
+	int min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
+
+	if (guardband < min_sdp_guardband) {
+		drm_dbg_kms(display->drm, "guardband %d < min sdp guardband %d\n",
+			    guardband, min_sdp_guardband);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 int intel_dp_compute_config_late(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	int ret;
 
 	intel_psr_compute_config_late(intel_dp, crtc_state);
 
+	ret = intel_dp_sdp_compute_config_late(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.45.2


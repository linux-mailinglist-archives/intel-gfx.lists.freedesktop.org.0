Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E799CBE2783
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 11:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E1710E992;
	Thu, 16 Oct 2025 09:43:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B4rCFeTO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918BF10E999;
 Thu, 16 Oct 2025 09:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760607804; x=1792143804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GjyF8+HL6YDHWU/1kc3VDDf6aBymPu9kirKOxGbdkwk=;
 b=B4rCFeTOKyKE+hudQKuCqBjLobSh1fxLY3+K+5uGF648JnKAjjFdXma6
 g32wMU4fTHPcMEYfaFTG9zNccrzuXCaUUpw12f8USKPUcOYZ3gAEfLJod
 RyB8VTuiqzhEP0kYvNi+1HOJV0Ea4kU5d86gnb/8leUj/9n/8H+usNqbC
 vKN9qr2FIfFBDvFjWQmIab8jk/SHL+WHiCH2LJmiFVKgSWQrxJO4Gh0A9
 KnbJlWh9LzBVsVLt3um70MMN4EmlGA4qvMiMfvvSWD2ItPyTrTycKJ7SH
 BJa9jwVxsQA7VNQfPOg/DJCq6zxI5xvig8/eiw6aXnqYJUPJLuv1PiM+j g==;
X-CSE-ConnectionGUID: KNMYtssuQ7mI8c8GtTcz7Q==
X-CSE-MsgGUID: DonJAxKoRMq0DnIA1IPvEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62725268"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62725268"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:24 -0700
X-CSE-ConnectionGUID: 42+s1a3HSOqEfPQQqm5Csw==
X-CSE-MsgGUID: T4lLMMn5TH+01HjQKy6s3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="219570812"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/6] drm/i915/dp: Check if guardband can accommodate sdp
 latencies
Date: Thu, 16 Oct 2025 15:00:08 +0530
Message-ID: <20251016093009.2139105-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
References: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
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


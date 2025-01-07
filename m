Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A246EA03B93
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 10:54:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4219D10E3D3;
	Tue,  7 Jan 2025 09:54:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BxLxPwFE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2974410E3D2;
 Tue,  7 Jan 2025 09:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736243660; x=1767779660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iJlUPDTR7IlSiPXK3dycAPmEh2qqcd7g4e3uPWrf6XM=;
 b=BxLxPwFEYcyH2LhupYAzNEIq0UCkFtasotwNgRvLs4j3N9vn4LJjDzOw
 qla2+NeY/2UJOTGRPswU03OklAasCdV+oMiXA3UBRvLM4ENEE6WL7Ivcn
 Um8Dp9Ggw5hgYSVpvue0qrsXGF8CnxIJq00h4rJNFdZewHJ7B1V7y3vip
 87qTvJbfy+Bav9YRBAKo0BaOXy0M6k6I+rV07EocPE1lsXfanEZvctioV
 t/DaEuN9tbPNZrudUbL7e7Uhf38nft50XfIAkaJuZFk/98nQXYbjvjcV7
 C6rfIRHi2oozemXWh6QBTAglzPyJKCcoxIgrjnSIfQCX+1X4mg+jDIPIK w==;
X-CSE-ConnectionGUID: 9kvE/BQMT3mB55Thv7J+Aw==
X-CSE-MsgGUID: xQ8+LYbbRfebMmS+zlfy7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36298137"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36298137"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 01:54:20 -0800
X-CSE-ConnectionGUID: IJOO2uoiSAK0+Umxu5YJww==
X-CSE-MsgGUID: IcNRvm9USK+h3RnZaNw2HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="102908557"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 01:54:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com
Subject: [PATCH] drm/i915/ddi: write payload for 128b/132b SST
Date: Tue,  7 Jan 2025 11:54:14 +0200
Message-Id: <20250107095414.1244286-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <f27aefb555e1edcf94aea8f78021afb04faf8f33.1735912293.git.jani.nikula@intel.com>
References: <f27aefb555e1edcf94aea8f78021afb04faf8f33.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Write the payload allocation table for 128b/132b SST. Use VCPID 1 and
start from slot 0, with dp_m_n.tu slots.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet. Indeed, we don't yet compute TU for 128b/132b SST.

v2: Handle drm_dp_dpcd_write_payload() failures (Imre)

v3: Include drm_dp_helper.h (kernel test robot)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 44f9bde2cdcc..f8e111d8c3a5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -28,6 +28,7 @@
 #include <linux/iopoll.h>
 #include <linux/string_helpers.h>
 
+#include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_scdc_helper.h>
 #include <drm/drm_privacy_screen_consumer.h>
 
@@ -2574,6 +2575,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+	int ret;
 
 	intel_dp_set_link_params(intel_dp,
 				 crtc_state->port_clock,
@@ -2668,6 +2670,14 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 6.o Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	/* 7.a 128b/132b SST. */
+	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
+		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
+		ret = drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
+		if (ret < 0)
+			intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+	}
+
 	if (!is_mst)
 		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
@@ -2681,6 +2691,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+	int ret;
 
 	intel_dp_set_link_params(intel_dp,
 				 crtc_state->port_clock,
@@ -2807,6 +2818,13 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 7.l Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
+	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
+		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
+		ret = drm_dp_dpcd_write_payload(&intel_dp->aux, 1, 0, crtc_state->dp_m_n.tu);
+		if (ret < 0)
+			intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+	}
+
 	if (!is_mst)
 		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
-- 
2.39.5


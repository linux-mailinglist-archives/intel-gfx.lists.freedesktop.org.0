Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 921DBBE8A5C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 14:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24E110EBDF;
	Fri, 17 Oct 2025 12:48:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j81CWOf9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5304D10EBDC;
 Fri, 17 Oct 2025 12:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760705304; x=1792241304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eyiqPjsgwzHILhPJ8WLyZMDgQQpDqKNuRpa6BJkLspA=;
 b=j81CWOf9z5LBlfMfWKlkgSCg3m9agdV4oTnbPj4kW90xi2IRKQFSNS/N
 hGPsvOKiikgJptaQZWrV6lgPJT3NFOVRNOXkLVG/2J1uZT+vvlQ5gaSDP
 76NhS+fUFsHlbE425PClaYlSo8L5AERzTDCN0/3hXQ2zT5f0NspNXXZF2
 SlIzN7Fq6LdID/nAs6i+fUJyrGLPntNLRsWEY4VgnWdCxqErTpyL6K4Bv
 1Vpuuq5w2N6vhQYS0tcpZrdMwYfaNgiqYiThnruCkI4PFmQ1APIVXAxHE
 8ER9xCngqXl0ccPSFuFC3RKU/JZD31vOTyypMXFPx+tdhL43ljtXARvT9 A==;
X-CSE-ConnectionGUID: dqkz9rTKQN6FxvC/Kj3+XQ==
X-CSE-MsgGUID: U/Wimf1DQZyteoJlINDj+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61944198"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61944198"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:23 -0700
X-CSE-ConnectionGUID: hrXls7n3RvCe035N/uRl1g==
X-CSE-MsgGUID: GXUmq/KyTAK3x3jeiBwGCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182281077"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/5] drm/i915/dp: Check if guardband can accommodate sdp
 latencies
Date: Fri, 17 Oct 2025 18:05:02 +0530
Message-ID: <20251017123504.2247954-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
References: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index acbb4d476543..fc227db7b7c1 100644
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


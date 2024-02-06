Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031B784AEC0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 08:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0739E112A13;
	Tue,  6 Feb 2024 07:16:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SWVOVTfW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CAB112A12
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 07:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707203783; x=1738739783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g1gaamq8G+ZGtgkvFS2EOFFkPh0fjN3y+42Kr2il6Sg=;
 b=SWVOVTfWnU+M273lVhfg0F02uGPL8tq3hgVuAL1c2No34nH8ocCCcFYT
 5ITTDxIuqhfwWf3Sbgw9EuSI6DfbsB7H1GyG7zNZprAaovLnb3lrTkfaS
 szlKxjFcdg+es+rqhzcqJrKKSU4Wg7sfkLHwckaBhE8F6bL9VwlYo4pQd
 8dwxohL03DDTofwaxlsS4hCw4aU9Ec1HFgfiCaZ7GpS5NwvevSzvc7JhV
 B4WOjc5Busoug/VBncNf15dN+eHl2Aa5jP+mENbaTC00CXZRxOIfvnVxc
 VpHWwFnXAZrGeUkaLTubMj50SJxPOnIvF1EndEdC4NKVjQK4jf97F1GiD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="12041506"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; d="scan'208";a="12041506"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 23:16:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="824094105"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; d="scan'208";a="824094105"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 05 Feb 2024 23:16:21 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Date: Tue,  6 Feb 2024 09:09:37 +0200
Message-Id: <20240206070937.197986-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240206070937.197986-1-mika.kahola@intel.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
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

Force full modeset for eDP when booting up. GOP programs
PLL parameters and hence, we would be able to use fastset
for eDP. However, with fastset we are not setting PLL values
from the driver and rely that GOP and driver PLL values match.
We have discovered that with some of the panels this is not
true and hence we would need to program PLL values by the
driver. The patch suggests a workaround as enabling full
modeset when booting up. This way we force the driver to
write the PLL values to the hw.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ab415f41924d..9699ded1eb5f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3319,6 +3319,7 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 	 * of crtc_state->dsc, we have no way to ensure reliable fastset.
 	 * Remove once we have readout for DSC.
 	 */
+
 	if (crtc_state->dsc.compression_enable) {
 		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to DSC being enabled\n",
 			    encoder->base.base.id, encoder->base.name);
@@ -3326,6 +3327,18 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 		fastset = false;
 	}
 
+	/*
+	 * FIXME hack to force full modeset for eDP as not always BIOS written PLL
+	 * values does not match with the ones defined in the driver code
+	 */
+	if (!crtc_state->uapi.mode_changed &&
+	    intel_dp_is_edp(intel_dp)) {
+		drm_dbg_kms(&i915->drm, "Forcing full modeset for eDP\n");
+		crtc_state->uapi.mode_changed = true;
+		fastset = false;
+	}
+
+
 	return fastset;
 }
 
-- 
2.34.1


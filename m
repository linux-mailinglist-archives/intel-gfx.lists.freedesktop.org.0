Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9D9886BFC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 13:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6103510E411;
	Fri, 22 Mar 2024 12:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhzKjwof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7929410E411
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 12:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711110293; x=1742646293;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HjOtljFlVe6RqH9ji9IDuTV699YhRvvhG5Rv6bzSYMY=;
 b=YhzKjwofY1rJ8iEdiEtvSnPMsUxTv6cHs8WPHi5suI+sxsWmPWhycPRT
 ts0Z8/KiJMPU5J5VgAVDEB9b8BjDh5kEhCx8OZzre1SRttXrez/6XtPPb
 GUNnNtYjzsq6T5ADBFx+h4RT/mwYdRXKMe2QMA/J4P/afbJxFWCSYaTQw
 pIpAowaYyKpyWDkiXMVYWbdfBmv1WNs2cTxpxd+4BSFLjmpZo5z5QBd3l
 /3MtbSv77dervKL/voqDZwRPNAMgP1iGPK+dCo4PC7DXXjQyRIQhgrvfn
 pn0eYT7wfvxit2vjnRuoAMuK2p7Y9SQGpbiEETISKOhcX/s9cr3zMLtQq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6281198"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6281198"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 05:24:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="15322036"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 05:24:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/lspcon: Separate function to set expected mode
Date: Fri, 22 Mar 2024 17:48:31 +0530
Message-Id: <20240322121832.4170061-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
References: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
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

LSPCON can be configured to LS or PCON mode.
Separate the function to set the expected mode from the lspcon probe
function during lspcon init.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 47 ++++++++++++++-------
 1 file changed, 31 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 1d048fa98561..62159d3ead56 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -240,18 +240,40 @@ static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
 	return true;
 }
 
-static bool lspcon_probe(struct intel_lspcon *lspcon)
+static bool lspcon_set_expected_mode(struct intel_lspcon *lspcon)
 {
-	int retry;
-	enum drm_dp_dual_mode_type adaptor_type;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
 	enum drm_lspcon_mode expected_mode;
 
 	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
 			DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
 
+	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
+
+	/*
+	 * In the SW state machine, lets Put LSPCON in PCON mode only.
+	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
+	 * 2.0 sinks.
+	 */
+	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
+		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
+			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
+			return false;
+		}
+	}
+
+	return true;
+}
+
+static bool lspcon_probe(struct intel_lspcon *lspcon)
+{
+	int retry;
+	enum drm_dp_dual_mode_type adaptor_type;
+	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
+
 	/* Lets probe the adaptor and check its type */
 	for (retry = 0; retry < 6; retry++) {
 		if (retry)
@@ -270,19 +292,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 
 	/* Yay ... got a LSPCON device */
 	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
-	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
 
-	/*
-	 * In the SW state machine, lets Put LSPCON in PCON mode only.
-	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
-	 * 2.0 sinks.
-	 */
-	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
-		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
-			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
-			return false;
-		}
-	}
 	return true;
 }
 
@@ -671,6 +681,11 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 		return false;
 	}
 
+	if (!lspcon_set_expected_mode(lspcon)) {
+		drm_err(&i915->drm, "LSPCON Set expected Mode failed\n");
+		return false;
+	}
+
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
 		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
 		return false;
-- 
2.40.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC99CCE638
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 04:48:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F8510E120;
	Fri, 19 Dec 2025 03:48:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ggcF4pz3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E49B10EC9A;
 Fri, 19 Dec 2025 03:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766116132; x=1797652132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U1xV13OvDLoeD8ixUwH9J0spFRoHTo2FApIH939pPrE=;
 b=ggcF4pz3vZjSrQaR76BQvMHQxmjFzGkldz3UTdBvyBMEptJseXyfVZlB
 LD69dN8QzoWYd+HDxpLjF6sYtodMIG/Tau6RBg/b8awFUoVn0bT9004vB
 5ekMUCYD3xwZ4nMcA+R9eTlVq230t4nm4E+X0XghpOw7W4H/RkjHcN6Dt
 La8uoAcP9yrg2I2L3vj6GXucHXYMM0nfbvtE0jGafKGGcfX5xgMsaNeTT
 qgCttsD5toTK3k1NbgLPG/2egZc7Ynqr2SMVSDNhS5MTPahPJunCcpB+J
 EoGiNhn+ELw+Rdb+/a2GrKFluEL0MZ1HPvK03Di4P1WoHDAx/NBQFwrG4 Q==;
X-CSE-ConnectionGUID: KR9L4wKeTSO7m4U/+/n8DA==
X-CSE-MsgGUID: 4AhOn1CUTzmBeSl2LjOsfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="55654426"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="55654426"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 19:48:52 -0800
X-CSE-ConnectionGUID: NhM8x1AnTLCdoxCUtBXUYg==
X-CSE-MsgGUID: omEFlunbQ7iiG7uZwhJBqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="203150808"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 18 Dec 2025 19:48:50 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, imre.deak@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/cx0: Use the consolidated HDMI tables
Date: Fri, 19 Dec 2025 09:18:46 +0530
Message-Id: <20251219034846.1434478-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216082732.1384018-1-suraj.kandpal@intel.com>
References: <20251216082732.1384018-1-suraj.kandpal@intel.com>
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

Use the consolidated HDMI tables before we try to compute them via
algorithm. The reason is that these are the ideal values and even
though the values calculated via the HDMI algorithm are correct but
not always ideal. This is done for C20 and already exists for C10.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
v1 -> v2: 
- Update commit message (Ankit)
- Change TODO comment line (Ankit)

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f6d69627154e..f956a117f1f6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2671,15 +2671,18 @@ static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_state,
 	hw_state->cx0pll.use_c10 = false;
 	hw_state->cx0pll.lane_count = crtc_state->lane_count;
 
-	/* try computed C20 HDMI tables before using consolidated tables */
-	if (!is_dp)
-		/* TODO: Update SSC state for HDMI as well */
-		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
-
+	/*
+	 * Try the ideal C20 HDMI tables before trying to compute them since the values
+	 * calculated even though would be correct but not ideal
+	 */
 	if (err)
 		err = intel_c20pll_calc_state_from_table(crtc_state, encoder,
 							 &hw_state->cx0pll);
 
+	/* TODO: Update SSC state for HDMI as well */
+	if (!is_dp && err)
+		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
+
 	if (err)
 		return err;
 
-- 
2.34.1


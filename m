Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53961CC18C7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:27:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D567E10E6B4;
	Tue, 16 Dec 2025 08:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZFksAAVv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FED510E6B4;
 Tue, 16 Dec 2025 08:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765873659; x=1797409659;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1KaSFrXuuxHj1Pw7/YCkig0GbEZH8rJ4Gktw9c+V5aM=;
 b=ZFksAAVvJsnBq5LqnkPTimPhnbFBjR0C0Q+AhZAKnQ5TRMeZTy6xN3JC
 OtNbYo2DQvH0d8RU/BsxZArM0o/iJOZprO98GdyZlCsP+MCyUQg/0QEzu
 n3baZDc2sqAQOkbV5E9d0Asy05bnh56VXtW/6ynid62F6ve2HdagJQoi8
 GJXZCdM6Vhhsbptw/tDE6JqzMbajnDcGhxHXqJkoW7kaTWWKQ/XafATCA
 PulKgST6nW8OXmBB+yE+3DXqhn/vgqUFajoZo7kpB1M3qzFqAPyM6tgLa
 KtkGRFCwFcmiSrSc+naH6UbqqmFo9OWiIkPdBLlUs17A1dGDJ2F/xpjgF g==;
X-CSE-ConnectionGUID: 2xSARpdiSGS+wN62LV4qWw==
X-CSE-MsgGUID: QRW4yCF7QDWtnreuA47GYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="90442609"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="90442609"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:27:39 -0800
X-CSE-ConnectionGUID: SK7PD9b9TD+Wuy3ujJZq7A==
X-CSE-MsgGUID: H1g79IbwSL6IX8lszTp3gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="203062269"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa005.jf.intel.com with ESMTP; 16 Dec 2025 00:27:36 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, imre.deak@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/cx0: Use the consolidated HDMI tables
Date: Tue, 16 Dec 2025 13:57:32 +0530
Message-Id: <20251216082732.1384018-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
not always ideal.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f6d69627154e..d0f764189567 100644
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
 
+	if (!is_dp && err)
+		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
+		/* TODO: Update SSC state for HDMI as well */
+
 	if (err)
 		return err;
 
-- 
2.34.1


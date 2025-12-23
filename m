Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6B6CD843E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 07:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F6D10E169;
	Tue, 23 Dec 2025 06:34:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LaFFTuSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB4010E169;
 Tue, 23 Dec 2025 06:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766471669; x=1798007669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=383yHY6UlqeFYe6AvIFecxTrms2/BvtKSGGrLm00tTY=;
 b=LaFFTuSUmrZgJGD61ChRZrkv1gbFfXGQz3/d+plSof1c2WkpiXMFgP02
 gkSAiQSX9a6vxmJhRPK4SurvxCuhw43ZGijSXYTMP0rnS+2+YRXvLX2O6
 CuE9tikUyoB8/mkEj7vdYpWgJn3wOgaRs/bvXz1MOqFU+kx7kJYrYKSoJ
 K0H9t5lnEYWAXazp41hBFtEiMYiR0DOmuGq+hynrRbAd+GoaBD+rYQ9si
 rEup4+yyRNMI/LDTsTGu2AqxbFGuhE1E4K6wXW0DBuOGZe7Vt42L4AW0I
 hLCD0u9UAn44ZDLgyB+1jxtJ3xPqAmUwIjwnurr3M2HnJaCqg7x1LsGxx Q==;
X-CSE-ConnectionGUID: l4QMM3R9Q4aS0xdkRB1I5A==
X-CSE-MsgGUID: jwOC2EOYQ3eh0hYiVDIlQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="67516796"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="67516796"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 22:34:29 -0800
X-CSE-ConnectionGUID: 8ntrerc6R/yJvIvjZMRH9A==
X-CSE-MsgGUID: fKJedG1fRJSFvBdTEXdgoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="198849742"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 22 Dec 2025 22:34:27 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, imre.deak@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3] drm/i915/cx0: Use the consolidated HDMI tables
Date: Tue, 23 Dec 2025 12:04:22 +0530
Message-Id: <20251223063422.1444968-1-suraj.kandpal@intel.com>
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

v2 -> v3
- Fix comment message grammar (Jani)

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2c87c58812da..7288065d2461 100644
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
+	 * Try the ideal C20 HDMI tables before computing them, since the calculated
+	 * values, although correct, may not be optimal.
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


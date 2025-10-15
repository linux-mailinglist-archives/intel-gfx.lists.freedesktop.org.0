Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2677BDC4B7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FCE610E6E4;
	Wed, 15 Oct 2025 03:17:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SdpEeQkH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B7010E6D3;
 Wed, 15 Oct 2025 03:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498220; x=1792034220;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=nUu7zTKTCq++AywAtRY3SIVtLeG6snjo9qNrTpBBTjA=;
 b=SdpEeQkHizfxeo8Q9KwXyyd2RhvtDncat3ms1Mo7XLHOaMF5uJDIHV3A
 moEdACOQ3HYJT4OYw0hgMDJIhF0HShBlUjVn0hHb6DexcxPG6iZYaubbC
 l5EYU9ZcCamkYf+ogZFX+4/gS7+cKZQRLR5qdXdVm0c6I3Sx6WSQDL+hv
 SEuh1eYlTpcAzUAs9Rx7yFpp9ecVvQvrc+h/vp1Zw3rY7sQpL3X32VbcH
 03KF8NpNWfYg3VZcBNx6Crn8HLZWD6ibYHW7DI/un0U/g8ywm7erX4wf0
 3tRDtd9CWuDLKgWzb3LM1ooFvF9VOfHzwoTiiJ3zs+LZsDF/0fmE59SUK Q==;
X-CSE-ConnectionGUID: 9uFxtpLvTBymRzU5MZS32w==
X-CSE-MsgGUID: Wh7j2G0qTvyKwI8a5AW26g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577157"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577157"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:00 -0700
X-CSE-ConnectionGUID: PxB/b3XQTzCANNGL1fNc3w==
X-CSE-MsgGUID: Ttw0gLT9TcSxXQHEXyV5TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302417"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:16:56 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:04 -0300
Subject: [PATCH 04/32] drm/i915/display: Use braces for if-ladder in
 intel_bw_init_hw()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-4-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

Looking at the current if-ladder in intel_bw_init_hw(), we see that
Xe2_HPD contains two entries, differing only for ECC memories.  In an
upcoming change for Xe3p_LPD, we will have a similar case.

Let's improving readability by using braces and allowing adding extra
conditions for each case.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b53bcb693e79..8f5b86cd91b6 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -812,29 +812,30 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(display) >= 3002)
+	if (DISPLAY_VERx100(display) >= 3002) {
 		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
-	else if (DISPLAY_VER(display) >= 30)
+	} else if (DISPLAY_VER(display) >= 30) {
 		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
-	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx &&
-		 dram_info->type == INTEL_DRAM_GDDR_ECC)
-		xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
-	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
-		xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
-	else if (DISPLAY_VER(display) >= 14)
+	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
+		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
+			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
+		else
+			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
+	} else if (DISPLAY_VER(display) >= 14) {
 		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
-	else if (display->platform.dg2)
+	} else if (display->platform.dg2) {
 		dg2_get_bw_info(display);
-	else if (display->platform.alderlake_p)
+	} else if (display->platform.alderlake_p) {
 		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
-	else if (display->platform.alderlake_s)
+	} else if (display->platform.alderlake_s) {
 		tgl_get_bw_info(display, dram_info, &adls_sa_info);
-	else if (display->platform.rocketlake)
+	} else if (display->platform.rocketlake) {
 		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
-	else if (DISPLAY_VER(display) == 12)
+	} else if (DISPLAY_VER(display) == 12) {
 		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
-	else if (DISPLAY_VER(display) == 11)
+	} else if (DISPLAY_VER(display) == 11) {
 		icl_get_bw_info(display, dram_info, &icl_sa_info);
+	}
 }
 
 static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_state *crtc_state)

-- 
2.51.0


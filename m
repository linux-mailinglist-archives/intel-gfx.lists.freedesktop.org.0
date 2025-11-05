Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79783C35F82
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043D410E755;
	Wed,  5 Nov 2025 14:08:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ApuQ+lMh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC00710E22E;
 Wed,  5 Nov 2025 14:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351707; x=1793887707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4VIIlLgbqr3MDqxLBtmZLr0rWJ60f3+8APqZJGTmz3E=;
 b=ApuQ+lMhps6fUSO/m7RaF2PfE4G2JqDLTmiTz1c6fQgIyvxzU+TEQl3f
 vc2opLzPwdwNjU+n0jrL++aeDAH5SyPhSLu7WIBHQ3cVNWGGFkc2qIxwd
 HOWUwtEmftr/Z5vCSRUM2VX7KLEM/SZsT1os/G3Bh/VHSw0hGUcqZzSo3
 s/QlsoKh/nijVLQuHAA549EpQdEULbNlJWPjt2hA3ducRZJ2qHCDNmqqK
 1zlG6OJUIFljo17cnXyuWcJxJcHbWqwD8iG4pUczjEubvgZH4zoFSGPfw
 Ye6IBGfN7FY9umHQCwfOfaP4Y16dxB+31YiqYny5hcg0sqZeAmmcKNgQ8 A==;
X-CSE-ConnectionGUID: Xme1jY3URVWDxllxAl4UvQ==
X-CSE-MsgGUID: z2gMLqMRSFG+5Hab2+M81g==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348227"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348227"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:14 -0800
X-CSE-ConnectionGUID: o/rKddMuRxumC/IBd18Zkw==
X-CSE-MsgGUID: yS8dOSErR4S0HGB/XXDBww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562937"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:13 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 03/17] drm/i915/display: Use braces for if-ladder in
 intel_bw_init_hw()
Date: Wed,  5 Nov 2025 11:06:52 -0300
Message-ID: <20251105140651.71713-22-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

Looking at the current if-ladder in intel_bw_init_hw(), we see that
Xe2_HPD contains two entries, differing only for ECC memories.  Let's
improve readability by using braces and allowing adding extra conditions
for each case.

v2:
  - Tweaked commit message, since we are not going to add the ECC case
    for Xe3p_LPD anymore.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-3-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 29 +++++++++++++------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index f97ccc1a96a7..bf37d7a9732e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -805,29 +805,30 @@ void intel_bw_init_hw(struct intel_display *display)
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
 
 static unsigned int intel_bw_num_active_planes(struct intel_display *display,
-- 
2.51.0


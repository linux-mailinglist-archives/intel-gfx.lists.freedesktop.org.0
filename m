Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7AABF974E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE9310E666;
	Wed, 22 Oct 2025 00:31:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EOY2moh4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7567910E666;
 Wed, 22 Oct 2025 00:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093070; x=1792629070;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=UoDRlHDwZ1J4g84DVChasf5SRpH+iYryNiU8vHoOfns=;
 b=EOY2moh4/cERQlqXOps156EMeWQXe5OYawtzfE6AUIrG6x0QKJp4Twfx
 D1Mrvv9cIFPeDma09ZyjIIKNPE70NDpmXxFadbnFl8QUL2fi1EYYkJs0F
 wNAsrRHa5gPPwwGJ2bYFwbdUx60WOXHIsZgMybA4UxAIs6hAVOR7xSfFo
 /ZYfxb7KdrhxCNjVcKLEuuMXeYWzzHXF0GGE8sc+EJeV7k92/SZG3lDJ4
 KfB4wdTp8GxGrfUpde2l+BLqykAZLlfbiACJra8Omz+HTYtiqICU1u3iQ
 dtskc7GdXsbgyGRk1ajHDTolWVz2i6ShS4sBfKYIE+woT3aWalEzhxpWZ w==;
X-CSE-ConnectionGUID: fkNoZnsnRkGxh9kHl/vbig==
X-CSE-MsgGUID: 7xguY+nlR/6CQxQwKl/wtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855700"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855700"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:10 -0700
X-CSE-ConnectionGUID: /Nu1JW9VSyabvFqXf3a0FA==
X-CSE-MsgGUID: Dr2k4NAHQb6x8HBKmlmNcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132268"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:07 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:28 -0300
Subject: [PATCH v2 03/32] drm/i915/display: Use braces for if-ladder in
 intel_bw_init_hw()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-3-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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
Xe2_HPD contains two entries, differing only for ECC memories.  Let's
improve readability by using braces and allowing adding extra conditions
for each case.

v2:
  - Tweaked commit message, since we are not going to add the ECC case
    for Xe3p_LPD anymore.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 92a060e02cf3..fc173b2a1ad9 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -802,29 +802,30 @@ void intel_bw_init_hw(struct intel_display *display)
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


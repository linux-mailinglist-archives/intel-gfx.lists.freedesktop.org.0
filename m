Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C55D0C2D6C9
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B42010E454;
	Mon,  3 Nov 2025 17:19:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6pEWWrS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8AA10E458;
 Mon,  3 Nov 2025 17:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190385; x=1793726385;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=LlCOo77MrZPIij+VIU3eaWg7aUNrFXjdt0Vd1qbEwJY=;
 b=N6pEWWrSDX9ElZZ1NryNUC5ubUM+asYMYjp+35GBnLuXiAq86OV9ZmYD
 aM7dK1SRuLike3+0yslQOlQYjT7suLAJ0wIL+/N2IzXytT/CsFs9pZZPw
 AA6aaUjcqnNe9Qgrqc8OHw0r8DYoKlv1BgvQJKVvPbYejzCclBxrLTTdo
 YmnVi014LdAc98cnPLTQ2APB+6Q/8cWo2xzDWswUprVago5oLuOIOpa6k
 cp7PhNj08Mt/NxMa7wRZpEpJwo+C6bvtYBu/4vgG8KFW/oP1xXUus4DRa
 zkuXICLcIMRyDsybOQOHtWyZxGkOoypON1qFrdKj/2CZNMcu0nYnNwX0a Q==;
X-CSE-ConnectionGUID: l3mw9lcxR0+NznLFs81+Lg==
X-CSE-MsgGUID: DBLiD4bKR1yh+CSQ0qn0Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309966"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309966"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:45 -0800
X-CSE-ConnectionGUID: buAvy0RhTJaP/lFagKUfxQ==
X-CSE-MsgGUID: GrbSz43bSJCLtXAARXwMKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606225"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:42 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:17:54 -0300
Subject: [PATCH v3 03/29] drm/i915/display: Use braces for if-ladder in
 intel_bw_init_hw()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-3-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
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


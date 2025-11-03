Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2162CC2D6CC
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD98E10E1FD;
	Mon,  3 Nov 2025 17:19:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDH53Wty";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2372D10E458;
 Mon,  3 Nov 2025 17:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190389; x=1793726389;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=aj6YCXBxvpDlVacDUoTAcbtGaivzm1qzkGpvJ7CMtUs=;
 b=lDH53WtyWzXVS3ImogVHRWj5RvuM8ws+VxvP2VbiQWdxFjdP1gtUPe5a
 x1bCnmRpKhbALuCGybzVL+sCzUqn28ULO1ccwLSLGhU4i9fa9+KAITl5u
 Aiuv1XiKv+MWNzOgvqwFG+3VuU79ldBYclAkXvYkGYE2YtfOdRgfCttNc
 cTxgh/oClS4fdW0NHaG4hNkDh6WZZqDy/QRjo+U5xpjS0leEMza1+d+uP
 eg5QMpr7IPfJK/15finavemvM8e45trnlRkErS1ZHpb0JIZyT+zqWuG7f
 h4hxuzqcYV6K+Y58c68g6uV9K4RQ5+e/jBeFBDS8eEfZaL60WiG1wOTn8 g==;
X-CSE-ConnectionGUID: 7nhOGD7+QUuRrMDIh/XY8Q==
X-CSE-MsgGUID: ohhmM0kMSeyzekzpsq7epQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309970"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309970"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:49 -0800
X-CSE-ConnectionGUID: tnbnIfrvQiaCvkmN0sqMvQ==
X-CSE-MsgGUID: i+qIY9oHRkOCnajGJL1M1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606247"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:45 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:17:55 -0300
Subject: [PATCH v3 04/29] drm/i915/xe3p_lpd: Update bandwidth parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-4-00e87b510ae7@intel.com>
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

From: Matt Atwood <matthew.s.atwood@intel.com>

Bandwidth parameters for Xe3p_LPD are the same as for Xe3_LPD. Re-use
them.

Since handling for Xe3_LPD version 30.02 is more like a special case,
let's use a "== 3002" check for it inside the ">= 30" branch instead of
adding a new branch for version 35.  That allows us to re-use the ">=
30" branch for Xe3p_LPD.

v2:
  - Do not have a special case for ecc_impacting_de_bw, since there are
    no specific instructions in Bspec for this scenario. (Matt Roper)
v3:
  - Re-use the ">= 30" branch in the if-ladder. (Matt Roper)

Bspec: 68859
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bf37d7a9732e..919b25a5fbac 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -805,10 +805,11 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(display) >= 3002) {
-		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
-	} else if (DISPLAY_VER(display) >= 30) {
-		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
+	if (DISPLAY_VER(display) >= 30) {
+		if (DISPLAY_VERx100(display) == 3002)
+			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
+		else
+			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
 	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
 		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
 			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);

-- 
2.51.0

